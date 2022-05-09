; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9055-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9055-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.da9055_regulator_info = type { %struct.regulator_desc, %struct.da9055_conf_reg, %struct.da9055_volt_reg, %struct.da9055_mode_reg }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.da9055_conf_reg = type { i32, i32, i32 }
%struct.da9055_volt_reg = type { i32, i32, i32, i32 }
%struct.da9055_mode_reg = type { i32, i32, i32 }
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
%struct.da9055 = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.da9055_regulator = type { ptr, ptr, ptr, i32 }
%struct.da9055_pdata = type { ptr, i32, i32, [8 x ptr], i8, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9055_regulator__288_586_da9055_regulator_init4 = internal global ptr @da9055_regulator_init, section ".initcall4.init", align 4
@da9055_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9055_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9055_regulator_exit = internal global ptr @da9055_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"da9055_regulator.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [75 x i8] c"da9055_regulator.description=Power Regulator driver for Dialog DA9055 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9055_regulator.file=drivers/regulator/da9055-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"da9055_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"da9055_regulator.alias=platform:da9055-regulator\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9055-regulator\00", [47 x i8] zeroinitializer }, align 32
@da9055_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid regulator ID specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9055_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9055-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9055_regulator_probe._entry_ptr = internal global ptr @da9055_regulator_probe._entry, section ".printk_index", align 4
@da9055_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@da9055_regulator_probe._entry_ptr.8 = internal global ptr @da9055_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REGULATOR\00", [22 x i8] zeroinitializer }, align 32
@da9055_regulator_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to request Regulator IRQ %d: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@da9055_regulator_probe._entry_ptr.12 = internal global ptr @da9055_regulator_probe._entry.10, section ".printk_index", align 4
@da9055_regulator_info = internal global { [8 x %struct.da9055_regulator_info], [544 x i8] } { [8 x %struct.da9055_regulator_info] [%struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.14, ptr null, i32 0, i8 0, i32 64, i32 4, ptr @da9055_buck_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 9, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9055_current_limits, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 12, i32 0, i32 0, i32 19, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 19, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 57, i32 65, i32 7, i32 63 }, %struct.da9055_mode_reg { i32 56, i32 12, i32 2 } }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.14, ptr null, i32 1, i8 0, i32 64, i32 4, ptr @da9055_buck_ops, i32 0, i32 0, ptr null, i32 925000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9055_current_limits, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 3, i32 0, i32 0, i32 20, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 20, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 58, i32 66, i32 7, i32 63 }, %struct.da9055_mode_reg { i32 56, i32 3, i32 0 } }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.14, ptr null, i32 2, i8 0, i32 51, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 21, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 59, i32 67, i32 7, i32 63 }, %struct.da9055_mode_reg zeroinitializer }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.14, ptr null, i32 3, i8 0, i32 52, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 3, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 22, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 60, i32 68, i32 7, i32 63 }, %struct.da9055_mode_reg zeroinitializer }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.14, ptr null, i32 4, i8 0, i32 51, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 23, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 23, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 61, i32 69, i32 7, i32 63 }, %struct.da9055_mode_reg zeroinitializer }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.14, ptr null, i32 5, i8 0, i32 51, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 24, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 62, i32 70, i32 7, i32 63 }, %struct.da9055_mode_reg zeroinitializer }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.14, ptr null, i32 6, i8 0, i32 40, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 25, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 63, i32 71, i32 7, i32 63 }, %struct.da9055_mode_reg zeroinitializer }, %struct.da9055_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.14, ptr null, i32 7, i8 0, i32 121, i32 0, ptr @da9055_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.da9055_conf_reg { i32 26, i32 16, i32 1 }, %struct.da9055_volt_reg { i32 64, i32 72, i32 7, i32 127 }, %struct.da9055_mode_reg zeroinitializer }], [544 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9055_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @da9055_regulator_set_voltage_sel, ptr null, ptr @da9055_regulator_get_voltage_sel, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9055_buck_set_mode, ptr @da9055_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_regulator_set_suspend_voltage, ptr @da9055_suspend_enable, ptr @da9055_suspend_disable, ptr @da9055_buck_set_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@da9055_current_limits = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 500000, i32 600000, i32 700000, i32 800000], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@da9055_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @da9055_regulator_set_voltage_sel, ptr null, ptr @da9055_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9055_ldo_set_mode, ptr @da9055_ldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_regulator_set_suspend_voltage, ptr @da9055_suspend_enable, ptr @da9055_suspend_disable, ptr @da9055_ldo_set_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DA9055 GPI %d\00", [18 x i8] zeroinitializer }, align 32
@switch.table.da9055_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"da9055_regulator_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 575, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 578, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 523, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 543, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 550, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 562, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"da9055_regulator_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 400, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 401, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"da9055_buck_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 291, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"da9055_current_limits\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 402, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 403, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"da9055_ldo_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 312, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 404, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 405, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 406, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 407, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 408, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [40 x i8] c"../drivers/regulator/da9055-regulator.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 436, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [34 x i8] c"switch.table.da9055_buck_get_mode\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9055_regulator_exit, ptr @__initcall__kmod_da9055_regulator__288_586_da9055_regulator_init4, ptr @da9055_regulator_exit, ptr @da9055_regulator_probe._entry, ptr @da9055_regulator_probe._entry.10, ptr @da9055_regulator_probe._entry.6, ptr @da9055_regulator_probe._entry_ptr, ptr @da9055_regulator_probe._entry_ptr.12, ptr @da9055_regulator_probe._entry_ptr.8, ptr @da9055_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @da9055_regulator_info, ptr @.str.13, ptr @.str.14, ptr @da9055_buck_ops, ptr @da9055_current_limits, ptr @.str.15, ptr @.str.16, ptr @da9055_ldo_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @switch.table.da9055_buck_get_mode], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regulator_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regulator_info to i32), i32 2272, i32 2816, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_current_limits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9055_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9055_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9055_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9055_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i = alloca [18 x i8], align 1
  %name28.i = alloca [18 x i8], align 1
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.da9055, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp2.i = icmp eq i32 %12, %11
  br i1 %cmp2.i, label %if.end.if.end9_crit_edge, label %for.cond.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.i:                                       ; preds = %if.end
  %13 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp2.1.i = icmp eq i32 %13, %11
  br i1 %cmp2.1.i, label %for.cond.i.if.end9_crit_edge, label %for.cond.1.i

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.1.i:                                     ; preds = %for.cond.i
  %14 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp2.2.i = icmp eq i32 %14, %11
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end9_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end9_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %15 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp2.3.i = icmp eq i32 %15, %11
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end9_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end9_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %16 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp2.4.i = icmp eq i32 %16, %11
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end9_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end9_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %17 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp2.5.i = icmp eq i32 %17, %11
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end9_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end9_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %18 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 6, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %11)
  %cmp2.6.i = icmp eq i32 %18, %11
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end9_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end9_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %19 = load i32, ptr getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 7, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp2.7.i = icmp eq i32 %19, %11
  br i1 %cmp2.7.i, label %for.cond.6.i.if.end9_crit_edge, label %do.end

