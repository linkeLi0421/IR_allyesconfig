; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/max20730.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/max20730.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max20730_data = type { i32, %struct.pmbus_driver_info, %struct.mutex, i16, i16, i16, [2 x i32] }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.max20730_debugfs_data = type { ptr, [15 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_max20730__292_783_max20730_driver_init6 = internal global ptr @max20730_driver_init, section ".initcall6.init", align 4
@max20730_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max20730_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max20730_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max20730_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max20730_driver_exit = internal global ptr @max20730_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [51 x i8] c"max20730.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [86 x i8] c"max20730.description=PMBus driver for Maxim MAX20710 / MAX20730 / MAX20734 / MAX20743\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [43 x i8] c"max20730.file=drivers/hwmon/pmbus/max20730\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"max20730.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns297 = internal constant [25 x i8] c"max20730.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max20730\00", [23 x i8] zeroinitializer }, align 32
@max20730_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20710\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20730\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20734\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@max20730_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max20710\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max20730\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max20734\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max20743\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@max20730_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read Manufacturer ID\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max20730_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/max20730.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr = internal global ptr @max20730_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MAXIM\00", [26 x i8] zeroinitializer }, align 32
@max20730_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 680, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported Manufacturer ID '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.9 = internal global ptr @max20730_probe._entry.7, section ".printk_index", align 4
@max20730_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Manufacturer Model\0A\00", [61 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.12 = internal global ptr @max20730_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M20743\00", [25 x i8] zeroinitializer }, align 32
@max20730_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported Manufacturer Model '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.16 = internal global ptr @max20730_probe._entry.14, section ".printk_index", align 4
@max20730_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read Manufacturer Revision\0A\00", [58 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.19 = internal global ptr @max20730_probe._entry.17, section ".printk_index", align 4
@max20730_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 712, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unsupported Manufacturer Revision '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.22 = internal global ptr @max20730_probe._entry.20, section ".printk_index", align 4
@max20730_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vout-voltage-divider\00", [43 x i8] zeroinitializer }, align 32
@max20730_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"The total resistance of voltage divider is less than output resistance\0A\00", [56 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.27 = internal global ptr @max20730_probe._entry.25, section ".printk_index", align 4
@max20730_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 749, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register debugfs: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max20730_probe._entry_ptr.31 = internal global ptr @max20730_probe._entry.28, section ".printk_index", align 4
@max20730_info = internal constant { [4 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }], [496 x i8] } { [4 x { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }] [{ i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 3609, i32 0, i32 0, i32 153, i32 0, i32 21, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 4976, i32 0, i32 5887, i32 0, i32 0], [8 x i32] [i32 -2, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 61973, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max20730_read_word_data, ptr @max20730_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 3609, i32 0, i32 0, i32 153, i32 0, i32 21, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 4976, i32 0, i32 5887, i32 0, i32 0], [8 x i32] [i32 -2, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 61973, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max20730_read_word_data, ptr @max20730_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 3592, i32 0, i32 0, i32 111, i32 0, i32 21, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 3461, i32 0, i32 5887, i32 0, i32 0], [8 x i32] [i32 -2, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 61973, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max20730_read_word_data, ptr @max20730_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }, { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, [31 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 1, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 3597, i32 0, i32 0, i32 95, i32 0, i32 21, i32 0, i32 0], [8 x i32] [i32 0, i32 0, i32 0, i32 5014, i32 0, i32 5887, i32 0, i32 0], [8 x i32] [i32 -2, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0], <{ i32, [31 x i32] }> <{ i32 61973, [31 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @max20730_read_word_data, ptr @max20730_write_word_data, ptr null, ptr null, i32 0, ptr null, ptr null }], [496 x i8] zeroinitializer }, align 32
@max_current = internal constant { [4 x [5 x i32]], [48 x i8] } { [4 x [5 x i32]] [[5 x i32] [i32 6200, i32 8000, i32 9700, i32 11600, i32 0], [5 x i32] [i32 13000, i32 16600, i32 20100, i32 23600, i32 0], [5 x i32] [i32 21000, i32 27000, i32 32000, i32 38000, i32 0], [5 x i32] [i32 18900, i32 24100, i32 29200, i32 34100, i32 0]], [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vout_min\00", [23 x i8] zeroinitializer }, align 32
@max20730_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @max20730_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frequency\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power_good_delay\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"internal_gain\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"boot_voltage\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"out_voltage_ramp_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oc_protection_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"soft_start_timing\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imax\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"operation\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"on_off_config\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smbalert_mask\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vout_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vout_command\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vout_max\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2000\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"62.5\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"32\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.8\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.2\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.6\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.4\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.9\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.6\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.8\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7.2\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.45\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.6484\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.8984\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.0\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Invalid\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.75\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.5\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6\0A\00", [29 x i8] zeroinitializer }, align 32
@switch.table.max20730_debugfs_read = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 700, i32 800, i32 900, i32 900, i32 400, i32 500, i32 600, i32 600], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 70, i64 79, i64 139]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 70, i64 79]
@__sancov_gen_cov_switch_values.77 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"max20730_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 774, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 776, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"max20730_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 764, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"max20730_id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 754, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 675, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 678, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 680, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 696, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 699, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 701, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 707, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 712, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 725, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 727, i32 54 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 732, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 748, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"max20730_info\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 530, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"max_current\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 437, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 335, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"max20730_fops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 296, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 338, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 341, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 344, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 347, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 350, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 353, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 356, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 359, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 362, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 365, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 368, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 371, i32 22 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 374, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 377, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 125, i32 44 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 144, i32 44 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 151, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 153, i32 24 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 155, i32 24 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 157, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 166, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 168, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 170, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 172, i32 25 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 176, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 178, i32 25 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 180, i32 25 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 182, i32 25 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 186, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 194, i32 24 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 202, i32 24 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 204, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 206, i32 24 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 208, i32 24 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 215, i32 24 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 217, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 219, i32 24 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 233, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 235, i32 24 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 237, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [34 x i8] c"../drivers/hwmon/pmbus/max20730.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 239, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant [35 x i8] c"switch.table.max20730_debugfs_read\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_import_ns297, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max20730_driver_exit, ptr @__initcall__kmod_max20730__292_783_max20730_driver_init6, ptr @max20730_driver_exit, ptr @max20730_probe._entry, ptr @max20730_probe._entry.10, ptr @max20730_probe._entry.14, ptr @max20730_probe._entry.17, ptr @max20730_probe._entry.20, ptr @max20730_probe._entry.25, ptr @max20730_probe._entry.28, ptr @max20730_probe._entry.7, ptr @max20730_probe._entry_ptr, ptr @max20730_probe._entry_ptr.12, ptr @max20730_probe._entry_ptr.16, ptr @max20730_probe._entry_ptr.19, ptr @max20730_probe._entry_ptr.22, ptr @max20730_probe._entry_ptr.27, ptr @max20730_probe._entry_ptr.31, ptr @max20730_probe._entry_ptr.9, ptr @max20730_driver, ptr @.str, ptr @max20730_of_match, ptr @max20730_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @max20730_probe.__key, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @max20730_info, ptr @max_current, ptr @.str.33, ptr @max20730_fops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.max20730_debugfs_read], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_info to i32), i32 1968, i32 2464, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_current to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20730_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max20730_debugfs_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max20730_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max20730_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max20730_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max20730_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max20730_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 33)
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #8
  %and.i = and i32 %call.i.i, 52953088
  call void @__sanitizer_cov_trace_const_cmp4(i32 52953088, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52953088
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp6.not = icmp eq i32 %call2, 5
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end5.if.then10_crit_edge

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end5
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.6, i32 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.end15, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %arrayidx = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %buf) #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call17 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call17)
  %cmp24.not = icmp eq i32 %call17, 6
  br i1 %cmp24.not, label %lor.lhs.false25, label %if.end23.if.then29_crit_edge

