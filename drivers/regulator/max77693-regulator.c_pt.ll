; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77693-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77693-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.chg_reg_data = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_max77693_regulator__288_293_max77693_pmic_init4 = internal global ptr @max77693_pmic_init, section ".initcall4.init", align 4
@max77693_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77693_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77693_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77693_pmic_cleanup = internal global ptr @max77693_pmic_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [66 x i8] c"max77693_regulator.description=MAXIM 77693/77843 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [65 x i8] c"max77693_regulator.author=Jonghwa Lee <jonghwa3.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [64 x i8] c"max77693_regulator.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"max77693_regulator.file=drivers/regulator/max77693-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"max77693_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77693-pmic\00", [18 x i8] zeroinitializer }, align 32
@max77693_pmic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-pmic\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77843-regulator\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max77693_supported_regulators = internal constant { [3 x %struct.regulator_desc], [164 x i8] } { [3 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max77693_charger_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 5, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [164 x i8] zeroinitializer }, align 32
@max77693_chg_reg_data = internal constant { %struct.chg_reg_data, [16 x i8] } { %struct.chg_reg_data { i32 192, i32 127, i32 20000, i32 3 }, [16 x i8] zeroinitializer }, align 32
@max77843_supported_regulators = internal constant { [3 x %struct.regulator_desc], [164 x i8] } { [3 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max77693_charger_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [164 x i8] zeroinitializer }, align 32
@max77843_chg_reg_data = internal constant { %struct.chg_reg_data, [16 x i8] } { %struct.chg_reg_data { i32 185, i32 63, i32 50000, i32 2 }, [16 x i8] zeroinitializer }, align 32
@max77693_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported device type: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77693_pmic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max77693-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_pmic_probe._entry_ptr = internal global ptr @max77693_pmic_probe._entry, section ".printk_index", align 4
@max77693_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize regulator-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@max77693_pmic_probe._entry_ptr.8 = internal global ptr @max77693_pmic_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT1\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max77693_safeout_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77693_safeout_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4850000, i32 4900000, i32 4950000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT2\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHARGER\00", [24 x i8] zeroinitializer }, align 32
@max77693_charger_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_chg_set_current_limit, ptr @max77693_chg_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SAFEOUT1\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SAFEOUT2\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"max77693_pmic_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 281, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 283, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"max77693_pmic_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 273, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"max77693_supported_regulators\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 163, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"max77693_chg_reg_data\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 181, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"max77843_supported_regulators\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 204, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"max77843_chg_reg_data\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 221, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 251, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 264, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 164, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"max77693_safeout_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 130, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"max77693_safeout_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 123, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 165, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 167, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"max77693_charger_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 139, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 205, i32 24 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [42 x i8] c"../drivers/regulator/max77693-regulator.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 206, i32 24 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77693_pmic_cleanup, ptr @__initcall__kmod_max77693_regulator__288_293_max77693_pmic_init4, ptr @max77693_pmic_cleanup, ptr @max77693_pmic_probe._entry, ptr @max77693_pmic_probe._entry.6, ptr @max77693_pmic_probe._entry_ptr, ptr @max77693_pmic_probe._entry_ptr.8, ptr @max77693_pmic_driver, ptr @.str, ptr @max77693_pmic_id, ptr @max77693_supported_regulators, ptr @max77693_chg_reg_data, ptr @max77843_supported_regulators, ptr @max77843_chg_reg_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @max77693_safeout_ops, ptr @max77693_safeout_table, ptr @.str.11, ptr @.str.12, ptr @max77693_charger_ops, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_pmic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_supported_regulators to i32), i32 732, i32 896, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_chg_reg_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_supported_regulators to i32), i32 732, i32 896, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77843_chg_reg_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_safeout_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_safeout_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_charger_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_pmic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_pmic_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_pmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %config, align 4
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %entry.max77693_get_regmap.exit_crit_edge
    i32 2, label %if.end.i
  ]

entry.max77693_get_regmap.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_get_regmap.exit

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %3) #9
  br label %cleanup17

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_get_regmap.exit

max77693_get_regmap.exit:                         ; preds = %if.end.i, %entry.max77693_get_regmap.exit_crit_edge
  %max77843_chg_reg_data.sink = phi ptr [ @max77843_chg_reg_data, %if.end.i ], [ @max77693_chg_reg_data, %entry.max77693_get_regmap.exit_crit_edge ]
  %cmp.i50 = phi i1 [ false, %if.end.i ], [ true, %entry.max77693_get_regmap.exit_crit_edge ]
  %regulators.049 = phi ptr [ @max77843_supported_regulators, %if.end.i ], [ @max77693_supported_regulators, %entry.max77693_get_regmap.exit_crit_edge ]
  %driver_data5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %driver_data5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %max77843_chg_reg_data.sink, ptr %driver_data5, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %retval.0.in.i = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 6
  %regmap_chg.i52 = getelementptr inbounds %struct.max77693_dev, ptr %7, i32 0, i32 9
  %15 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i, ptr %regmap, align 4
  %call10 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull %regulators.049, ptr noundef nonnull %config) #6
  %cmp.i36 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %max77693_get_regmap.exit.cleanup.thread_crit_edge, label %for.inc