for.cond.6.i.if.end9_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.da9055_regulator, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %for.cond.6.i.if.end9_crit_edge, %for.cond.5.i.if.end9_crit_edge, %for.cond.4.i.if.end9_crit_edge, %for.cond.3.i.if.end9_crit_edge, %for.cond.2.i.if.end9_crit_edge, %for.cond.1.i.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 6), %for.cond.5.i.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 5), %for.cond.4.i.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 4), %for.cond.3.i.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 3), %for.cond.2.i.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 2), %for.cond.1.i.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 1), %for.cond.i.if.end9_crit_edge ], [ @da9055_regulator_info, %if.end.if.end9_crit_edge ], [ getelementptr inbounds ([8 x %struct.da9055_regulator_info], ptr @da9055_regulator_info, i32 0, i32 7), %for.cond.6.i.if.end9_crit_edge ]
  %info109 = getelementptr inbounds %struct.da9055_regulator, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %info109 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.ph, ptr %info109, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %call.i, align 4
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %25 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %regmap13 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %29 = ptrtoint ptr %regmap13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %regmap13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end9.if.end22_crit_edge, label %if.end.i

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.i:                                         ; preds = %if.end9
  %arrayidx = getelementptr %struct.da9055_pdata, ptr %9, i32 0, i32 3, i32 %11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %32 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %init_data, align 4
  %33 = ptrtoint ptr %info109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info109, align 4
  %gpio_ren.i = getelementptr inbounds %struct.da9055_pdata, ptr %9, i32 0, i32 5
  %35 = ptrtoint ptr %gpio_ren.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_ren.i, align 4
  %tobool2.not.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i, label %if.end.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i32, ptr %36, i32 %11
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i = icmp eq i32 %38, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end21.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %name.i) #6
  %39 = call ptr @memset(ptr %name.i, i32 255, i32 18)
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %ena_gpiods.i = getelementptr inbounds %struct.da9055_pdata, ptr %9, i32 0, i32 9
  %42 = ptrtoint ptr %ena_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ena_gpiods.i, align 4
  %arrayidx8.i = getelementptr ptr, ptr %43, i32 %11
  %44 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8.i, align 4
  %ena_gpiod.i = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %46 = ptrtoint ptr %ena_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %ena_gpiod.i, align 4
  %call.i105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.22, i32 noundef %41) #6
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config, align 4
  %call10.i = call i32 @devm_gpio_request_one(ptr noundef %48, i32 noundef %41, i32 noundef 1, ptr noundef nonnull %name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then5.i.da9055_gpio_init.exit.thread114_crit_edge, label %if.end12.i

if.then5.i.da9055_gpio_init.exit.thread114_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_gpio_init.exit.thread114

if.end12.i:                                       ; preds = %if.then5.i
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %conf.i = getelementptr inbounds %struct.da9055_regulator_info, ptr %34, i32 0, i32 1
  %51 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %conf.i, align 4
  %reg_ren.i = getelementptr inbounds %struct.da9055_pdata, ptr %9, i32 0, i32 7
  %53 = ptrtoint ptr %reg_ren.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_ren.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %54, i32 %11
  %55 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx13.i, align 4
  %conv14.i = shl i32 %56, 1
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 4
  %conv.i.i = and i32 %52, 255
  %conv2.i.i = and i32 %conv14.i, 254
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %conv.i.i, i32 noundef 6, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp16.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp16.i, label %if.end12.i.da9055_gpio_init.exit.thread114_crit_edge, label %cleanup.i

if.end12.i.da9055_gpio_init.exit.thread114_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_gpio_init.exit.thread114

da9055_gpio_init.exit.thread114:                  ; preds = %if.end12.i.da9055_gpio_init.exit.thread114_crit_edge, %if.then5.i.da9055_gpio_init.exit.thread114_crit_edge
  %ret.0.ph.i = phi i32 [ %call10.i, %if.then5.i.da9055_gpio_init.exit.thread114_crit_edge ], [ %call.i.i.i, %if.end12.i.da9055_gpio_init.exit.thread114_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %name.i) #6
  br label %cleanup

cleanup.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %name.i) #6
  br label %if.end21.i

