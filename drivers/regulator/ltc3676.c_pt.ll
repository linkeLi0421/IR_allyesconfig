; ModuleID = '/llk/IR_all_yes/drivers/regulator/ltc3676.c_pt.bc'
source_filename = "../drivers/regulator/ltc3676.c"
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
%struct.ltc3676 = type { ptr, ptr, [8 x %struct.regulator_desc], [8 x ptr] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_ltc3676__292_379_ltc3676_driver_init6 = internal global ptr @ltc3676_driver_init, section ".initcall6.init", align 4
@ltc3676_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc3676_regulator_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc3676_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc3676_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc3676_driver_exit = internal global ptr @ltc3676_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [50 x i8] c"ltc3676.author=Tim Harvey <tharvey@gateworks.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [67 x i8] c"ltc3676.description=Regulator driver for Linear Technology LTC3676\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"ltc3676.file=drivers/regulator/ltc3676\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"ltc3676.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc3676\00", [24 x i8] zeroinitializer }, align 32
@ltc3676_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3676\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ltc3676_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc3676\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc3676_regulators = internal constant { [8 x %struct.regulator_desc], [480 x i8] } { [8 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 0, i8 0, i32 32, i32 0, ptr @ltc3676_linear_regulator_ops, i32 0, i32 0, ptr null, i32 412500, i32 12500, i32 0, i32 0, i32 800, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 10, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 1, i8 0, i32 32, i32 0, ptr @ltc3676_linear_regulator_ops, i32 0, i32 0, ptr null, i32 412500, i32 12500, i32 0, i32 0, i32 800, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 12, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 2, i8 0, i32 32, i32 0, ptr @ltc3676_linear_regulator_ops, i32 0, i32 0, ptr null, i32 412500, i32 12500, i32 0, i32 0, i32 800, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 14, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 3, i8 0, i32 32, i32 0, ptr @ltc3676_linear_regulator_ops, i32 0, i32 0, ptr null, i32 412500, i32 12500, i32 0, i32 0, i32 800, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 16, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 4, i8 0, i32 1, i32 0, ptr @ltc3676_fixed_standby_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 725000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 5, i8 0, i32 1, i32 0, ptr @ltc3676_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 725000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 6, i8 0, i32 1, i32 0, ptr @ltc3676_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 725000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.14, ptr @ltc3676_of_parse_cb, i32 7, i8 0, i32 1, i32 0, ptr @ltc3676_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 725000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [480 x i8] zeroinitializer }, align 32
@ltc3676_regulator_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc3676_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ltc3676_readable_writeable_reg, ptr @ltc3676_readable_writeable_reg, ptr @ltc3676_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ltc3676:317:(&ltc3676_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ltc3676_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ltc3676_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/ltc3676.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc3676_regulator_probe._entry_ptr = internal global ptr @ltc3676_regulator_probe._entry, section ".printk_index", align 4
@ltc3676_regulator_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register regulator %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ltc3676_regulator_probe._entry_ptr.9 = internal global ptr @ltc3676_regulator_probe._entry.7, section ".printk_index", align 4
@ltc3676_regulator_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ltc3676_regulator_probe._entry_ptr.12 = internal global ptr @ltc3676_regulator_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw1\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@ltc3676_linear_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @ltc3676_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc3676_set_suspend_voltage, ptr null, ptr null, ptr @ltc3676_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw2\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw3\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw4\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@ltc3676_fixed_standby_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@ltc3676_fixed_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lltc,fb-voltage-divider\00", [40 x i8] zeroinitializer }, align 32
@ltc3676_of_parse_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to parse voltage divider: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltc3676_of_parse_cb\00", [44 x i8] zeroinitializer }, align 32
@ltc3676_of_parse_cb._entry_ptr = internal global ptr @ltc3676_of_parse_cb._entry, section ".printk_index", align 4
@ltc3676_set_voltage_sel.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ltc3676_set_voltage_sel\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s id=%d selector=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ltc3676_set_suspend_voltage.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ltc3676_set_suspend_voltage\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s id=%d uV=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@ltc3676_set_suspend_mode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltc3676_set_suspend_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s id=%d mode=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ltc3676_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 110, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: regulator mode: 0x%x not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ltc3676_set_suspend_mode._entry_ptr = internal global ptr @ltc3676_set_suspend_mode._entry, section ".printk_index", align 4
@ltc3676_isr.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ltc3676_isr\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq%d irqstat=0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@ltc3676_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 277, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Over-temperature Warning\0A\00", [38 x i8] zeroinitializer }, align 32
@ltc3676_isr._entry_ptr = internal global ptr @ltc3676_isr._entry, section ".printk_index", align 4
@ltc3676_isr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.4, i32 285, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Undervoltage Warning\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ltc3676_isr._entry_ptr.39 = internal global ptr @ltc3676_isr._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"ltc3676_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 371, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 373, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"ltc3676_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 365, i32 49 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"ltc3676_i2c_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 359, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"ltc3676_regulators\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 224, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"ltc3676_regmap_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 255, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 317, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 320, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 338, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 351, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 225, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [29 x i8] c"ltc3676_linear_regulator_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 173, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 226, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 227, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 228, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 229, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [36 x i8] c"ltc3676_fixed_standby_regulator_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 185, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 230, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"ltc3676_fixed_regulator_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 189, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 231, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 232, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 158, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 160, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 124, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 80, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 98, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 109, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 275, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 277, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [31 x i8] c"../drivers/regulator/ltc3676.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 285, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ltc3676_driver_exit, ptr @__initcall__kmod_ltc3676__292_379_ltc3676_driver_init6, ptr @ltc3676_driver_exit, ptr @ltc3676_isr._entry, ptr @ltc3676_isr._entry.36, ptr @ltc3676_isr._entry_ptr, ptr @ltc3676_isr._entry_ptr.39, ptr @ltc3676_of_parse_cb._entry, ptr @ltc3676_of_parse_cb._entry_ptr, ptr @ltc3676_regulator_probe._entry, ptr @ltc3676_regulator_probe._entry.10, ptr @ltc3676_regulator_probe._entry.7, ptr @ltc3676_regulator_probe._entry_ptr, ptr @ltc3676_regulator_probe._entry_ptr.12, ptr @ltc3676_regulator_probe._entry_ptr.9, ptr @ltc3676_set_suspend_mode._entry, ptr @ltc3676_set_suspend_mode._entry_ptr, ptr @ltc3676_driver, ptr @.str, ptr @ltc3676_of_match, ptr @ltc3676_i2c_id, ptr @ltc3676_regulators, ptr @ltc3676_regulator_probe._key, ptr @ltc3676_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @ltc3676_linear_regulator_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ltc3676_fixed_standby_regulator_ops, ptr @.str.19, ptr @ltc3676_fixed_regulator_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regulators to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regulator_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regulator_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_regulator_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_linear_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_fixed_standby_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_fixed_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_of_parse_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3676_isr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc3676_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc3676_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc3676_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_regulator_probe(ptr noundef %client) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1992, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.ltc3676, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %regulator_descs = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %regulator_descs, ptr @ltc3676_regulators, i32 1952)
  %fixed_uV = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 6, i32 17
  %5 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1800000, ptr %fixed_uV, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc3676_regmap_config, ptr noundef nonnull @ltc3676_regulator_probe._key, ptr noundef nonnull @.str.1) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %tobool13.not = icmp eq ptr %1, null
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %init_data16 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %7 = getelementptr inbounds i8, ptr %config, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 20)
  br i1 %tobool13.not, label %for.cond.preheader.if.end17_crit_edge, label %if.then14

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %9) #9
  br label %cleanup48

