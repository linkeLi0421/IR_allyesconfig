; ModuleID = '/llk/IR_all_yes/drivers/regulator/pv88060-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pv88060-regulator.c"
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
%struct.pv88060_regulator = type { %struct.regulator_desc, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pv88060 = type { ptr, ptr, [14 x ptr] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_pv88060_regulator__288_385_pv88060_regulator_driver_init6 = internal global ptr @pv88060_regulator_driver_init, section ".initcall6.init", align 4
@pv88060_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pv88060_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pv88060_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pv88060_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pv88060_regulator_driver_exit = internal global ptr @pv88060_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"pv88060_regulator.author=James Ban <James.Ban.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [79 x i8] c"pv88060_regulator.description=Regulator device driver for Powerventure PV88060\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"pv88060_regulator.file=drivers/regulator/pv88060-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"pv88060_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pv88060\00", [24 x i8] zeroinitializer }, align 32
@pv88060_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pvs,pv88060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pv88060_i2c_id }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pv88060_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pv88060\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pv88060_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pv88060_regulator:288:(&pv88060_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pv88060_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/pv88060-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr = internal global ptr @pv88060_i2c_probe._entry, section ".printk_index", align 4
@pv88060_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask A reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.9 = internal global ptr @pv88060_i2c_probe._entry.7, section ".printk_index", align 4
@pv88060_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask B reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.12 = internal global ptr @pv88060_i2c_probe._entry.10, section ".printk_index", align 4
@pv88060_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask C reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.15 = internal global ptr @pv88060_i2c_probe._entry.13, section ".printk_index", align 4
@pv88060_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.18 = internal global ptr @pv88060_i2c_probe._entry.16, section ".printk_index", align 4
@pv88060_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to update mask reg: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.21 = internal global ptr @pv88060_i2c_probe._entry.19, section ".printk_index", align 4
@pv88060_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 339, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.25 = internal global ptr @pv88060_i2c_probe._entry.22, section ".printk_index", align 4
@pv88060_regulator_info = internal constant { [14 x %struct.pv88060_regulator], [880 x i8] } { [14 x %struct.pv88060_regulator] [%struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.33, ptr null, i32 0, i8 0, i32 128, i32 4, ptr @pv88060_buck_ops, i32 0, i32 0, ptr null, i32 2800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @pv88060_buck1_limits, i32 0, i32 0, i32 27, i32 127, i32 0, i32 28, i32 12, i32 0, i32 0, i32 27, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 28 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.35, i8 0, ptr @.str.33, ptr null, i32 1, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr @.str.33, ptr null, i32 2, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.39, i8 0, ptr @.str.33, ptr null, i32 3, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 31, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.40, ptr null, ptr @.str.41, i8 0, ptr @.str.33, ptr null, i32 4, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.42, ptr null, ptr @.str.43, i8 0, ptr @.str.33, ptr null, i32 5, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.44, ptr null, ptr @.str.45, i8 0, ptr @.str.33, ptr null, i32 6, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.46, ptr null, ptr @.str.47, i8 0, ptr @.str.33, ptr null, i32 7, i8 0, i32 44, i32 0, ptr @pv88060_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.48, ptr null, ptr @.str.49, i8 0, ptr @.str.33, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.50, ptr null, ptr @.str.51, i8 0, ptr @.str.33, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.52, ptr null, ptr @.str.53, i8 0, ptr @.str.33, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.54, ptr null, ptr @.str.55, i8 0, ptr @.str.33, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.56, ptr null, ptr @.str.57, i8 0, ptr @.str.33, ptr null, i32 12, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }, %struct.pv88060_regulator { %struct.regulator_desc { ptr @.str.58, ptr null, ptr @.str.59, i8 0, ptr @.str.33, ptr null, i32 13, i8 0, i32 1, i32 0, ptr @pv88060_sw_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0 }], [880 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register PV88060 regulator\0A\00", [58 x i8] zeroinitializer }, align 32
@pv88060_i2c_probe._entry_ptr.28 = internal global ptr @pv88060_i2c_probe._entry.26, section ".printk_index", align 4
@pv88060_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C error : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pv88060_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@pv88060_irq_handler._entry_ptr = internal global ptr @pv88060_irq_handler._entry, section ".printk_index", align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV88060_BUCK1\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pv88060_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @pv88060_buck_set_mode, ptr @pv88060_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pv88060_buck1_limits = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1496000, i32 2393000, i32 3291000, i32 4189000], [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO1\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@pv88060_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO2\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO3\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO4\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO5\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO6\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PV88060_LDO7\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW1\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW1\00", [28 x i8] zeroinitializer }, align 32
@pv88060_sw_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW2\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW2\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW3\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW3\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW4\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW4\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW5\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW5\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PV88060_SW6\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW6\00", [28 x i8] zeroinitializer }, align 32
@switch.table.pv88060_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"pv88060_regulator_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 376, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 378, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"pv88060_dt_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 369, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"pv88060_i2c_id\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 362, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"pv88060_regmap_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 55, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 288, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 291, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 301, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 308, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 315, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 325, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 333, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 339, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [23 x i8] c"pv88060_regulator_info\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 207, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 353, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 269, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 208, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"pv88060_buck_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 117, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"pv88060_buck1_limits\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 64, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 210, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"pv88060_ldo_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 130, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 211, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 212, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 213, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 214, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 215, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 216, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 217, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"pv88060_sw_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 139, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 218, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 219, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 220, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 221, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [41 x i8] c"../drivers/regulator/pv88060-regulator.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 222, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [35 x i8] c"switch.table.pv88060_buck_get_mode\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pv88060_regulator_driver_exit, ptr @__initcall__kmod_pv88060_regulator__288_385_pv88060_regulator_driver_init6, ptr @pv88060_i2c_probe._entry, ptr @pv88060_i2c_probe._entry.10, ptr @pv88060_i2c_probe._entry.13, ptr @pv88060_i2c_probe._entry.16, ptr @pv88060_i2c_probe._entry.19, ptr @pv88060_i2c_probe._entry.22, ptr @pv88060_i2c_probe._entry.26, ptr @pv88060_i2c_probe._entry.7, ptr @pv88060_i2c_probe._entry_ptr, ptr @pv88060_i2c_probe._entry_ptr.12, ptr @pv88060_i2c_probe._entry_ptr.15, ptr @pv88060_i2c_probe._entry_ptr.18, ptr @pv88060_i2c_probe._entry_ptr.21, ptr @pv88060_i2c_probe._entry_ptr.25, ptr @pv88060_i2c_probe._entry_ptr.28, ptr @pv88060_i2c_probe._entry_ptr.9, ptr @pv88060_irq_handler._entry, ptr @pv88060_irq_handler._entry_ptr, ptr @pv88060_regulator_driver_exit, ptr @pv88060_regulator_driver, ptr @.str, ptr @pv88060_dt_ids, ptr @pv88060_i2c_id, ptr @pv88060_i2c_probe._key, ptr @pv88060_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @pv88060_regulator_info, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @pv88060_buck_ops, ptr @pv88060_buck1_limits, ptr @.str.34, ptr @.str.35, ptr @pv88060_ldo_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @pv88060_sw_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @switch.table.pv88060_buck_get_mode], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_regulator_info to i32), i32 3472, i32 4352, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_buck1_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88060_sw_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pv88060_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88060_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pv88060_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pv88060_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pv88060_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88060_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @pv88060_regmap_config, ptr noundef nonnull @pv88060_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.pv88060, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call5 to i32
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %6) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.end63, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call15 = tail call i32 @regmap_write(ptr noundef %call5, i32 noundef 8, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %call15) #8
  br label %cleanup

if.end22:                                         ; preds = %if.then13
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 9, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %call24) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 10, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %call33) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call43 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %23, ptr noundef null, ptr noundef nonnull @pv88060_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end51, label %do.end48

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %27) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 8, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp54 = icmp slt i32 %call.i151, 0
  br i1 %cmp54, label %do.end58, label %if.end51.if.end65_crit_edge

