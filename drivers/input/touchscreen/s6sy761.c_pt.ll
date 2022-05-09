; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/s6sy761.c_pt.bc'
source_filename = "../drivers/input/touchscreen/s6sy761.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.s6sy761_data = type { ptr, [2 x %struct.regulator_bulk_data], ptr, %struct.touchscreen_properties, [256 x i8], i16, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_s6sy761__291_550_s6sy761_driver_init6 = internal global ptr @s6sy761_driver_init, section ".initcall6.init", align 4
@s6sy761_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s6sy761_probe, ptr @s6sy761_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6sy761_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s6sy761_pm_ops, ptr null, ptr null }, ptr @s6sy761_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s6sy761_driver_exit = internal global ptr @s6sy761_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [51 x i8] c"s6sy761.author=Andi Shyti <andi.shyti@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [49 x i8] c"s6sy761.description=Samsung S6SY761 Touch Screen\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"s6sy761.file=drivers/input/touchscreen/s6sy761\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"s6sy761.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s6sy761\00", [24 x i8] zeroinitializer }, align 32
@s6sy761_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6sy761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s6sy761_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s6sy761_suspend, ptr @s6sy761_resume, ptr @s6sy761_suspend, ptr @s6sy761_resume, ptr @s6sy761_suspend, ptr @s6sy761_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s6sy761_runtime_suspend, ptr @s6sy761_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s6sy761_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s6sy761\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@s6sy761_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"the axis have not been set\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s6sy761_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/s6sy761.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6sy761_probe._entry_ptr = internal global ptr @s6sy761_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s6sy761_irq\00", [20 x i8] zeroinitializer }, align 32
@s6sy761_attribute_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @s6sy761_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@s6sy761_input_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 272, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to turn off sensing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s6sy761_input_close\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@s6sy761_input_close._entry_ptr = internal global ptr @s6sy761_input_close._entry, section ".printk_index", align 4
@s6sy761_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 234, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read events\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s6sy761_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@s6sy761_irq_handler._entry_ptr = internal global ptr @s6sy761_irq_handler._entry, section ".printk_index", align 4
@s6sy761_irq_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 248, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@s6sy761_irq_handler._entry_ptr.15 = internal global ptr @s6sy761_irq_handler._entry.14, section ".printk_index", align 4
@s6sy761_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_devid, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_devid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @s6sy761_sysfs_devid, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 7]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"s6sy761_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 539, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 541, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"s6sy761_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 526, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"s6sy761_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 519, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"s6sy761_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 533, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 411, i32 52 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 412, i32 53 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 448, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 465, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"s6sy761_attribute_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 290, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 272, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 234, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 248, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"s6sy761_sysfs_attrs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 285, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"dev_attr_devid\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 283, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [39 x i8] c"../drivers/input/touchscreen/s6sy761.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 280, i32 22 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_s6sy761_driver_exit, ptr @__initcall__kmod_s6sy761__291_550_s6sy761_driver_init6, ptr @s6sy761_driver_exit, ptr @s6sy761_input_close._entry, ptr @s6sy761_input_close._entry_ptr, ptr @s6sy761_irq_handler._entry, ptr @s6sy761_irq_handler._entry.14, ptr @s6sy761_irq_handler._entry_ptr, ptr @s6sy761_irq_handler._entry_ptr.15, ptr @s6sy761_probe._entry, ptr @s6sy761_probe._entry_ptr, ptr @s6sy761_driver, ptr @.str, ptr @s6sy761_of_match, ptr @s6sy761_pm_ops, ptr @s6sy761_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @s6sy761_attribute_group, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @s6sy761_sysfs_attrs, ptr @dev_attr_devid, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_input_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_irq_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6sy761_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s6sy761_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6sy761_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @s6sy761_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buffer.i = alloca [11 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %and.i = and i32 %call.i.i, 202899457
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899457, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899457
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 304, i32 noundef 3520) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %regulators = getelementptr inbounds %struct.s6sy761_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %regulators, align 4
  %arrayidx7 = getelementptr %struct.s6sy761_data, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.2, ptr %arrayidx7, align 4
  %call11 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call.i131 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @s6sy761_power_off, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i, label %if.end19, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i, align 4
  tail call void @disable_irq(i32 noundef %13) #8
  %call.i.i132 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer.i) #8
  %14 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 1
  %15 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 2
  %16 = getelementptr inbounds [11 x i8], ptr %buffer.i, i32 0, i32 8
  %17 = call ptr @memset(ptr %buffer.i, i32 255, i32 11)
  %call.i133 = tail call fastcc i32 @s6sy761_power_on(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %if.end.i, label %if.end19.s6sy761_hw_init.exit.thread_crit_edge

if.end19.s6sy761_hw_init.exit.thread_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %s6sy761_hw_init.exit.thread

if.end.i:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call1.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %19, i8 noundef zeroext 82, i8 noundef zeroext 3, ptr noundef nonnull %buffer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i135 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i135, label %if.end.i.s6sy761_hw_init.exit.thread_crit_edge, label %if.end3.i

if.end.i.s6sy761_hw_init.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s6sy761_hw_init.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %14, align 1
  %devid.i = getelementptr inbounds %struct.s6sy761_data, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %devid.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %devid.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call8.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %24, i8 noundef zeroext 35, i8 noundef zeroext 11, ptr noundef nonnull %buffer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end3.i.s6sy761_hw_init.exit.thread_crit_edge, label %if.end11.i

if.end3.i.s6sy761_hw_init.exit.thread_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s6sy761_hw_init.exit.thread

if.end11.i:                                       ; preds = %if.end3.i
  %25 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buffer.i, align 2
  %conv.i136 = zext i16 %26 to i32
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %15, align 2
  %conv17.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %16, align 2
  %31 = call i8 @llvm.umax.i8(i8 %30, i8 1) #8
  %tx_channel.i = getelementptr inbounds %struct.s6sy761_data, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %tx_channel.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tx_channel.i, align 2
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call26.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end11.i.s6sy761_hw_init.exit.thread_crit_edge, label %if.else.i

if.end11.i.s6sy761_hw_init.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s6sy761_hw_init.exit.thread

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call26.i)
  %cmp30.not.i = icmp eq i32 %call26.i, 128
  br i1 %cmp30.not.i, label %if.end23, label %if.else.i.s6sy761_hw_init.exit.thread_crit_edge