if.then14:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %init_data16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %for.cond.preheader.if.end17_crit_edge
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %config, align 4
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data, align 4
  %call19 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %regulator_descs, ptr noundef nonnull %config) #6
  %arrayidx20 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %arrayidx20, align 4
  %cmp.i95 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.end17.cleanup.thread_crit_edge, label %for.inc

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end17.7.cleanup.thread_crit_edge, %if.end17.6.cleanup.thread_crit_edge, %if.end17.5.cleanup.thread_crit_edge, %if.end17.4.cleanup.thread_crit_edge, %if.end17.3.cleanup.thread_crit_edge, %if.end17.2.cleanup.thread_crit_edge, %if.end17.1.cleanup.thread_crit_edge, %if.end17.cleanup.thread_crit_edge
  %call19.lcssa = phi ptr [ %call19, %if.end17.cleanup.thread_crit_edge ], [ %call19.1, %if.end17.1.cleanup.thread_crit_edge ], [ %call19.2, %if.end17.2.cleanup.thread_crit_edge ], [ %call19.3, %if.end17.3.cleanup.thread_crit_edge ], [ %call19.4, %if.end17.4.cleanup.thread_crit_edge ], [ %call19.5, %if.end17.5.cleanup.thread_crit_edge ], [ %call19.6, %if.end17.6.cleanup.thread_crit_edge ], [ %call19.7, %if.end17.7.cleanup.thread_crit_edge ]
  %arrayidx12.lcssa = phi ptr [ %regulator_descs, %if.end17.cleanup.thread_crit_edge ], [ %arrayidx12.1, %if.end17.1.cleanup.thread_crit_edge ], [ %arrayidx12.2, %if.end17.2.cleanup.thread_crit_edge ], [ %arrayidx12.3, %if.end17.3.cleanup.thread_crit_edge ], [ %arrayidx12.4, %if.end17.4.cleanup.thread_crit_edge ], [ %arrayidx12.5, %if.end17.5.cleanup.thread_crit_edge ], [ %arrayidx12.6, %if.end17.6.cleanup.thread_crit_edge ], [ %arrayidx12.7, %if.end17.7.cleanup.thread_crit_edge ]
  %14 = ptrtoint ptr %call19.lcssa to i32
  %15 = ptrtoint ptr %arrayidx12.lcssa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %16, i32 noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  br label %cleanup48

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.1 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %17 = getelementptr inbounds i8, ptr %config, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.if.end17.1_crit_edge, label %if.then14.1

