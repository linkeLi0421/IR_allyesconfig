; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps65090-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65090-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tps65090_regulator_plat_data = type { ptr, i8, ptr, i8, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tps65090_platform_data = type { i32, ptr, i32, i32, [12 x ptr] }
%struct.tps65090 = type { ptr, ptr, ptr }
%struct.tps65090_regulator = type { ptr, ptr, ptr, i8, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_tps65090_regulator__289_522_tps65090_regulator_init4 = internal global ptr @tps65090_regulator_init, section ".initcall4.init", align 4
@tps65090_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65090_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65090_regulator_exit = internal global ptr @tps65090_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"tps65090_regulator.description=tps65090 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [67 x i8] c"tps65090_regulator.author=Venu Byravarasu <vbyravarasu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"tps65090_regulator.file=drivers/regulator/tps65090-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [34 x i8] c"tps65090_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [48 x i8] c"tps65090_regulator.alias=platform:tps65090-pmic\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65090-pmic\00", [18 x i8] zeroinitializer }, align 32
@tps65090_regulator_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65090_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps65090_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps65090-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Probing regulator\0A\00", [45 x i8] zeroinitializer }, align 32
@tps65090_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65090_regulator_probe._entry_ptr = internal global ptr @tps65090_regulator_probe._entry, section ".printk_index", align 4
@tps65090_regulator_desc = internal global { [12 x %struct.regulator_desc], [720 x i8] } { [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @tps65090_reg_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr @.str.50, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr @.str.52, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr @.str.54, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr @.str.56, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr @.str.58, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @tps65090_fet_control_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 17, i32 17, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr @.str.60, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @tps65090_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr @.str.62, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @tps65090_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [720 x i8] zeroinitializer }, align 32
@tps65090_ext_control_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@tps65090_regulator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed disable ext control\0A\00", [36 x i8] zeroinitializer }, align 32
@tps65090_regulator_probe._entry_ptr.10 = internal global ptr @tps65090_regulator_probe._entry.8, section ".printk_index", align 4
@tps65090_regulator_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@tps65090_regulator_probe._entry_ptr.13 = internal global ptr @tps65090_regulator_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps65090_parse_dt_reg_data\00", [37 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry_ptr = internal global ptr @tps65090_parse_dt_reg_data._entry, section ".printk_index", align 4
@tps65090_matches = internal global { [12 x %struct.of_regulator_match], [48 x i8] } { [12 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.27, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.35, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.37, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.38, ptr null, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 341, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry_ptr.19 = internal global ptr @tps65090_parse_dt_reg_data._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,enable-ext-control\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dcdc-ext-control\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65090\00", [23 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not find DCDC external control GPIO\0A\00", [53 x i8] zeroinitializer }, align 32
@tps65090_parse_dt_reg_data._entry_ptr.25 = internal global ptr @tps65090_parse_dt_reg_data._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,overcurrent-wait\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc1\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc2\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc3\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet2\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet3\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet4\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet5\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet6\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fet7\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TPS65090_RAILSDCDC1\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsys1\00", [26 x i8] zeroinitializer }, align 32
@tps65090_reg_control_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TPS65090_RAILSDCDC2\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsys2\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TPS65090_RAILSDCDC3\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsys3\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET1\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet1\00", [25 x i8] zeroinitializer }, align 32
@tps65090_fet_control_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65090_fet_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET2\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet2\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET3\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet3\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET4\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet4\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET5\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet5\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET6\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet6\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSFET7\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"infet7\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSLDO1\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vsys-l1\00", [24 x i8] zeroinitializer }, align 32
@tps65090_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TPS65090_RAILSLDO2\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vsys-l2\00", [24 x i8] zeroinitializer }, align 32
@tps65090_fet_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 160, ptr @.str.65, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg %#x enable ok after %d tries\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65090_fet_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps65090_fet_enable._entry_ptr = internal global ptr @tps65090_fet_enable._entry, section ".printk_index", align 4
@tps65090_fet_enable._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 164, ptr @.str.65, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg %#x enable failed\0A\00", [41 x i8] zeroinitializer }, align 32
@tps65090_fet_enable._entry_ptr.68 = internal global ptr @tps65090_fet_enable._entry.66, section ".printk_index", align 4
@tps65090_try_enable_fet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error in updating reg %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps65090_try_enable_fet\00", [40 x i8] zeroinitializer }, align 32
@tps65090_try_enable_fet._entry_ptr = internal global ptr @tps65090_try_enable_fet._entry, section ".printk_index", align 4
@tps65090_regulator_disable_ext_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 286, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error in set reg 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tps65090_regulator_disable_ext_control\00", [57 x i8] zeroinitializer }, align 32
@tps65090_regulator_disable_ext_control._entry_ptr = internal global ptr @tps65090_regulator_disable_ext_control._entry, section ".printk_index", align 4
@tps65090_reg_set_overcurrent_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 74, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error updating overcurrent wait %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tps65090_reg_set_overcurrent_wait\00", [62 x i8] zeroinitializer }, align 32
@tps65090_reg_set_overcurrent_wait._entry_ptr = internal global ptr @tps65090_reg_set_overcurrent_wait._entry, section ".printk_index", align 4
@tps65090_config_ext_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error in updating reg 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tps65090_config_ext_control\00", [36 x i8] zeroinitializer }, align 32
@tps65090_config_ext_control._entry_ptr = internal global ptr @tps65090_config_ext_control._entry, section ".printk_index", align 4
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"tps65090_regulator_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 511, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 513, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 418, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 425, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"tps65090_regulator_desc\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 206, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"tps65090_ext_control_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 50, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 459, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 486, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 330, i32 40 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 332, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"tps65090_matches\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 294, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 340, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 362, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 376, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 378, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 380, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 387, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 295, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 296, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 297, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 298, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 299, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 300, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 301, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 302, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 303, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 304, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 305, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 306, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 207, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [25 x i8] c"tps65090_reg_control_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 170, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 209, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 211, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 214, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"tps65090_fet_control_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 176, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 217, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 220, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 223, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 226, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 229, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 232, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 236, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"tps65090_ldo_ops\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 182, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 238, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 159, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 164, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 97, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 286, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 73, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [42 x i8] c"../drivers/regulator/tps65090-regulator.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 266, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tps65090_regulator_exit, ptr @__initcall__kmod_tps65090_regulator__289_522_tps65090_regulator_init4, ptr @tps65090_config_ext_control._entry, ptr @tps65090_config_ext_control._entry_ptr, ptr @tps65090_fet_enable._entry, ptr @tps65090_fet_enable._entry.66, ptr @tps65090_fet_enable._entry_ptr, ptr @tps65090_fet_enable._entry_ptr.68, ptr @tps65090_parse_dt_reg_data._entry, ptr @tps65090_parse_dt_reg_data._entry.17, ptr @tps65090_parse_dt_reg_data._entry.23, ptr @tps65090_parse_dt_reg_data._entry_ptr, ptr @tps65090_parse_dt_reg_data._entry_ptr.19, ptr @tps65090_parse_dt_reg_data._entry_ptr.25, ptr @tps65090_reg_set_overcurrent_wait._entry, ptr @tps65090_reg_set_overcurrent_wait._entry_ptr, ptr @tps65090_regulator_disable_ext_control._entry, ptr @tps65090_regulator_disable_ext_control._entry_ptr, ptr @tps65090_regulator_exit, ptr @tps65090_regulator_probe._entry, ptr @tps65090_regulator_probe._entry.11, ptr @tps65090_regulator_probe._entry.8, ptr @tps65090_regulator_probe._entry_ptr, ptr @tps65090_regulator_probe._entry_ptr.10, ptr @tps65090_regulator_probe._entry_ptr.13, ptr @tps65090_try_enable_fet._entry, ptr @tps65090_try_enable_fet._entry_ptr, ptr @tps65090_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tps65090_regulator_desc, ptr @tps65090_ext_control_ops, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tps65090_matches, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @tps65090_reg_control_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @tps65090_fet_control_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @tps65090_ldo_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_desc to i32), i32 2928, i32 3648, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_ext_control_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_parse_dt_reg_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_matches to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_parse_dt_reg_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_parse_dt_reg_data._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_reg_control_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_fet_control_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_fet_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_fet_enable._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_try_enable_fet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_regulator_disable_ext_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_reg_set_overcurrent_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65090_config_ext_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65090_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65090_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65090_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = call ptr @memset(ptr %config, i32 0, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65090_regulator_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tps65090_regulator_probe, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65090_regulator_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %land.lhs.true, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.end14.thread, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12.if.end14.thread.thread_crit_edge, label %if.end.i

if.then12.if.end14.thread.thread_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.thread.thread

if.end.i:                                         ; preds = %if.then12
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #5
  %tobool5.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.end14.thread.thread_crit_edge, label %if.end8.i

if.end.i.if.end14.thread.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.thread.thread

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @of_get_child_by_name(ptr noundef %14, ptr noundef nonnull @.str.14) #5
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %if.end14.thread.thread

if.end14.i:                                       ; preds = %if.end8.i
  %call16.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call9.i, ptr noundef nonnull @tps65090_matches, i32 noundef 12) #5
  tail call void @of_node_put(ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  br label %for.body.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call16.i) #8
  %15 = inttoptr i32 %call16.i to ptr
  br label %if.end14

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.i.for.body.i_crit_edge
  %idx.0132.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tps65090_regulator_plat_data, ptr %call5.i.i.i, i32 %idx.0132.i
  %init_data.i = getelementptr [12 x %struct.of_regulator_match], ptr @tps65090_matches, i32 0, i32 %idx.0132.i, i32 2
  %16 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_data.i, align 4
  %tobool27.not.i = icmp eq ptr %17, null
  br i1 %tobool27.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end29.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end29.i:                                       ; preds = %for.body.i
  %of_node31.i = getelementptr [12 x %struct.of_regulator_match], ptr @tps65090_matches, i32 0, i32 %idx.0132.i, i32 3
  %18 = ptrtoint ptr %of_node31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node31.i, align 4
  %tobool32.not.i = icmp eq ptr %19, null
  br i1 %tobool32.not.i, label %if.end29.i.for.inc.i_crit_edge, label %if.end34.i

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end34.i:                                       ; preds = %if.end29.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %arrayidx.i, align 4
  %call.i125.i = tail call ptr @of_find_property(ptr noundef nonnull %19, ptr noundef nonnull @.str.20, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i125.i, null
  %enable_ext_control.i = getelementptr %struct.tps65090_regulator_plat_data, ptr %call5.i.i.i, i32 %idx.0132.i, i32 1
  %frombool.i = zext i1 %tobool.i.i to i8
  %21 = ptrtoint ptr %enable_ext_control.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool.i, ptr %enable_ext_control.i, align 4
  br i1 %tobool.i.i, label %if.then38.i, label %if.end34.i.if.end67.i_crit_edge

if.end34.i.if.end67.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then38.i:                                      ; preds = %if.end34.i
  %always_on.i = getelementptr inbounds %struct.regulator_init_data, ptr %17, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %always_on.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %always_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %23 = icmp ult i16 %bf.load.i, 16384
  %gflags.0.i = select i1 %23, i32 19, i32 23
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 3
  %call.i126.i = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev, ptr noundef %fwnode.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %gflags.0.i, ptr noundef nonnull @.str.22) #5
  %gpiod.i = getelementptr %struct.tps65090_regulator_plat_data, ptr %call5.i.i.i, i32 %idx.0132.i, i32 2
  %24 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i126.i, ptr %gpiod.i, align 4
  %cmp52.i = icmp eq ptr %call.i126.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp52.i, label %do.end56.i, label %if.else59.i

do.end56.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  %25 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %gpiod.i, align 4
  br label %if.end67.i

if.else59.i:                                      ; preds = %if.then38.i
  %cmp.i.i = icmp ugt ptr %call.i126.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else59.i.if.end14_crit_edge, label %if.else59.i.if.end67.i_crit_edge

if.else59.i.if.end67.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.else59.i.if.end14_crit_edge:                   ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end67.i:                                       ; preds = %if.else59.i.if.end67.i_crit_edge, %do.end56.i, %if.end34.i.if.end67.i_crit_edge
  %overcurrent_wait.i = getelementptr %struct.tps65090_regulator_plat_data, ptr %call5.i.i.i, i32 %idx.0132.i, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.26, ptr noundef %overcurrent_wait.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp69.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp69.i, label %if.then70.i, label %if.end67.i.if.end71.i_crit_edge

if.end67.i.if.end71.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  %overcurrent_wait_valid.i = getelementptr %struct.tps65090_regulator_plat_data, ptr %call5.i.i.i, i32 %idx.0132.i, i32 3
  %26 = ptrtoint ptr %overcurrent_wait_valid.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %overcurrent_wait_valid.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then70.i, %if.end67.i.if.end71.i_crit_edge
  %arrayidx73.i = getelementptr %struct.tps65090_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %idx.0132.i
  %27 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.i, ptr %arrayidx73.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end71.i, %if.end29.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14.thread.thread:                           ; preds = %do.end.i, %if.end.i.if.end14.thread.thread_crit_edge, %if.then12.if.end14.thread.thread_crit_edge
  %tps65090_pdata.0.ph.ph = phi ptr [ inttoptr (i32 -19 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.then12.if.end14.thread.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.end14.thread.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %cond.true

if.end14.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.else59.i.if.end14_crit_edge, %do.end20.i, %do.end.if.end14_crit_edge
  %tobool68.not = phi i1 [ true, %do.end20.i ], [ true, %do.end.if.end14_crit_edge ], [ false, %if.else59.i.if.end14_crit_edge ], [ false, %for.inc.i.if.end14_crit_edge ]
  %tps65090_reg_matches.1 = phi ptr [ null, %do.end20.i ], [ null, %do.end.if.end14_crit_edge ], [ @tps65090_matches, %if.else59.i.if.end14_crit_edge ], [ @tps65090_matches, %for.inc.i.if.end14_crit_edge ]
  %tps65090_pdata.0 = phi ptr [ %15, %do.end20.i ], [ %8, %do.end.if.end14_crit_edge ], [ %call.i.i, %for.inc.i.if.end14_crit_edge ], [ %call.i126.i, %if.else59.i.if.end14_crit_edge ]
  %tobool.not.i202 = icmp eq ptr %tps65090_pdata.0, null
  %cmp.i203 = icmp ugt ptr %tps65090_pdata.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i202, %cmp.i203
  br i1 %spec.select.i, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br i1 %tobool.not.i202, label %do.end19.cleanup_crit_edge, label %do.end19.cond.true_crit_edge

do.end19.cond.true_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.true:                                        ; preds = %do.end19.cond.true_crit_edge, %if.end14.thread.thread
  %tps65090_pdata.0233235 = phi ptr [ %tps65090_pdata.0, %do.end19.cond.true_crit_edge ], [ %tps65090_pdata.0.ph.ph, %if.end14.thread.thread ]
  %28 = ptrtoint ptr %tps65090_pdata.0233235 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #5
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %for.cond.preheader

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end23
  %driver_data.c199 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %rmap.c200 = getelementptr inbounds %struct.tps65090, ptr %3, i32 0, i32 1
  %regmap.c201 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %of_node72 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %num.0255 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tps65090_platform_data, ptr %tps65090_pdata.0, i32 0, i32 4, i32 %num.0255
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %arrayidx29 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr [12 x %struct.regulator_desc], ptr @tps65090_regulator_desc, i32 0, i32 %num.0255
  %desc = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 1
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx32, ptr %desc, align 4
  %tobool33.not = icmp eq ptr %30, null
  br i1 %tobool33.not, label %if.else65.critedge, label %if.then34

if.then34:                                        ; preds = %for.body
  %overcurrent_wait_valid = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %overcurrent_wait_valid to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %overcurrent_wait_valid, align 4, !range !172
  %overcurrent_wait_valid36 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 3
  %35 = ptrtoint ptr %overcurrent_wait_valid36 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %overcurrent_wait_valid36, align 4
  %overcurrent_wait = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %30, i32 0, i32 4
  %36 = ptrtoint ptr %overcurrent_wait to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %overcurrent_wait, align 4
  %overcurrent_wait38 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 4
  %38 = ptrtoint ptr %overcurrent_wait38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %overcurrent_wait38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num.0255)
  %switch.i = icmp ult i32 %num.0255, 3
  br i1 %switch.i, label %land.lhs.true43, label %if.then63.critedge198

land.lhs.true43:                                  ; preds = %if.then34
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %30, align 4
  %tobool44.not = icmp eq ptr %40, null
  br i1 %tobool44.not, label %if.then63.critedge194, label %if.then45

if.then45:                                        ; preds = %land.lhs.true43
  %enable_ext_control = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %30, i32 0, i32 1
  %41 = ptrtoint ptr %enable_ext_control to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_ext_control, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool46.not = icmp eq i8 %42, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %30, i32 0, i32 2
  %43 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpiod, align 4
  %45 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %ena_gpiod, align 4
  %ops = getelementptr [12 x %struct.regulator_desc], ptr @tps65090_regulator_desc, i32 0, i32 %num.0255, i32 10
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tps65090_ext_control_ops, ptr %ops, align 4
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent, align 8
  %49 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %config, align 4
  br label %if.then63

if.else:                                          ; preds = %if.then45
  %always_on.i204 = getelementptr inbounds %struct.regulator_init_data, ptr %40, i32 0, i32 1, i32 28
  %50 = ptrtoint ptr %always_on.i204 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i205 = load i16, ptr %always_on.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i205)
  %51 = icmp ult i16 %bf.load.i205, 16384
  br i1 %51, label %if.else.if.end10.i_crit_edge, label %if.then.i

if.else.if.end10.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %if.else
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 4
  %enable_reg.i = getelementptr inbounds %struct.regulator_desc, ptr %53, i32 0, i32 34
  %54 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %enable_reg.i, align 4
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.i, align 4
  %rmap.i.i = getelementptr inbounds %struct.tps65090, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %rmap.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmap.i.i, align 4
  %call.i.i.i206 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %55, i32 noundef 1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i206)
  %cmp.i207 = icmp slt i32 %call.i.i.i206, 0
  br i1 %cmp.i207, label %do.end.i208, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end.i208:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.71, i32 noundef %55) #8
  br label %do.end54

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %if.else.if.end10.i_crit_edge
  %64 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx29, align 4
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent1.i.i, align 8
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc, align 4
  %enable_reg.i.i = getelementptr inbounds %struct.regulator_desc, ptr %69, i32 0, i32 34
  %70 = ptrtoint ptr %enable_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %enable_reg.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %72 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %rmap.i.i.i = getelementptr inbounds %struct.tps65090, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %rmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmap.i.i.i, align 4
  %call.i.i14.i.i = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef %71, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i.i)
  %cmp.i.i209 = icmp slt i32 %call.i.i14.i.i, 0
  br i1 %cmp.i.i209, label %do.end.i.i, label %if.then63.critedge190

