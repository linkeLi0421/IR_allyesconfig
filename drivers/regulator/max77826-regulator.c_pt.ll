; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77826-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77826-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.max77826_regulator_info = type { ptr, ptr }

@__initcall__kmod_max77826_regulator__289_297_max77826_regulator_driver_init6 = internal global ptr @max77826_regulator_driver_init, section ".initcall6.init", align 4
@max77826_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max77826_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77826_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77826_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max77826_regulator_driver_exit = internal global ptr @max77826_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [68 x i8] c"max77826_regulator.author=Iskren Chernev <iskren.chernev@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"max77826_regulator.description=MAX77826 PMIC regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"max77826_regulator.file=drivers/regulator/max77826-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"max77826_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max77826\00", [23 x i8] zeroinitializer }, align 32
@max77826_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77826\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max77826_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max77826-regulator\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max77826_regulators_desc = internal global { [17 x %struct.regulator_desc], [1036 x i8] } { [17 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.11, ptr null, i32 5, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.11, ptr null, i32 6, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.11, ptr null, i32 7, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.11, ptr null, i32 8, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.11, ptr null, i32 9, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.11, ptr null, i32 10, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.11, ptr null, i32 11, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.11, ptr null, i32 12, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.11, ptr null, i32 13, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.11, ptr null, i32 14, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.11, ptr null, i32 15, i8 0, i32 209, i32 0, ptr @max77826_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.11, ptr null, i32 16, i8 0, i32 128, i32 0, ptr @max77826_most_ops, i32 0, i32 0, ptr null, i32 2600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1036 x i8] zeroinitializer }, align 32
@max77826_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77826_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 207, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"max77826_regulator:251:(&max77826_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@max77826_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate regmap!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77826_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max77826-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77826_i2c_probe._entry_ptr = internal global ptr @max77826_i2c_probe._entry, section ".printk_index", align 4
@max77826_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register regulator!\0A\00", [33 x i8] zeroinitializer }, align 32
@max77826_i2c_probe._entry_ptr.9 = internal global ptr @max77826_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max77826_most_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUCK\00", [27 x i8] zeroinitializer }, align 32
@max77826_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77826_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUCKBOOST\00", [22 x i8] zeroinitializer }, align 32
@max77826_read_device_id.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77826_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77826_read_device_id\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DEVICE_ID: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"max77826_regulator_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 289, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 291, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"max77826_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 277, i32 49 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"max77826_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 283, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"max77826_regulators_desc\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 191, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"max77826_regmap_config\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 160, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 251, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 253, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 269, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 192, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"max77826_most_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 170, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 193, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 194, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 195, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 196, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 197, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 198, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 199, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 200, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 201, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 202, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 203, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 204, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 205, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 206, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 207, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"max77826_buck_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 180, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 208, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [42 x i8] c"../drivers/regulator/max77826-regulator.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 231, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77826_regulator_driver_exit, ptr @__initcall__kmod_max77826_regulator__289_297_max77826_regulator_driver_init6, ptr @max77826_i2c_probe._entry, ptr @max77826_i2c_probe._entry.7, ptr @max77826_i2c_probe._entry_ptr, ptr @max77826_i2c_probe._entry_ptr.9, ptr @max77826_regulator_driver_exit, ptr @max77826_regulator_driver, ptr @.str, ptr @max77826_of_match, ptr @max77826_id, ptr @max77826_regulators_desc, ptr @max77826_i2c_probe._key, ptr @max77826_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @max77826_most_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @max77826_buck_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_regulators_desc to i32), i32 4148, i32 5184, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_most_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77826_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77826_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max77826_regulator_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77826_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max77826_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77826_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %device_id.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdesc = getelementptr inbounds %struct.max77826_regulator_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %rdesc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @max77826_regulators_desc, ptr %rdesc, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max77826_regmap_config, ptr noundef nonnull @max77826_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %config, align 4
  %regmap9 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %7 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %regmap9, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data, align 4
  %call10 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @max77826_regulators_desc, ptr noundef nonnull %config) #6
  %cmp.i42 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.end6.do.end15_crit_edge, label %for.cond

if.end6.do.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond:                                         ; preds = %if.end6
  %call10.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 1), ptr noundef nonnull %config) #6
  %cmp.i42.1 = icmp ugt ptr %call10.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.1, label %for.cond.do.end15_crit_edge, label %for.cond.1

for.cond.do.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.1:                                       ; preds = %for.cond
  %call10.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 2), ptr noundef nonnull %config) #6
  %cmp.i42.2 = icmp ugt ptr %call10.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.2, label %for.cond.1.do.end15_crit_edge, label %for.cond.2

for.cond.1.do.end15_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.2:                                       ; preds = %for.cond.1
  %call10.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 3), ptr noundef nonnull %config) #6
  %cmp.i42.3 = icmp ugt ptr %call10.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.3, label %for.cond.2.do.end15_crit_edge, label %for.cond.3

for.cond.2.do.end15_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.3:                                       ; preds = %for.cond.2
  %call10.4 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 4), ptr noundef nonnull %config) #6
  %cmp.i42.4 = icmp ugt ptr %call10.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.4, label %for.cond.3.do.end15_crit_edge, label %for.cond.4