if.end51.if.end65_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20, i32 noundef %call.i151) #8
  br label %cleanup

do.end63:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.23) #8
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end51.if.end65_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %36 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %config, align 4
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %regmap69 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %39 = ptrtoint ptr %regmap69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %regmap69, align 4
  %tobool71.not = icmp eq ptr %1, null
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %init_data73 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end74
  %inc = add nuw nsw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end65
  %i.0153 = phi i32 [ 0, %if.end65 ], [ %inc, %for.cond.for.body_crit_edge ]
  br i1 %tobool71.not, label %for.body.if.end74_crit_edge, label %if.then72

for.body.if.end74_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.regulator_init_data, ptr %1, i32 %i.0153
  %40 = ptrtoint ptr %init_data73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx, ptr %init_data73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %for.body.if.end74_crit_edge
  %arrayidx75 = getelementptr [14 x %struct.pv88060_regulator], ptr @pv88060_regulator_info, i32 0, i32 %i.0153
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx75, ptr %driver_data, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call78 = call ptr @devm_regulator_register(ptr noundef %43, ptr noundef %arrayidx75, ptr noundef nonnull %config) #5
  %arrayidx79 = getelementptr %struct.pv88060, ptr %call.i, i32 0, i32 2, i32 %i.0153
  %44 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call78, ptr %arrayidx79, align 4
  %cmp.i152 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.end86, label %for.cond