do.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.75, i32 noundef %71) #8
  br label %do.end54

do.end54:                                         ; preds = %do.end.i.i, %do.end.i208
  %retval.0.i210.ph = phi i32 [ %call.i.i14.i.i, %do.end.i.i ], [ %call.i.i.i206, %do.end.i208 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.then63.critedge190:                            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent, align 8
  %80 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %config, align 4
  br label %if.then63

if.then63.critedge194:                            ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent, align 8
  %83 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %config, align 4
  br label %if.then63

if.then63.critedge198:                            ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent, align 8
  %86 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %config, align 4
  br label %if.then63

if.then63:                                        ; preds = %if.then63.critedge198, %if.then63.critedge194, %if.then63.critedge190, %if.then47
  %87 = ptrtoint ptr %driver_data.c199 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx29, ptr %driver_data.c199, align 4
  %88 = ptrtoint ptr %rmap.c200 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmap.c200, align 4
  %90 = ptrtoint ptr %regmap.c201 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %regmap.c201, align 4
  %91 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %30, align 4
  br label %if.end67

if.else65.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent, align 8
  %95 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %config, align 4
  %96 = ptrtoint ptr %driver_data.c199 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx29, ptr %driver_data.c199, align 4
  %97 = ptrtoint ptr %rmap.c200 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmap.c200, align 4
  %99 = ptrtoint ptr %regmap.c201 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %regmap.c201, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else65.critedge, %if.then63
  %storemerge = phi ptr [ %92, %if.then63 ], [ null, %if.else65.critedge ]
  %100 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %storemerge, ptr %init_data, align 4
  br i1 %tobool68.not, label %if.end67.if.end75_crit_edge, label %if.then69

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %of_node71 = getelementptr %struct.of_regulator_match, ptr %tps65090_reg_matches.1, i32 %num.0255, i32 3
  %101 = ptrtoint ptr %of_node71 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node71, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end67.if.end75_crit_edge
  %storemerge274 = phi ptr [ %102, %if.then69 ], [ null, %if.end67.if.end75_crit_edge ]
  %103 = ptrtoint ptr %of_node72 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %storemerge274, ptr %of_node72, align 4
  %104 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ena_gpiod, align 4
  %tobool77.not = icmp eq ptr %105, null
  br i1 %tobool77.not, label %if.end75.if.end81_crit_edge, label %if.then78

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  call void @devm_gpiod_unhinge(ptr noundef %dev, ptr noundef nonnull %105) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end75.if.end81_crit_edge
  %106 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %desc, align 4
  %call84 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %107, ptr noundef nonnull %config) #5
  %cmp.i211 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %do.end89, label %if.end93

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %111) #8
  %112 = ptrtoint ptr %call84 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end81
  %rdev94 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 2
  %113 = ptrtoint ptr %rdev94 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call84, ptr %rdev94, align 4
  %overcurrent_wait_valid95 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 3
  %114 = ptrtoint ptr %overcurrent_wait_valid95 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %overcurrent_wait_valid95, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool96.not = icmp eq i8 %115, 0
  br i1 %tobool96.not, label %if.end93.if.end102_crit_edge, label %if.then97

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then97:                                        ; preds = %if.end93
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %call84, i32 0, i32 17
  %116 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i, align 4
  %118 = ptrtoint ptr %call84 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call84, align 8
  %enable_reg.i212 = getelementptr inbounds %struct.regulator_desc, ptr %119, i32 0, i32 34
  %120 = ptrtoint ptr %enable_reg.i212 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %enable_reg.i212, align 4
  %overcurrent_wait.i213 = getelementptr %struct.tps65090_regulator, ptr %call5.i.i, i32 %num.0255, i32 4
  %122 = ptrtoint ptr %overcurrent_wait.i213 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %overcurrent_wait.i213, align 4
  %shl.i = shl i32 %123, 2
  %call.i.i214 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef %121, i32 noundef 12, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool.not.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %tobool.not.i215, label %if.then97.if.end102_crit_edge, label %tps65090_reg_set_overcurrent_wait.exit

