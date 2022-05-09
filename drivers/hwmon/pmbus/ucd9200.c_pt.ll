; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/ucd9200.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/ucd9200.c"
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

@__initcall__kmod_ucd9200__288_207_ucd9200_driver_init6 = internal global ptr @ucd9200_driver_init, section ".initcall6.init", align 4
@ucd9200_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ucd9200_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ucd9200_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ucd9200_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ucd9200_driver_exit = internal global ptr @ucd9200_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [29 x i8] c"ucd9200.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"ucd9200.description=PMBus driver for TI UCD922x, UCD924x\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"ucd9200.file=drivers/hwmon/pmbus/ucd9200\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"ucd9200.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [24 x i8] c"ucd9200.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ucd9200\00", [24 x i8] zeroinitializer }, align 32
@ucd9200_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9222\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9244\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9246\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cd9248\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@ucd9200_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ucd9200\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ucd9220\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ucd9222\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ucd9224\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ucd9240\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ucd9244\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ucd9246\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ucd9248\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read device ID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucd9200_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/ucd9200.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr = internal global ptr @ucd9200_probe._entry, section ".printk_index", align 4
@ucd9200_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 94, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device ID %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.9 = internal global ptr @ucd9200_probe._entry.6, section ".printk_index", align 4
@ucd9200_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.12 = internal global ptr @ucd9200_probe._entry.10, section ".printk_index", align 4
@ucd9200_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.16 = internal global ptr @ucd9200_probe._entry.13, section ".printk_index", align 4
@ucd9200_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read phase information\0A\00", [62 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.19 = internal global ptr @ucd9200_probe._entry.17, section ".printk_index", align 4
@ucd9200_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No rails configured\0A\00", [43 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.22 = internal global ptr @ucd9200_probe._entry.20, section ".printk_index", align 4
@ucd9200_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d rails configured\0A\00", [43 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.25 = internal global ptr @ucd9200_probe._entry.23, section ".printk_index", align 4
@ucd9200_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize PHASE registers\0A\00", [58 x i8] zeroinitializer }, align 32
@ucd9200_probe._entry_ptr.28 = internal global ptr @ucd9200_probe._entry.26, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ucd9200_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 198, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 200, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"ucd9200_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 37, i32 49 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"ucd9200_id\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 24, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 90, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 94, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 101, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 111, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 123, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 140, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 143, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [33 x i8] c"../drivers/hwmon/pmbus/ucd9200.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 169, i32 4 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ucd9200_driver_exit, ptr @__initcall__kmod_ucd9200__288_207_ucd9200_driver_init6, ptr @ucd9200_driver_exit, ptr @ucd9200_probe._entry, ptr @ucd9200_probe._entry.10, ptr @ucd9200_probe._entry.13, ptr @ucd9200_probe._entry.17, ptr @ucd9200_probe._entry.20, ptr @ucd9200_probe._entry.23, ptr @ucd9200_probe._entry.26, ptr @ucd9200_probe._entry.6, ptr @ucd9200_probe._entry_ptr, ptr @ucd9200_probe._entry_ptr.12, ptr @ucd9200_probe._entry_ptr.16, ptr @ucd9200_probe._entry_ptr.19, ptr @ucd9200_probe._entry_ptr.22, ptr @ucd9200_probe._entry_ptr.25, ptr @ucd9200_probe._entry_ptr.28, ptr @ucd9200_probe._entry_ptr.9, ptr @ucd9200_driver, ptr @.str, ptr @ucd9200_of_match, ptr @ucd9200_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9200_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ucd9200_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucd9200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ucd9200_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9200_probe(ptr noundef %client) #2 align 64 {
entry:
  %block_buffer = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %block_buffer) #7
  %0 = call ptr @memset(ptr %block_buffer, i32 255, i32 33)
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 51904512
  call void @__sanitizer_cov_trace_const_cmp4(i32 51904512, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 51904512
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -3, ptr noundef nonnull %block_buffer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [33 x i8], ptr %block_buffer, i32 0, i32 %call1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.7, ptr noundef nonnull %block_buffer) #10
  %call16 = call i32 @strlen(ptr noundef nonnull @ucd9200_id) #11
  %call17 = call i32 @strncasecmp(ptr noundef nonnull @ucd9200_id, ptr noundef nonnull %block_buffer, i32 noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end3.if.end29_crit_edge, label %for.inc

if.end3.if.end29_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc:                                          ; preds = %if.end3
  %call16.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 1)) #11
  %call17.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 1), ptr noundef nonnull %block_buffer, i32 noundef %call16.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %for.inc.if.end29_crit_edge, label %for.inc.1

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.1:                                        ; preds = %for.inc
  %call16.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 2)) #11
  %call17.2 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 2), ptr noundef nonnull %block_buffer, i32 noundef %call16.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %for.inc.1.if.end29_crit_edge, label %for.inc.2

