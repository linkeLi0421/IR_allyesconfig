; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps65218-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65218-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.tps65218 = type { ptr, i32, i8, %struct.mutex, i32, i32, ptr, [9 x %struct.regulator_desc], ptr, ptr }

@__initcall__kmod_tps65218_regulator__288_365_tps65218_regulator_driver_init6 = internal global ptr @tps65218_regulator_driver_init, section ".initcall6.init", align 4
@tps65218_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65218_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65218_regulator_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65218_regulator_driver_exit = internal global ptr @tps65218_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"tps65218_regulator.author=J Keerthy <j-keerthy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps65218_regulator.description=TPS65218 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [48 x i8] c"tps65218_regulator.alias=platform:tps65218-pmic\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"tps65218_regulator.file=drivers/regulator/tps65218-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [34 x i8] c"tps65218_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65218-pmic\00", [18 x i8] zeroinitializer }, align 32
@tps65218_regulator_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"tps65218-regulator\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@regulators = internal constant { [9 x %struct.regulator_desc], [556 x i8] } { [9 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @tps65218_dcdc12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 4000, i32 0, ptr @dcdc1_dcdc2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 1, i32 0, i32 0, i8 0, i32 34, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @tps65218_dcdc12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 4000, i32 0, ptr @dcdc1_dcdc2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 23, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 2, i32 0, i32 0, i8 0, i32 34, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo1_dcdc3_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 24, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 4, i32 0, i32 0, i8 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 3, i8 0, i32 53, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @dcdc4_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 25, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 8, i32 0, i32 0, i8 0, i32 35, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, ptr @tps65218_dcdc56_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 16, i32 0, i32 0, i8 0, i32 36, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @tps65218_dcdc56_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 32, i32 0, i32 0, i8 0, i32 36, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo1_dcdc3_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 27, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 37, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 4, ptr @tps65218_ls23_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @ls3_currents, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 3, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 4, ptr @tps65218_ls23_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @ls3_currents, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 12, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [556 x i8] zeroinitializer }, align 32
@tps65218_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps65218_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps65218-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65218_regulator_probe._entry_ptr = internal global ptr @tps65218_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc1\00", [16 x i8] zeroinitializer }, align 32
@tps65218_dcdc12_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @tps65218_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dcdc1_dcdc2_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 850000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1375000, i32 51, i32 63, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc2\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc3\00", [16 x i8] zeroinitializer }, align 32
@tps65218_ldo1_dcdc34_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @tps65218_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo1_dcdc3_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 26, i32 25000 }, %struct.linear_range { i32 1600000, i32 27, i32 63, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC4\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc4\00", [16 x i8] zeroinitializer }, align 32
@dcdc4_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1175000, i32 0, i32 15, i32 25000 }, %struct.linear_range { i32 1600000, i32 16, i32 52, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC5\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc5\00", [16 x i8] zeroinitializer }, align 32
@tps65218_dcdc56_pmic_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC6\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"regulator-dcdc6\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-ldo1\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LS2\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regulator-ls2\00", [18 x i8] zeroinitializer }, align 32
@tps65218_ls23_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_current_limit, ptr @regulator_get_current_limit_regmap, ptr @tps65218_pmic_set_input_current_lim, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ls3_currents = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100000, i32 200000, i32 500000, i32 1000000], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LS3\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regulator-ls3\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100000, i64 200000, i64 500000, i64 1000000]
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"tps65218_regulator_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 357, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 359, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"tps65218_regulator_id_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 351, i32 40 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 252, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 336, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 253, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"tps65218_dcdc12_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 168, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"dcdc1_dcdc2_ranges\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 59, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 260, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 267, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"tps65218_ldo1_dcdc34_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 182, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"ldo1_dcdc3_ranges\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 64, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 274, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"dcdc4_ranges\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 69, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 281, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"tps65218_dcdc56_pmic_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 244, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 286, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 291, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 298, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"tps65218_ls23_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 234, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"ls3_currents\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 194, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [42 x i8] c"../drivers/regulator/tps65218-regulator.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 304, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_tps65218_regulator_driver_exit, ptr @__initcall__kmod_tps65218_regulator__288_365_tps65218_regulator_driver_init6, ptr @tps65218_regulator_driver_exit, ptr @tps65218_regulator_probe._entry, ptr @tps65218_regulator_probe._entry_ptr, ptr @tps65218_regulator_driver, ptr @.str, ptr @tps65218_regulator_id_table, ptr @regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tps65218_dcdc12_ops, ptr @dcdc1_dcdc2_ranges, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tps65218_ldo1_dcdc34_ops, ptr @ldo1_dcdc3_ranges, ptr @.str.12, ptr @.str.13, ptr @dcdc4_ranges, ptr @.str.14, ptr @.str.15, ptr @tps65218_dcdc56_pmic_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @tps65218_ls23_ops, ptr @ls3_currents, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_regulator_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 2196, i32 2752, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_dcdc12_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc1_dcdc2_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_ldo1_dcdc34_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_dcdc3_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc4_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_dcdc56_pmic_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65218_ls23_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls3_currents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65218_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65218_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65218_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !80
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %config, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node5, align 8
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.tps65218, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %regmap6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %16 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %regmap6, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 9, i32 noundef 3520) #6
  %strobes = getelementptr inbounds %struct.tps65218, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %strobes to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %strobes, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %if.end22.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.049
  %call11 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %21) #9
  %22 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %bypass_reg = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.049, i32 39
  %25 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bypass_reg, align 4
  %call19 = call i32 @regmap_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %bypass_mask = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.049, i32 40
  %29 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bypass_mask, align 4
  %and = and i32 %30, %28
  %conv = trunc i32 %and to i8
  %31 = ptrtoint ptr %strobes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %strobes, align 4
  %arrayidx25 = getelementptr i8, ptr %32, i32 %i.049
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %arrayidx25, align 1
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %if.end22.cleanup_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %call19, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %call3 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef %3, i32 noundef %5, i32 noundef %selector, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %switch = icmp ult i32 %call1, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef 26, i32 noundef 128, i32 noundef 128, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.sw.epilog_crit_edge ], [ %call4, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %0 = icmp ugt i32 %call1, 6
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %call6 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef %4, i32 noundef %6, i32 noundef %6, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %0 = icmp ugt i32 %call1, 6
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %5 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_mask, align 4
  %call4 = tail call i32 @tps65218_clear_bits(ptr noundef %call, i32 noundef %4, i32 noundef %6, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_suspend_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %cmp = icmp ugt i32 %call1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %bypass_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bypass_reg, align 4
  %bypass_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bypass_mask, align 4
  %call3 = tail call i32 @tps65218_clear_bits(ptr noundef %call, i32 noundef %3, i32 noundef %5, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_suspend_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %cmp = icmp ugt i32 %call1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end6.thread

land.lhs.true:                                    ; preds = %if.end
  %rev = getelementptr inbounds %struct.tps65218, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp3 = icmp eq i8 %1, 3
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true
  %strobes = getelementptr inbounds %struct.tps65218, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %strobes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strobes, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end6.thread:                                   ; preds = %if.end
  %strobes33 = getelementptr inbounds %struct.tps65218, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %strobes33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %strobes33, align 4
  %arrayidx34 = getelementptr i8, ptr %7, i32 %call1
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not35 = icmp eq i8 %9, 0
  br i1 %tobool.not35, label %if.end6.thread.cleanup_crit_edge, label %if.end6.thread.if.end14_crit_edge

if.end6.thread.if.end14_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end6.thread.cleanup_crit_edge:                 ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %arrayidx, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.thread.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %strobes36 = phi ptr [ %strobes33, %if.end6.thread.if.end14_crit_edge ], [ %strobes, %if.then10 ], [ %strobes, %if.end6.if.end14_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %bypass_reg = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bypass_reg, align 4
  %bypass_mask = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 40
  %15 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bypass_mask, align 4
  %17 = ptrtoint ptr %strobes36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %strobes36, align 4
  %arrayidx17 = getelementptr i8, ptr %18, i32 %call1
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %call19 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef %14, i32 noundef %16, i32 noundef %conv18, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6.thread.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65218_set_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65218_clear_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_current_limit(ptr noundef %dev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %max_uA)
  %cmp1.not = icmp ult i32 %max_uA, 100000
  br i1 %cmp1.not, label %entry.cleanup_crit_edge, label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %max_uA)
  %cmp1.not.1 = icmp ult i32 %max_uA, 200000
  br i1 %cmp1.not.1, label %while.body.lor.lhs.false_crit_edge, label %while.body.1

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %max_uA)
  %cmp1.not.2 = icmp ult i32 %max_uA, 500000
  br i1 %cmp1.not.2, label %while.body.1.lor.lhs.false_crit_edge, label %while.body.2

while.body.1.lor.lhs.false_crit_edge:             ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %max_uA)
  %cmp1.not.3 = icmp ult i32 %max_uA, 1000000
  %spec.select = select i1 %cmp1.not.3, i32 2, i32 3
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.2, %while.body.1.lor.lhs.false_crit_edge, %while.body.lor.lhs.false_crit_edge
  %index.0.lcssa.ph = phi i32 [ 1, %while.body.1.lor.lhs.false_crit_edge ], [ 0, %while.body.lor.lhs.false_crit_edge ], [ %spec.select, %while.body.2 ]
  %arrayidx3 = getelementptr [4 x i32], ptr @ls3_currents, i32 0, i32 %index.0.lcssa.ph
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min_uA)
  %cmp4 = icmp ult i32 %1, %min_uA
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csel_reg, align 4
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csel_mask, align 4
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false), !range !81
  %shl = shl i32 %index.0.lcssa.ph, %8
  %call8 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef %5, i32 noundef %7, i32 noundef %shl, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_input_current_lim(ptr noundef %dev, i32 noundef %lim_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %0 = zext i32 %lim_uA to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %lim_uA, label %entry.cleanup_crit_edge [
    i32 100000, label %entry.if.end_crit_edge
    i32 200000, label %if.end.fold.split
    i32 500000, label %if.end.fold.split22
    i32 1000000, label %if.end.fold.split23
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.fold.split22:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.fold.split23:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split23, %if.end.fold.split22, %if.end.fold.split, %entry.if.end_crit_edge
  %index.020.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.fold.split ], [ 2, %if.end.fold.split22 ], [ 3, %if.end.fold.split23 ]
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %csel_reg, align 4
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 31
  %5 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %csel_mask, align 4
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false), !range !81
  %shl = shl i32 %index.020.lcssa, %7
  %call6 = tail call i32 @tps65218_set_bits(ptr noundef %call, i32 noundef %4, i32 noundef %6, i32 noundef %shl, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_tps65218_regulator__288_365_tps65218_regulator_driver_init6, !1, !"__initcall__kmod_tps65218_regulator__288_365_tps65218_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps65218-regulator.c", i32 365, i32 1}
