; ModuleID = '/llk/IR_all_yes/drivers/regulator/pv88080-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pv88080-regulator.c"
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
%struct.pv88080_compatible_regmap = type { [3 x %struct.pv88080_buck_regmap], i32, i32, i32, i32 }
%struct.pv88080_buck_regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pv88080_regulator = type { %struct.regulator_desc, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pv88080_buck_voltage = type { i32, i32, i32 }
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
%struct.pv88080 = type { ptr, ptr, [4 x ptr], i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_pv88080_regulator__288_566_pv88080_regulator_driver_init6 = internal global ptr @pv88080_regulator_driver_init, section ".initcall6.init", align 4
@pv88080_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pv88080_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pv88080_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pv88080_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pv88080_regulator_driver_exit = internal global ptr @pv88080_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"pv88080_regulator.author=James Ban <James.Ban.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [79 x i8] c"pv88080_regulator.description=Regulator device driver for Powerventure PV88080\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"pv88080_regulator.file=drivers/regulator/pv88080-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"pv88080_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pv88080\00", [24 x i8] zeroinitializer }, align 32
@pv88080_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pvs,pv88080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pvs,pv88080-aa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pvs,pv88080-ba\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pv88080_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pv88080\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pv88080-aa\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pv88080-ba\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pv88080_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pv88080_regulator:393:(&pv88080_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pv88080_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/pv88080-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr = internal global ptr @pv88080_i2c_probe._entry, section ".printk_index", align 4
@pv88080_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get of_match_node\0A\00", [35 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.9 = internal global ptr @pv88080_i2c_probe._entry.7, section ".printk_index", align 4
@pv88080_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask A reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.12 = internal global ptr @pv88080_i2c_probe._entry.10, section ".printk_index", align 4
@pv88080_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask B reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.15 = internal global ptr @pv88080_i2c_probe._entry.13, section ".printk_index", align 4
@pv88080_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to mask C reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.18 = internal global ptr @pv88080_i2c_probe._entry.16, section ".printk_index", align 4
@pv88080_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.21 = internal global ptr @pv88080_i2c_probe._entry.19, section ".printk_index", align 4
@pv88080_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 448, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to update mask reg: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.24 = internal global ptr @pv88080_i2c_probe._entry.22, section ".printk_index", align 4
@pv88080_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 452, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.28 = internal global ptr @pv88080_i2c_probe._entry.25, section ".printk_index", align 4
@pv88080_aa_regs = internal constant { %struct.pv88080_compatible_regmap, [36 x i8] } { %struct.pv88080_compatible_regmap { [3 x %struct.pv88080_buck_regmap] [%struct.pv88080_buck_regmap { i32 39, i32 39, i32 40, i32 40, i32 89, i32 92, i32 128, i32 127, i32 12 }, %struct.pv88080_buck_regmap { i32 41, i32 41, i32 42, i32 42, i32 97, i32 100, i32 128, i32 127, i32 12 }, %struct.pv88080_buck_regmap { i32 43, i32 43, i32 44, i32 44, i32 105, i32 108, i32 128, i32 127, i32 12 }], i32 46, i32 45, i32 1, i32 255 }, [36 x i8] zeroinitializer }, align 32
@pv88080_ba_regs = internal constant { %struct.pv88080_compatible_regmap, [36 x i8] } { %struct.pv88080_compatible_regmap { [3 x %struct.pv88080_buck_regmap] [%struct.pv88080_buck_regmap { i32 42, i32 42, i32 44, i32 44, i32 90, i32 93, i32 128, i32 127, i32 12 }, %struct.pv88080_buck_regmap { i32 45, i32 45, i32 47, i32 47, i32 99, i32 102, i32 128, i32 127, i32 12 }, %struct.pv88080_buck_regmap { i32 48, i32 48, i32 50, i32 50, i32 108, i32 111, i32 128, i32 127, i32 12 }], i32 52, i32 51, i32 1, i32 255 }, [36 x i8] zeroinitializer }, align 32
@pv88080_regulator_info = internal global { [4 x %struct.pv88080_regulator], [256 x i8] } { [4 x %struct.pv88080_regulator] [%struct.pv88080_regulator { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr @.str.38, ptr null, i32 0, i8 0, i32 128, i32 4, ptr @pv88080_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @pv88080_buck1_limits, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0 }, %struct.pv88080_regulator { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.38, ptr null, i32 1, i8 0, i32 128, i32 4, ptr @pv88080_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @pv88080_buck23_limits, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0 }, %struct.pv88080_regulator { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.38, ptr null, i32 2, i8 0, i32 128, i32 4, ptr @pv88080_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @pv88080_buck23_limits, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0 }, %struct.pv88080_regulator { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.38, ptr null, i32 3, i8 0, i32 256, i32 0, ptr @pv88080_hvbuck_ops, i32 0, i32 0, ptr null, i32 0, i32 5000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0 }], [256 x i8] zeroinitializer }, align 32
@pv88080_buck_vol = internal constant { [2 x %struct.pv88080_buck_voltage], [40 x i8] } { [2 x %struct.pv88080_buck_voltage] [%struct.pv88080_buck_voltage { i32 600000, i32 1393750, i32 6250 }, %struct.pv88080_buck_voltage { i32 1400000, i32 2193750, i32 6250 }], [40 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register PV88080 regulator\0A\00", [58 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.31 = internal global ptr @pv88080_i2c_probe._entry.29, section ".printk_index", align 4
@pv88080_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 542, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pv88080_i2c_probe._entry_ptr.33 = internal global ptr @pv88080_i2c_probe._entry.32, section ".printk_index", align 4
@pv88080_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C error : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pv88080_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@pv88080_irq_handler._entry_ptr = internal global ptr @pv88080_irq_handler._entry, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV88080_BUCK1\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pv88080_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @pv88080_buck_set_mode, ptr @pv88080_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pv88080_buck1_limits = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3230000, i32 5130000, i32 6960000, i32 8790000], [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV88080_BUCK2\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@pv88080_buck23_limits = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1496000, i32 2393000, i32 3291000, i32 4189000], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PV88080_BUCK3\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PV88080_HVBUCK\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HVBUCK\00", [25 x i8] zeroinitializer }, align 32
@pv88080_hvbuck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@switch.table.pv88080_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"pv88080_regulator_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 557, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 559, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"pv88080_dt_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 200, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"pv88080_i2c_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 549, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"pv88080_regmap_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 81, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 393, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 396, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 404, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 417, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 423, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 429, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 439, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 447, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 452, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"pv88080_aa_regs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 111, i32 47 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"pv88080_ba_regs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 155, i32 47 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"pv88080_regulator_info\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 316, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"pv88080_buck_vol\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 98, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 519, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 542, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 370, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 317, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"pv88080_buck_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 260, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"pv88080_buck1_limits\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 90, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 319, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"pv88080_buck23_limits\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 94, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 321, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 323, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"pv88080_hvbuck_ops\00", align 1
@___asan_gen_.197 = private constant [41 x i8] c"../drivers/regulator/pv88080-regulator.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 273, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant [35 x i8] c"switch.table.pv88080_buck_get_mode\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pv88080_regulator_driver_exit, ptr @__initcall__kmod_pv88080_regulator__288_566_pv88080_regulator_driver_init6, ptr @pv88080_i2c_probe._entry, ptr @pv88080_i2c_probe._entry.10, ptr @pv88080_i2c_probe._entry.13, ptr @pv88080_i2c_probe._entry.16, ptr @pv88080_i2c_probe._entry.19, ptr @pv88080_i2c_probe._entry.22, ptr @pv88080_i2c_probe._entry.25, ptr @pv88080_i2c_probe._entry.29, ptr @pv88080_i2c_probe._entry.32, ptr @pv88080_i2c_probe._entry.7, ptr @pv88080_i2c_probe._entry_ptr, ptr @pv88080_i2c_probe._entry_ptr.12, ptr @pv88080_i2c_probe._entry_ptr.15, ptr @pv88080_i2c_probe._entry_ptr.18, ptr @pv88080_i2c_probe._entry_ptr.21, ptr @pv88080_i2c_probe._entry_ptr.24, ptr @pv88080_i2c_probe._entry_ptr.28, ptr @pv88080_i2c_probe._entry_ptr.31, ptr @pv88080_i2c_probe._entry_ptr.33, ptr @pv88080_i2c_probe._entry_ptr.9, ptr @pv88080_irq_handler._entry, ptr @pv88080_irq_handler._entry_ptr, ptr @pv88080_regulator_driver_exit, ptr @pv88080_regulator_driver, ptr @.str, ptr @pv88080_dt_ids, ptr @pv88080_i2c_id, ptr @pv88080_i2c_probe._key, ptr @pv88080_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @pv88080_aa_regs, ptr @pv88080_ba_regs, ptr @pv88080_regulator_info, ptr @pv88080_buck_vol, ptr @.str.30, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pv88080_buck_ops, ptr @pv88080_buck1_limits, ptr @.str.39, ptr @.str.40, ptr @pv88080_buck23_limits, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pv88080_hvbuck_ops, ptr @switch.table.pv88080_buck_get_mode], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_aa_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_ba_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_regulator_info to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_buck_vol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_buck1_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_buck23_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv88080_hvbuck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pv88080_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88080_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pv88080_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pv88080_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pv88080_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88080_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %conf2 = alloca i32, align 4
  %conf5 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf2) #5
  %3 = ptrtoint ptr %conf2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %conf2, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf5) #5
  %4 = ptrtoint ptr %conf5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %conf5, align 4, !annotation !110
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @pv88080_regmap_config, ptr noundef nonnull @pv88080_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.pv88080, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call5 to i32
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %7) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call18 = tail call ptr @of_match_node(ptr noundef nonnull @pv88080_dt_ids, ptr noundef nonnull %11) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end25:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call18, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %if.end27

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end25
  %.sink = phi i32 [ %18, %if.else ], [ %16, %if.end25 ]
  %type26 = getelementptr inbounds %struct.pv88080, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %type26, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %do.end79, label %if.then28