if.end23.if.then29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false25:                                  ; preds = %if.end23
  %bcmp162 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %buf, ptr noundef nonnull dereferenceable(6) @.str.13, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp162)
  %tobool28.not = icmp eq i32 %bcmp162, 0
  br i1 %tobool28.not, label %if.end35, label %lor.lhs.false25.if.then29_crit_edge

lor.lhs.false25.if.then29_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false25.if.then29_crit_edge, %if.end23.if.then29_crit_edge
  %arrayidx30 = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call17
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx30, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %buf) #11
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false25
  %call37 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -101, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp44.not = icmp eq i32 %call37, 1
  br i1 %cmp44.not, label %lor.lhs.false45, label %if.end43.if.then49_crit_edge

if.end43.if.then49_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

lor.lhs.false45:                                  ; preds = %if.end43
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %10)
  %cmp47.not = icmp eq i8 %10, 70
  br i1 %cmp47.not, label %if.end55, label %lor.lhs.false45.if.then49_crit_edge

lor.lhs.false45.if.then49_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false45.if.then49_crit_edge, %if.end43.if.then49_crit_edge
  %arrayidx50 = getelementptr [33 x i8], ptr %buf, i32 0, i32 %call37
  %11 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx50, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull %buf) #11
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false45
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool57.not = icmp eq ptr %13, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %14 = ptrtoint ptr %call59 to i32
  br label %if.end61

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call ptr @i2c_match_id(ptr noundef nonnull @max20730_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call60, i32 0, i32 1
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58
  %chip_id.0 = phi i32 [ %14, %if.then58 ], [ %16, %if.else ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 604, i32 noundef 3520) #8
  %tobool63.not = icmp eq ptr %call.i, null
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %chip_id.0, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @max20730_probe.__key) #8
  %info = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 1
  %arrayidx69 = getelementptr [4 x %struct.pmbus_driver_info], ptr @max20730_info, i32 0, i32 %chip_id.0
  %18 = call ptr @memcpy(ptr %info, ptr %arrayidx69, i32 492)
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %vout_voltage_divider = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 6
  %call.i163 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef %vout_voltage_divider, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i163)
  %cmp74.not = icmp sgt i32 %call.i163, -1
  br i1 %cmp74.not, label %if.end65.if.end79_crit_edge, label %if.then76

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %vout_voltage_divider to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %vout_voltage_divider, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end65.if.end79_crit_edge
  %arrayidx81 = getelementptr %struct.max20730_data, ptr %call.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx81, align 4
  %24 = ptrtoint ptr %vout_voltage_divider to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vout_voltage_divider, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp84 = icmp ult i32 %23, %25
  br i1 %cmp84, label %do.end89, label %if.end90

do.end89:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end90:                                         ; preds = %if.end79
  %call91 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end95

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %conv96 = trunc i32 %call91 to i16
  %mfr_devset1 = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %mfr_devset1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv96, ptr %mfr_devset1, align 4
  %call98 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end95.cleanup_crit_edge, label %if.end102

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end95
  %call.i164 = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp.i165 = icmp slt i32 %call.i164, 0
  br i1 %cmp.i165, label %if.end102.do.end108_crit_edge, label %if.end.i

if.end102.do.end108_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

if.end.i:                                         ; preds = %if.end102
  %conv.i166 = trunc i32 %call.i164 to i16
  %mfr_devset2.i = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %mfr_devset2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i166, ptr %mfr_devset2.i, align 2
  %call1.i = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end108_crit_edge, label %if.end5.i

if.end.i.do.end108_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

if.end5.i:                                        ; preds = %if.end.i
  %conv6.i = trunc i32 %call1.i to i16
  %mfr_voutmin.i = getelementptr inbounds %struct.max20730_data, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %mfr_voutmin.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv6.i, ptr %mfr_voutmin.i, align 4
  %call.i.i167 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i167, null
  br i1 %tobool.not.i, label %if.end5.i.do.end108_crit_edge, label %if.end9.i

if.end5.i.do.end108_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

if.end9.i:                                        ; preds = %if.end5.i
  %29 = ptrtoint ptr %call.i.i167 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %client, ptr %call.i.i167, align 4
  %call11.i = call ptr @pmbus_get_debugfs_dir(ptr noundef %client) #8
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end9.i.do.end108_crit_edge, label %max20730_init_debugfs.exit

if.end9.i.do.end108_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

max20730_init_debugfs.exit:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call15.i = call ptr @debugfs_create_dir(ptr noundef %name.i, ptr noundef nonnull %call11.i) #8
  %arrayidx.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 10, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 11
  %41 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 11, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 12
  %42 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 12, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 13
  %43 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 13, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.max20730_debugfs_data, ptr %call.i.i167, i32 0, i32 1, i32 14
  %44 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 14, ptr %arrayidx.14.i, align 4
  %call20.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.i, ptr noundef nonnull @max20730_fops) #8
  %call23.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.1.i, ptr noundef nonnull @max20730_fops) #8
  %call26.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.2.i, ptr noundef nonnull @max20730_fops) #8
  %call29.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.3.i, ptr noundef nonnull @max20730_fops) #8
  %call32.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.4.i, ptr noundef nonnull @max20730_fops) #8
  %call35.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.5.i, ptr noundef nonnull @max20730_fops) #8
  %call38.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.6.i, ptr noundef nonnull @max20730_fops) #8
  %call41.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.7.i, ptr noundef nonnull @max20730_fops) #8
  %call44.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.8.i, ptr noundef nonnull @max20730_fops) #8
  %call47.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.9.i, ptr noundef nonnull @max20730_fops) #8
  %call50.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.10.i, ptr noundef nonnull @max20730_fops) #8
  %call53.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.11.i, ptr noundef nonnull @max20730_fops) #8
  %call56.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.12.i, ptr noundef nonnull @max20730_fops) #8
  %call59.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.13.i, ptr noundef nonnull @max20730_fops) #8
  %call62.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 292, ptr noundef %call15.i, ptr noundef %arrayidx.14.i, ptr noundef nonnull @max20730_fops) #8
  br label %cleanup