!2 = !{ptr @__exitcall_tps65218_regulator_driver_exit, !1, !"__exitcall_tps65218_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/tps65218-regulator.c", i32 367, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/tps65218-regulator.c", i32 368, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias291, !8, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/tps65218-regulator.c", i32 369, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/tps65218-regulator.c", i32 370, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/tps65218-regulator.c", i32 359, i32 11}
!14 = !{ptr @tps65218_regulator_driver, !15, !"tps65218_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/tps65218-regulator.c", i32 357, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/tps65218-regulator.c", i32 336, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps65218_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tps65218_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/tps65218-regulator.c", i32 253, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/tps65218-regulator.c", i32 260, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/tps65218-regulator.c", i32 267, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/tps65218-regulator.c", i32 274, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/tps65218-regulator.c", i32 281, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/tps65218-regulator.c", i32 286, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/tps65218-regulator.c", i32 291, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/tps65218-regulator.c", i32 298, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/tps65218-regulator.c", i32 304, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @regulators, !52, !"regulators", i1 false, i1 false}
!52 = !{!"../drivers/regulator/tps65218-regulator.c", i32 252, i32 36}
!53 = !{ptr @tps65218_dcdc12_ops, !54, !"tps65218_dcdc12_ops", i1 false, i1 false}
!54 = !{!"../drivers/regulator/tps65218-regulator.c", i32 168, i32 35}
!55 = !{ptr @dcdc1_dcdc2_ranges, !56, !"dcdc1_dcdc2_ranges", i1 false, i1 false}
!56 = !{!"../drivers/regulator/tps65218-regulator.c", i32 59, i32 34}
!57 = !{ptr @tps65218_ldo1_dcdc34_ops, !58, !"tps65218_ldo1_dcdc34_ops", i1 false, i1 false}
!58 = !{!"../drivers/regulator/tps65218-regulator.c", i32 182, i32 35}
!59 = !{ptr @ldo1_dcdc3_ranges, !60, !"ldo1_dcdc3_ranges", i1 false, i1 false}
!60 = !{!"../drivers/regulator/tps65218-regulator.c", i32 64, i32 34}
!61 = !{ptr @dcdc4_ranges, !62, !"dcdc4_ranges", i1 false, i1 false}
!62 = !{!"../drivers/regulator/tps65218-regulator.c", i32 69, i32 34}
!63 = !{ptr @tps65218_dcdc56_pmic_ops, !64, !"tps65218_dcdc56_pmic_ops", i1 false, i1 false}
!64 = !{!"../drivers/regulator/tps65218-regulator.c", i32 244, i32 35}
!65 = !{ptr @tps65218_ls23_ops, !66, !"tps65218_ls23_ops", i1 false, i1 false}
!66 = !{!"../drivers/regulator/tps65218-regulator.c", i32 234, i32 35}
!67 = !{ptr @ls3_currents, !68, !"ls3_currents", i1 false, i1 false}
!68 = !{!"../drivers/regulator/tps65218-regulator.c", i32 194, i32 27}
!69 = !{ptr @tps65218_regulator_id_table, !70, !"tps65218_regulator_id_table", i1 false, i1 false}
!70 = !{!"../drivers/regulator/tps65218-regulator.c", i32 351, i32 40}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i32 0, i32 33}