for.inc.1.if.end29_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.2:                                        ; preds = %for.inc.1
  %call16.3 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 3)) #11
  %call17.3 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 3), ptr noundef nonnull %block_buffer, i32 noundef %call16.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3)
  %tobool18.not.3 = icmp eq i32 %call17.3, 0
  br i1 %tobool18.not.3, label %for.inc.2.if.end29_crit_edge, label %for.inc.3

for.inc.2.if.end29_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.3:                                        ; preds = %for.inc.2
  %call16.4 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 4)) #11
  %call17.4 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 4), ptr noundef nonnull %block_buffer, i32 noundef %call16.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.4)
  %tobool18.not.4 = icmp eq i32 %call17.4, 0
  br i1 %tobool18.not.4, label %for.inc.3.if.end29_crit_edge, label %for.inc.4

for.inc.3.if.end29_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.4:                                        ; preds = %for.inc.3
  %call16.5 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 5)) #11
  %call17.5 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 5), ptr noundef nonnull %block_buffer, i32 noundef %call16.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.5)
  %tobool18.not.5 = icmp eq i32 %call17.5, 0
  br i1 %tobool18.not.5, label %for.inc.4.if.end29_crit_edge, label %for.inc.5

for.inc.4.if.end29_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.5:                                        ; preds = %for.inc.4
  %call16.6 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 6)) #11
  %call17.6 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 6), ptr noundef nonnull %block_buffer, i32 noundef %call16.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.6)
  %tobool18.not.6 = icmp eq i32 %call17.6, 0
  br i1 %tobool18.not.6, label %for.inc.5.if.end29_crit_edge, label %for.inc.6

for.inc.5.if.end29_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.6:                                        ; preds = %for.inc.5
  %call16.7 = call i32 @strlen(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 7)) #11
  %call17.7 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 7), ptr noundef nonnull %block_buffer, i32 noundef %call16.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.7)
  %tobool18.not.7 = icmp eq i32 %call17.7, 0
  br i1 %tobool18.not.7, label %for.inc.6.if.end29_crit_edge, label %for.inc.7

for.inc.6.if.end29_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end29:                                         ; preds = %for.inc.6.if.end29_crit_edge, %for.inc.5.if.end29_crit_edge, %for.inc.4.if.end29_crit_edge, %for.inc.3.if.end29_crit_edge, %for.inc.2.if.end29_crit_edge, %for.inc.1.if.end29_crit_edge, %for.inc.if.end29_crit_edge, %if.end3.if.end29_crit_edge
  %mid.0217.lcssa = phi ptr [ @ucd9200_id, %if.end3.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 1), %for.inc.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 2), %for.inc.1.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 3), %for.inc.2.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 4), %for.inc.3.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 5), %for.inc.4.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 6), %for.inc.5.if.end29_crit_edge ], [ getelementptr inbounds ([9 x %struct.i2c_device_id], ptr @ucd9200_id, i32 0, i32 7), %for.inc.6.if.end29_crit_edge ]
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call ptr @of_device_get_match_data(ptr noundef %dev7) #7
  %10 = ptrtoint ptr %call34 to i32
  br label %if.end35

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0217.lcssa, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %chip.0 = phi i32 [ %10, %if.then32 ], [ %12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip.0)
  %cmp36.not = icmp eq i32 %chip.0, 0
  br i1 %cmp36.not, label %if.end35.if.end52_crit_edge, label %land.lhs.true

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end35
  %name37 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call41 = call i32 @strcmp(ptr noundef %name37, ptr noundef %mid.0217.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %land.lhs.true.if.end52_crit_edge, label %do.end46

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end46:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev7, ptr noundef nonnull @.str.14, ptr noundef %name37, ptr noundef %mid.0217.lcssa) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %land.lhs.true.if.end52_crit_edge, %if.end35.if.end52_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 492, i32 noundef 3520) #7
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %call59 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -46, ptr noundef nonnull %block_buffer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp68218.not = icmp eq i32 %call59, 0
  br i1 %cmp68218.not, label %if.end66.do.end83_crit_edge, label %for.body69.preheader

if.end66.do.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

for.body69.preheader:                             ; preds = %if.end66
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %call.i.promoted = load i32, ptr %call.i, align 4
  br label %for.body69