do.end86:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.27) #8
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx79, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %for.cond.cleanup_crit_edge, %do.end58, %do.end48, %do.end38, %do.end29, %do.end20, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %call15, %do.end20 ], [ %call24, %do.end29 ], [ %call33, %do.end38 ], [ %call43, %do.end48 ], [ %call.i151, %do.end58 ], [ %49, %do.end86 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88060_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !127
  %regmap = getelementptr inbounds %struct.pv88060, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %for.body.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %6, null
  br i1 %cmp3.not, label %for.body.preheader.for.inc_crit_edge, label %if.then4

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then4:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %6, i32 noundef 1, ptr noundef null) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.not.1 = icmp eq ptr %8, null
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call7.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %8, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.not.2 = icmp eq ptr %10, null
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call7.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %10, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.not.3 = icmp eq ptr %12, null
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call7.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %12, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.4, align 4
  %cmp3.not.4 = icmp eq ptr %14, null
  br i1 %cmp3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call7.4 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %14, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %cmp3.not.5 = icmp eq ptr %16, null
  br i1 %cmp3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %call7.5 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %16, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then4.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.6, align 4
  %cmp3.not.6 = icmp eq ptr %18, null
  br i1 %cmp3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then4.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %call7.6 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %18, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then4.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.7, align 4
  %cmp3.not.7 = icmp eq ptr %20, null
  br i1 %cmp3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then4.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then4.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %call7.7 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %20, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then4.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 8
  %21 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.8, align 4
  %cmp3.not.8 = icmp eq ptr %22, null
  br i1 %cmp3.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then4.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8

if.then4.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  %call7.8 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %22, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then4.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 9
  %23 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.9, align 4
  %cmp3.not.9 = icmp eq ptr %24, null
  br i1 %cmp3.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then4.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9

if.then4.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  %call7.9 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %24, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then4.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 10
  %25 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.10, align 4
  %cmp3.not.10 = icmp eq ptr %26, null
  br i1 %cmp3.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then4.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10

if.then4.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  %call7.10 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %26, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then4.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 11
  %27 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.11, align 4
  %cmp3.not.11 = icmp eq ptr %28, null
  br i1 %cmp3.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then4.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11

if.then4.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  %call7.11 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %28, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then4.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 12
  %29 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.12, align 4
  %cmp3.not.12 = icmp eq ptr %30, null
  br i1 %cmp3.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then4.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12

if.then4.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  %call7.12 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %30, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then4.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.13, align 4
  %cmp3.not.13 = icmp eq ptr %32, null
  br i1 %cmp3.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then4.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

if.then4.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  %call7.13 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %32, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then4.13, %for.inc.12.for.inc.13_crit_edge
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %34, i32 noundef 4, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.inc.13.do.end_crit_edge, label %for.inc.13.if.end14_crit_edge

for.inc.13.if.end14_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.13.do.end_crit_edge:                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end14:                                         ; preds = %for.inc.13.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ 1, %for.inc.13.if.end14_crit_edge ]
  %35 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_val, align 4
  %and15 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %for.body20.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body20.preheader:                             ; preds = %if.end14
  %arrayidx22 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 0
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx22, align 4
  %cmp23.not = icmp eq ptr %38, null
  br i1 %cmp23.not, label %for.body20.preheader.for.inc29_crit_edge, label %if.then24

for.body20.preheader.for.inc29_crit_edge:         ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

if.then24:                                        ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %38, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29