if.then97.if.end102_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

tps65090_reg_set_overcurrent_wait.exit:           ; preds = %if.then97
  %dev.i216 = getelementptr inbounds %struct.regulator_dev, ptr %call84, i32 0, i32 13
  %124 = ptrtoint ptr %call84 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call84, align 8
  %enable_reg2.i = getelementptr inbounds %struct.regulator_desc, ptr %125, i32 0, i32 34
  %126 = ptrtoint ptr %enable_reg2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %enable_reg2.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i216, ptr noundef nonnull @.str.73, i32 noundef %127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %cmp99 = icmp slt i32 %call.i.i214, 0
  br i1 %cmp99, label %tps65090_reg_set_overcurrent_wait.exit.cleanup_crit_edge, label %tps65090_reg_set_overcurrent_wait.exit.if.end102_crit_edge

tps65090_reg_set_overcurrent_wait.exit.if.end102_crit_edge: ; preds = %tps65090_reg_set_overcurrent_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

tps65090_reg_set_overcurrent_wait.exit.cleanup_crit_edge: ; preds = %tps65090_reg_set_overcurrent_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end102:                                        ; preds = %tps65090_reg_set_overcurrent_wait.exit.if.end102_crit_edge, %if.then97.if.end102_crit_edge, %if.end93.if.end102_crit_edge
  %tobool33.not.not = xor i1 %tobool33.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num.0255)
  %switch.i219 = icmp ult i32 %num.0255, 3
  %or.cond = select i1 %tobool33.not.not, i1 %switch.i219, i1 false
  br i1 %or.cond, label %land.lhs.true106, label %if.end102.for.inc_crit_edge

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true106:                                 ; preds = %if.end102
  %128 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %30, align 4
  %tobool108.not = icmp eq ptr %129, null
  br i1 %tobool108.not, label %land.lhs.true106.for.inc_crit_edge, label %land.lhs.true109