if.then28:                                        ; preds = %if.end27
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef %call30) #8
  br label %cleanup

if.end37:                                         ; preds = %if.then28
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 10, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, i32 noundef %call39) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 11, i32 noundef 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef %call48) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call58 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %36, ptr noundef null, ptr noundef nonnull @pv88080_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end66, label %do.end63

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.20, i32 noundef %40) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end55
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call.i331 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 9, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %cmp69 = icmp slt i32 %call.i331, 0
  br i1 %cmp69, label %do.end73, label %if.end66.if.end81_crit_edge

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.23, i32 noundef %call.i331) #8
  br label %cleanup

do.end79:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.26) #8
  br label %if.end81

if.end81:                                         ; preds = %do.end79, %if.end66.if.end81_crit_edge
  %type82 = getelementptr inbounds %struct.pv88080, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %type82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type82, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %48, label %if.end81.sw.epilog_crit_edge [
    i32 0, label %if.end81.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb84
  ]

if.end81.sw.epilog.sink.split_crit_edge:          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end81.sw.epilog_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb84, %if.end81.sw.epilog.sink.split_crit_edge
  %pv88080_ba_regs.sink = phi ptr [ @pv88080_ba_regs, %sw.bb84 ], [ @pv88080_aa_regs, %if.end81.sw.epilog.sink.split_crit_edge ]
  %regmap_config85 = getelementptr inbounds %struct.pv88080, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %regmap_config85 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pv88080_ba_regs.sink, ptr %regmap_config85, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end81.sw.epilog_crit_edge
  %regmap_config86 = getelementptr inbounds %struct.pv88080, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %regmap_config86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap_config86, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %55 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %config, align 4
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %regmap90 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %58 = ptrtoint ptr %regmap90 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %regmap90, align 4
  %tobool92.not = icmp eq ptr %1, null
  %init_data94 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data168 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end142
  %inc = add nuw nsw i32 %i.0334, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %i.0334 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.body_crit_edge ]
  br i1 %tobool92.not, label %for.body.if.end95_crit_edge, label %if.then93