for.cond.3.do.end15_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.4:                                       ; preds = %for.cond.3
  %call10.5 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 5), ptr noundef nonnull %config) #6
  %cmp.i42.5 = icmp ugt ptr %call10.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.5, label %for.cond.4.do.end15_crit_edge, label %for.cond.5

for.cond.4.do.end15_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.5:                                       ; preds = %for.cond.4
  %call10.6 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 6), ptr noundef nonnull %config) #6
  %cmp.i42.6 = icmp ugt ptr %call10.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.6, label %for.cond.5.do.end15_crit_edge, label %for.cond.6

for.cond.5.do.end15_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.6:                                       ; preds = %for.cond.5
  %call10.7 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 7), ptr noundef nonnull %config) #6
  %cmp.i42.7 = icmp ugt ptr %call10.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.7, label %for.cond.6.do.end15_crit_edge, label %for.cond.7

for.cond.6.do.end15_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.7:                                       ; preds = %for.cond.6
  %call10.8 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 8), ptr noundef nonnull %config) #6
  %cmp.i42.8 = icmp ugt ptr %call10.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.8, label %for.cond.7.do.end15_crit_edge, label %for.cond.8

for.cond.7.do.end15_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.8:                                       ; preds = %for.cond.7
  %call10.9 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 9), ptr noundef nonnull %config) #6
  %cmp.i42.9 = icmp ugt ptr %call10.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.9, label %for.cond.8.do.end15_crit_edge, label %for.cond.9

for.cond.8.do.end15_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.9:                                       ; preds = %for.cond.8
  %call10.10 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 10), ptr noundef nonnull %config) #6
  %cmp.i42.10 = icmp ugt ptr %call10.10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.10, label %for.cond.9.do.end15_crit_edge, label %for.cond.10

for.cond.9.do.end15_crit_edge:                    ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.10:                                      ; preds = %for.cond.9
  %call10.11 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 11), ptr noundef nonnull %config) #6
  %cmp.i42.11 = icmp ugt ptr %call10.11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.11, label %for.cond.10.do.end15_crit_edge, label %for.cond.11

for.cond.10.do.end15_crit_edge:                   ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.11:                                      ; preds = %for.cond.10
  %call10.12 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 12), ptr noundef nonnull %config) #6
  %cmp.i42.12 = icmp ugt ptr %call10.12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.12, label %for.cond.11.do.end15_crit_edge, label %for.cond.12

for.cond.11.do.end15_crit_edge:                   ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.12:                                      ; preds = %for.cond.11
  %call10.13 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 13), ptr noundef nonnull %config) #6
  %cmp.i42.13 = icmp ugt ptr %call10.13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.13, label %for.cond.12.do.end15_crit_edge, label %for.cond.13

for.cond.12.do.end15_crit_edge:                   ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.13:                                      ; preds = %for.cond.12
  %call10.14 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 14), ptr noundef nonnull %config) #6
  %cmp.i42.14 = icmp ugt ptr %call10.14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.14, label %for.cond.13.do.end15_crit_edge, label %for.cond.14

for.cond.13.do.end15_crit_edge:                   ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.14:                                      ; preds = %for.cond.13
  %call10.15 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 15), ptr noundef nonnull %config) #6
  %cmp.i42.15 = icmp ugt ptr %call10.15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.15, label %for.cond.14.do.end15_crit_edge, label %for.cond.15

for.cond.14.do.end15_crit_edge:                   ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.15:                                      ; preds = %for.cond.14
  %call10.16 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @max77826_regulators_desc, i32 0, i32 16), ptr noundef nonnull %config) #6
  %cmp.i42.16 = icmp ugt ptr %call10.16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.16, label %for.cond.15.do.end15_crit_edge, label %for.cond.16