do.end108:                                        ; preds = %if.end9.i.do.end108_crit_edge, %if.end5.i.do.end108_crit_edge, %if.end.i.do.end108_crit_edge, %if.end102.do.end108_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %if.end9.i.do.end108_crit_edge ], [ -12, %if.end5.i.do.end108_crit_edge ], [ %call1.i, %if.end.i.do.end108_crit_edge ], [ %call.i164, %if.end102.do.end108_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end108, %max20730_init_debugfs.exit, %if.end95.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %do.end89, %if.end61.cleanup_crit_edge, %if.then49, %do.end42, %if.then29, %do.end22, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %if.then10 ], [ %call17, %do.end22 ], [ -19, %if.then29 ], [ %call37, %do.end42 ], [ -19, %if.then49 ], [ -22, %do.end89 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ %call98, %if.end95.cleanup_crit_edge ], [ 0, %do.end108 ], [ 0, %max20730_init_debugfs.exit ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max20730_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %entry.sw.epilog241_crit_edge [
    i32 79, label %sw.bb
    i32 70, label %sw.bb7
    i32 139, label %sw.bb15
  ]

entry.sw.epilog241_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog241

sw.bb:                                            ; preds = %entry
  %mfr_devset1 = getelementptr i8, ptr %call, i32 584
  %1 = ptrtoint ptr %mfr_devset1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mfr_devset1, align 4
  %3 = lshr i16 %2, 11
  %4 = and i16 %3, 3
  %and = zext i16 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and, label %sw.bb.sw.epilog241_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb4
  ]

sw.bb.sw.epilog241_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog241

sw.bb1:                                           ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %7, -3
  %arrayidx3.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %mul.i = mul i32 %9, 1000
  %arrayidx4.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %mul5.i = mul i32 %11, 150000
  %add.i = add i32 %mul5.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp29.i = icmp slt i32 %sub.i, 0
  br i1 %cmp29.i, label %sw.bb1.while.body.i_crit_edge, label %sw.bb1.val_to_direct.exit_crit_edge

sw.bb1.val_to_direct.exit_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit

sw.bb1.while.body.i_crit_edge:                    ; preds = %sw.bb1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb1.while.body.i_crit_edge
  %R.031.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i, %sw.bb1.while.body.i_crit_edge ]
  %d.030.i = phi i32 [ %cond.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %sw.bb1.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.030.i)
  %cmp6.i = icmp sgt i32 %d.030.i, 0
  %cond.in.v.i = select i1 %cmp6.i, i32 5, i32 -5
  %cond.in.i = add i32 %cond.in.v.i, %d.030.i
  %cond.i = sdiv i32 %cond.in.i, 10
  %inc.i = add i32 %R.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 0
  br i1 %exitcond.not.i, label %while.body.i.val_to_direct.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.val_to_direct.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit

val_to_direct.exit:                               ; preds = %while.body.i.val_to_direct.exit_crit_edge, %sw.bb1.val_to_direct.exit_crit_edge
  %d.0.lcssa.i = phi i32 [ %add.i, %sw.bb1.val_to_direct.exit_crit_edge ], [ %cond.i, %while.body.i.val_to_direct.exit_crit_edge ]
  %conv3 = and i32 %d.0.lcssa.i, 65535
  br label %sw.epilog241

sw.bb4:                                           ; preds = %sw.bb
  %arrayidx.i342 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i342, align 4
  %sub.i343 = add i32 %13, -3
  %arrayidx3.i344 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %arrayidx3.i344 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i344, align 4
  %mul.i345 = mul i32 %15, 1000
  %arrayidx4.i346 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %arrayidx4.i346 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i346, align 4
  %mul5.i347 = mul i32 %17, 130000
  %add.i348 = add i32 %mul5.i347, %mul.i345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i343)
  %cmp29.i349 = icmp slt i32 %sub.i343, 0
  br i1 %cmp29.i349, label %sw.bb4.while.body.i358_crit_edge, label %sw.bb4.val_to_direct.exit361_crit_edge

sw.bb4.val_to_direct.exit361_crit_edge:           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit361

sw.bb4.while.body.i358_crit_edge:                 ; preds = %sw.bb4
  br label %while.body.i358

while.body.i358:                                  ; preds = %while.body.i358.while.body.i358_crit_edge, %sw.bb4.while.body.i358_crit_edge
  %R.031.i350 = phi i32 [ %inc.i356, %while.body.i358.while.body.i358_crit_edge ], [ %sub.i343, %sw.bb4.while.body.i358_crit_edge ]
  %d.030.i351 = phi i32 [ %cond.i355, %while.body.i358.while.body.i358_crit_edge ], [ %add.i348, %sw.bb4.while.body.i358_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.030.i351)
  %cmp6.i352 = icmp sgt i32 %d.030.i351, 0
  %cond.in.v.i353 = select i1 %cmp6.i352, i32 5, i32 -5
  %cond.in.i354 = add i32 %cond.in.v.i353, %d.030.i351
  %cond.i355 = sdiv i32 %cond.in.i354, 10
  %inc.i356 = add i32 %R.031.i350, 1
  %exitcond.not.i357 = icmp eq i32 %inc.i356, 0
  br i1 %exitcond.not.i357, label %while.body.i358.val_to_direct.exit361_crit_edge, label %while.body.i358.while.body.i358_crit_edge

while.body.i358.while.body.i358_crit_edge:        ; preds = %while.body.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i358

while.body.i358.val_to_direct.exit361_crit_edge:  ; preds = %while.body.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit361

val_to_direct.exit361:                            ; preds = %while.body.i358.val_to_direct.exit361_crit_edge, %sw.bb4.val_to_direct.exit361_crit_edge
  %d.0.lcssa.i359 = phi i32 [ %add.i348, %sw.bb4.val_to_direct.exit361_crit_edge ], [ %cond.i355, %while.body.i358.val_to_direct.exit361_crit_edge ]
  %conv6 = and i32 %d.0.lcssa.i359, 65535
  br label %sw.epilog241