land.lhs.true106.for.inc_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %enable_ext_control110 = getelementptr inbounds %struct.tps65090_regulator_plat_data, ptr %30, i32 0, i32 1
  %130 = ptrtoint ptr %enable_ext_control110 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %enable_ext_control110, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool111.not = icmp eq i8 %131, 0
  br i1 %tobool111.not, label %land.lhs.true109.for.inc_crit_edge, label %if.then112

land.lhs.true109.for.inc_crit_edge:               ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then112:                                       ; preds = %land.lhs.true109
  %132 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx29, align 4
  %parent1.i220 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %parent1.i220 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %parent1.i220, align 8
  %136 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %desc, align 4
  %enable_reg.i222 = getelementptr inbounds %struct.regulator_desc, ptr %137, i32 0, i32 34
  %138 = ptrtoint ptr %enable_reg.i222 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %enable_reg.i222, align 4
  %driver_data.i.i.i223 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 8
  %140 = ptrtoint ptr %driver_data.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %driver_data.i.i.i223, align 4
  %rmap.i.i224 = getelementptr inbounds %struct.tps65090, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %rmap.i.i224 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmap.i.i224, align 4
  %call.i.i14.i = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef %139, i32 noundef 2, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %cmp.i225 = icmp slt i32 %call.i.i14.i, 0
  br i1 %cmp.i225, label %tps65090_config_ext_control.exit.thread, label %if.then112.for.inc_crit_edge