for.inc.if.end17.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.1

if.then14.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.1 = getelementptr %struct.regulator_init_data, ptr %1, i32 1
  %19 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx15.1, ptr %init_data16, align 4
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then14.1, %for.inc.if.end17.1_crit_edge
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %config, align 4
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.1, ptr noundef nonnull %config) #6
  %arrayidx20.1 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call19.1, ptr %arrayidx20.1, align 4
  %cmp.i95.1 = icmp ugt ptr %call19.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.1, label %if.end17.1.cleanup.thread_crit_edge, label %for.inc.1

if.end17.1.cleanup.thread_crit_edge:              ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.1:                                        ; preds = %if.end17.1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.2 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %23 = getelementptr inbounds i8, ptr %config, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.1.if.end17.2_crit_edge, label %if.then14.2

for.inc.1.if.end17.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.2

if.then14.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.2 = getelementptr %struct.regulator_init_data, ptr %1, i32 2
  %25 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx15.2, ptr %init_data16, align 4
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then14.2, %for.inc.1.if.end17.2_crit_edge
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %config, align 4
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.2, ptr noundef nonnull %config) #6
  %arrayidx20.2 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19.2, ptr %arrayidx20.2, align 4
  %cmp.i95.2 = icmp ugt ptr %call19.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.2, label %if.end17.2.cleanup.thread_crit_edge, label %for.inc.2

if.end17.2.cleanup.thread_crit_edge:              ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.2:                                        ; preds = %if.end17.2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.3 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %29 = getelementptr inbounds i8, ptr %config, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.2.if.end17.3_crit_edge, label %if.then14.3

for.inc.2.if.end17.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.3

if.then14.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.3 = getelementptr %struct.regulator_init_data, ptr %1, i32 3
  %31 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx15.3, ptr %init_data16, align 4
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then14.3, %for.inc.2.if.end17.3_crit_edge
  %32 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %config, align 4
  %33 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.3, ptr noundef nonnull %config) #6
  %arrayidx20.3 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call19.3, ptr %arrayidx20.3, align 4
  %cmp.i95.3 = icmp ugt ptr %call19.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.3, label %if.end17.3.cleanup.thread_crit_edge, label %for.inc.3