if.end21.i:                                       ; preds = %cleanup.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %gpio_rsel.i = getelementptr inbounds %struct.da9055_pdata, ptr %9, i32 0, i32 6
  %59 = ptrtoint ptr %gpio_rsel.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gpio_rsel.i, align 4
  %tobool22.not.i = icmp eq ptr %60, null
  br i1 %tobool22.not.i, label %if.end21.i.if.end22_crit_edge, label %land.lhs.true23.i

if.end21.i.if.end22_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true23.i:                                ; preds = %if.end21.i
  %arrayidx25.i = getelementptr i32, ptr %60, i32 %11
  %61 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool26.not.i = icmp eq i32 %62, 0
  br i1 %tobool26.not.i, label %land.lhs.true23.i.if.end22_crit_edge, label %if.then27.i

land.lhs.true23.i.if.end22_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then27.i:                                      ; preds = %land.lhs.true23.i
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %name28.i) #6
  %63 = call ptr @memset(ptr %name28.i, i32 255, i32 18)
  %64 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx25.i, align 4
  %reg_rsel.i = getelementptr inbounds %struct.da9055_pdata, ptr %9, i32 0, i32 8
  %66 = ptrtoint ptr %reg_rsel.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_rsel.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %67, i32 %11
  %68 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx32.i, align 4
  %reg_rselect.i = getelementptr inbounds %struct.da9055_regulator, ptr %call.i, i32 0, i32 3
  %70 = ptrtoint ptr %reg_rselect.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %reg_rselect.i, align 4
  %call34.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name28.i, ptr noundef nonnull @.str.22, i32 noundef %65) #6
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %call37.i = call i32 @devm_gpio_request_one(ptr noundef %72, i32 noundef %65, i32 noundef 1, ptr noundef nonnull %name28.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %da9055_gpio_init.exit.thread117, label %da9055_gpio_init.exit

da9055_gpio_init.exit.thread117:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %name28.i) #6
  br label %cleanup