if.then112.for.inc_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

tps65090_config_ext_control.exit.thread:          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.75, i32 noundef %139) #8
  br label %cleanup

for.inc:                                          ; preds = %if.then112.for.inc_crit_edge, %land.lhs.true109.for.inc_crit_edge, %land.lhs.true106.for.inc_crit_edge, %if.end102.for.inc_crit_edge
  %inc = add nuw nsw i32 %num.0255, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tps65090_config_ext_control.exit.thread, %tps65090_reg_set_overcurrent_wait.exit.cleanup_crit_edge, %do.end89, %do.end54, %if.end23.cleanup_crit_edge, %cond.true, %do.end19.cleanup_crit_edge, %if.end14.thread
  %retval.0 = phi i32 [ %112, %do.end89 ], [ %retval.0.i210.ph, %do.end54 ], [ 0, %for.end ], [ %28, %cond.true ], [ -22, %do.end19.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -22, %if.end14.thread ], [ %call.i.i14.i, %tps65090_config_ext_control.exit.thread ], [ %call.i.i214, %tps65090_reg_set_overcurrent_wait.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65090_fet_enable(ptr noundef %rdev) #2 align 64 {
entry:
  %control.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %tries.0 = phi i32 [ 0, %entry ], [ %inc, %if.end8 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #5
  %0 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control.i, align 4, !annotation !173
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %enable_reg.i = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 35
  %7 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_mask.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %6, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %while.cond
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %enable_reg9.i = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %enable_reg9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg9.i, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %for.body.preheader.i.tps65090_try_enable_fet.exit_crit_edge, label %if.end13.i

for.body.preheader.i.tps65090_try_enable_fet.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65090_try_enable_fet.exit

do.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev, align 8
  %enable_reg5.i = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %enable_reg5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_reg5.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.69, i32 noundef %18) #8
  br label %tps65090_try_enable_fet.exit

if.end13.i:                                       ; preds = %for.body.preheader.i
  %19 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control.i, align 4
  %and.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end15.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end15.i:                                       ; preds = %if.end13.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %23 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev, align 8
  %enable_reg9.1.i = getelementptr inbounds %struct.regulator_desc, ptr %24, i32 0, i32 34
  %25 = ptrtoint ptr %enable_reg9.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enable_reg9.1.i, align 4
  %call10.1.i = call i32 @regmap_read(ptr noundef %22, i32 noundef %26, ptr noundef nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i)
  %cmp11.1.i = icmp slt i32 %call10.1.i, 0
  br i1 %cmp11.1.i, label %if.end15.i.tps65090_try_enable_fet.exit_crit_edge, label %if.end13.1.i

if.end15.i.tps65090_try_enable_fet.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65090_try_enable_fet.exit

if.end13.1.i:                                     ; preds = %if.end15.i
  %27 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %control.i, align 4
  %and.1.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end13.1.i.for.end.i_crit_edge, label %if.end15.1.i

if.end13.1.i.for.end.i_crit_edge:                 ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end15.1.i:                                     ; preds = %if.end13.1.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %31 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rdev, align 8
  %enable_reg9.2.i = getelementptr inbounds %struct.regulator_desc, ptr %32, i32 0, i32 34
  %33 = ptrtoint ptr %enable_reg9.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %enable_reg9.2.i, align 4
  %call10.2.i = call i32 @regmap_read(ptr noundef %30, i32 noundef %34, ptr noundef nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2.i)
  %cmp11.2.i = icmp slt i32 %call10.2.i, 0
  br i1 %cmp11.2.i, label %if.end15.1.i.tps65090_try_enable_fet.exit_crit_edge, label %if.end13.2.i

if.end15.1.i.tps65090_try_enable_fet.exit_crit_edge: ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65090_try_enable_fet.exit

if.end13.2.i:                                     ; preds = %if.end15.1.i
  %35 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %control.i, align 4
  %and.2.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end13.2.i.for.end.i_crit_edge, label %if.end15.2.i

if.end13.2.i.for.end.i_crit_edge:                 ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end15.2.i:                                     ; preds = %if.end13.2.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %39 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdev, align 8
  %enable_reg9.3.i = getelementptr inbounds %struct.regulator_desc, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %enable_reg9.3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %enable_reg9.3.i, align 4
  %call10.3.i = call i32 @regmap_read(ptr noundef %38, i32 noundef %42, ptr noundef nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3.i)
  %cmp11.3.i = icmp slt i32 %call10.3.i, 0
  br i1 %cmp11.3.i, label %if.end15.2.i.tps65090_try_enable_fet.exit_crit_edge, label %if.end13.3.i

if.end15.2.i.tps65090_try_enable_fet.exit_crit_edge: ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65090_try_enable_fet.exit

if.end13.3.i:                                     ; preds = %if.end15.2.i
  %43 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %control.i, align 4
  %and.3.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end13.3.i.for.end.i_crit_edge, label %if.end15.3.i

if.end13.3.i.for.end.i_crit_edge:                 ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end15.3.i:                                     ; preds = %if.end13.3.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %47 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rdev, align 8
  %enable_reg9.4.i = getelementptr inbounds %struct.regulator_desc, ptr %48, i32 0, i32 34
  %49 = ptrtoint ptr %enable_reg9.4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enable_reg9.4.i, align 4
  %call10.4.i = call i32 @regmap_read(ptr noundef %46, i32 noundef %50, ptr noundef nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4.i)
  %cmp11.4.i = icmp slt i32 %call10.4.i, 0
  br i1 %cmp11.4.i, label %if.end15.3.i.tps65090_try_enable_fet.exit_crit_edge, label %if.end13.4.i

if.end15.3.i.tps65090_try_enable_fet.exit_crit_edge: ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65090_try_enable_fet.exit

if.end13.4.i:                                     ; preds = %if.end15.3.i
  %51 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %control.i, align 4
  %and.4.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end13.4.i.for.end.i_crit_edge, label %if.end15.4.i

if.end13.4.i.for.end.i_crit_edge:                 ; preds = %if.end13.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end15.4.i:                                     ; preds = %if.end13.4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  br label %for.end.i

for.end.i:                                        ; preds = %if.end15.4.i, %if.end13.4.i.for.end.i_crit_edge, %if.end13.3.i.for.end.i_crit_edge, %if.end13.2.i.for.end.i_crit_edge, %if.end13.1.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %53 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %control.i, align 4
  %and16.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #5
  br i1 %tobool17.not.i, label %for.end.i.lor.lhs.false_crit_edge, label %tps65090_try_enable_fet.exit.thread

for.end.i.lor.lhs.false_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

tps65090_try_enable_fet.exit.thread:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0)
  %tobool9.not = icmp eq i32 %tries.0, 0
  br i1 %tobool9.not, label %tps65090_try_enable_fet.exit.thread.cleanup_crit_edge, label %do.end