sw.bb7:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %mfr_devset18 = getelementptr i8, ptr %call, i32 584
  %20 = ptrtoint ptr %mfr_devset18 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mfr_devset18, align 4
  %22 = lshr i16 %21, 5
  %23 = and i16 %22, 3
  %and11 = zext i16 %23 to i32
  %arrayidx12 = getelementptr [4 x [5 x i32]], ptr @max_current, i32 0, i32 %19, i32 %and11
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %arrayidx.i362 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %arrayidx.i362 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i362, align 4
  %sub.i363 = add i32 %27, -3
  %arrayidx3.i364 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx3.i364 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.i364, align 4
  %mul.i365 = mul i32 %29, 1000
  %arrayidx4.i366 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %arrayidx4.i366 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i366, align 4
  %mul5.i367 = mul i32 %31, %25
  %add.i368 = add i32 %mul5.i367, %mul.i365
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i363)
  %cmp29.i369 = icmp slt i32 %sub.i363, 0
  br i1 %cmp29.i369, label %sw.bb7.while.body.i378_crit_edge, label %sw.bb7.val_to_direct.exit381_crit_edge

sw.bb7.val_to_direct.exit381_crit_edge:           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit381

sw.bb7.while.body.i378_crit_edge:                 ; preds = %sw.bb7
  br label %while.body.i378

while.body.i378:                                  ; preds = %while.body.i378.while.body.i378_crit_edge, %sw.bb7.while.body.i378_crit_edge
  %R.031.i370 = phi i32 [ %inc.i376, %while.body.i378.while.body.i378_crit_edge ], [ %sub.i363, %sw.bb7.while.body.i378_crit_edge ]
  %d.030.i371 = phi i32 [ %cond.i375, %while.body.i378.while.body.i378_crit_edge ], [ %add.i368, %sw.bb7.while.body.i378_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.030.i371)
  %cmp6.i372 = icmp sgt i32 %d.030.i371, 0
  %cond.in.v.i373 = select i1 %cmp6.i372, i32 5, i32 -5
  %cond.in.i374 = add i32 %cond.in.v.i373, %d.030.i371
  %cond.i375 = sdiv i32 %cond.in.i374, 10
  %inc.i376 = add i32 %R.031.i370, 1
  %exitcond.not.i377 = icmp eq i32 %inc.i376, 0
  br i1 %exitcond.not.i377, label %while.body.i378.val_to_direct.exit381_crit_edge, label %while.body.i378.while.body.i378_crit_edge

while.body.i378.while.body.i378_crit_edge:        ; preds = %while.body.i378
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i378

while.body.i378.val_to_direct.exit381_crit_edge:  ; preds = %while.body.i378
  call void @__sanitizer_cov_trace_pc() #10
  br label %val_to_direct.exit381

val_to_direct.exit381:                            ; preds = %while.body.i378.val_to_direct.exit381_crit_edge, %sw.bb7.val_to_direct.exit381_crit_edge
  %d.0.lcssa.i379 = phi i32 [ %add.i368, %sw.bb7.val_to_direct.exit381_crit_edge ], [ %cond.i375, %while.body.i378.val_to_direct.exit381_crit_edge ]
  %conv14 = and i32 %d.0.lcssa.i379, 65535
  br label %sw.epilog241

sw.bb15:                                          ; preds = %entry
  %call17 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i8 noundef zeroext -117) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp sgt i32 %call17, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb15.sw.epilog241_crit_edge

sw.bb15.sw.epilog241_crit_edge:                   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog241

land.lhs.true:                                    ; preds = %sw.bb15
  %vout_voltage_divider = getelementptr i8, ptr %call, i32 592
  %32 = ptrtoint ptr %vout_voltage_divider to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vout_voltage_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %land.lhs.true.sw.epilog241_crit_edge, label %land.lhs.true20

land.lhs.true.sw.epilog241_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog241

land.lhs.true20:                                  ; preds = %land.lhs.true
  %arrayidx22 = getelementptr i8, ptr %call, i32 596
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool23.not = icmp eq i32 %35, 0
  br i1 %tobool23.not, label %land.lhs.true20.sw.epilog241_crit_edge, label %if.then

land.lhs.true20.sw.epilog241_crit_edge:           ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog241

if.then:                                          ; preds = %land.lhs.true20
  %conv26392 = zext i32 %call17 to i64
  %conv29 = zext i32 %35 to i64
  %mul = mul nuw nsw i64 %conv29, %conv26392
  %div340 = lshr i32 %33, 1
  %conv30 = zext i32 %div340 to i64
  %add = add nuw nsw i64 %mul, %conv30
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp207 = icmp ult i64 %add, 4294967296
  br i1 %cmp207, label %if.then211, label %if.else217, !prof !165

if.then211:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv212 = trunc i64 %add to i32
  %div215 = udiv i32 %conv212, %33
  %conv216 = zext i32 %div215 to i64
  br label %if.end221

if.else217:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %add) #13, !srcloc !166
  %asmresult1.i = extractvalue { i64, i64 } %36, 1
  br label %if.end221

if.end221:                                        ; preds = %if.else217, %if.then211
  %_tmp.0 = phi i64 [ %conv216, %if.then211 ], [ %asmresult1.i, %if.else217 ]
  %37 = tail call i64 @llvm.umin.i64(i64 %_tmp.0, i64 65535)
  %38 = trunc i64 %37 to i32
  br label %sw.epilog241