if.else.i.s6sy761_hw_init.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s6sy761_hw_init.exit.thread

s6sy761_hw_init.exit.thread:                      ; preds = %if.else.i.s6sy761_hw_init.exit.thread_crit_edge, %if.end11.i.s6sy761_hw_init.exit.thread_crit_edge, %if.end3.i.s6sy761_hw_init.exit.thread_crit_edge, %if.end.i.s6sy761_hw_init.exit.thread_crit_edge, %if.end19.s6sy761_hw_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.else.i.s6sy761_hw_init.exit.thread_crit_edge ], [ %call26.i, %if.end11.i.s6sy761_hw_init.exit.thread_crit_edge ], [ %call8.i, %if.end3.i.s6sy761_hw_init.exit.thread_crit_edge ], [ %call1.i, %if.end.i.s6sy761_hw_init.exit.thread_crit_edge ], [ %call.i133, %if.end19.s6sy761_hw_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i) #8
  br label %cleanup

if.end23:                                         ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer.i) #8
  %call25 = call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %input = getelementptr inbounds %struct.s6sy761_data, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call25, ptr %input, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %36 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str, ptr %call25, align 8
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input, align 4
  %id32 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %id32 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 24, ptr %id32, align 4
  %40 = load ptr, ptr %input, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 31
  %41 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @s6sy761_input_open, ptr %open, align 8
  %42 = load ptr, ptr %input, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 32
  %43 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @s6sy761_input_close, ptr %close, align 4
  %44 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %44, i32 noundef 53, i32 noundef 0, i32 noundef %conv.i136, i32 noundef 0, i32 noundef 0) #8
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %46, i32 noundef 54, i32 noundef 0, i32 noundef %conv17.i, i32 noundef 0, i32 noundef 0) #8
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %48, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %49 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %50, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %52, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %53 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %54, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  call void @input_set_abs_params(ptr noundef %56, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #8
  %57 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input, align 4
  %prop = getelementptr inbounds %struct.s6sy761_data, ptr %call.i, i32 0, i32 3
  call void @touchscreen_parse_properties(ptr noundef %58, i1 noundef zeroext true, ptr noundef %prop) #8
  %59 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input, align 4
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 26
  %61 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i137 = icmp eq ptr %62, null
  br i1 %tobool.not.i137, label %if.end29.do.end_crit_edge, label %input_abs_get_max.exit

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

input_abs_get_max.exit:                           ; preds = %if.end29
  %maximum.i = getelementptr %struct.input_absinfo, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool45.not = icmp eq i32 %64, 0
  br i1 %tobool45.not, label %input_abs_get_max.exit.do.end_crit_edge, label %input_abs_get_max.exit143

input_abs_get_max.exit.do.end_crit_edge:          ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

input_abs_get_max.exit143:                        ; preds = %input_abs_get_max.exit
  %maximum.i140 = getelementptr %struct.input_absinfo, ptr %62, i32 1, i32 2
  %65 = ptrtoint ptr %maximum.i140 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %maximum.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool48.not = icmp eq i32 %66, 0
  br i1 %tobool48.not, label %input_abs_get_max.exit143.do.end_crit_edge, label %input_abs_get_max.exit143.if.end51_crit_edge

input_abs_get_max.exit143.if.end51_crit_edge:     ; preds = %input_abs_get_max.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

input_abs_get_max.exit143.do.end_crit_edge:       ; preds = %input_abs_get_max.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %input_abs_get_max.exit143.do.end_crit_edge, %input_abs_get_max.exit.do.end_crit_edge, %if.end29.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end, %input_abs_get_max.exit143.if.end51_crit_edge
  %67 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input, align 4
  %69 = ptrtoint ptr %tx_channel.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tx_channel.i, align 2
  %conv = zext i8 %70 to i32
  %call53 = call i32 @input_mt_init_slots(ptr noundef %68, i32 noundef %conv, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %71 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input, align 4
  %driver_data.i.i144 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 40, i32 8
  %73 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %driver_data.i.i144, align 4
  %74 = load ptr, ptr %input, align 4
  %call59 = call i32 @input_register_device(ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  %call64 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %76, ptr noundef null, ptr noundef nonnull @s6sy761_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %call69 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @s6sy761_attribute_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void @pm_runtime_enable(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end67.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %s6sy761_hw_init.exit.thread, %devm_add_action_or_reset.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end4.cleanup_crit_edge ], [ %call.i131, %devm_add_action_or_reset.exit ], [ -12, %if.end23.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ], [ %call59, %if.end56.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ], [ %retval.0.i.ph, %s6sy761_hw_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s6sy761_power_off(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %regulators = getelementptr inbounds %struct.s6sy761_data, ptr %data, i32 0, i32 1
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 16) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s6sy761_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_irq_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.s6sy761_data, ptr %dev, i32 0, i32 4
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext 96, i8 noundef zeroext 8, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr %struct.s6sy761_data, ptr %dev, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %8 = and i8 %7, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp10 = icmp ugt i8 %8, 31
  br i1 %cmp10, label %if.end5.cleanup_crit_edge, label %if.end15, !prof !66

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end15.if.end29_crit_edge, label %if.then17

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then17:                                        ; preds = %if.end15
  %conv18 = zext i8 %8 to i16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #8
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 97, ptr %cmd.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr1.i, align 2
  %16 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %20 = load i16, ptr %addr1.i, align 2
  %21 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %22 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %mul.i = shl nuw nsw i16 %conv18, 3
  %23 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %mul.i, ptr %len6.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %add.ptr.i = getelementptr %struct.s6sy761_data, ptr %dev, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp12.i = icmp eq i32 %call.i, 2
  %cond.i = select i1 %cmp12.i, i32 2, i32 -2147483648
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %cond.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp20 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp20, label %do.end25, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %narrow = add nuw nsw i8 %8, 1
  %conv.i = zext i8 %narrow to i32
  %input.i.i.i = getelementptr inbounds %struct.s6sy761_data, ptr %dev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29
  %i.019.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i45 = shl i32 %i.019.i, 3
  %arrayidx.i = getelementptr %struct.s6sy761_data, ptr %dev, i32 0, i32 4, i32 %mul.i45
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %31 = and i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cond11.i = icmp eq i8 %31, 0
  br i1 %cond11.i, label %sw.bb.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  %32 = and i8 %30, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.for.inc.i_crit_edge, label %if.end.i.i, !prof !66

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %33 = lshr exact i8 %32, 2
  %conv7.i.i = add nsw i8 %33, -1
  %34 = lshr i8 %30, 6
  %conv13.i.i = zext i8 %34 to i32
  %35 = zext i32 %conv13.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv13.i.i, label %if.end.i.i.for.inc.i_crit_edge [
    i32 2, label %if.end.i.i.sw.bb14.i.i_crit_edge
    i32 3, label %sw.bb.i.i
    i32 1, label %if.end.i.i.sw.bb14.i.i_crit_edge46
  ]

if.end.i.i.sw.bb14.i.i_crit_edge46:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i.i

if.end.i.i.sw.bb14.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input.i.i.i, align 4
  %conv.i.i.i = zext i8 %conv7.i.i to i32
  call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 47, i32 noundef %conv.i.i.i) #8
  %38 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %39, i32 noundef 0, i1 noundef zeroext false) #8
  br label %cleanup.sink.split.i.i

sw.bb14.i.i:                                      ; preds = %if.end.i.i.sw.bb14.i.i_crit_edge, %if.end.i.i.sw.bb14.i.i_crit_edge46
  %arrayidx.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i, align 1
  %arrayidx1.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %42 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.i.i.i, align 1
  %arrayidx2.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %44 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx2.i.i.i, align 1
  %46 = and i8 %45, 63
  %arrayidx4.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %47 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %48 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 4
  %arrayidx6.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %49 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx6.i.i.i, align 1
  %conv7.i.i.i = zext i8 %50 to i32
  %51 = lshr i32 %conv7.i.i.i, 4
  %or.i.i.i = or i32 %51, %shl.i.i.i
  %arrayidx10.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %52 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx10.i.i.i, align 1
  %conv11.i.i.i = zext i8 %53 to i32
  %shl12.i.i.i = shl nuw nsw i32 %conv11.i.i.i, 4
  %and15.i.i.i = and i32 %conv7.i.i.i, 15
  %or16.i.i.i = or i32 %shl12.i.i.i, %and15.i.i.i
  %54 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input.i.i.i, align 4
  %conv18.i.i.i = zext i8 %conv7.i.i to i32
  call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 47, i32 noundef %conv18.i.i.i) #8
  %56 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input.i.i.i, align 4
  %call.i23.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %57, i32 noundef 0, i1 noundef zeroext true) #8
  %58 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input.i.i.i, align 4
  call void @input_event(ptr noundef %59, i32 noundef 3, i32 noundef 53, i32 noundef %or.i.i.i) #8
  %60 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %input.i.i.i, align 4
  call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 54, i32 noundef %or16.i.i.i) #8
  %62 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input.i.i.i, align 4
  %conv25.i.i.i = zext i8 %41 to i32
  call void @input_event(ptr noundef %63, i32 noundef 3, i32 noundef 48, i32 noundef %conv25.i.i.i) #8
  %64 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input.i.i.i, align 4
  %conv27.i.i.i = zext i8 %43 to i32
  call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 49, i32 noundef %conv27.i.i.i) #8
  %66 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %input.i.i.i, align 4
  %conv29.i.i.i = zext i8 %46 to i32
  call void @input_event(ptr noundef %67, i32 noundef 3, i32 noundef 58, i32 noundef %conv29.i.i.i) #8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %sw.bb14.i.i, %sw.bb.i.i
  %68 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input.i.i.i, align 4
  call void @input_event(ptr noundef %69, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.sink.split.i.i, %if.end.i.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end25, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s6sy761_power_on(ptr noundef %sdata) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #8
  %0 = getelementptr inbounds [8 x i8], ptr %buffer, i32 0, i32 1
  %regulators = getelementptr inbounds %struct.s6sy761_data, ptr %sdata, i32 0, i32 1
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buffer, align 8
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 140) #8
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata, align 4
  %call2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 96, i8 noundef zeroext 8, ptr noundef nonnull %buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer, align 8
  %6 = lshr i8 %5, 2
  %trunc = trunc i8 %6 to i4
  %7 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.18)
  switch i4 %trunc, label %if.end4.cleanup_crit_edge [
    i4 2, label %if.end4.lor.lhs.false_crit_edge
    i4 7, label %if.end4.lor.lhs.false_crit_edge47
  ]