tps65090_try_enable_fet.exit.thread.cleanup_crit_edge: ; preds = %tps65090_try_enable_fet.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tps65090_try_enable_fet.exit:                     ; preds = %if.end15.3.i.tps65090_try_enable_fet.exit_crit_edge, %if.end15.2.i.tps65090_try_enable_fet.exit_crit_edge, %if.end15.1.i.tps65090_try_enable_fet.exit_crit_edge, %if.end15.i.tps65090_try_enable_fet.exit_crit_edge, %do.end.i, %for.body.preheader.i.tps65090_try_enable_fet.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %call10.i, %for.body.preheader.i.tps65090_try_enable_fet.exit_crit_edge ], [ %call10.1.i, %if.end15.i.tps65090_try_enable_fet.exit_crit_edge ], [ %call10.2.i, %if.end15.1.i.tps65090_try_enable_fet.exit_crit_edge ], [ %call10.3.i, %if.end15.2.i.tps65090_try_enable_fet.exit_crit_edge ], [ %call10.4.i, %if.end15.3.i.tps65090_try_enable_fet.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131, i32 %retval.0.i)
  %cond = icmp eq i32 %retval.0.i, -131
  br i1 %cond, label %tps65090_try_enable_fet.exit.lor.lhs.false_crit_edge, label %tps65090_try_enable_fet.exit.do.end16_crit_edge