da9055_gpio_init.exit:                            ; preds = %if.then27.i
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %conf43.i = getelementptr inbounds %struct.da9055_regulator_info, ptr %34, i32 0, i32 1
  %75 = ptrtoint ptr %conf43.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %conf43.i, align 4
  %77 = ptrtoint ptr %reg_rsel.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_rsel.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %78, i32 %11
  %79 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx47.i, align 4
  %conv49.i = shl i32 %80, 5
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %74, align 4
  %conv.i90.i = and i32 %76, 255
  %conv2.i91.i = and i32 %conv49.i, 224
  %call.i.i92.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef %conv.i90.i, i32 noundef 96, i32 noundef %conv2.i91.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %name28.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92.i)
  %cmp20 = icmp slt i32 %call.i.i92.i, 0
  br i1 %cmp20, label %da9055_gpio_init.exit.cleanup_crit_edge, label %da9055_gpio_init.exit.if.end22_crit_edge

da9055_gpio_init.exit.if.end22_crit_edge:         ; preds = %da9055_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

da9055_gpio_init.exit.cleanup_crit_edge:          ; preds = %da9055_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %da9055_gpio_init.exit.if.end22_crit_edge, %land.lhs.true23.i.if.end22_crit_edge, %if.end21.i.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %83 = ptrtoint ptr %info109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %info109, align 4
  %call25 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %84, ptr noundef nonnull %config) #6
  %rdev = getelementptr inbounds %struct.da9055_regulator, ptr %call.i, i32 0, i32 2
  %85 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call25, ptr %rdev, align 4
  %cmp.i107 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %do.end31, label %if.end37

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %info109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info109, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %89) #9
  %90 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rdev, align 4
  %92 = ptrtoint ptr %91 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end22
  %93 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id, align 4
  %95 = and i32 %94, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %95)
  %switch = icmp eq i32 %95, 6
  br i1 %switch, label %if.then42, label %if.end37.if.end60_crit_edge

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then42:                                        ; preds = %if.end37
  %call43 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then42.cleanup_crit_edge, label %if.end46

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  %96 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev, align 8
  %call49 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call43, ptr noundef null, ptr noundef nonnull @da9055_ldo5_6_oc_irq, i32 noundef 8452, ptr noundef %97, ptr noundef nonnull %call.i) #6
  %98 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call49, label %do.end56 [
    i32 0, label %if.end46.if.end60_crit_edge
    i32 -16, label %if.end46.if.end60_crit_edge120
  ]