max77693_get_regmap.exit.cleanup.thread_crit_edge: ; preds = %max77693_get_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %max77693_get_regmap.exit.2.cleanup.thread_crit_edge, %max77693_get_regmap.exit.1.cleanup.thread_crit_edge, %max77693_get_regmap.exit.cleanup.thread_crit_edge
  %call10.lcssa = phi ptr [ %call10, %max77693_get_regmap.exit.cleanup.thread_crit_edge ], [ %call10.1, %max77693_get_regmap.exit.1.cleanup.thread_crit_edge ], [ %call10.2, %max77693_get_regmap.exit.2.cleanup.thread_crit_edge ]
  %i.039.lcssa = phi i32 [ 0, %max77693_get_regmap.exit.cleanup.thread_crit_edge ], [ 1, %max77693_get_regmap.exit.1.cleanup.thread_crit_edge ], [ 2, %max77693_get_regmap.exit.2.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.039.lcssa) #9
  %17 = ptrtoint ptr %call10.lcssa to i32
  br label %cleanup17

for.inc:                                          ; preds = %max77693_get_regmap.exit
  %arrayidx.1 = getelementptr %struct.regulator_desc, ptr %regulators.049, i32 1
  br i1 %cmp.i50, label %for.inc.max77693_get_regmap.exit.1_crit_edge, label %if.end.i.1

for.inc.max77693_get_regmap.exit.1_crit_edge:     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_get_regmap.exit.1

if.end.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %id.1 = getelementptr %struct.regulator_desc, ptr %regulators.049, i32 1, i32 6
  %18 = ptrtoint ptr %id.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cond56 = icmp eq i32 %19, 2
  %spec.select58 = select i1 %cond56, ptr %regmap_chg.i52, ptr %retval.0.in.i
  br label %max77693_get_regmap.exit.1

max77693_get_regmap.exit.1:                       ; preds = %if.end.i.1, %for.inc.max77693_get_regmap.exit.1_crit_edge
  %retval.0.in.i.1 = phi ptr [ %retval.0.in.i, %for.inc.max77693_get_regmap.exit.1_crit_edge ], [ %spec.select58, %if.end.i.1 ]
  %20 = ptrtoint ptr %retval.0.in.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i.1 = load ptr, ptr %retval.0.in.i.1, align 4
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.1, ptr %regmap, align 4
  %call10.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx.1, ptr noundef nonnull %config) #6
  %cmp.i36.1 = icmp ugt ptr %call10.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.1, label %max77693_get_regmap.exit.1.cleanup.thread_crit_edge, label %for.inc.1

max77693_get_regmap.exit.1.cleanup.thread_crit_edge: ; preds = %max77693_get_regmap.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.1:                                        ; preds = %max77693_get_regmap.exit.1
  %arrayidx.2 = getelementptr %struct.regulator_desc, ptr %regulators.049, i32 2
  br i1 %cmp.i50, label %for.inc.1.max77693_get_regmap.exit.2_crit_edge, label %if.end.i.2

for.inc.1.max77693_get_regmap.exit.2_crit_edge:   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77693_get_regmap.exit.2

if.end.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %id.2 = getelementptr %struct.regulator_desc, ptr %regulators.049, i32 2, i32 6
  %22 = ptrtoint ptr %id.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cond57 = icmp eq i32 %23, 2
  %spec.select59 = select i1 %cond57, ptr %regmap_chg.i52, ptr %retval.0.in.i
  br label %max77693_get_regmap.exit.2

max77693_get_regmap.exit.2:                       ; preds = %if.end.i.2, %for.inc.1.max77693_get_regmap.exit.2_crit_edge
  %retval.0.in.i.2 = phi ptr [ %retval.0.in.i, %for.inc.1.max77693_get_regmap.exit.2_crit_edge ], [ %spec.select59, %if.end.i.2 ]
  %24 = ptrtoint ptr %retval.0.in.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %retval.0.i.2 = load ptr, ptr %retval.0.in.i.2, align 4
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.2, ptr %regmap, align 4
  %call10.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx.2, ptr noundef nonnull %config) #6
  %cmp.i36.2 = icmp ugt ptr %call10.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.2, label %max77693_get_regmap.exit.2.cleanup.thread_crit_edge, label %max77693_get_regmap.exit.2.cleanup17_crit_edge