if.end4.lor.lhs.false_crit_edge47:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end4.lor.lhs.false_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4.lor.lhs.false_crit_edge, %if.end4.lor.lhs.false_crit_edge47
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14.not = icmp eq i8 %9, 0
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdata, align 4
  %call19 = call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call19)
  %cmp24.not = icmp eq i32 %call19, 32
  br i1 %cmp24.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata, align 4
  %call29 = call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext 48, i16 noundef zeroext 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ -19, %if.end23.cleanup_crit_edge ], [ %call29, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_sysfs_devid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %devid = getelementptr inbounds %struct.s6sy761_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %devid, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %regulators.i = getelementptr inbounds %struct.s6sy761_data, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  %call1 = tail call fastcc i32 @s6sy761_power_on(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -28, i8 noundef zeroext 4) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6sy761_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -28, i8 noundef zeroext 0) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_s6sy761__291_550_s6sy761_driver_init6, !1, !"__initcall__kmod_s6sy761__291_550_s6sy761_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 550, i32 1}
!2 = !{ptr @__exitcall_s6sy761_driver_exit, !1, !"__exitcall_s6sy761_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 552, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 553, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 554, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 541, i32 11}
!12 = !{ptr @s6sy761_driver, !13, !"s6sy761_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 539, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 411, i32 52}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 412, i32 53}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 448, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @s6sy761_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @s6sy761_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 465, i32 6}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 272, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s6sy761_input_close._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @s6sy761_input_close._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 234, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @s6sy761_irq_handler._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @s6sy761_irq_handler._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @s6sy761_irq_handler._entry.14, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 248, i32 4}
!41 = !{ptr @s6sy761_irq_handler._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @s6sy761_attribute_group, !43, !"s6sy761_attribute_group", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 290, i32 31}
!44 = !{ptr @s6sy761_sysfs_attrs, !45, !"s6sy761_sysfs_attrs", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 285, i32 26}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 283, i32 8}
!48 = !{ptr @dev_attr_devid, !47, !"dev_attr_devid", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 280, i32 22}
!51 = !{ptr @s6sy761_of_match, !52, !"s6sy761_of_match", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 526, i32 34}
!53 = !{ptr @s6sy761_pm_ops, !54, !"s6sy761_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 519, i32 32}
!55 = !{ptr @s6sy761_id, !56, !"s6sy761_id", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/s6sy761.c", i32 533, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