for.body.if.end95_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then93:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.regulator_init_data, ptr %1, i32 %i.0334
  %59 = ptrtoint ptr %init_data94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx, ptr %init_data94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %for.body.if.end95_crit_edge
  %arrayidx96 = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334
  %buck_limit_reg = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 3
  %60 = ptrtoint ptr %buck_limit_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buck_limit_reg, align 4
  %arrayidx97 = getelementptr [4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 %i.0334
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 30
  %62 = ptrtoint ptr %csel_reg to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %csel_reg, align 4
  %buck_limit_mask = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 8
  %63 = ptrtoint ptr %buck_limit_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buck_limit_mask, align 4
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 31
  %65 = ptrtoint ptr %csel_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %csel_mask, align 4
  %buck_mode_reg = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 2
  %66 = ptrtoint ptr %buck_mode_reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buck_mode_reg, align 4
  %mode_reg = getelementptr [4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 %i.0334, i32 1
  %68 = ptrtoint ptr %mode_reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %mode_reg, align 4
  %buck_vdac_range_reg = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 4
  %69 = ptrtoint ptr %buck_vdac_range_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buck_vdac_range_reg, align 4
  %conf2108 = getelementptr [4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 %i.0334, i32 2
  %71 = ptrtoint ptr %conf2108 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %conf2108, align 4
  %buck_vrange_gain_reg = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 5
  %72 = ptrtoint ptr %buck_vrange_gain_reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buck_vrange_gain_reg, align 4
  %conf5112 = getelementptr [4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 %i.0334, i32 3
  %74 = ptrtoint ptr %conf5112 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %conf5112, align 4
  %75 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx96, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 34
  %77 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %enable_reg, align 4
  %buck_enable_mask = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 6
  %78 = ptrtoint ptr %buck_enable_mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buck_enable_mask, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 35
  %80 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %enable_mask, align 4
  %buck_vsel_reg = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 1
  %81 = ptrtoint ptr %buck_vsel_reg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buck_vsel_reg, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 27
  %83 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %vsel_reg, align 4
  %buck_vsel_mask = getelementptr [3 x %struct.pv88080_buck_regmap], ptr %52, i32 0, i32 %i.0334, i32 7
  %84 = ptrtoint ptr %buck_vsel_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buck_vsel_mask, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 28
  %86 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %vsel_mask, align 4
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call132 = call i32 @regmap_read(ptr noundef %88, i32 noundef %70, ptr noundef nonnull %conf2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end95.cleanup_crit_edge, label %if.end135

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end135:                                        ; preds = %if.end95
  %89 = ptrtoint ptr %conf2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %conf2, align 4
  %shr = lshr i32 %90, 7
  %and = and i32 %shr, 1
  store i32 %and, ptr %conf2, align 4
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %93 = ptrtoint ptr %conf5112 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %conf5112, align 4
  %call139 = call i32 @regmap_read(ptr noundef %92, i32 noundef %94, ptr noundef nonnull %conf5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end135.cleanup_crit_edge, label %if.end142

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end142:                                        ; preds = %if.end135
  %95 = ptrtoint ptr %conf5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %conf5, align 4
  %and144 = and i32 %96, 1
  store i32 %and144, ptr %conf5, align 4
  %97 = ptrtoint ptr %conf2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %conf2, align 4
  %arrayidx145 = getelementptr [2 x %struct.pv88080_buck_voltage], ptr @pv88080_buck_vol, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx145, align 4
  %add = add nuw nsw i32 %and144, 1
  %mul = mul i32 %100, %add
  %min_uV148 = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 14
  %101 = ptrtoint ptr %min_uV148 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul, ptr %min_uV148, align 4
  %uV_step = getelementptr [2 x %struct.pv88080_buck_voltage], ptr @pv88080_buck_vol, i32 0, i32 %98, i32 2
  %102 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %uV_step, align 4
  %mul151 = mul i32 %103, %add
  %uV_step154 = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 15
  %104 = ptrtoint ptr %uV_step154 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul151, ptr %uV_step154, align 4
  %max_uV = getelementptr [2 x %struct.pv88080_buck_voltage], ptr @pv88080_buck_vol, i32 0, i32 %98, i32 1
  %105 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_uV, align 4
  %mul157 = mul i32 %106, %add
  %sub = sub i32 %mul157, %mul
  %div = udiv i32 %sub, %mul151
  %add164 = add i32 %div, 1
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx97, i32 0, i32 8
  %107 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add164, ptr %n_voltages, align 4
  %108 = ptrtoint ptr %driver_data168 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx97, ptr %driver_data168, align 4
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  %call172 = call ptr @devm_regulator_register(ptr noundef %110, ptr noundef %arrayidx97, ptr noundef nonnull %config) #5
  %arrayidx173 = getelementptr %struct.pv88080, ptr %call.i, i32 0, i32 2, i32 %i.0334
  %111 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call172, ptr %arrayidx173, align 4
  %cmp.i332 = icmp ugt ptr %call172, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %do.end180, label %for.cond

do.end180:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.30) #8
  %114 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx173, align 4
  %116 = ptrtoint ptr %115 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %hvbuck_enable_reg = getelementptr inbounds %struct.pv88080_compatible_regmap, ptr %52, i32 0, i32 1
  %117 = ptrtoint ptr %hvbuck_enable_reg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hvbuck_enable_reg, align 4
  store i32 %118, ptr getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3, i32 0, i32 34), align 4
  %hvbuck_enable_mask = getelementptr inbounds %struct.pv88080_compatible_regmap, ptr %52, i32 0, i32 3
  %119 = ptrtoint ptr %hvbuck_enable_mask to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hvbuck_enable_mask, align 4
  store i32 %120, ptr getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3, i32 0, i32 35), align 4
  %hvbuck_vsel_reg = getelementptr inbounds %struct.pv88080_compatible_regmap, ptr %52, i32 0, i32 2
  %121 = ptrtoint ptr %hvbuck_vsel_reg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hvbuck_vsel_reg, align 4
  store i32 %122, ptr getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3, i32 0, i32 27), align 4
  %hvbuck_vsel_mask = getelementptr inbounds %struct.pv88080_compatible_regmap, ptr %52, i32 0, i32 4
  %123 = ptrtoint ptr %hvbuck_vsel_mask to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hvbuck_vsel_mask, align 4
  store i32 %124, ptr getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3, i32 0, i32 28), align 4
  br i1 %tobool92.not, label %for.end.if.end190_crit_edge, label %if.then187

for.end.if.end190_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

if.then187:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx188 = getelementptr %struct.regulator_init_data, ptr %1, i32 3
  %125 = ptrtoint ptr %init_data94 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx188, ptr %init_data94, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then187, %for.end.if.end190_crit_edge
  %126 = ptrtoint ptr %driver_data168 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3), ptr %driver_data168, align 4
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  %call193 = call ptr @devm_regulator_register(ptr noundef %128, ptr noundef getelementptr inbounds ([4 x %struct.pv88080_regulator], ptr @pv88080_regulator_info, i32 0, i32 3), ptr noundef nonnull %config) #5
  %arrayidx195 = getelementptr %struct.pv88080, ptr %call.i, i32 0, i32 2, i32 3
  %129 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call193, ptr %arrayidx195, align 4
  %cmp.i333 = icmp ugt ptr %call193, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %do.end202, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end202:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.30) #8
  %132 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx195, align 4
  %134 = ptrtoint ptr %133 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end202, %if.end190.cleanup_crit_edge, %do.end180, %if.end135.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %do.end73, %do.end63, %do.end53, %do.end44, %do.end35, %do.end23, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %call30, %do.end35 ], [ %call39, %do.end44 ], [ %call48, %do.end53 ], [ %call58, %do.end63 ], [ %call.i331, %do.end73 ], [ %116, %do.end180 ], [ %134, %do.end202 ], [ -22, %do.end23 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end190.cleanup_crit_edge ], [ %call139, %if.end135.cleanup_crit_edge ], [ %call132, %if.end95.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf2) #5
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
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88080_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !110
  %regmap = getelementptr inbounds %struct.pv88080, ptr %data, i32 0, i32 1
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
  %arrayidx = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 0
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
  %arrayidx.1 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 1
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
  %arrayidx.2 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 2
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
  %arrayidx.3 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 3
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
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %14, i32 noundef 4, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.inc.3.do.end_crit_edge, label %for.inc.3.if.end14_crit_edge

