; ModuleID = '/llk/IR_all_yes/drivers/regulator/max20086-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max20086-regulator.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max20086_chip_info = type { i8, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.max20086 = type { ptr, ptr, ptr, ptr, [4 x %struct.max20086_regulator] }
%struct.max20086_regulator = type { ptr, ptr, ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_max20086_regulator__288_329_max20086_regulator_driver_init6 = internal global ptr @max20086_regulator_driver_init, section ".initcall6.init", align 4
@max20086_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max20086_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max20086_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max20086_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max20086_regulator_driver_exit = internal global ptr @max20086_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [62 x i8] c"max20086_regulator.author=Watson Chow <watson.chow@avnet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [79 x i8] c"max20086_regulator.description=MAX20086-MAX20089 Camera Power Protector Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"max20086_regulator.file=drivers/regulator/max20086-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"max20086_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max20086\00", [23 x i8] zeroinitializer }, align 32
@max20086_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20086\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20087\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20088\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.36 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max20089\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.37 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@max20086_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max20086\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max20087\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max20088\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max20089\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max20086_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max20086_gen_is_writeable_reg, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"max20086_regulator:231:(&max20086_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max20086_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max20086-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry_ptr = internal global ptr @max20086_i2c_probe._entry, section ".printk_index", align 4
@max20086_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable interrupts: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry_ptr.9 = internal global ptr @max20086_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get enable GPIO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry_ptr.13 = internal global ptr @max20086_i2c_probe._entry.11, section ".printk_index", align 4
@max20086_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register regulators: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max20086_i2c_probe._entry_ptr.16 = internal global ptr @max20086_i2c_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max20086_parse_regulators_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulators node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max20086_parse_regulators_dt\00", [35 x i8] zeroinitializer }, align 32
@max20086_parse_regulators_dt._entry_ptr = internal global ptr @max20086_parse_regulators_dt._entry, section ".printk_index", align 4
@max20086_output_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@max20086_parse_regulators_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to match regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@max20086_parse_regulators_dt._entry_ptr.22 = internal global ptr @max20086_parse_regulators_dt._entry.20, section ".printk_index", align 4
@max20086_regulators = internal constant { [4 x %struct.regulator_desc], [240 x i8] } { [4 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.23, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @max20086_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @max20086_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max20086_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @max20086_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [240 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT1\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT4\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@max20086_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max20086_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read DEVICE_ID reg: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max20086_detect\00", [16 x i8] zeroinitializer }, align 32
@max20086_detect._entry_ptr = internal global ptr @max20086_detect._entry, section ".printk_index", align 4
@max20086_detect._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid device ID 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@max20086_detect._entry_ptr.32 = internal global ptr @max20086_detect._entry.30, section ".printk_index", align 4
@max20086_regulators_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register regulator output %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max20086_regulators_register\00", [35 x i8] zeroinitializer }, align 32
@max20086_regulators_register._entry_ptr = internal global ptr @max20086_regulators_register._entry, section ".printk_index", align 4
@.compoundliteral = internal constant { %struct.max20086_chip_info, [24 x i8] } { %struct.max20086_chip_info { i8 64, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { %struct.max20086_chip_info, [24 x i8] } { %struct.max20086_chip_info { i8 32, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { %struct.max20086_chip_info, [24 x i8] } { %struct.max20086_chip_info { i8 16, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { %struct.max20086_chip_info, [24 x i8] } { %struct.max20086_chip_info { i8 0, i32 2 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"max20086_regulator_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 320, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 322, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"max20086_dt_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 289, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"max20086_i2c_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 279, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"max20086_regmap_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 207, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 231, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 234, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 251, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 263, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 266, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 272, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 141, i32 50 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 143, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"max20086_output_names\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 90, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 154, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"max20086_regulators\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 97, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 91, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 92, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 93, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 94, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 98, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"max20086_buck_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 70, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 184, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 189, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [42 x i8] c"../drivers/regulator/max20086-regulator.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 122, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max20086_regulator_driver_exit, ptr @__initcall__kmod_max20086_regulator__288_329_max20086_regulator_driver_init6, ptr @max20086_detect._entry, ptr @max20086_detect._entry.30, ptr @max20086_detect._entry_ptr, ptr @max20086_detect._entry_ptr.32, ptr @max20086_i2c_probe._entry, ptr @max20086_i2c_probe._entry.11, ptr @max20086_i2c_probe._entry.14, ptr @max20086_i2c_probe._entry.7, ptr @max20086_i2c_probe._entry_ptr, ptr @max20086_i2c_probe._entry_ptr.13, ptr @max20086_i2c_probe._entry_ptr.16, ptr @max20086_i2c_probe._entry_ptr.9, ptr @max20086_parse_regulators_dt._entry, ptr @max20086_parse_regulators_dt._entry.20, ptr @max20086_parse_regulators_dt._entry_ptr, ptr @max20086_parse_regulators_dt._entry_ptr.22, ptr @max20086_regulator_driver_exit, ptr @max20086_regulators_register._entry, ptr @max20086_regulators_register._entry_ptr, ptr @max20086_regulator_driver, ptr @.str, ptr @max20086_dt_ids, ptr @max20086_i2c_id, ptr @max20086_i2c_probe._key, ptr @max20086_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @max20086_output_names, ptr @.str.21, ptr @max20086_regulators, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @max20086_buck_ops, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_parse_regulators_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_output_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_parse_regulators_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_regulators to i32), i32 976, i32 1216, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_detect._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20086_regulators_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max20086_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max20086_regulator_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max20086_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max20086_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max20086_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
  %data.i = alloca i32, align 4
  %matches.i = alloca [4 x %struct.of_regulator_match], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  %info = getelementptr inbounds %struct.max20086, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max20086_regmap_config, ptr noundef nonnull @max20086_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.max20086, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call5 to i32
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %matches.i) #6
  %7 = call ptr @memset(ptr %matches.i, i32 0, i32 80)
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call.i88 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.17) #6
  %tobool.not.i = icmp eq ptr %call.i88, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end12
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %num_outputs.i = getelementptr inbounds %struct.max20086_chip_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp72.not.i = icmp eq i32 %15, 0
  br i1 %cmp72.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18) #9
  br label %max20086_parse_regulators_dt.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x ptr], ptr @max20086_output_names, i32 0, i32 %i.073.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [4 x %struct.of_regulator_match], ptr %matches.i, i32 0, i32 %i.073.i
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx2.i, align 4
  %inc.i = add nuw i32 %i.073.i, 1
  %21 = ptrtoint ptr %num_outputs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_outputs.i, align 4
  %cmp.i89 = icmp ult i32 %inc.i, %22
  br i1 %cmp.i89, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %22, %for.body.i.for.end.i_crit_edge ]
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call6.i = call i32 @of_regulator_match(ptr noundef %24, ptr noundef nonnull %call.i88, ptr noundef nonnull %matches.i, i32 noundef %.lcssa.i) #6
  call void @of_node_put(ptr noundef nonnull %call.i88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.21) #9
  br label %max20086_parse_regulators_dt.exit.thread

if.end13.i:                                       ; preds = %for.end.i
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %num_outputs1674.i = getelementptr inbounds %struct.max20086_chip_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %num_outputs1674.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_outputs1674.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1775.not.i = icmp eq i32 %30, 0
  br i1 %cmp1775.not.i, label %if.end13.i.if.end15_crit_edge, label %if.end13.i.for.body18.i_crit_edge

if.end13.i.for.body18.i_crit_edge:                ; preds = %if.end13.i
  br label %for.body18.i

if.end13.i.if.end15_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body18.i:                                     ; preds = %if.end40.i.for.body18.i_crit_edge, %if.end13.i.for.body18.i_crit_edge
  %boot_on.0 = phi i8 [ %boot_on.1, %if.end40.i.for.body18.i_crit_edge ], [ 0, %if.end13.i.for.body18.i_crit_edge ]
  %i.176.i = phi i32 [ %inc42.i, %if.end40.i.for.body18.i_crit_edge ], [ 0, %if.end13.i.for.body18.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.176.i
  %init_data.i = getelementptr [4 x %struct.of_regulator_match], ptr %matches.i, i32 0, i32 %i.176.i, i32 2
  %31 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_data.i, align 4
  %init_data21.i = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.176.i, i32 1
  %33 = ptrtoint ptr %init_data21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %init_data21.i, align 4
  %of_node23.i = getelementptr [4 x %struct.of_regulator_match], ptr %matches.i, i32 0, i32 %i.176.i, i32 3
  %34 = ptrtoint ptr %of_node23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node23.i, align 4
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx19.i, align 4
  %arrayidx25.i = getelementptr [4 x %struct.regulator_desc], ptr @max20086_regulators, i32 0, i32 %i.176.i
  %desc.i = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.176.i, i32 2
  %37 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx25.i, ptr %desc.i, align 4
  %tobool27.not.i = icmp eq ptr %32, null
  br i1 %tobool27.not.i, label %for.body18.i.if.end40.i_crit_edge, label %if.then28.i

for.body18.i.if.end40.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then28.i:                                      ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  %always_on.i = getelementptr inbounds %struct.regulator_init_data, ptr %32, i32 0, i32 1, i32 28
  %38 = ptrtoint ptr %always_on.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %always_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %39 = icmp ult i16 %bf.load.i, 16384
  %spec.select = select i1 %39, i8 %boot_on.0, i8 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then28.i, %for.body18.i.if.end40.i_crit_edge
  %boot_on.1 = phi i8 [ %boot_on.0, %for.body18.i.if.end40.i_crit_edge ], [ %spec.select, %if.then28.i ]
  %inc42.i = add nuw i32 %i.176.i, 1
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %num_outputs16.i = getelementptr inbounds %struct.max20086_chip_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %num_outputs16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_outputs16.i, align 4
  %cmp17.i = icmp ult i32 %inc42.i, %43
  br i1 %cmp17.i, label %if.end40.i.for.body18.i_crit_edge, label %if.end40.i.if.end15_crit_edge

if.end40.i.if.end15_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end40.i.for.body18.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i

max20086_parse_regulators_dt.exit.thread:         ; preds = %do.end11.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end.i ], [ -22, %do.end11.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %matches.i) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end40.i.if.end15_crit_edge, %if.end13.i.if.end15_crit_edge
  %boot_on.2 = phi i8 [ 0, %if.end13.i.if.end15_crit_edge ], [ %boot_on.1, %if.end40.i.if.end15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %matches.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %data.i, align 4, !annotation !95
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call.i90 = call i32 @regmap_read(ptr noundef %46, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %do.end.i92, label %if.end.i

do.end.i92:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.28, i32 noundef %call.i90) #9
  br label %max20086_detect.exit.thread

if.end.i:                                         ; preds = %if.end15
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data.i, align 4
  %and.i = and i32 %50, 240
  %51 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %info, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp1.not.i, label %if.end19, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.31, i32 noundef %50) #9
  br label %max20086_detect.exit.thread

max20086_detect.exit.thread:                      ; preds = %do.end6.i, %do.end.i92
  %retval.0.i94.ph = phi i32 [ -6, %do.end6.i ], [ %call.i90, %do.end.i92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call.i95 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 0, i32 noundef 63, i32 noundef 63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp22 = icmp slt i32 %call.i95, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.8, i32 noundef %call.i95) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %boot_on.2)
  %tobool29.not = icmp eq i8 %boot_on.2, 0
  %cond = select i1 %tobool29.not, i32 3, i32 7
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %call31 = call ptr @devm_gpiod_get(ptr noundef %62, ptr noundef nonnull @.str.10, i32 noundef %cond) #6
  %ena_gpiod = getelementptr inbounds %struct.max20086, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call31, ptr %ena_gpiod, align 4
  %cmp.i96 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call31 to i32
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.12, i32 noundef %64) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %num_outputs31.i = getelementptr inbounds %struct.max20086_chip_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %num_outputs31.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_outputs31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp32.not.i = icmp eq i32 %70, 0
  br i1 %cmp32.not.i, label %if.end41.cleanup_crit_edge, label %for.body.lr.ph.i

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end41
  %init_data2.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  %of_node3.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 3
  %regmap4.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 4
  %ena_gpiod5.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 5
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.inc.i.for.body.i103_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i104, %for.inc.i.for.body.i103_crit_edge ]
  %arrayidx.i99 = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.033.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %73 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %config.i, align 4
  %init_data.i100 = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.033.i, i32 1
  %74 = ptrtoint ptr %init_data.i100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_data.i100, align 4
  %76 = ptrtoint ptr %init_data2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %init_data2.i, align 4
  %77 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i, align 4
  %78 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i99, align 4
  %80 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %of_node3.i, align 4
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %83 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %regmap4.i, align 4
  %84 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ena_gpiod, align 4
  %86 = ptrtoint ptr %ena_gpiod5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %ena_gpiod5.i, align 4
  %desc.i101 = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.033.i, i32 2
  %87 = ptrtoint ptr %desc.i101 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc.i101, align 4
  %call.i102 = call ptr @devm_regulator_register(ptr noundef %72, ptr noundef %88, ptr noundef nonnull %config.i) #6
  %cmp.i.i = icmp ugt ptr %call.i102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %max20086_regulators_register.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i103
  %rdev11.i = getelementptr %struct.max20086, ptr %call.i, i32 0, i32 4, i32 %i.033.i, i32 3
  %89 = ptrtoint ptr %rdev11.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i102, ptr %rdev11.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %inc.i104 = add nuw i32 %i.033.i, 1
  %90 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %info, align 4
  %num_outputs.i105 = getelementptr inbounds %struct.max20086_chip_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %num_outputs.i105 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_outputs.i105, align 4
  %cmp.i106 = icmp ult i32 %inc.i104, %93
  br i1 %cmp.i106, label %for.inc.i.for.body.i103_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i103_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i103

max20086_regulators_register.exit:                ; preds = %for.body.i103
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %96 = ptrtoint ptr %desc.i101 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc.i101, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.33, ptr noundef %99) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp43 = icmp slt ptr %call.i102, null
  br i1 %cmp43, label %do.end47, label %max20086_regulators_register.exit.cleanup_crit_edge

max20086_regulators_register.exit.cleanup_crit_edge: ; preds = %max20086_regulators_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end47:                                         ; preds = %max20086_regulators_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %call.i102 to i32
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.15, i32 noundef %100) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %max20086_regulators_register.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then34, %do.end26, %max20086_detect.exit.thread, %max20086_parse_regulators_dt.exit.thread, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %call.i95, %do.end26 ], [ %64, %if.then34 ], [ %100, %do.end47 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %max20086_regulators_register.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %max20086_parse_regulators_dt.exit.thread ], [ %retval.0.i94.ph, %max20086_detect.exit.thread ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max20086_gen_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %switch = icmp ult i32 %reg, 2
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_max20086_regulator__288_329_max20086_regulator_driver_init6, !1, !"__initcall__kmod_max20086_regulator__288_329_max20086_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max20086-regulator.c", i32 329, i32 1}
!2 = !{ptr @__exitcall_max20086_regulator_driver_exit, !1, !"__exitcall_max20086_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max20086-regulator.c", i32 331, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max20086-regulator.c", i32 332, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max20086-regulator.c", i32 333, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max20086-regulator.c", i32 322, i32 11}
!12 = !{ptr @max20086_regulator_driver, !13, !"max20086_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max20086-regulator.c", i32 320, i32 26}
!14 = !{ptr @max20086_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max20086-regulator.c", i32 231, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/max20086-regulator.c", i32 234, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max20086_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max20086_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/max20086-regulator.c", i32 251, i32 3}
!27 = !{ptr @max20086_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max20086_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max20086-regulator.c", i32 263, i32 46}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max20086-regulator.c", i32 266, i32 3}
!33 = !{ptr @max20086_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max20086_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/max20086-regulator.c", i32 272, i32 3}
!37 = !{ptr @max20086_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max20086_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @max20086_regmap_config, !40, !"max20086_regmap_config", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max20086-regulator.c", i32 207, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/max20086-regulator.c", i32 141, i32 50}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/max20086-regulator.c", i32 143, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @max20086_parse_regulators_dt._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @max20086_parse_regulators_dt._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max20086-regulator.c", i32 154, i32 3}
!50 = !{ptr @max20086_parse_regulators_dt._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @max20086_parse_regulators_dt._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max20086-regulator.c", i32 91, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max20086-regulator.c", i32 92, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max20086-regulator.c", i32 93, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/max20086-regulator.c", i32 94, i32 2}
!60 = !{ptr @max20086_output_names, !61, !"max20086_output_names", i1 false, i1 false}
!61 = !{!"../drivers/regulator/max20086-regulator.c", i32 90, i32 27}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/max20086-regulator.c", i32 98, i32 2}
!64 = !{ptr @max20086_regulators, !65, !"max20086_regulators", i1 false, i1 false}
!65 = !{!"../drivers/regulator/max20086-regulator.c", i32 97, i32 36}
!66 = !{ptr @max20086_buck_ops, !67, !"max20086_buck_ops", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max20086-regulator.c", i32 70, i32 35}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/max20086-regulator.c", i32 184, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @max20086_detect._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @max20086_detect._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max20086-regulator.c", i32 189, i32 3}
!75 = !{ptr @max20086_detect._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @max20086_detect._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max20086-regulator.c", i32 122, i32 4}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @max20086_regulators_register._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @max20086_regulators_register._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @max20086_dt_ids, !83, !"max20086_dt_ids", i1 false, i1 false}
!83 = !{!"../drivers/regulator/max20086-regulator.c", i32 289, i32 34}
!84 = !{ptr @max20086_i2c_id, !85, !"max20086_i2c_id", i1 false, i1 false}
!85 = !{!"../drivers/regulator/max20086-regulator.c", i32 279, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