for.cond.15.do.end15_crit_edge:                   ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.16:                                      ; preds = %for.cond.15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i) #6
  %9 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %device_id.i, align 4, !annotation !90
  %call.i43 = call i32 @regmap_read(ptr noundef %call2, i32 noundef 207, ptr noundef nonnull %device_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.16.max77826_read_device_id.exit_crit_edge

for.cond.16.max77826_read_device_id.exit_crit_edge: ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77826_read_device_id.exit

do.end15:                                         ; preds = %for.cond.15.do.end15_crit_edge, %for.cond.14.do.end15_crit_edge, %for.cond.13.do.end15_crit_edge, %for.cond.12.do.end15_crit_edge, %for.cond.11.do.end15_crit_edge, %for.cond.10.do.end15_crit_edge, %for.cond.9.do.end15_crit_edge, %for.cond.8.do.end15_crit_edge, %for.cond.7.do.end15_crit_edge, %for.cond.6.do.end15_crit_edge, %for.cond.5.do.end15_crit_edge, %for.cond.4.do.end15_crit_edge, %for.cond.3.do.end15_crit_edge, %for.cond.2.do.end15_crit_edge, %for.cond.1.do.end15_crit_edge, %for.cond.do.end15_crit_edge, %if.end6.do.end15_crit_edge
  %call10.lcssa = phi ptr [ %call10, %if.end6.do.end15_crit_edge ], [ %call10.1, %for.cond.do.end15_crit_edge ], [ %call10.2, %for.cond.1.do.end15_crit_edge ], [ %call10.3, %for.cond.2.do.end15_crit_edge ], [ %call10.4, %for.cond.3.do.end15_crit_edge ], [ %call10.5, %for.cond.4.do.end15_crit_edge ], [ %call10.6, %for.cond.5.do.end15_crit_edge ], [ %call10.7, %for.cond.6.do.end15_crit_edge ], [ %call10.8, %for.cond.7.do.end15_crit_edge ], [ %call10.9, %for.cond.8.do.end15_crit_edge ], [ %call10.10, %for.cond.9.do.end15_crit_edge ], [ %call10.11, %for.cond.10.do.end15_crit_edge ], [ %call10.12, %for.cond.11.do.end15_crit_edge ], [ %call10.13, %for.cond.12.do.end15_crit_edge ], [ %call10.14, %for.cond.13.do.end15_crit_edge ], [ %call10.15, %for.cond.14.do.end15_crit_edge ], [ %call10.16, %for.cond.15.do.end15_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %10 = ptrtoint ptr %call10.lcssa to i32
  br label %cleanup

do.body.i:                                        ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77826_read_device_id.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77826_i2c_probe, %max77826_read_device_id.exit)) #6
          to label %if.then6.i [label %max77826_read_device_id.exit], !srcloc !91

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_id.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77826_read_device_id.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %12) #6
  br label %max77826_read_device_id.exit

max77826_read_device_id.exit:                     ; preds = %if.then6.i, %do.body.i, %for.cond.16.max77826_read_device_id.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i) #6
  br label %cleanup

cleanup:                                          ; preds = %max77826_read_device_id.exit, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %10, %do.end15 ], [ %call.i43, %max77826_read_device_id.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max77826_set_voltage_time_sel(ptr nocapture noundef readnone %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %new_selector, i32 %old_selector)
  %cmp = icmp ugt i32 %new_selector, %old_selector
  %sub = sub i32 %new_selector, %old_selector
  %mul = mul i32 %sub, 6250
  %sub1 = add i32 %mul, 12499
  %div = udiv i32 %sub1, 12500
  %retval.0 = select i1 %cmp, i32 %div, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_max77826_regulator__289_297_max77826_regulator_driver_init6, !1, !"__initcall__kmod_max77826_regulator__289_297_max77826_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77826-regulator.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_max77826_regulator_driver_exit, !1, !"__exitcall_max77826_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max77826-regulator.c", i32 299, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max77826-regulator.c", i32 300, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max77826-regulator.c", i32 301, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max77826-regulator.c", i32 291, i32 11}
!12 = !{ptr @max77826_regulator_driver, !13, !"max77826_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max77826-regulator.c", i32 289, i32 26}
!14 = !{ptr @max77826_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max77826-regulator.c", i32 251, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/max77826-regulator.c", i32 253, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max77826_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max77826_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/max77826-regulator.c", i32 269, i32 4}
!27 = !{ptr @max77826_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max77826_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max77826-regulator.c", i32 192, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/max77826-regulator.c", i32 193, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/max77826-regulator.c", i32 194, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max77826-regulator.c", i32 195, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/max77826-regulator.c", i32 196, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max77826-regulator.c", i32 197, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max77826-regulator.c", i32 198, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max77826-regulator.c", i32 199, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max77826-regulator.c", i32 200, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max77826-regulator.c", i32 201, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max77826-regulator.c", i32 202, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max77826-regulator.c", i32 203, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max77826-regulator.c", i32 204, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max77826-regulator.c", i32 205, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/max77826-regulator.c", i32 206, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/max77826-regulator.c", i32 207, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/max77826-regulator.c", i32 208, i32 2}
!64 = !{ptr @max77826_regulators_desc, !65, !"max77826_regulators_desc", i1 false, i1 false}
!65 = !{!"../drivers/regulator/max77826-regulator.c", i32 191, i32 30}
!66 = !{ptr @max77826_most_ops, !67, !"max77826_most_ops", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max77826-regulator.c", i32 170, i32 35}
!68 = !{ptr @max77826_buck_ops, !69, !"max77826_buck_ops", i1 false, i1 false}
!69 = !{!"../drivers/regulator/max77826-regulator.c", i32 180, i32 35}
!70 = !{ptr @max77826_regmap_config, !71, !"max77826_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/regulator/max77826-regulator.c", i32 160, i32 35}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/max77826-regulator.c", i32 231, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max77826_read_device_id.__UNIQUE_ID_ddebug288, !73, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!77 = !{ptr @max77826_of_match, !78, !"max77826_of_match", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max77826-regulator.c", i32 277, i32 49}
!79 = !{ptr @max77826_id, !80, !"max77826_id", i1 false, i1 false}
!80 = !{!"../drivers/regulator/max77826-regulator.c", i32 283, i32 35}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i64 2148697776, i64 2148697781, i64 2148697794, i64 2148697838, i64 2148697872, i64 2148697893}