if.end17.3.cleanup.thread_crit_edge:              ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.3:                                        ; preds = %if.end17.3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.4 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %35 = getelementptr inbounds i8, ptr %config, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.3.if.end17.4_crit_edge, label %if.then14.4

for.inc.3.if.end17.4_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.4

if.then14.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.4 = getelementptr %struct.regulator_init_data, ptr %1, i32 4
  %37 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx15.4, ptr %init_data16, align 4
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then14.4, %for.inc.3.if.end17.4_crit_edge
  %38 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev1, ptr %config, align 4
  %39 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.4 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.4, ptr noundef nonnull %config) #6
  %arrayidx20.4 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call19.4, ptr %arrayidx20.4, align 4
  %cmp.i95.4 = icmp ugt ptr %call19.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.4, label %if.end17.4.cleanup.thread_crit_edge, label %for.inc.4

if.end17.4.cleanup.thread_crit_edge:              ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.4:                                        ; preds = %if.end17.4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.5 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %41 = getelementptr inbounds i8, ptr %config, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.4.if.end17.5_crit_edge, label %if.then14.5

for.inc.4.if.end17.5_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.5

if.then14.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.5 = getelementptr %struct.regulator_init_data, ptr %1, i32 5
  %43 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx15.5, ptr %init_data16, align 4
  br label %if.end17.5

if.end17.5:                                       ; preds = %if.then14.5, %for.inc.4.if.end17.5_crit_edge
  %44 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev1, ptr %config, align 4
  %45 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.5 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.5, ptr noundef nonnull %config) #6
  %arrayidx20.5 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call19.5, ptr %arrayidx20.5, align 4
  %cmp.i95.5 = icmp ugt ptr %call19.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.5, label %if.end17.5.cleanup.thread_crit_edge, label %for.inc.5

if.end17.5.cleanup.thread_crit_edge:              ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.5:                                        ; preds = %if.end17.5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.6 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %47 = getelementptr inbounds i8, ptr %config, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.5.if.end17.6_crit_edge, label %if.then14.6

for.inc.5.if.end17.6_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.6

if.then14.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.6 = getelementptr %struct.regulator_init_data, ptr %1, i32 6
  %49 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx15.6, ptr %init_data16, align 4
  br label %if.end17.6

if.end17.6:                                       ; preds = %if.then14.6, %for.inc.5.if.end17.6_crit_edge
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev1, ptr %config, align 4
  %51 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.6 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.6, ptr noundef nonnull %config) #6
  %arrayidx20.6 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 6
  %52 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call19.6, ptr %arrayidx20.6, align 4
  %cmp.i95.6 = icmp ugt ptr %call19.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.6, label %if.end17.6.cleanup.thread_crit_edge, label %for.inc.6

if.end17.6.cleanup.thread_crit_edge:              ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.6:                                        ; preds = %if.end17.6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx12.7 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 2, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %53 = getelementptr inbounds i8, ptr %config, i32 4
  %54 = call ptr @memset(ptr %53, i32 0, i32 20)
  br i1 %tobool13.not, label %for.inc.6.if.end17.7_crit_edge, label %if.then14.7

for.inc.6.if.end17.7_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.7

if.then14.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15.7 = getelementptr %struct.regulator_init_data, ptr %1, i32 7
  %55 = ptrtoint ptr %init_data16 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx15.7, ptr %init_data16, align 4
  br label %if.end17.7

if.end17.7:                                       ; preds = %if.then14.7, %for.inc.6.if.end17.7_crit_edge
  %56 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev1, ptr %config, align 4
  %57 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data, align 4
  %call19.7 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx12.7, ptr noundef nonnull %config) #6
  %arrayidx20.7 = getelementptr %struct.ltc3676, ptr %call.i, i32 0, i32 3, i32 7
  %58 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call19.7, ptr %arrayidx20.7, align 4
  %cmp.i95.7 = icmp ugt ptr %call19.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.7, label %if.end17.7.cleanup.thread_crit_edge, label %for.inc.7