sw.epilog241:                                     ; preds = %if.end221, %land.lhs.true20.sw.epilog241_crit_edge, %land.lhs.true.sw.epilog241_crit_edge, %sw.bb15.sw.epilog241_crit_edge, %val_to_direct.exit381, %val_to_direct.exit361, %val_to_direct.exit, %sw.bb.sw.epilog241_crit_edge, %entry.sw.epilog241_crit_edge
  %ret.0 = phi i32 [ %38, %if.end221 ], [ %call17, %land.lhs.true20.sw.epilog241_crit_edge ], [ %call17, %land.lhs.true.sw.epilog241_crit_edge ], [ %call17, %sw.bb15.sw.epilog241_crit_edge ], [ %conv14, %val_to_direct.exit381 ], [ %conv6, %val_to_direct.exit361 ], [ %conv3, %val_to_direct.exit ], [ -61, %sw.bb.sw.epilog241_crit_edge ], [ -61, %entry.sw.epilog241_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max20730_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %lock = getelementptr i8, ptr %call, i32 492
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %mfr_devset1 = getelementptr i8, ptr %call, i32 584
  %0 = ptrtoint ptr %mfr_devset1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mfr_devset1, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %reg, label %entry.if.end38_crit_edge [
    i32 79, label %sw.bb
    i32 70, label %sw.bb6
  ]

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

sw.bb:                                            ; preds = %entry
  %3 = and i16 %1, -6145
  %arrayidx3.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3.i, align 4
  %mul.neg.i = mul i32 %5, -1000
  %arrayidx5.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %sw.bb.direct_to_val.exit.thread_crit_edge, label %while.cond.preheader.i

sw.bb.direct_to_val.exit.thread_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %direct_to_val.exit.thread

while.cond.preheader.i:                           ; preds = %sw.bb
  %conv.i = sext i16 %word to i32
  %arrayidx.i = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 6, i32 5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp722.i = icmp slt i32 %sub.i, 0
  br i1 %cmp722.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.direct_to_val.exit_crit_edge

while.cond.preheader.i.direct_to_val.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %direct_to_val.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %d.024.i = phi i32 [ %mul9.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %R.023.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %mul9.i = mul i32 %d.024.i, 10
  %inc.i = add i32 %R.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 0
  br i1 %exitcond.not.i, label %while.body.i.direct_to_val.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.direct_to_val.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %direct_to_val.exit

direct_to_val.exit:                               ; preds = %while.body.i.direct_to_val.exit_crit_edge, %while.cond.preheader.i.direct_to_val.exit_crit_edge
  %d.0.lcssa.i = phi i32 [ %conv.i, %while.cond.preheader.i.direct_to_val.exit_crit_edge ], [ %mul9.i, %while.body.i.direct_to_val.exit_crit_edge ]
  %sub10.i = add i32 %d.0.lcssa.i, %mul.neg.i
  %div.i = sdiv i32 %sub10.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000, i32 %div.i)
  %cmp = icmp slt i32 %div.i, 140000
  br i1 %cmp, label %direct_to_val.exit.direct_to_val.exit.thread_crit_edge, label %direct_to_val.exit.land.lhs.true_crit_edge

direct_to_val.exit.land.lhs.true_crit_edge:       ; preds = %direct_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

direct_to_val.exit.direct_to_val.exit.thread_crit_edge: ; preds = %direct_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %direct_to_val.exit.thread

direct_to_val.exit.thread:                        ; preds = %direct_to_val.exit.direct_to_val.exit.thread_crit_edge, %sw.bb.direct_to_val.exit.thread_crit_edge
  %10 = or i16 %3, 2048
  br label %land.lhs.true

sw.bb6:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -4
  %11 = and i16 %1, -97
  %arrayidx3.i65 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx3.i65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i65, align 4
  %mul.neg.i66 = mul i32 %13, -1000
  %arrayidx5.i67 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx5.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i68 = icmp eq i32 %15, 0
  br i1 %cmp.i68, label %sw.bb6.direct_to_val.exit85_crit_edge, label %while.cond.preheader.i73

sw.bb6.direct_to_val.exit85_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %direct_to_val.exit85

while.cond.preheader.i73:                         ; preds = %sw.bb6
  %conv.i69 = sext i16 %word to i32
  %arrayidx.i70 = getelementptr %struct.pmbus_driver_info, ptr %call, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i70, align 4
  %sub.i71 = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i71)
  %cmp722.i72 = icmp slt i32 %sub.i71, 0
  br i1 %cmp722.i72, label %while.cond.preheader.i73.while.body.i79_crit_edge, label %while.cond.preheader.i73.while.end.i83_crit_edge

while.cond.preheader.i73.while.end.i83_crit_edge: ; preds = %while.cond.preheader.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i83

while.cond.preheader.i73.while.body.i79_crit_edge: ; preds = %while.cond.preheader.i73
  br label %while.body.i79

while.body.i79:                                   ; preds = %while.body.i79.while.body.i79_crit_edge, %while.cond.preheader.i73.while.body.i79_crit_edge
  %d.024.i74 = phi i32 [ %mul9.i76, %while.body.i79.while.body.i79_crit_edge ], [ %conv.i69, %while.cond.preheader.i73.while.body.i79_crit_edge ]
  %R.023.i75 = phi i32 [ %inc.i77, %while.body.i79.while.body.i79_crit_edge ], [ %sub.i71, %while.cond.preheader.i73.while.body.i79_crit_edge ]
  %mul9.i76 = mul i32 %d.024.i74, 10
  %inc.i77 = add i32 %R.023.i75, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, 0
  br i1 %exitcond.not.i78, label %while.body.i79.while.end.i83_crit_edge, label %while.body.i79.while.body.i79_crit_edge

while.body.i79.while.body.i79_crit_edge:          ; preds = %while.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i79

while.body.i79.while.end.i83_crit_edge:           ; preds = %while.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i83

while.end.i83:                                    ; preds = %while.body.i79.while.end.i83_crit_edge, %while.cond.preheader.i73.while.end.i83_crit_edge
  %d.0.lcssa.i80 = phi i32 [ %conv.i69, %while.cond.preheader.i73.while.end.i83_crit_edge ], [ %mul9.i76, %while.body.i79.while.end.i83_crit_edge ]
  %sub10.i81 = add i32 %d.0.lcssa.i80, %mul.neg.i66
  %div.i82 = sdiv i32 %sub10.i81, %15
  br label %direct_to_val.exit85

direct_to_val.exit85:                             ; preds = %while.end.i83, %sw.bb6.direct_to_val.exit85_crit_edge
  %retval.0.i84 = phi i32 [ %div.i82, %while.end.i83 ], [ 0, %sw.bb6.direct_to_val.exit85_crit_edge ]
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %arrayidx = getelementptr [4 x [5 x i32]], ptr @max_current, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr i32, ptr %arrayidx, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %21, 1
  %add17 = add i32 %add15, %23
  %div1864 = lshr i32 %add17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i84, i32 %div1864)
  %cmp19.not = icmp ugt i32 %retval.0.i84, %div1864
  br i1 %cmp19.not, label %for.cond.1, label %direct_to_val.exit85.for.end_crit_edge