max77693_get_regmap.exit.2.cleanup17_crit_edge:   ; preds = %max77693_get_regmap.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

max77693_get_regmap.exit.2.cleanup.thread_crit_edge: ; preds = %max77693_get_regmap.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup17:                                        ; preds = %max77693_get_regmap.exit.2.cleanup17_crit_edge, %cleanup.thread, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ %17, %cleanup.thread ], [ 0, %max77693_get_regmap.exit.2.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_chg_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %0 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %constraints, align 8
  %min_uA1 = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %min_uA1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_uA1, align 4
  %uA_step = getelementptr inbounds %struct.chg_reg_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %uA_step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uA_step, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %sel.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %mul = mul i32 %5, %sel.0
  %add = add i32 %mul, %3
  %cmp = icmp ult i32 %add, %min_uA
  %inc = add i32 %sel.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_uA)
  %cmp5 = icmp ugt i32 %add, %max_uA
  br i1 %cmp5, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %min_sel = getelementptr inbounds %struct.chg_reg_data, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %min_sel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_sel, align 4
  %add6 = add i32 %7, %sel.0
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %11, i32 noundef %add6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_chg_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %0 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %constraints, align 8
  %min_uA = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %min_uA to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_uA, align 4
  %max_uA = getelementptr inbounds %struct.regulation_constraints, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_uA, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !65
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %linear_mask = getelementptr inbounds %struct.chg_reg_data, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %linear_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linear_mask, align 4
  %and = and i32 %14, %12
  %min_sel = getelementptr inbounds %struct.chg_reg_data, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %min_sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_sel, align 4
  %17 = call i32 @llvm.usub.sat.i32(i32 %and, i32 %16)
  %uA_step = getelementptr inbounds %struct.chg_reg_data, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %uA_step to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uA_step, align 4
  %mul = mul i32 %19, %17
  %add = add i32 %mul, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp7 = icmp ugt i32 %add, %5
  %spec.select = select i1 %cmp7, i32 -22, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_max77693_regulator__288_293_max77693_pmic_init4, !1, !"__initcall__kmod_max77693_regulator__288_293_max77693_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77693-regulator.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_max77693_pmic_cleanup, !3, !"__exitcall_max77693_pmic_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max77693-regulator.c", i32 299, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max77693-regulator.c", i32 301, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max77693-regulator.c", i32 302, i32 1}
!8 = !{ptr @__UNIQUE_ID_author291, !9, !"__UNIQUE_ID_author291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max77693-regulator.c", i32 303, i32 1}
!10 = !{ptr @__UNIQUE_ID_file292, !11, !"__UNIQUE_ID_file292", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max77693-regulator.c", i32 304, i32 1}
!12 = !{ptr @__UNIQUE_ID_license293, !11, !"__UNIQUE_ID_license293", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max77693-regulator.c", i32 283, i32 14}
!15 = !{ptr @max77693_pmic_driver, !16, !"max77693_pmic_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max77693-regulator.c", i32 281, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/max77693-regulator.c", i32 251, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max77693_pmic_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max77693_pmic_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/max77693-regulator.c", i32 264, i32 4}
!27 = !{ptr @max77693_pmic_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max77693_pmic_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max77693-regulator.c", i32 164, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/max77693-regulator.c", i32 165, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/max77693-regulator.c", i32 167, i32 11}
!36 = !{ptr @max77693_supported_regulators, !37, !"max77693_supported_regulators", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max77693-regulator.c", i32 163, i32 36}
!38 = !{ptr @max77693_safeout_ops, !39, !"max77693_safeout_ops", i1 false, i1 false}
!39 = !{!"../drivers/regulator/max77693-regulator.c", i32 130, i32 35}
!40 = !{ptr @max77693_safeout_table, !41, !"max77693_safeout_table", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max77693-regulator.c", i32 123, i32 27}
!42 = !{ptr @max77693_charger_ops, !43, !"max77693_charger_ops", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max77693-regulator.c", i32 139, i32 35}
!44 = !{ptr @max77693_chg_reg_data, !45, !"max77693_chg_reg_data", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max77693-regulator.c", i32 181, i32 34}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max77693-regulator.c", i32 205, i32 24}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max77693-regulator.c", i32 206, i32 24}
!50 = !{ptr @max77843_supported_regulators, !51, !"max77843_supported_regulators", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max77693-regulator.c", i32 204, i32 36}
!52 = !{ptr @max77843_chg_reg_data, !53, !"max77843_chg_reg_data", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max77693-regulator.c", i32 221, i32 34}
!54 = !{ptr @max77693_pmic_id, !55, !"max77693_pmic_id", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max77693-regulator.c", i32 273, i32 40}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