for.body69:                                       ; preds = %if.end73.for.body69_crit_edge, %for.body69.preheader
  %.pr235 = phi i32 [ %inc, %if.end73.for.body69_crit_edge ], [ %call.i.promoted, %for.body69.preheader ]
  %i.0219 = phi i32 [ %inc76, %if.end73.for.body69_crit_edge ], [ 0, %for.body69.preheader ]
  %arrayidx70 = getelementptr [33 x i8], ptr %block_buffer, i32 0, i32 %i.0219
  %15 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool71.not = icmp eq i8 %16, 0
  br i1 %tobool71.not, label %for.body69.for.end77_crit_edge, label %if.end73

for.body69.for.end77_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

if.end73:                                         ; preds = %for.body69
  %inc = add i32 %.pr235, 1
  %inc76 = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc76, %call59
  br i1 %exitcond.not, label %if.end73.for.end77_crit_edge, label %if.end73.for.body69_crit_edge

if.end73.for.body69_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69

if.end73.for.end77_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end77

for.end77:                                        ; preds = %if.end73.for.end77_crit_edge, %for.body69.for.end77_crit_edge
  %17 = phi i32 [ %.pr235, %for.body69.for.end77_crit_edge ], [ %inc, %if.end73.for.end77_crit_edge ]
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool79.not = icmp eq i32 %17, 0
  br i1 %tobool79.not, label %for.end77.do.end83_crit_edge, label %do.end88

for.end77.do.end83_crit_edge:                     ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end83:                                         ; preds = %for.end77.do.end83_crit_edge, %if.end66.do.end83_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.21) #10
  br label %cleanup

do.end88:                                         ; preds = %for.end77
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.24, i32 noundef %17) #10
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp93221 = icmp sgt i32 %20, 0
  br i1 %cmp93221, label %do.end88.for.cond95.preheader_crit_edge, label %if.end127.thread

do.end88.for.cond95.preheader_crit_edge:          ; preds = %do.end88
  br label %for.cond95.preheader

if.end127.thread:                                 ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %func232 = getelementptr inbounds %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %func232 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 63101, ptr %func232, align 4
  br label %for.end138

for.cond95.preheader:                             ; preds = %for.inc119.for.cond95.preheader_crit_edge, %do.end88.for.cond95.preheader_crit_edge
  %i.1222 = phi i32 [ %inc120, %for.inc119.for.cond95.preheader_crit_edge ], [ 0, %do.end88.for.cond95.preheader_crit_edge ]
  %conv = trunc i32 %i.1222 to i8
  %call98 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %for.cond95.preheader.for.inc108_crit_edge, label %if.end102

for.cond95.preheader.for.inc108_crit_edge:        ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108

if.end102:                                        ; preds = %for.cond95.preheader
  %call103 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end102.for.inc108_crit_edge, label %if.end102.for.inc119_crit_edge

if.end102.for.inc119_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

if.end102.for.inc108_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108

for.inc108:                                       ; preds = %if.end102.for.inc108_crit_edge, %for.cond95.preheader.for.inc108_crit_edge
  %call98.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.1)
  %cmp99.1 = icmp slt i32 %call98.1, 0
  br i1 %cmp99.1, label %for.inc108.for.inc108.1_crit_edge, label %if.end102.1

for.inc108.for.inc108.1_crit_edge:                ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108.1

if.end102.1:                                      ; preds = %for.inc108
  %call103.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.1)
  %cmp104.1 = icmp slt i32 %call103.1, 0
  br i1 %cmp104.1, label %if.end102.1.for.inc108.1_crit_edge, label %if.end102.1.for.inc119_crit_edge

if.end102.1.for.inc119_crit_edge:                 ; preds = %if.end102.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

if.end102.1.for.inc108.1_crit_edge:               ; preds = %if.end102.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc108.1

for.inc108.1:                                     ; preds = %if.end102.1.for.inc108.1_crit_edge, %for.inc108.for.inc108.1_crit_edge
  %call98.2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.2)
  %cmp99.2 = icmp slt i32 %call98.2, 0
  br i1 %cmp99.2, label %for.inc108.1.do.end116_crit_edge, label %if.end102.2

for.inc108.1.do.end116_crit_edge:                 ; preds = %for.inc108.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

if.end102.2:                                      ; preds = %for.inc108.1
  %call103.2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.2)
  %cmp104.2 = icmp slt i32 %call103.2, 0
  br i1 %cmp104.2, label %if.end102.2.do.end116_crit_edge, label %if.end102.2.for.inc119_crit_edge

if.end102.2.for.inc119_crit_edge:                 ; preds = %if.end102.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