if.end46.if.end60_crit_edge120:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call43, i32 noundef %call49) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end46.if.end60_crit_edge, %if.end46.if.end60_crit_edge120, %if.end37.if.end60_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end56, %if.then42.cleanup_crit_edge, %do.end31, %da9055_gpio_init.exit.cleanup_crit_edge, %da9055_gpio_init.exit.thread117, %da9055_gpio_init.exit.thread114, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %92, %do.end31 ], [ %call49, %do.end56 ], [ 0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i92.i, %da9055_gpio_init.exit.cleanup_crit_edge ], [ %call43, %if.then42.cleanup_crit_edge ], [ %ret.0.ph.i, %da9055_gpio_init.exit.thread114 ], [ %call37.i, %da9055_gpio_init.exit.thread117 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_ldo5_6_oc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr inbounds %struct.da9055_regulator, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 4
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %1, i32 noundef 2, ptr noundef null) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %reg_rselect = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %reg_rselect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_rselect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conf = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %sel_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %sel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel_mask, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %conv.i = and i32 %7, 255
  %conv1.i = and i32 %9, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %volt = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %volt, align 4
  %v_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %v_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_mask, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %conv.i70 = and i32 %15, 255
  %conv1.i71 = and i32 %17, 255
  %conv2.i = and i32 %selector, 255
  %call.i.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv.i70, i32 noundef %conv1.i71, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %conv.i73 = and i32 %7, 255
  %call.i = call i32 @regmap_read(ptr noundef %22, i32 noundef %conv.i73, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %if.end14
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20 = icmp slt i32 %24, 0
  br i1 %cmp20, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end23

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %da9055_reg_read.exit
  %sel_mask25 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %sel_mask25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sel_mask25, align 4
  %and = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26 = icmp eq i32 %and, 0
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %volt30 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %volt30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %volt30, align 4
  %v_mask34 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %v_mask34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_mask34, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %conv.i74 = and i32 %30, 255
  %conv1.i75 = and i32 %32, 255
  %conv2.i76 = and i32 %selector, 255
  %call.i.i77 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %conv.i74, i32 noundef %conv1.i75, i32 noundef %conv2.i76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %reg_b = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %reg_b to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_b, align 4
  %v_mask42 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %v_mask42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v_mask42, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %28, align 4
  %conv.i78 = and i32 %36, 255
  %conv1.i79 = and i32 %38, 255
  %conv2.i80 = and i32 %selector, 255
  %call.i.i81 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %conv.i78, i32 noundef %conv1.i79, i32 noundef %conv2.i80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then28, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i72, %if.end ], [ %call.i.i77, %if.then28 ], [ %call.i.i81, %if.else ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %24, %da9055_reg_read.exit.cleanup_crit_edge ], [ %call.i, %da9055_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_regulator_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i43 = alloca i32, align 4
  %val.i36 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %volt2 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %volt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %volt.sroa.0.0.copyload = load i32, ptr %volt2, align 4
  %volt.sroa.5.0.volt2.sroa_idx = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %volt.sroa.5.0.volt2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %volt.sroa.5.0.copyload = load i32, ptr %volt.sroa.5.0.volt2.sroa_idx, align 4
  %volt.sroa.8.0.volt2.sroa_idx = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %volt.sroa.8.0.volt2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %volt.sroa.8.0.copyload = load i32, ptr %volt.sroa.8.0.volt2.sroa_idx, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conf = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %conf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %conv.i = and i32 %8, 255
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %entry
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_reg_read.exit
  %sel_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %sel_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sel_mask, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i36) #6
  %18 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i36, align 4, !annotation !71
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %conv.i37 = and i32 %volt.sroa.0.0.copyload, 255
  %call.i38 = call i32 @regmap_read(ptr noundef %20, i32 noundef %conv.i37, ptr noundef nonnull %val.i36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %if.then8.da9055_reg_read.exit42_crit_edge, label %if.end.i40

if.then8.da9055_reg_read.exit42_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_reg_read.exit42

if.end.i40:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i36, align 4
  br label %da9055_reg_read.exit42

da9055_reg_read.exit42:                           ; preds = %if.end.i40, %if.then8.da9055_reg_read.exit42_crit_edge
  %retval.0.i41 = phi i32 [ %22, %if.end.i40 ], [ %call.i38, %if.then8.da9055_reg_read.exit42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #6
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i43) #6
  %23 = ptrtoint ptr %val.i43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i43, align 4, !annotation !71
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 4
  %conv.i44 = and i32 %volt.sroa.5.0.copyload, 255
  %call.i45 = call i32 @regmap_read(ptr noundef %25, i32 noundef %conv.i44, ptr noundef nonnull %val.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %if.else.da9055_reg_read.exit49_crit_edge, label %if.end.i47

if.else.da9055_reg_read.exit49_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_reg_read.exit49

if.end.i47:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %val.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i43, align 4
  br label %da9055_reg_read.exit49

da9055_reg_read.exit49:                           ; preds = %if.end.i47, %if.else.da9055_reg_read.exit49_crit_edge
  %retval.0.i48 = phi i32 [ %27, %if.end.i47 ], [ %call.i45, %if.else.da9055_reg_read.exit49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i43) #6
  br label %if.end15

if.end15:                                         ; preds = %da9055_reg_read.exit49, %da9055_reg_read.exit42
  %ret.0 = phi i32 [ %retval.0.i41, %da9055_reg_read.exit42 ], [ %retval.0.i48, %da9055_reg_read.exit49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp16.inv = icmp sgt i32 %ret.0, -1
  %and20 = select i1 %cmp16.inv, i32 %volt.sroa.8.0.copyload, i32 -1
  %spec.select = and i32 %and20, %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread
  %retval.0 = phi i32 [ %13, %da9055_reg_read.exit.cleanup_crit_edge ], [ %spec.select, %if.end15 ], [ %call.i, %da9055_reg_read.exit.thread ]
  ret i32 %retval.0
}

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
define internal i32 @da9055_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb3
    i32 8, label %sw.bb7
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb7 ], [ 3, %sw.bb3 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %shift9 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %shift9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shift9, align 4
  %shl10 = shl i32 %.sink, %4
  %phi.bo = and i32 %shl10, 255
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %phi.bo, %sw.epilog.sink.split ]
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %mode11 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode11, align 4
  %mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %conv.i = and i32 %8, 255
  %conv1.i = and i32 %10, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %mode2 = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv.i = and i32 %5, 255
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %entry
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_reg_read.exit
  %mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %and = and i32 %12, %10
  %shift = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %shr19 = lshr i32 %and, %14
  %switch.tableidx = add i32 %shr19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9055_buck_get_mode, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread
  %retval.0 = phi i32 [ %10, %da9055_reg_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %da9055_reg_read.exit.thread ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_regulator_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %reg_rselect = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %reg_rselect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_rselect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conf = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %sel_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %sel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel_mask, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %conv.i = and i32 %7, 255
  %conv1.i = and i32 %9, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %reg_b = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %reg_b to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_b, align 4
  %v_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %v_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_mask, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %conv.i34 = and i32 %15, 255
  %conv1.i35 = and i32 %17, 255
  %conv2.i = and i32 %call9, 255
  %call.i.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv.i34, i32 noundef %conv1.i35, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i36, %if.end13 ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %reg_rselect = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %reg_rselect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_rselect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conf = getelementptr inbounds %struct.da9055_regulator_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %sel_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %sel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel_mask, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %conv.i = and i32 %7, 255
  %conv1.i = and i32 %9, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %reg_rselect = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %reg_rselect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_rselect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conf = getelementptr inbounds %struct.da9055_regulator_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 4
  %sel_mask = getelementptr inbounds %struct.da9055_regulator_info, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %sel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel_mask, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %conv.i = and i32 %7, 255
  %conv1.i = and i32 %9, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_ldo_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %volt.sroa.4.0.volt2.sroa_idx = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %volt.sroa.4.0.volt2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %volt.sroa.4.0.copyload = load i32, ptr %volt.sroa.4.0.volt2.sroa_idx, align 4
  %volt.sroa.6.0.volt2.sroa_idx = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %volt.sroa.6.0.volt2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %volt.sroa.6.0.copyload = load i32, ptr %volt.sroa.6.0.volt2.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %cond = icmp eq i32 %mode, 8
  %spec.select = zext i1 %cond to i32
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %shl = shl nuw i32 1, %volt.sroa.6.0.copyload
  %shl6 = shl nuw i32 %spec.select, %volt.sroa.6.0.copyload
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %conv.i = and i32 %volt.sroa.4.0.copyload, 255
  %conv1.i = and i32 %shl, 255
  %conv2.i = and i32 %shl6, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_ldo_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9055_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %reg_b = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %reg_b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_b, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv.i = and i32 %5, 255
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %entry
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sl_shift = getelementptr inbounds %struct.da9055_regulator_info, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %sl_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sl_shift, align 4
  %shr14 = lshr i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr14)
  %tobool.not = icmp eq i32 %shr14, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread
  %retval.0 = phi i32 [ %10, %da9055_reg_read.exit.cleanup_crit_edge ], [ %., %if.end ], [ %call.i, %da9055_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_da9055_regulator__288_586_da9055_regulator_init4, !1, !"__initcall__kmod_da9055_regulator__288_586_da9055_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9055-regulator.c", i32 586, i32 1}
!2 = !{ptr @__exitcall_da9055_regulator_exit, !3, !"__exitcall_da9055_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/da9055-regulator.c", i32 592, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/da9055-regulator.c", i32 594, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/da9055-regulator.c", i32 595, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/da9055-regulator.c", i32 596, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/da9055-regulator.c", i32 597, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/da9055-regulator.c", i32 578, i32 11}
!15 = !{ptr @da9055_regulator_driver, !16, !"da9055_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/da9055-regulator.c", i32 575, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/da9055-regulator.c", i32 523, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9055_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9055_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9055-regulator.c", i32 543, i32 3}
!27 = !{ptr @da9055_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9055_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9055-regulator.c", i32 550, i32 39}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/da9055-regulator.c", i32 562, i32 5}
!33 = !{ptr @da9055_regulator_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @da9055_regulator_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/da9055-regulator.c", i32 401, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/da9055-regulator.c", i32 402, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/da9055-regulator.c", i32 403, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/da9055-regulator.c", i32 404, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/da9055-regulator.c", i32 405, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/da9055-regulator.c", i32 406, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/da9055-regulator.c", i32 407, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9055-regulator.c", i32 408, i32 2}
!52 = !{ptr @da9055_regulator_info, !53, !"da9055_regulator_info", i1 false, i1 false}
!53 = !{!"../drivers/regulator/da9055-regulator.c", i32 400, i32 37}
!54 = !{ptr @da9055_buck_ops, !55, !"da9055_buck_ops", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9055-regulator.c", i32 291, i32 35}
!56 = !{ptr @da9055_current_limits, !57, !"da9055_current_limits", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9055-regulator.c", i32 45, i32 27}
!58 = !{ptr @da9055_ldo_ops, !59, !"da9055_ldo_ops", i1 false, i1 false}
!59 = !{!"../drivers/regulator/da9055-regulator.c", i32 312, i32 35}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/da9055-regulator.c", i32 436, i32 17}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