direct_to_val.exit85.for.end_crit_edge:           ; preds = %direct_to_val.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.1:                                       ; preds = %direct_to_val.exit85
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  %arrayidx14.1 = getelementptr i32, ptr %arrayidx, i32 2
  %26 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.1, align 4
  %add15.1 = add i32 %25, 1
  %add17.1 = add i32 %add15.1, %27
  %div1864.1 = lshr i32 %add17.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i84, i32 %div1864.1)
  %cmp19.not.1 = icmp ugt i32 %retval.0.i84, %div1864.1
  br i1 %cmp19.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14.1, align 4
  %arrayidx14.2 = getelementptr i32, ptr %arrayidx, i32 3
  %30 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.2, align 4
  %add15.2 = add i32 %29, 1
  %add17.2 = add i32 %add15.2, %31
  %div1864.2 = lshr i32 %add17.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i84, i32 %div1864.2)
  %cmp19.not.2 = icmp ugt i32 %retval.0.i84, %div1864.2
  %spec.select = select i1 %cmp19.not.2, i16 96, i16 64
  br label %for.end

for.end:                                          ; preds = %for.cond.2, %for.cond.1.for.end_crit_edge, %direct_to_val.exit85.for.end_crit_edge
  %__fc_i.0.lcssa = phi i16 [ 0, %direct_to_val.exit85.for.end_crit_edge ], [ 32, %for.cond.1.for.end_crit_edge ], [ %spec.select, %for.cond.2 ]
  %conv26 = or i16 %__fc_i.0.lcssa, %11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end, %direct_to_val.exit.thread, %direct_to_val.exit.land.lhs.true_crit_edge
  %devset1.0.ph = phi i16 [ %3, %direct_to_val.exit.land.lhs.true_crit_edge ], [ %10, %direct_to_val.exit.thread ], [ %conv26, %for.end ]
  call void @__sanitizer_cov_trace_cmp2(i16 %devset1.0.ph, i16 %1)
  %cmp30.not = icmp eq i16 %devset1.0.ph, %1
  br i1 %cmp30.not, label %land.lhs.true.if.end38_crit_edge, label %if.then32

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32:                                        ; preds = %land.lhs.true
  %call33 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -46, i16 noundef zeroext %devset1.0.ph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %mfr_devset1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %devset1.0.ph, ptr %mfr_devset1, align 4
  tail call void @pmbus_clear_cache(ptr noundef %client) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  %ret.1 = phi i32 [ %call33, %if.then32.if.end38_crit_edge ], [ 0, %if.then35 ], [ 0, %land.lhs.true.if.end38_crit_edge ], [ -61, %entry.if.end38_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmbus_clear_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_debugfs_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max20730_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %tbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %.neg = mul i32 %3, -4
  %idx.neg = add i32 %.neg, -4
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf) #8
  %4 = call ptr @memset(ptr %tbuf, i32 0, i32 16)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %6) #8
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb50
    i32 3, label %sw.bb82
    i32 4, label %sw.bb189
    i32 5, label %sw.bb221
    i32 6, label %sw.bb252
    i32 7, label %sw.bb259
    i32 8, label %sw.bb291
    i32 9, label %sw.bb298
    i32 10, label %sw.bb307
    i32 11, label %sw.bb316
    i32 12, label %sw.bb325
    i32 13, label %sw.bb334
    i32 14, label %sw.bb365
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mfr_voutmin = getelementptr i8, ptr %call, i32 588
  %8 = ptrtoint ptr %mfr_voutmin to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mfr_voutmin, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  %conv = zext i16 %9 to i32
  %mul = mul nuw nsw i32 %conv, 10000
  %add = add nuw nsw i32 %mul, 256
  %div10498 = lshr i32 %add, 9
  %cond = select i1 %cmp.not, i32 0, i32 %div10498
  %cond.frozen = freeze i32 %cond
  %div13 = udiv i32 %cond.frozen, 10000
  %10 = mul i32 %div13, 10000
  %rem.decomposed = sub i32 %cond.frozen, %10
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %div13, i32 noundef %rem.decomposed) #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mfr_devset1 = getelementptr i8, ptr %call, i32 584
  %11 = ptrtoint ptr %mfr_devset1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mfr_devset1, align 4
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 7
  %15 = xor i16 %14, 4
  %16 = zext i16 %15 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.max20730_debugfs_read, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %switch.load) #8
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  %mfr_devset151 = getelementptr i8, ptr %call, i32 584
  %18 = ptrtoint ptr %mfr_devset151 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mfr_devset151, align 4
  %trunc504 = trunc i16 %19 to i2
  %20 = zext i2 %trunc504 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.78)
  switch i2 %trunc504, label %if.else76 [
    i2 0, label %if.then59
    i2 1, label %if.then66
    i2 -2, label %if.then73
  ]

if.then59:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.50, i32 noundef 16) #8
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.51, i32 noundef 16) #8
  br label %sw.epilog

if.then73:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.52, i32 noundef 16) #8
  br label %sw.epilog

if.else76:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.53, i32 noundef 16) #8
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %call, i32 -4
  %mfr_devset183 = getelementptr i8, ptr %call, i32 584
  %21 = ptrtoint ptr %mfr_devset183 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mfr_devset183, align 4
  %23 = lshr i16 %22, 13
  %24 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr3, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %25, label %if.else183 [
    i32 2, label %if.then90
    i32 1, label %sw.bb82.if.then125_crit_edge
    i32 0, label %sw.bb82.if.then125_crit_edge506
    i32 3, label %if.then156
  ]

sw.bb82.if.then125_crit_edge506:                  ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

sw.bb82.if.then125_crit_edge:                     ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

if.then90:                                        ; preds = %sw.bb82
  %trunc503 = trunc i16 %23 to i2
  %27 = zext i2 %trunc503 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.80)
  switch i2 %trunc503, label %if.else111 [
    i2 0, label %if.then94
    i2 1, label %if.then101
    i2 -2, label %if.then108
  ]

if.then94:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.54, i32 noundef 16) #8
  br label %sw.epilog

if.then101:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.55, i32 noundef 16) #8
  br label %sw.epilog

if.then108:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %call110 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.56, i32 noundef 16) #8
  br label %sw.epilog

if.else111:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %call113 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.57, i32 noundef 16) #8
  br label %sw.epilog

if.then125:                                       ; preds = %sw.bb82.if.then125_crit_edge, %sw.bb82.if.then125_crit_edge506
  %trunc502 = trunc i16 %23 to i2
  %28 = zext i2 %trunc502 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i2 %trunc502, label %if.else146 [
    i2 0, label %if.then129
    i2 1, label %if.then136
    i2 -2, label %if.then143
  ]

if.then129:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %call131 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.58, i32 noundef 16) #8
  br label %sw.epilog

if.then136:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %call138 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.59, i32 noundef 16) #8
  br label %sw.epilog

if.then143:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %call145 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.60, i32 noundef 16) #8
  br label %sw.epilog

if.else146:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %call148 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.61, i32 noundef 16) #8
  br label %sw.epilog