tps65090_try_enable_fet.exit.do.end16_crit_edge:  ; preds = %tps65090_try_enable_fet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

tps65090_try_enable_fet.exit.lor.lhs.false_crit_edge: ; preds = %tps65090_try_enable_fet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %tps65090_try_enable_fet.exit.lor.lhs.false_crit_edge, %for.end.i.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %tries.0)
  %cmp1 = icmp eq i32 %tries.0, 1000
  br i1 %cmp1, label %lor.lhs.false.do.end16_crit_edge, label %if.end3

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

if.end3:                                          ; preds = %lor.lhs.false
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %58, i32 0, i32 34
  %59 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %58, i32 0, i32 35
  %61 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enable_mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %60, i32 noundef %62, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.do.end16_crit_edge

if.end3.do.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw nsw i32 %tries.0, 1
  br label %while.cond

do.end:                                           ; preds = %tps65090_try_enable_fet.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rdev, align 8
  %enable_reg12 = getelementptr inbounds %struct.regulator_desc, ptr %64, i32 0, i32 34
  %65 = ptrtoint ptr %enable_reg12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %enable_reg12, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.63, i32 noundef %66, i32 noundef %tries.0) #8
  br label %cleanup

do.end16:                                         ; preds = %if.end3.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %tps65090_try_enable_fet.exit.do.end16_crit_edge
  %ret.0 = phi i32 [ -131, %lor.lhs.false.do.end16_crit_edge ], [ %call.i, %if.end3.do.end16_crit_edge ], [ %retval.0.i, %tps65090_try_enable_fet.exit.do.end16_crit_edge ]
  %67 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rdev, align 8
  %enable_reg19 = getelementptr inbounds %struct.regulator_desc, ptr %68, i32 0, i32 34
  %69 = ptrtoint ptr %enable_reg19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enable_reg19, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %70) #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 165, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end, %tps65090_try_enable_fet.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end16 ], [ 0, %do.end ], [ 0, %tps65090_try_enable_fet.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__initcall__kmod_tps65090_regulator__289_522_tps65090_regulator_init4, !1, !"__initcall__kmod_tps65090_regulator__289_522_tps65090_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps65090-regulator.c", i32 522, i32 1}