if.end17.7.cleanup.thread_crit_edge:              ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.7:                                        ; preds = %if.end17.7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %call34 = call i32 @regmap_write(ptr noundef %60, i32 noundef 31, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool35.not = icmp eq i32 %62, 0
  br i1 %tobool35.not, label %for.inc.7.cleanup48_crit_edge, label %if.then36

for.inc.7.cleanup48_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.then36:                                        ; preds = %for.inc.7
  %name38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call40 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %62, ptr noundef null, ptr noundef nonnull @ltc3676_isr, i32 noundef 8200, ptr noundef %name38, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then36.cleanup48_crit_edge, label %do.end45

if.then36.cleanup48_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

do.end45:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call40) #9
  br label %cleanup48

cleanup48:                                        ; preds = %do.end45, %if.then36.cleanup48_crit_edge, %for.inc.7.cleanup48_crit_edge, %cleanup.thread, %if.then7, %entry.cleanup48_crit_edge
  %retval.2 = phi i32 [ %9, %if.then7 ], [ %call40, %do.end45 ], [ -12, %entry.cleanup48_crit_edge ], [ 0, %if.then36.cleanup48_crit_edge ], [ 0, %for.inc.7.cleanup48_crit_edge ], [ %14, %cleanup.thread ]
  ret i32 %retval.2
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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irqstat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ltc3676, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqstat) #6
  %2 = ptrtoint ptr %irqstat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqstat, align 4, !annotation !110
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 21, ptr noundef nonnull %irqstat) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc3676_isr.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc3676_isr, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %irqstat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqstat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc3676_isr.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %irq, i32 noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %irqstat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqstat, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end.if.end12_crit_edge, label %do.end10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.35) #9
  %arrayidx = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @regulator_notifier_call_chain(ptr noundef %10, i32 noundef 16, ptr noundef null) #6
  %arrayidx.1 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %call11.1 = call i32 @regulator_notifier_call_chain(ptr noundef %12, i32 noundef 16, ptr noundef null) #6
  %arrayidx.2 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %call11.2 = call i32 @regulator_notifier_call_chain(ptr noundef %14, i32 noundef 16, ptr noundef null) #6
  %arrayidx.3 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3, align 4
  %call11.3 = call i32 @regulator_notifier_call_chain(ptr noundef %16, i32 noundef 16, ptr noundef null) #6
  %arrayidx.4 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4, align 4
  %call11.4 = call i32 @regulator_notifier_call_chain(ptr noundef %18, i32 noundef 16, ptr noundef null) #6
  %arrayidx.5 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.5, align 4
  %call11.5 = call i32 @regulator_notifier_call_chain(ptr noundef %20, i32 noundef 16, ptr noundef null) #6
  %arrayidx.6 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.6, align 4
  %call11.6 = call i32 @regulator_notifier_call_chain(ptr noundef %22, i32 noundef 16, ptr noundef null) #6
  %arrayidx.7 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.7, align 4
  %call11.7 = call i32 @regulator_notifier_call_chain(ptr noundef %24, i32 noundef 16, ptr noundef null) #6
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %do.end.if.end12_crit_edge
  %25 = ptrtoint ptr %irqstat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irqstat, align 4
  %and13 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end28_crit_edge, label %do.end18

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.37) #9
  %arrayidx23 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23, align 4
  %call24 = call i32 @regulator_notifier_call_chain(ptr noundef %28, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.1 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx23.1, align 4
  %call24.1 = call i32 @regulator_notifier_call_chain(ptr noundef %30, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.2 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx23.2, align 4
  %call24.2 = call i32 @regulator_notifier_call_chain(ptr noundef %32, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.3 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx23.3, align 4
  %call24.3 = call i32 @regulator_notifier_call_chain(ptr noundef %34, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.4 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx23.4, align 4
  %call24.4 = call i32 @regulator_notifier_call_chain(ptr noundef %36, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.5 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 5
  %37 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx23.5, align 4
  %call24.5 = call i32 @regulator_notifier_call_chain(ptr noundef %38, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.6 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx23.6, align 4
  %call24.6 = call i32 @regulator_notifier_call_chain(ptr noundef %40, i32 noundef 1, ptr noundef null) #6
  %arrayidx23.7 = getelementptr %struct.ltc3676, ptr %dev_id, i32 0, i32 3, i32 7
  %41 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23.7, align 4
  %call24.7 = call i32 @regulator_notifier_call_chain(ptr noundef %42, i32 noundef 1, ptr noundef null) #6
  br label %if.end28

if.end28:                                         ; preds = %do.end18, %if.end12.if.end28_crit_edge
  %43 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_id, align 4
  %call30 = call i32 @regmap_write(ptr noundef %44, i32 noundef 31, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqstat) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %r = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #6
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %r, align 4, !annotation !110
  %5 = getelementptr inbounds [2 x i32], ptr %r, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.22, ptr noundef nonnull %r, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ltc3676, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef %call.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %min_uV = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 14
  %9 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_uV, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.end3.ltc3676_scale.exit_crit_edge, label %if.end.i

if.end3.ltc3676_scale.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3676_scale.exit

if.end.i:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  %conv.i = zext i32 %10 to i64
  %conv1.i = zext i32 %14 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp172.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !112

if.then176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i = trunc i64 %mul.i to i32
  %div180.i = udiv i32 %conv177.i, %12
  br label %if.end186.i

if.else182.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul.i) #10, !srcloc !113
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else182.i, %if.then176.i
  %tmp.0.off0.i = phi i32 [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  %add189.i = add i32 %tmp.0.off0.i, %10
  br label %ltc3676_scale.exit

ltc3676_scale.exit:                               ; preds = %if.end186.i, %if.end3.ltc3676_scale.exit_crit_edge
  %retval.0.i = phi i32 [ %add189.i, %if.end186.i ], [ 0, %if.end3.ltc3676_scale.exit_crit_edge ]
  %min_uV7 = getelementptr %struct.ltc3676, ptr %1, i32 0, i32 2, i32 %3, i32 14
  %16 = ptrtoint ptr %min_uV7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %min_uV7, align 4
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 15
  %17 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uV_step, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i28 = icmp eq i32 %18, 0
  br i1 %cmp.i28, label %ltc3676_scale.exit.ltc3676_scale.exit151_crit_edge, label %if.end.i33

ltc3676_scale.exit.ltc3676_scale.exit151_crit_edge: ; preds = %ltc3676_scale.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3676_scale.exit151

if.end.i33:                                       ; preds = %ltc3676_scale.exit
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r, align 4
  %conv.i29 = zext i32 %18 to i64
  %conv1.i30 = zext i32 %22 to i64
  %mul.i31 = mul nuw i64 %conv1.i30, %conv.i29
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i31)
  %cmp172.i139 = icmp ult i64 %mul.i31, 4294967296
  br i1 %cmp172.i139, label %if.then176.i143, label %if.else182.i146, !prof !112

if.then176.i143:                                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i141 = trunc i64 %mul.i31 to i32
  %div180.i142 = udiv i32 %conv177.i141, %20
  br label %if.end186.i149

if.else182.i146:                                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %mul.i31) #10, !srcloc !113
  %asmresult1.i.i144 = extractvalue { i64, i64 } %23, 1
  %extract.t296.i145 = trunc i64 %asmresult1.i.i144 to i32
  br label %if.end186.i149

if.end186.i149:                                   ; preds = %if.else182.i146, %if.then176.i143
  %tmp.0.off0.i147 = phi i32 [ %div180.i142, %if.then176.i143 ], [ %extract.t296.i145, %if.else182.i146 ]
  %add189.i148 = add i32 %tmp.0.off0.i147, %18
  br label %ltc3676_scale.exit151

ltc3676_scale.exit151:                            ; preds = %if.end186.i149, %ltc3676_scale.exit.ltc3676_scale.exit151_crit_edge
  %retval.0.i150 = phi i32 [ %add189.i148, %if.end186.i149 ], [ 0, %ltc3676_scale.exit.ltc3676_scale.exit151_crit_edge ]
  %uV_step11 = getelementptr %struct.ltc3676, ptr %1, i32 0, i32 2, i32 %3, i32 15
  %24 = ptrtoint ptr %uV_step11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i150, ptr %uV_step11, align 4
  %fixed_uV = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 17
  %25 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fixed_uV, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i152 = icmp eq i32 %26, 0
  br i1 %cmp.i152, label %ltc3676_scale.exit151.ltc3676_scale.exit275_crit_edge, label %if.end.i157

ltc3676_scale.exit151.ltc3676_scale.exit275_crit_edge: ; preds = %ltc3676_scale.exit151
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3676_scale.exit275

if.end.i157:                                      ; preds = %ltc3676_scale.exit151
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r, align 4
  %conv.i153 = zext i32 %26 to i64
  %conv1.i154 = zext i32 %30 to i64
  %mul.i155 = mul nuw i64 %conv1.i154, %conv.i153
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i155)
  %cmp172.i263 = icmp ult i64 %mul.i155, 4294967296
  br i1 %cmp172.i263, label %if.then176.i267, label %if.else182.i270, !prof !112

if.then176.i267:                                  ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i265 = trunc i64 %mul.i155 to i32
  %div180.i266 = udiv i32 %conv177.i265, %28
  br label %if.end186.i273

if.else182.i270:                                  ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %mul.i155) #10, !srcloc !113
  %asmresult1.i.i268 = extractvalue { i64, i64 } %31, 1
  %extract.t296.i269 = trunc i64 %asmresult1.i.i268 to i32
  br label %if.end186.i273

if.end186.i273:                                   ; preds = %if.else182.i270, %if.then176.i267
  %tmp.0.off0.i271 = phi i32 [ %div180.i266, %if.then176.i267 ], [ %extract.t296.i269, %if.else182.i270 ]
  %add189.i272 = add i32 %tmp.0.off0.i271, %26
  br label %ltc3676_scale.exit275

ltc3676_scale.exit275:                            ; preds = %if.end186.i273, %ltc3676_scale.exit151.ltc3676_scale.exit275_crit_edge
  %retval.0.i274 = phi i32 [ %add189.i272, %if.end186.i273 ], [ 0, %ltc3676_scale.exit151.ltc3676_scale.exit275_crit_edge ]
  %fixed_uV15 = getelementptr %struct.ltc3676, ptr %1, i32 0, i32 2, i32 %3, i32 17
  %32 = ptrtoint ptr %fixed_uV15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i274, ptr %fixed_uV15, align 4
  br label %cleanup

cleanup:                                          ; preds = %ltc3676_scale.exit275, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %ltc3676_scale.exit275 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dev1 = getelementptr inbounds %struct.ltc3676, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc3676_set_voltage_sel.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc3676_set_voltage_sel, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc3676_set_voltage_sel.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %call2, i32 noundef %selector) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %7, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %selector) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dev1 = getelementptr inbounds %struct.ltc3676, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc3676_set_suspend_voltage.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc3676_set_suspend_voltage, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc3676_set_suspend_voltage.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %call2, i32 noundef %uV) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %7, 1
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %9, i32 noundef %call7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end9 ], [ %call7, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3676_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dev1 = getelementptr inbounds %struct.ltc3676, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc3676_set_suspend_mode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc3676_set_suspend_mode, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc3676_set_suspend_mode.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %call2, i32 noundef %mode) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end10 [
    i32 8, label %do.end.sw.epilog_crit_edge
    i32 2, label %sw.bb7
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.31, ptr noundef %6, i32 noundef %mode) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %do.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ 32, %sw.bb7 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %12, i32 noundef 32, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %call.i, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc3676_readable_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 31
  %switch.cast = trunc i32 %switch.tableidx to i31
  %switch.downshift = lshr i31 -534773761, %switch.cast
  %1 = and i31 %switch.downshift, 1
  %2 = sext i31 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i31 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc3676_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 3
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_ltc3676__292_379_ltc3676_driver_init6, !1, !"__initcall__kmod_ltc3676__292_379_ltc3676_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ltc3676.c", i32 379, i32 1}
!2 = !{ptr @__exitcall_ltc3676_driver_exit, !1, !"__exitcall_ltc3676_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/regulator/ltc3676.c", i32 381, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/regulator/ltc3676.c", i32 382, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/regulator/ltc3676.c", i32 383, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/ltc3676.c", i32 373, i32 11}
!12 = !{ptr @ltc3676_driver, !13, !"ltc3676_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/ltc3676.c", i32 371, i32 26}
!14 = !{ptr @ltc3676_regulator_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/ltc3676.c", i32 317, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/ltc3676.c", i32 320, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ltc3676_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ltc3676_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/ltc3676.c", i32 338, i32 4}
!27 = !{ptr @ltc3676_regulator_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ltc3676_regulator_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/ltc3676.c", i32 351, i32 4}
!31 = !{ptr @ltc3676_regulator_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ltc3676_regulator_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/ltc3676.c", i32 225, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/ltc3676.c", i32 226, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/ltc3676.c", i32 227, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/ltc3676.c", i32 228, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/ltc3676.c", i32 229, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/ltc3676.c", i32 230, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ltc3676.c", i32 231, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/ltc3676.c", i32 232, i32 2}
!50 = !{ptr @ltc3676_regulators, !51, !"ltc3676_regulators", i1 false, i1 false}
!51 = !{!"../drivers/regulator/ltc3676.c", i32 224, i32 36}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/ltc3676.c", i32 158, i32 39}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/ltc3676.c", i32 160, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ltc3676_of_parse_cb._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ltc3676_of_parse_cb._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @ltc3676_linear_regulator_ops, !60, !"ltc3676_linear_regulator_ops", i1 false, i1 false}
!60 = !{!"../drivers/regulator/ltc3676.c", i32 173, i32 35}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/ltc3676.c", i32 124, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ltc3676_set_voltage_sel.__UNIQUE_ID_ddebug290, !62, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/ltc3676.c", i32 80, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ltc3676_set_suspend_voltage.__UNIQUE_ID_ddebug288, !66, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/ltc3676.c", i32 98, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ltc3676_set_suspend_mode.__UNIQUE_ID_ddebug289, !70, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/ltc3676.c", i32 109, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ltc3676_set_suspend_mode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ltc3676_set_suspend_mode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ltc3676_fixed_standby_regulator_ops, !79, !"ltc3676_fixed_standby_regulator_ops", i1 false, i1 false}
!79 = !{!"../drivers/regulator/ltc3676.c", i32 185, i32 35}
!80 = !{ptr @ltc3676_fixed_regulator_ops, !81, !"ltc3676_fixed_regulator_ops", i1 false, i1 false}
!81 = !{!"../drivers/regulator/ltc3676.c", i32 189, i32 35}
!82 = !{ptr @ltc3676_regmap_config, !83, !"ltc3676_regmap_config", i1 false, i1 false}
!83 = !{!"../drivers/regulator/ltc3676.c", i32 255, i32 35}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/ltc3676.c", i32 275, i32 2}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ltc3676_isr.__UNIQUE_ID_ddebug291, !85, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/ltc3676.c", i32 277, i32 3}
!90 = !{ptr @ltc3676_isr._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ltc3676_isr._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/ltc3676.c", i32 285, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ltc3676_isr._entry.36, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ltc3676_isr._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @ltc3676_of_match, !98, !"ltc3676_of_match", i1 false, i1 false}
!98 = !{!"../drivers/regulator/ltc3676.c", i32 365, i32 49}
!99 = !{ptr @ltc3676_i2c_id, !100, !"ltc3676_i2c_id", i1 false, i1 false}
!100 = !{!"../drivers/regulator/ltc3676.c", i32 359, i32 35}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i64 2148996423, i64 2148996428, i64 2148996441, i64 2148996485, i64 2148996519, i64 2148996540}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 2149021610, i64 2149021890, i64 2149022224, i64 2149022558}