if.then156:                                       ; preds = %sw.bb82
  %trunc501 = trunc i16 %23 to i2
  %29 = zext i2 %trunc501 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.82)
  switch i2 %trunc501, label %if.else177 [
    i2 0, label %if.then160
    i2 1, label %if.then167
    i2 -2, label %if.then174
  ]

if.then160:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %call162 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.62, i32 noundef 16) #8
  br label %sw.epilog

if.then167:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %call169 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.60, i32 noundef 16) #8
  br label %sw.epilog

if.then174:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %call176 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.58, i32 noundef 16) #8
  br label %sw.epilog

if.else177:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %call179 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.59, i32 noundef 16) #8
  br label %sw.epilog

if.else183:                                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.63, i32 noundef 16) #8
  br label %sw.epilog

sw.bb189:                                         ; preds = %entry
  %mfr_devset1190 = getelementptr i8, ptr %call, i32 584
  %30 = ptrtoint ptr %mfr_devset1190 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mfr_devset1190, align 4
  %32 = lshr i16 %31, 8
  %trunc500 = trunc i16 %32 to i2
  %33 = zext i2 %trunc500 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.83)
  switch i2 %trunc500, label %if.else215 [
    i2 0, label %if.then198
    i2 1, label %if.then205
    i2 -2, label %if.then212
  ]

if.then198:                                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  %call200 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.64, i32 noundef 16) #8
  br label %sw.epilog

if.then205:                                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  %call207 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.65, i32 noundef 16) #8
  br label %sw.epilog

if.then212:                                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  %call214 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.66, i32 noundef 16) #8
  br label %sw.epilog

if.else215:                                       ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #10
  %call217 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.67, i32 noundef 16) #8
  br label %sw.epilog

sw.bb221:                                         ; preds = %entry
  %mfr_devset2 = getelementptr i8, ptr %call, i32 586
  %34 = ptrtoint ptr %mfr_devset2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mfr_devset2, align 2
  %36 = lshr i16 %35, 6
  %trunc499 = trunc i16 %36 to i2
  %37 = zext i2 %trunc499 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.84)
  switch i2 %trunc499, label %if.else246 [
    i2 0, label %if.then229
    i2 1, label %if.then236
    i2 -2, label %if.then243
  ]

if.then229:                                       ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #10
  %call231 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.68, i32 noundef 16) #8
  br label %sw.epilog

if.then236:                                       ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #10
  %call238 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.69, i32 noundef 16) #8
  br label %sw.epilog

if.then243:                                       ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #10
  %call245 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.70, i32 noundef 16) #8
  br label %sw.epilog

if.else246:                                       ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #10
  %call248 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.67, i32 noundef 16) #8
  br label %sw.epilog

sw.bb252:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mfr_devset2253 = getelementptr i8, ptr %call, i32 586
  %38 = ptrtoint ptr %mfr_devset2253 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mfr_devset2253, align 2
  %40 = lshr i16 %39, 5
  %41 = and i16 %40, 1
  %shr256 = zext i16 %41 to i32
  %call258 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %shr256) #8
  br label %sw.epilog

sw.bb259:                                         ; preds = %entry
  %mfr_devset2260 = getelementptr i8, ptr %call, i32 586
  %42 = ptrtoint ptr %mfr_devset2260 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mfr_devset2260, align 2
  %trunc = trunc i16 %43 to i2
  %44 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.85)
  switch i2 %trunc, label %if.else285 [
    i2 0, label %if.then268
    i2 1, label %if.then275
    i2 -2, label %if.then282
  ]

if.then268:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %call270 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.71, i32 noundef 16) #8
  br label %sw.epilog

if.then275:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %call277 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.72, i32 noundef 16) #8
  br label %sw.epilog

if.then282:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %call284 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.73, i32 noundef 16) #8
  br label %sw.epilog

if.else285:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #10
  %call287 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.74, i32 noundef 16) #8
  br label %sw.epilog

sw.bb291:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mfr_devset2292 = getelementptr i8, ptr %call, i32 586
  %45 = ptrtoint ptr %mfr_devset2292 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mfr_devset2292, align 2
  %47 = lshr i16 %46, 8
  %48 = and i16 %47, 7
  %shr295 = zext i16 %48 to i32
  %call297 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %shr295) #8
  br label %sw.epilog

sw.bb298:                                         ; preds = %entry
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %call300 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %50, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %cmp301 = icmp slt i32 %call300, 0
  br i1 %cmp301, label %sw.bb298.cleanup_crit_edge, label %if.end304

sw.bb298.cleanup_crit_edge:                       ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end304:                                        ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #10
  %call306 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %call300) #8
  br label %sw.epilog

sw.bb307:                                         ; preds = %entry
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  %call309 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %cmp310 = icmp slt i32 %call309, 0
  br i1 %cmp310, label %sw.bb307.cleanup_crit_edge, label %if.end313

sw.bb307.cleanup_crit_edge:                       ; preds = %sw.bb307
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end313:                                        ; preds = %sw.bb307
  call void @__sanitizer_cov_trace_pc() #10
  %call315 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %call309) #8
  br label %sw.epilog

sw.bb316:                                         ; preds = %entry
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %call318 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %54, i8 noundef zeroext 27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %cmp319 = icmp slt i32 %call318, 0
  br i1 %cmp319, label %sw.bb316.cleanup_crit_edge, label %if.end322

sw.bb316.cleanup_crit_edge:                       ; preds = %sw.bb316
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end322:                                        ; preds = %sw.bb316
  call void @__sanitizer_cov_trace_pc() #10
  %call324 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %call318) #8
  br label %sw.epilog

sw.bb325:                                         ; preds = %entry
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %call327 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %56, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %cmp328 = icmp slt i32 %call327, 0
  br i1 %cmp328, label %sw.bb325.cleanup_crit_edge, label %if.end331

sw.bb325.cleanup_crit_edge:                       ; preds = %sw.bb325
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end331:                                        ; preds = %sw.bb325
  call void @__sanitizer_cov_trace_pc() #10
  %call333 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %call327) #8
  br label %sw.epilog

sw.bb334:                                         ; preds = %entry
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  %call336 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %58, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %sw.bb334.cleanup_crit_edge, label %if.end340

sw.bb334.cleanup_crit_edge:                       ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end340:                                        ; preds = %sw.bb334
  call void @__sanitizer_cov_trace_pc() #10
  %mul342 = mul i32 %call336, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul342)
  %cmp345 = icmp sgt i32 %mul342, 0
  %cond360.in.v = select i1 %cmp345, i32 256, i32 -256
  %cond360.in = add i32 %cond360.in.v, %mul342
  %cond360 = sdiv i32 %cond360.in, 512
  %div362 = sdiv i32 %cond360.in, 5120000
  %rem363 = srem i32 %cond360, 10000
  %call364 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %div362, i32 noundef %rem363) #8
  br label %sw.epilog