for.inc.3.if.end14_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end14:                                         ; preds = %for.inc.3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ 1, %for.inc.3.if.end14_crit_edge ]
  %15 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_val, align 4
  %and15 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %for.body20.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body20.preheader:                             ; preds = %if.end14
  %arrayidx22 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 0
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 4
  %cmp23.not = icmp eq ptr %18, null
  br i1 %cmp23.not, label %for.body20.preheader.for.inc29_crit_edge, label %if.then24

for.body20.preheader.for.inc29_crit_edge:         ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

if.then24:                                        ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %18, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29

for.inc29:                                        ; preds = %if.then24, %for.body20.preheader.for.inc29_crit_edge
  %arrayidx22.1 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx22.1, align 4
  %cmp23.not.1 = icmp eq ptr %20, null
  br i1 %cmp23.not.1, label %for.inc29.for.inc29.1_crit_edge, label %if.then24.1

for.inc29.for.inc29.1_crit_edge:                  ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.1

if.then24.1:                                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  %call27.1 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %20, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.1

for.inc29.1:                                      ; preds = %if.then24.1, %for.inc29.for.inc29.1_crit_edge
  %arrayidx22.2 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx22.2, align 4
  %cmp23.not.2 = icmp eq ptr %22, null
  br i1 %cmp23.not.2, label %for.inc29.1.for.inc29.2_crit_edge, label %if.then24.2