!2 = !{ptr @__exitcall_tps65090_regulator_exit, !3, !"__exitcall_tps65090_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps65090-regulator.c", i32 528, i32 1}
!4 = !{ptr @__UNIQUE_ID_description290, !5, !"__UNIQUE_ID_description290", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps65090-regulator.c", i32 530, i32 1}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps65090-regulator.c", i32 531, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps65090-regulator.c", i32 532, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias294, !12, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps65090-regulator.c", i32 533, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps65090-regulator.c", i32 513, i32 11}
!15 = !{ptr @tps65090_regulator_driver, !16, !"tps65090_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps65090-regulator.c", i32 511, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/tps65090-regulator.c", i32 418, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps65090_regulator_probe.__UNIQUE_ID_ddebug288, !18, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/tps65090-regulator.c", i32 425, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tps65090_regulator_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @tps65090_regulator_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps65090-regulator.c", i32 459, i32 6}
!31 = !{ptr @tps65090_regulator_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tps65090_regulator_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/tps65090-regulator.c", i32 486, i32 4}
!35 = !{ptr @tps65090_regulator_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tps65090_regulator_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/tps65090-regulator.c", i32 330, i32 40}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/tps65090-regulator.c", i32 332, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tps65090_parse_dt_reg_data._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tps65090_parse_dt_reg_data._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/tps65090-regulator.c", i32 340, i32 3}
!46 = !{ptr @tps65090_parse_dt_reg_data._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tps65090_parse_dt_reg_data._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/tps65090-regulator.c", i32 362, i32 7}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps65090-regulator.c", i32 376, i32 8}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/tps65090-regulator.c", i32 378, i32 8}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/tps65090-regulator.c", i32 380, i32 5}
!56 = !{ptr @tps65090_parse_dt_reg_data._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps65090_parse_dt_reg_data._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/tps65090-regulator.c", i32 387, i32 32}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/tps65090-regulator.c", i32 295, i32 12}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/tps65090-regulator.c", i32 296, i32 12}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps65090-regulator.c", i32 297, i32 12}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/tps65090-regulator.c", i32 298, i32 12}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/tps65090-regulator.c", i32 299, i32 12}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/tps65090-regulator.c", i32 300, i32 12}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/tps65090-regulator.c", i32 301, i32 12}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/tps65090-regulator.c", i32 302, i32 12}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/tps65090-regulator.c", i32 303, i32 12}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/tps65090-regulator.c", i32 304, i32 12}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/tps65090-regulator.c", i32 305, i32 12}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/tps65090-regulator.c", i32 306, i32 12}
!84 = !{ptr @tps65090_matches, !85, !"tps65090_matches", i1 false, i1 false}
!85 = !{!"../drivers/regulator/tps65090-regulator.c", i32 294, i32 34}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/tps65090-regulator.c", i32 207, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/tps65090-regulator.c", i32 209, i32 2}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/tps65090-regulator.c", i32 211, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/tps65090-regulator.c", i32 214, i32 2}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/tps65090-regulator.c", i32 217, i32 2}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/tps65090-regulator.c", i32 220, i32 2}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/tps65090-regulator.c", i32 223, i32 2}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/tps65090-regulator.c", i32 226, i32 2}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/tps65090-regulator.c", i32 229, i32 2}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/tps65090-regulator.c", i32 232, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/tps65090-regulator.c", i32 236, i32 2}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/tps65090-regulator.c", i32 238, i32 2}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @tps65090_regulator_desc, !123, !"tps65090_regulator_desc", i1 false, i1 false}
!123 = !{!"../drivers/regulator/tps65090-regulator.c", i32 206, i32 30}
!124 = !{ptr @tps65090_reg_control_ops, !125, !"tps65090_reg_control_ops", i1 false, i1 false}
!125 = !{!"../drivers/regulator/tps65090-regulator.c", i32 170, i32 35}
!126 = !{ptr @tps65090_fet_control_ops, !127, !"tps65090_fet_control_ops", i1 false, i1 false}
!127 = !{!"../drivers/regulator/tps65090-regulator.c", i32 176, i32 35}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/tps65090-regulator.c", i32 159, i32 3}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tps65090_fet_enable._entry, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @tps65090_fet_enable._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/tps65090-regulator.c", i32 164, i32 2}
!136 = !{ptr @tps65090_fet_enable._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tps65090_fet_enable._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/tps65090-regulator.c", i32 97, i32 3}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tps65090_try_enable_fet._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @tps65090_try_enable_fet._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @tps65090_ldo_ops, !144, !"tps65090_ldo_ops", i1 false, i1 false}
!144 = !{!"../drivers/regulator/tps65090-regulator.c", i32 182, i32 35}
!145 = !{ptr @tps65090_ext_control_ops, !146, !"tps65090_ext_control_ops", i1 false, i1 false}
!146 = !{!"../drivers/regulator/tps65090-regulator.c", i32 50, i32 35}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/tps65090-regulator.c", i32 286, i32 4}
!149 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tps65090_regulator_disable_ext_control._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @tps65090_regulator_disable_ext_control._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/tps65090-regulator.c", i32 73, i32 3}
!154 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @tps65090_reg_set_overcurrent_wait._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @tps65090_reg_set_overcurrent_wait._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/tps65090-regulator.c", i32 266, i32 3}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @tps65090_config_ext_control._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @tps65090_config_ext_control._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148966250, i64 2148966255, i64 2148966268, i64 2148966312, i64 2148966346, i64 2148966367}
!172 = !{i8 0, i8 2}
!173 = !{!"auto-init"}