if.end102.2.do.end116_crit_edge:                  ; preds = %if.end102.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end116:                                        ; preds = %if.end102.2.do.end116_crit_edge, %for.inc108.1.do.end116_crit_edge
  %ret.2.2 = phi i32 [ %call98.2, %for.inc108.1.do.end116_crit_edge ], [ %call103.2, %if.end102.2.do.end116_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.27) #10
  br label %cleanup

for.inc119:                                       ; preds = %if.end102.2.for.inc119_crit_edge, %if.end102.1.for.inc119_crit_edge, %if.end102.for.inc119_crit_edge
  %inc120 = add nuw nsw i32 %i.1222, 1
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  %cmp93 = icmp slt i32 %inc120, %23
  br i1 %cmp93, label %for.inc119.for.cond95.preheader_crit_edge, label %for.end121

for.inc119.for.cond95.preheader_crit_edge:        ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond95.preheader

for.end121:                                       ; preds = %for.inc119
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp123 = icmp sgt i32 %23, 1
  br i1 %cmp123, label %if.then125, label %for.end121.if.end127_crit_edge

for.end121.if.end127_crit_edge:                   ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then125:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr231 = load i32, ptr %call.i, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %for.end121.if.end127_crit_edge
  %25 = phi i32 [ %.pr231, %if.then125 ], [ %23, %for.end121.if.end127_crit_edge ]
  %func = getelementptr inbounds %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 63101, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp131223 = icmp sgt i32 %25, 1
  br i1 %cmp131223, label %if.end127.for.body133_crit_edge, label %if.end127.for.end138_crit_edge

if.end127.for.end138_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

if.end127.for.body133_crit_edge:                  ; preds = %if.end127
  br label %for.body133

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %if.end127.for.body133_crit_edge
  %i.2224 = phi i32 [ %inc137, %for.body133.for.body133_crit_edge ], [ 1, %if.end127.for.body133_crit_edge ]
  %arrayidx135 = getelementptr %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 7, i32 %i.2224
  %27 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 46164, ptr %arrayidx135, align 4
  %inc137 = add nuw nsw i32 %i.2224, 1
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i, align 4
  %cmp131 = icmp slt i32 %inc137, %29
  br i1 %cmp131, label %for.body133.for.body133_crit_edge, label %for.body133.for.end138_crit_edge

for.body133.for.end138_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body133

for.end138:                                       ; preds = %for.body133.for.end138_crit_edge, %if.end127.for.end138_crit_edge, %if.end127.thread
  %func234 = phi ptr [ %func232, %if.end127.thread ], [ %func, %if.end127.for.end138_crit_edge ], [ %func, %for.body133.for.end138_crit_edge ]
  %driver_data139 = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0217.lcssa, i32 0, i32 1
  %30 = ptrtoint ptr %driver_data139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %driver_data139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp140 = icmp eq i32 %31, 4
  br i1 %cmp140, label %if.then142, label %for.end138.if.end145_crit_edge

for.end138.if.end145_crit_edge:                   ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then142:                                       ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %func234 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %func234, align 4
  %or = or i32 %33, 65664
  store i32 %or, ptr %func234, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %for.end138.if.end145_crit_edge
  %call146 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %do.end116, %do.end83, %do.end64, %if.end52.cleanup_crit_edge, %for.inc.7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call59, %do.end64 ], [ %ret.2.2, %do.end116 ], [ %call146, %if.end145 ], [ -19, %do.end83 ], [ -19, %for.inc.7 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_buffer) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_ucd9200__288_207_ucd9200_driver_init6, !1, !"__initcall__kmod_ucd9200__288_207_ucd9200_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 207, i32 1}
!2 = !{ptr @__exitcall_ucd9200_driver_exit, !1, !"__exitcall_ucd9200_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 209, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 210, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 211, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 212, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 200, i32 11}
!14 = !{ptr @ucd9200_driver, !15, !"ucd9200_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 198, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 90, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ucd9200_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ucd9200_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 94, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ucd9200_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ucd9200_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 101, i32 3}
!31 = !{ptr @ucd9200_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ucd9200_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 111, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ucd9200_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ucd9200_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 123, i32 3}
!40 = !{ptr @ucd9200_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ucd9200_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 140, i32 3}
!44 = !{ptr @ucd9200_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ucd9200_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 143, i32 2}
!48 = !{ptr @ucd9200_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ucd9200_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 169, i32 4}
!52 = !{ptr @ucd9200_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ucd9200_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ucd9200_of_match, !55, !"ucd9200_of_match", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 37, i32 49}
!56 = !{ptr @ucd9200_id, !57, !"ucd9200_id", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/pmbus/ucd9200.c", i32 24, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