for.inc29.1.for.inc29.2_crit_edge:                ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.2

if.then24.2:                                      ; preds = %for.inc29.1
  call void @__sanitizer_cov_trace_pc() #7
  %call27.2 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %22, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.2

for.inc29.2:                                      ; preds = %if.then24.2, %for.inc29.1.for.inc29.2_crit_edge
  %arrayidx22.3 = getelementptr %struct.pv88080, ptr %data, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx22.3, align 4
  %cmp23.not.3 = icmp eq ptr %24, null
  br i1 %cmp23.not.3, label %for.inc29.2.for.inc29.3_crit_edge, label %if.then24.3

for.inc29.2.for.inc29.3_crit_edge:                ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29.3

if.then24.3:                                      ; preds = %for.inc29.2
  call void @__sanitizer_cov_trace_pc() #7
  %call27.3 = call i32 @regulator_notifier_call_chain(ptr noundef nonnull %24, i32 noundef 16, ptr noundef null) #5
  br label %for.inc29.3

for.inc29.3:                                      ; preds = %if.then24.3, %for.inc29.2.for.inc29.3_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_write(ptr noundef %26, i32 noundef 4, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %for.inc29.3.do.end_crit_edge, label %for.inc29.3.cleanup_crit_edge

for.inc29.3.cleanup_crit_edge:                    ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc29.3.do.end_crit_edge:                     ; preds = %for.inc29.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc29.3.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call10, %for.inc.3.do.end_crit_edge ], [ %call33, %for.inc29.3.do.end_crit_edge ]
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc29.3.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.end14.cleanup_crit_edge ], [ 1, %for.inc29.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @pv88080_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
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
  %mode_reg = getelementptr inbounds %struct.pv88080_regulator, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %4, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pv88080_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !110
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr inbounds %struct.pv88080_regulator, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
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
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pv88080_buck_get_mode, i32 0, i32 %and
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_pv88080_regulator__288_566_pv88080_regulator_driver_init6, !1, !"__initcall__kmod_pv88080_regulator__288_566_pv88080_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pv88080-regulator.c", i32 566, i32 1}
!2 = !{ptr @__exitcall_pv88080_regulator_driver_exit, !1, !"__exitcall_pv88080_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pv88080-regulator.c", i32 568, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pv88080-regulator.c", i32 569, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pv88080-regulator.c", i32 570, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pv88080-regulator.c", i32 559, i32 11}
!12 = !{ptr @pv88080_regulator_driver, !13, !"pv88080_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pv88080-regulator.c", i32 557, i32 26}
!14 = !{ptr @pv88080_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pv88080-regulator.c", i32 393, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/pv88080-regulator.c", i32 396, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pv88080_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pv88080_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/pv88080-regulator.c", i32 404, i32 4}
!27 = !{ptr @pv88080_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pv88080_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/pv88080-regulator.c", i32 417, i32 4}
!31 = !{ptr @pv88080_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pv88080_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/pv88080-regulator.c", i32 423, i32 4}
!35 = !{ptr @pv88080_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pv88080_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/pv88080-regulator.c", i32 429, i32 4}
!39 = !{ptr @pv88080_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pv88080_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/pv88080-regulator.c", i32 439, i32 4}
!43 = !{ptr @pv88080_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pv88080_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/pv88080-regulator.c", i32 447, i32 4}
!47 = !{ptr @pv88080_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pv88080_i2c_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/pv88080-regulator.c", i32 452, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pv88080_i2c_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pv88080_i2c_probe._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/pv88080-regulator.c", i32 519, i32 4}
!56 = !{ptr @pv88080_i2c_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pv88080_i2c_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @pv88080_i2c_probe._entry.32, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/regulator/pv88080-regulator.c", i32 542, i32 3}
!60 = !{ptr @pv88080_i2c_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @pv88080_regmap_config, !62, !"pv88080_regmap_config", i1 false, i1 false}
!62 = !{!"../drivers/regulator/pv88080-regulator.c", i32 81, i32 35}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/pv88080-regulator.c", i32 370, i32 2}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pv88080_irq_handler._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pv88080_irq_handler._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pv88080_aa_regs, !69, !"pv88080_aa_regs", i1 false, i1 false}
!69 = !{!"../drivers/regulator/pv88080-regulator.c", i32 111, i32 47}
!70 = !{ptr @pv88080_ba_regs, !71, !"pv88080_ba_regs", i1 false, i1 false}
!71 = !{!"../drivers/regulator/pv88080-regulator.c", i32 155, i32 47}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/pv88080-regulator.c", i32 317, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/pv88080-regulator.c", i32 319, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/pv88080-regulator.c", i32 321, i32 2}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/pv88080-regulator.c", i32 323, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pv88080_regulator_info, !86, !"pv88080_regulator_info", i1 false, i1 false}
!86 = !{!"../drivers/regulator/pv88080-regulator.c", i32 316, i32 33}
!87 = !{ptr @pv88080_buck_ops, !88, !"pv88080_buck_ops", i1 false, i1 false}
!88 = !{!"../drivers/regulator/pv88080-regulator.c", i32 260, i32 35}
!89 = !{ptr @pv88080_buck1_limits, !90, !"pv88080_buck1_limits", i1 false, i1 false}
!90 = !{!"../drivers/regulator/pv88080-regulator.c", i32 90, i32 27}
!91 = !{ptr @pv88080_buck23_limits, !92, !"pv88080_buck23_limits", i1 false, i1 false}
!92 = !{!"../drivers/regulator/pv88080-regulator.c", i32 94, i32 27}
!93 = !{ptr @pv88080_hvbuck_ops, !94, !"pv88080_hvbuck_ops", i1 false, i1 false}
!94 = !{!"../drivers/regulator/pv88080-regulator.c", i32 273, i32 35}
!95 = !{ptr @pv88080_buck_vol, !96, !"pv88080_buck_vol", i1 false, i1 false}
!96 = !{!"../drivers/regulator/pv88080-regulator.c", i32 98, i32 42}
!97 = !{ptr @pv88080_dt_ids, !98, !"pv88080_dt_ids", i1 false, i1 false}
!98 = !{!"../drivers/regulator/pv88080-regulator.c", i32 200, i32 34}
!99 = !{ptr @pv88080_i2c_id, !100, !"pv88080_i2c_id", i1 false, i1 false}
!100 = !{!"../drivers/regulator/pv88080-regulator.c", i32 549, i32 35}
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