sw.bb365:                                         ; preds = %entry
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %call367 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %60, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %cmp368 = icmp slt i32 %call367, 0
  br i1 %cmp368, label %sw.bb365.cleanup_crit_edge, label %if.end371

sw.bb365.cleanup_crit_edge:                       ; preds = %sw.bb365
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end371:                                        ; preds = %sw.bb365
  call void @__sanitizer_cov_trace_pc() #10
  %mul373 = mul i32 %call367, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul373)
  %cmp376 = icmp sgt i32 %mul373, 0
  %cond391.in.v = select i1 %cmp376, i32 256, i32 -256
  %cond391.in = add i32 %cond391.in.v, %mul373
  %cond391 = sdiv i32 %cond391.in, 512
  %div393 = sdiv i32 %cond391.in, 5120000
  %rem394 = srem i32 %cond391, 10000
  %call395 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tbuf, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %div393, i32 noundef %rem394) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call397 = call i32 @strlcpy(ptr noundef nonnull %tbuf, ptr noundef nonnull @.str.67, i32 noundef 16) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end371, %if.end340, %if.end331, %if.end322, %if.end313, %if.end304, %sw.bb291, %if.else285, %if.then282, %if.then275, %if.then268, %sw.bb252, %if.else246, %if.then243, %if.then236, %if.then229, %if.else215, %if.then212, %if.then205, %if.then198, %if.else183, %if.else177, %if.then174, %if.then167, %if.then160, %if.else146, %if.then143, %if.then136, %if.then129, %if.else111, %if.then108, %if.then101, %if.then94, %if.else76, %if.then73, %if.then66, %if.then59, %sw.bb15, %sw.bb
  %len.0 = phi i32 [ %call397, %sw.default ], [ %call395, %if.end371 ], [ %call364, %if.end340 ], [ %call333, %if.end331 ], [ %call324, %if.end322 ], [ %call315, %if.end313 ], [ %call306, %if.end304 ], [ %call297, %sw.bb291 ], [ %call270, %if.then268 ], [ %call277, %if.then275 ], [ %call284, %if.then282 ], [ %call287, %if.else285 ], [ %call258, %sw.bb252 ], [ %call231, %if.then229 ], [ %call238, %if.then236 ], [ %call245, %if.then243 ], [ %call248, %if.else246 ], [ %call200, %if.then198 ], [ %call207, %if.then205 ], [ %call214, %if.then212 ], [ %call217, %if.else215 ], [ %call96, %if.then94 ], [ %call103, %if.then101 ], [ %call110, %if.then108 ], [ %call113, %if.else111 ], [ %call131, %if.then129 ], [ %call138, %if.then136 ], [ %call145, %if.then143 ], [ %call148, %if.else146 ], [ %call162, %if.then160 ], [ %call169, %if.then167 ], [ %call176, %if.then174 ], [ %call179, %if.else177 ], [ %call185, %if.else183 ], [ %call61, %if.then59 ], [ %call68, %if.then66 ], [ %call75, %if.then73 ], [ %call78, %if.else76 ], [ %call49, %sw.bb15 ], [ %call14, %sw.bb ]
  %call399 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tbuf, i32 noundef %len.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb365.cleanup_crit_edge, %sw.bb334.cleanup_crit_edge, %sw.bb325.cleanup_crit_edge, %sw.bb316.cleanup_crit_edge, %sw.bb307.cleanup_crit_edge, %sw.bb298.cleanup_crit_edge
  %retval.0 = phi i32 [ %call399, %sw.epilog ], [ %call300, %sw.bb298.cleanup_crit_edge ], [ %call309, %sw.bb307.cleanup_crit_edge ], [ %call318, %sw.bb316.cleanup_crit_edge ], [ %call327, %sw.bb325.cleanup_crit_edge ], [ %call336, %sw.bb334.cleanup_crit_edge ], [ %call367, %sw.bb365.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_max20730__292_783_max20730_driver_init6, !1, !"__initcall__kmod_max20730__292_783_max20730_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 783, i32 1}
!2 = !{ptr @__exitcall_max20730_driver_exit, !1, !"__exitcall_max20730_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 785, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 786, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 787, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns297, !11, !"__UNIQUE_ID_import_ns297", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 788, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 776, i32 11}
!14 = !{ptr @max20730_driver, !15, !"max20730_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 774, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 675, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max20730_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max20730_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 678, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 680, i32 3}
!28 = !{ptr @max20730_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @max20730_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 696, i32 3}
!32 = !{ptr @max20730_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max20730_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 699, i32 31}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 701, i32 3}
!38 = !{ptr @max20730_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max20730_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 707, i32 3}
!42 = !{ptr @max20730_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max20730_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 712, i32 3}
!46 = !{ptr @max20730_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max20730_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @max20730_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 725, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 727, i32 54}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 732, i32 3}
!55 = !{ptr @max20730_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @max20730_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 748, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @max20730_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @max20730_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @max20730_info, !63, !"max20730_info", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 530, i32 39}
!64 = !{ptr @max_current, !65, !"max_current", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 437, i32 12}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 335, i32 22}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 338, i32 22}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 341, i32 22}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 344, i32 22}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 347, i32 22}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 350, i32 22}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 353, i32 22}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 356, i32 22}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 359, i32 22}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 362, i32 22}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 365, i32 22}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 368, i32 22}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 371, i32 22}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 374, i32 22}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 377, i32 22}
!96 = !{ptr @max20730_fops, !97, !"max20730_fops", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 296, i32 37}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 125, i32 44}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 144, i32 44}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 151, i32 24}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 153, i32 24}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 155, i32 24}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 157, i32 24}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 166, i32 25}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 168, i32 25}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 170, i32 25}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 172, i32 25}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 176, i32 25}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 178, i32 25}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 180, i32 25}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 182, i32 25}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 186, i32 25}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 194, i32 24}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 202, i32 24}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 204, i32 24}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 206, i32 24}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 208, i32 24}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 215, i32 24}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 217, i32 24}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 219, i32 24}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 233, i32 24}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 235, i32 24}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 237, i32 24}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 239, i32 24}
!152 = !{ptr @max20730_of_match, !153, !"max20730_of_match", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 764, i32 34}
!154 = !{ptr @max20730_id, !155, !"max20730_id", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/pmbus/max20730.c", i32 754, i32 35}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2148534413, i64 2148534693, i64 2148535027, i64 2148535361}