for.inc29:                                        ; preds = %if.then24, %for.body20.preheader.for.inc29_crit_edge
  %arrayidx22.1 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx22.1, align 4
  %cmp23.not.1 = icmp eq ptr %40, null
  br i1 %cmp23.not.1, label %for.inc29.for.inc29.1_crit_edge, label %if.then24.1

for.inc29.for.inc29.1_crit_edge:                  ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.1

if.then24.1:                                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  %call27.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %40, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %if.then24.1, %for.inc29.for.inc29.1_crit_edge
  %arrayidx22.2 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx22.2, align 4
  %cmp23.not.2 = icmp eq ptr %42, null
  br i1 %cmp23.not.2, label %for.inc29.1.for.inc29.2_crit_edge, label %if.then24.2

for.inc29.1.for.inc29.2_crit_edge:                ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.2

if.then24.2:                                      ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #7
  %call27.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %42, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.2

for.inc29.2:                                      ; preds = %if.then24.2, %for.inc29.1.for.inc29.2_crit_edge
  %arrayidx22.3 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx22.3, align 4
  %cmp23.not.3 = icmp eq ptr %44, null
  br i1 %cmp23.not.3, label %for.inc29.2.for.inc29.3_crit_edge, label %if.then24.3

for.inc29.2.for.inc29.3_crit_edge:                ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.3

if.then24.3:                                      ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #7
  %call27.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %44, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.3

for.inc29.3:                                      ; preds = %if.then24.3, %for.inc29.2.for.inc29.3_crit_edge
  %arrayidx22.4 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx22.4, align 4
  %cmp23.not.4 = icmp eq ptr %46, null
  br i1 %cmp23.not.4, label %for.inc29.3.for.inc29.4_crit_edge, label %if.then24.4

for.inc29.3.for.inc29.4_crit_edge:                ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.4

if.then24.4:                                      ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #7
  %call27.4 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %46, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.4

for.inc29.4:                                      ; preds = %if.then24.4, %for.inc29.3.for.inc29.4_crit_edge
  %arrayidx22.5 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 5
  %47 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx22.5, align 4
  %cmp23.not.5 = icmp eq ptr %48, null
  br i1 %cmp23.not.5, label %for.inc29.4.for.inc29.5_crit_edge, label %if.then24.5

for.inc29.4.for.inc29.5_crit_edge:                ; preds = %for.inc29.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.5

if.then24.5:                                      ; preds = %for.inc29.4
  call void @__sanitizer_cov_trace_pc() #7
  %call27.5 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %48, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.5

for.inc29.5:                                      ; preds = %if.then24.5, %for.inc29.4.for.inc29.5_crit_edge
  %arrayidx22.6 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx22.6, align 4
  %cmp23.not.6 = icmp eq ptr %50, null
  br i1 %cmp23.not.6, label %for.inc29.5.for.inc29.6_crit_edge, label %if.then24.6

for.inc29.5.for.inc29.6_crit_edge:                ; preds = %for.inc29.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.6

if.then24.6:                                      ; preds = %for.inc29.5
  call void @__sanitizer_cov_trace_pc() #7
  %call27.6 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %50, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.6

for.inc29.6:                                      ; preds = %if.then24.6, %for.inc29.5.for.inc29.6_crit_edge
  %arrayidx22.7 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 7
  %51 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx22.7, align 4
  %cmp23.not.7 = icmp eq ptr %52, null
  br i1 %cmp23.not.7, label %for.inc29.6.for.inc29.7_crit_edge, label %if.then24.7

for.inc29.6.for.inc29.7_crit_edge:                ; preds = %for.inc29.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.7

if.then24.7:                                      ; preds = %for.inc29.6
  call void @__sanitizer_cov_trace_pc() #7
  %call27.7 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %52, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.7

for.inc29.7:                                      ; preds = %if.then24.7, %for.inc29.6.for.inc29.7_crit_edge
  %arrayidx22.8 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 8
  %53 = ptrtoint ptr %arrayidx22.8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx22.8, align 4
  %cmp23.not.8 = icmp eq ptr %54, null
  br i1 %cmp23.not.8, label %for.inc29.7.for.inc29.8_crit_edge, label %if.then24.8

for.inc29.7.for.inc29.8_crit_edge:                ; preds = %for.inc29.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.8

if.then24.8:                                      ; preds = %for.inc29.7
  call void @__sanitizer_cov_trace_pc() #7
  %call27.8 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %54, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.8

for.inc29.8:                                      ; preds = %if.then24.8, %for.inc29.7.for.inc29.8_crit_edge
  %arrayidx22.9 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 9
  %55 = ptrtoint ptr %arrayidx22.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx22.9, align 4
  %cmp23.not.9 = icmp eq ptr %56, null
  br i1 %cmp23.not.9, label %for.inc29.8.for.inc29.9_crit_edge, label %if.then24.9

for.inc29.8.for.inc29.9_crit_edge:                ; preds = %for.inc29.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.9

if.then24.9:                                      ; preds = %for.inc29.8
  call void @__sanitizer_cov_trace_pc() #7
  %call27.9 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %56, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.9

for.inc29.9:                                      ; preds = %if.then24.9, %for.inc29.8.for.inc29.9_crit_edge
  %arrayidx22.10 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 10
  %57 = ptrtoint ptr %arrayidx22.10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx22.10, align 4
  %cmp23.not.10 = icmp eq ptr %58, null
  br i1 %cmp23.not.10, label %for.inc29.9.for.inc29.10_crit_edge, label %if.then24.10

for.inc29.9.for.inc29.10_crit_edge:               ; preds = %for.inc29.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.10

if.then24.10:                                     ; preds = %for.inc29.9
  call void @__sanitizer_cov_trace_pc() #7
  %call27.10 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %58, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.10

for.inc29.10:                                     ; preds = %if.then24.10, %for.inc29.9.for.inc29.10_crit_edge
  %arrayidx22.11 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 11
  %59 = ptrtoint ptr %arrayidx22.11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx22.11, align 4
  %cmp23.not.11 = icmp eq ptr %60, null
  br i1 %cmp23.not.11, label %for.inc29.10.for.inc29.11_crit_edge, label %if.then24.11

for.inc29.10.for.inc29.11_crit_edge:              ; preds = %for.inc29.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.11

if.then24.11:                                     ; preds = %for.inc29.10
  call void @__sanitizer_cov_trace_pc() #7
  %call27.11 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %60, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.11

for.inc29.11:                                     ; preds = %if.then24.11, %for.inc29.10.for.inc29.11_crit_edge
  %arrayidx22.12 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 12
  %61 = ptrtoint ptr %arrayidx22.12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx22.12, align 4
  %cmp23.not.12 = icmp eq ptr %62, null
  br i1 %cmp23.not.12, label %for.inc29.11.for.inc29.12_crit_edge, label %if.then24.12

for.inc29.11.for.inc29.12_crit_edge:              ; preds = %for.inc29.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.12

if.then24.12:                                     ; preds = %for.inc29.11
  call void @__sanitizer_cov_trace_pc() #7
  %call27.12 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %62, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.12

for.inc29.12:                                     ; preds = %if.then24.12, %for.inc29.11.for.inc29.12_crit_edge
  %arrayidx22.13 = getelementptr %struct.pv88060, ptr %data, i32 0, i32 2, i32 13
  %63 = ptrtoint ptr %arrayidx22.13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx22.13, align 4
  %cmp23.not.13 = icmp eq ptr %64, null
  br i1 %cmp23.not.13, label %for.inc29.12.for.inc29.13_crit_edge, label %if.then24.13

for.inc29.12.for.inc29.13_crit_edge:              ; preds = %for.inc29.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.13

if.then24.13:                                     ; preds = %for.inc29.12
  call void @__sanitizer_cov_trace_pc() #7
  %call27.13 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %64, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.13

for.inc29.13:                                     ; preds = %if.then24.13, %for.inc29.12.for.inc29.13_crit_edge
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_write(ptr noundef %66, i32 noundef 4, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %for.inc29.13.do.end_crit_edge, label %for.inc29.13.cleanup_crit_edge

for.inc29.13.cleanup_crit_edge:                   ; preds = %for.inc29.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc29.13.do.end_crit_edge:                    ; preds = %for.inc29.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc29.13.do.end_crit_edge, %for.inc.13.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call10, %for.inc.13.do.end_crit_edge ], [ %call33, %for.inc29.13.do.end_crit_edge ]
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.29, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc29.13.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.end14.cleanup_crit_edge ], [ 1, %for.inc29.13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88060_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conf = getelementptr inbounds %struct.pv88060_regulator, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conf, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %4, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88060_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !127
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %conf = getelementptr inbounds %struct.pv88060_regulator, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conf, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %if.end.cleanup_crit_edge, label %switch.lookup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pv88060_buck_get_mode, i32 0, i32 %and
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_pv88060_regulator__288_385_pv88060_regulator_driver_init6, !1, !"__initcall__kmod_pv88060_regulator__288_385_pv88060_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pv88060-regulator.c", i32 385, i32 1}
!2 = !{ptr @__exitcall_pv88060_regulator_driver_exit, !1, !"__exitcall_pv88060_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pv88060-regulator.c", i32 387, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pv88060-regulator.c", i32 388, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pv88060-regulator.c", i32 389, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pv88060-regulator.c", i32 378, i32 11}
!12 = !{ptr @pv88060_regulator_driver, !13, !"pv88060_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pv88060-regulator.c", i32 376, i32 26}
!14 = !{ptr @pv88060_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pv88060-regulator.c", i32 288, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/pv88060-regulator.c", i32 291, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pv88060_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pv88060_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/pv88060-regulator.c", i32 301, i32 4}
!27 = !{ptr @pv88060_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pv88060_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/pv88060-regulator.c", i32 308, i32 4}
!31 = !{ptr @pv88060_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pv88060_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/pv88060-regulator.c", i32 315, i32 4}
!35 = !{ptr @pv88060_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pv88060_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/pv88060-regulator.c", i32 325, i32 4}
!39 = !{ptr @pv88060_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pv88060_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/pv88060-regulator.c", i32 333, i32 4}
!43 = !{ptr @pv88060_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pv88060_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/pv88060-regulator.c", i32 339, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pv88060_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pv88060_i2c_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/pv88060-regulator.c", i32 353, i32 4}
!52 = !{ptr @pv88060_i2c_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pv88060_i2c_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @pv88060_regmap_config, !55, !"pv88060_regmap_config", i1 false, i1 false}
!55 = !{!"../drivers/regulator/pv88060-regulator.c", i32 55, i32 35}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/pv88060-regulator.c", i32 269, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pv88060_irq_handler._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pv88060_irq_handler._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/pv88060-regulator.c", i32 208, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/pv88060-regulator.c", i32 210, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/pv88060-regulator.c", i32 211, i32 2}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/pv88060-regulator.c", i32 212, i32 2}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/pv88060-regulator.c", i32 213, i32 2}
!76 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/pv88060-regulator.c", i32 214, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/pv88060-regulator.c", i32 215, i32 2}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/pv88060-regulator.c", i32 216, i32 2}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/pv88060-regulator.c", i32 217, i32 2}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/pv88060-regulator.c", i32 218, i32 2}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/pv88060-regulator.c", i32 219, i32 2}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/pv88060-regulator.c", i32 220, i32 2}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/pv88060-regulator.c", i32 221, i32 2}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/pv88060-regulator.c", i32 222, i32 2}
!103 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pv88060_regulator_info, !105, !"pv88060_regulator_info", i1 false, i1 false}
!105 = !{!"../drivers/regulator/pv88060-regulator.c", i32 207, i32 39}
!106 = !{ptr @pv88060_buck_ops, !107, !"pv88060_buck_ops", i1 false, i1 false}
!107 = !{!"../drivers/regulator/pv88060-regulator.c", i32 117, i32 35}
!108 = !{ptr @pv88060_buck1_limits, !109, !"pv88060_buck1_limits", i1 false, i1 false}
!109 = !{!"../drivers/regulator/pv88060-regulator.c", i32 64, i32 27}
!110 = !{ptr @pv88060_ldo_ops, !111, !"pv88060_ldo_ops", i1 false, i1 false}
!111 = !{!"../drivers/regulator/pv88060-regulator.c", i32 130, i32 35}
!112 = !{ptr @pv88060_sw_ops, !113, !"pv88060_sw_ops", i1 false, i1 false}
!113 = !{!"../drivers/regulator/pv88060-regulator.c", i32 139, i32 35}
!114 = !{ptr @pv88060_dt_ids, !115, !"pv88060_dt_ids", i1 false, i1 false}
!115 = !{!"../drivers/regulator/pv88060-regulator.c", i32 369, i32 34}
!116 = !{ptr @pv88060_i2c_id, !117, !"pv88060_i2c_id", i1 false, i1 false}
!117 = !{!"../drivers/regulator/pv88060-regulator.c", i32 362, i32 35}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
