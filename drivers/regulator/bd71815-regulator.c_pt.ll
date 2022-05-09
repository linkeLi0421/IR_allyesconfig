; ModuleID = '/llk/IR_all_yes/drivers/regulator/bd71815-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bd71815-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bd71815_regulator = type { %struct.regulator_desc, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rohm_dvs_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_bd71815_regulator__288_629_bd7181x_regulator_init6 = internal global ptr @bd7181x_regulator_init, section ".initcall6.init", align 4
@bd7181x_regulator = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd7181x_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bd7181x_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd7181x_regulator_exit = internal global ptr @bd7181x_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"bd71815_regulator.author=Tony Luo <luofc@embedinfo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"bd71815_regulator.description=BD71815 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"bd71815_regulator.file=drivers/regulator/bd71815-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"bd71815_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [46 x i8] c"bd71815_regulator.alias=platform:bd7181x-pmic\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd7181x-pmic\00", [19 x i8] zeroinitializer }, align 32
@bd7181x_pmic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd71815-pmic\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bd7181x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No parent regmap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd7181x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/bd71815-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd7181x_probe._entry_ptr = internal global ptr @bd7181x_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rohm,vsel-gpios\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo4-en\00", [24 x i8] zeroinitializer }, align 32
@bd71815_regulators = internal constant { [13 x %struct.bd71815_regulator], [808 x i8] } { [13 x %struct.bd71815_regulator] [%struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @buck12_set_hw_dvs_levels, i32 0, i8 0, i32 49, i32 0, ptr @bd7181x_buck12_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 7, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 192, ptr @bd7181x_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, ptr @buck1_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.12, ptr @buck12_set_hw_dvs_levels, i32 1, i8 0, i32 49, i32 0, ptr @bd7181x_buck12_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 9, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 192, ptr @bd7181x_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, ptr @buck2_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 2, i8 0, i32 31, i32 0, ptr @bd7181x_buck_regulator_ops, i32 0, i32 0, ptr null, i32 1200000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 11, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @buck3_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 3, i8 0, i32 31, i32 0, ptr @bd7181x_buck_regulator_ops, i32 0, i32 0, ptr null, i32 1100000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 12, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @buck4_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 4, i8 0, i32 31, i32 0, ptr @bd7181x_buck_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 13, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @buck5_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 5, i8 0, i32 51, i32 0, ptr @bd7181x_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 20, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo1_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 6, i8 0, i32 51, i32 0, ptr @bd7181x_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo2_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 7, i8 0, i32 51, i32 0, ptr @bd7181x_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo3_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 8, i8 0, i32 51, i32 0, ptr @bd7181x_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo4_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 9, i8 0, i32 51, i32 0, ptr @bd7181x_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo5_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 10, i8 0, i32 1, i32 0, ptr @bd7181x_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @dvref_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.12, ptr @set_hw_dvs_levels, i32 11, i8 0, i32 1, i32 0, ptr @bd7181x_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldolpsr_dvs }, %struct.bd71815_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.12, ptr null, i32 12, i8 0, i32 0, i32 35, ptr @bd7181x_led_regulator_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @bd7181x_wled_currents, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 63, i32 0, i32 0, i32 14, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null }], [808 x i8] zeroinitializer }, align 32
@bd7181x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@bd7181x_probe._entry_ptr.10 = internal global ptr @bd7181x_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@bd7181x_buck12_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @bd7181x_buck12_set_voltage_sel, ptr null, ptr @bd7181x_buck12_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd7181x_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1250, i32 2500, i32 5000, i32 10000], [16 x i8] zeroinitializer }, align 32
@buck1_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 7, i32 63, i32 4, i32 0, i32 0, i32 0, i32 8, i32 63, i32 1, i32 8, i32 63, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@buck2_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 9, i32 63, i32 4, i32 0, i32 0, i32 0, i32 10, i32 63, i32 1, i32 10, i32 63, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@bd7181x_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck3_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 11, i32 63, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@buck4_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 12, i32 63, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@buck5_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 13, i32 63, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@bd7181x_ldo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo1_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 16, i32 63, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 32, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@ldo2_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 17, i32 63, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@ldo3_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 17, i32 63, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 32, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@ldo4_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 18, i32 63, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@ldo5_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 18, i32 63, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 32, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldodvref\00", [23 x i8] zeroinitializer }, align 32
@bd7181x_fixed_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dvref_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 0, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 32, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldolpsr\00", [24 x i8] zeroinitializer }, align 32
@ldolpsr_dvs = internal constant { %struct.rohm_dvs_config, [56 x i8] } { %struct.rohm_dvs_config { i64 29, i32 0, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 32, i32 0, i32 0, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wled\00", [27 x i8] zeroinitializer }, align 32
@bd7181x_led_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd7181x_led_set_current_limit, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd7181x_wled_currents = internal constant { [35 x i32], [52 x i8] } { [35 x i32] [i32 10, i32 20, i32 30, i32 50, i32 70, i32 100, i32 200, i32 300, i32 500, i32 700, i32 1000, i32 2000, i32 3000, i32 4000, i32 5000, i32 6000, i32 7000, i32 8000, i32 9000, i32 10000, i32 11000, i32 12000, i32 13000, i32 14000, i32 15000, i32 16000, i32 17000, i32 18000, i32 19000, i32 20000, i32 21000, i32 22000, i32 23000, i32 24000, i32 25000], [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rohm,dvs-run-voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rohm,dvs-suspend-voltage\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-lpsr-voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-snvs-voltage\00", [42 x i8] zeroinitializer }, align 32
@bd7181x_led_set_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to revert the LED state (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bd7181x_led_set_current_limit\00", [34 x i8] zeroinitializer }, align 32
@bd7181x_led_set_current_limit._entry_ptr = internal global ptr @bd7181x_led_set_current_limit._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"bd7181x_regulator\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 622, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 624, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"bd7181x_pmic_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 616, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 571, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 576, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 577, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"bd71815_regulators\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 518, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 607, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 519, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"bd7181x_buck12_regulator_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 389, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"bd7181x_ramp_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 260, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"buck1_dvs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 37, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 522, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"buck2_dvs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 52, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 525, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"bd7181x_buck_regulator_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 379, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"buck3_dvs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 67, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 528, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"buck4_dvs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 78, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 531, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"buck5_dvs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 162, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 534, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"bd7181x_ldo_regulator_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 363, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"ldo1_dvs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 89, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 537, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"ldo2_dvs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 100, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 544, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"ldo3_dvs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 111, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 547, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"ldo4_dvs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 122, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 550, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"ldo5_dvs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 133, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 553, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [28 x i8] c"bd7181x_fixed_regulator_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 372, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"dvref_dvs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 144, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 555, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"ldolpsr_dvs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 153, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 557, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"bd7181x_led_regulator_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 400, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"bd7181x_wled_currents\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 31, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 204, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 205, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 206, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 207, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [41 x i8] c"../drivers/regulator/bd71815-regulator.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 286, i32 5 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd7181x_regulator_exit, ptr @__initcall__kmod_bd71815_regulator__288_629_bd7181x_regulator_init6, ptr @bd7181x_led_set_current_limit._entry, ptr @bd7181x_led_set_current_limit._entry_ptr, ptr @bd7181x_probe._entry, ptr @bd7181x_probe._entry.8, ptr @bd7181x_probe._entry_ptr, ptr @bd7181x_probe._entry_ptr.10, ptr @bd7181x_regulator_exit, ptr @bd7181x_regulator, ptr @.str, ptr @bd7181x_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bd71815_regulators, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @bd7181x_buck12_regulator_ops, ptr @bd7181x_ramp_table, ptr @buck1_dvs, ptr @.str.13, ptr @buck2_dvs, ptr @.str.14, ptr @bd7181x_buck_regulator_ops, ptr @buck3_dvs, ptr @.str.15, ptr @buck4_dvs, ptr @.str.16, ptr @buck5_dvs, ptr @.str.17, ptr @bd7181x_ldo_regulator_ops, ptr @ldo1_dvs, ptr @.str.18, ptr @ldo2_dvs, ptr @.str.19, ptr @ldo3_dvs, ptr @.str.20, ptr @ldo4_dvs, ptr @.str.21, ptr @ldo5_dvs, ptr @.str.22, ptr @bd7181x_fixed_regulator_ops, ptr @dvref_dvs, ptr @.str.23, ptr @ldolpsr_dvs, ptr @.str.24, ptr @bd7181x_led_regulator_ops, ptr @bd7181x_wled_currents, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_regulator to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_pmic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71815_regulators to i32), i32 3224, i32 4032, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_buck12_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck3_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck4_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck5_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_ldo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo4_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_fixed_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvref_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldolpsr_dvs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_led_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_wled_currents to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd7181x_led_set_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd7181x_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd7181x_regulator, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd7181x_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd7181x_regulator) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd7181x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup37

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.7) #5
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %if.end
  %8 = ptrtoint ptr %call5 to i32
  %cmp.not = icmp eq ptr %call5, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.then7.if.end11_crit_edge, label %if.then7.cleanup37_crit_edge

if.then7.cleanup37_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ldo4_en.0 = phi ptr [ %call5, %if.end.if.end11_crit_edge ], [ null, %if.then7.if.end11_crit_edge ]
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup37_crit_edge

if.end11.cleanup37_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config, align 4
  %regmap19 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %regmap19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %regmap19, align 4
  %ena_gpiod24 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %13 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @bd71815_regulators, ptr noundef nonnull %config) #5
  %cmp.i60 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %if.end15.cleanup.thread_crit_edge, label %for.cond

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i60.1 = icmp ugt ptr %call27.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.1, label %for.cond.cleanup.thread_crit_edge, label %for.cond.1

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.1:                                       ; preds = %for.cond
  %15 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i60.2 = icmp ugt ptr %call27.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.2, label %for.cond.1.cleanup.thread_crit_edge, label %for.cond.2

for.cond.1.cleanup.thread_crit_edge:              ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.2:                                       ; preds = %for.cond.1
  %16 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i60.3 = icmp ugt ptr %call27.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.3, label %for.cond.2.cleanup.thread_crit_edge, label %for.cond.3

for.cond.2.cleanup.thread_crit_edge:              ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.3:                                       ; preds = %for.cond.2
  %17 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i60.4 = icmp ugt ptr %call27.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.4, label %for.cond.3.cleanup.thread_crit_edge, label %for.cond.4

for.cond.3.cleanup.thread_crit_edge:              ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.4:                                       ; preds = %for.cond.3
  %18 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i60.5 = icmp ugt ptr %call27.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.5, label %for.cond.4.cleanup.thread_crit_edge, label %for.cond.5

for.cond.4.cleanup.thread_crit_edge:              ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.5:                                       ; preds = %for.cond.4
  %19 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 6), ptr noundef nonnull %config) #5
  %cmp.i60.6 = icmp ugt ptr %call27.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.6, label %for.cond.5.cleanup.thread_crit_edge, label %for.cond.6

for.cond.5.cleanup.thread_crit_edge:              ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.6:                                       ; preds = %for.cond.5
  %20 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.7 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 7), ptr noundef nonnull %config) #5
  %cmp.i60.7 = icmp ugt ptr %call27.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.7, label %for.cond.6.cleanup.thread_crit_edge, label %for.cond.7

for.cond.6.cleanup.thread_crit_edge:              ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.7:                                       ; preds = %for.cond.6
  %21 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ldo4_en.0, ptr %ena_gpiod24, align 4
  %call27.8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 8), ptr noundef nonnull %config) #5
  %cmp.i60.8 = icmp ugt ptr %call27.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.8, label %for.cond.7.cleanup.thread_crit_edge, label %for.cond.8

for.cond.7.cleanup.thread_crit_edge:              ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.8:                                       ; preds = %for.cond.7
  %22 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.9 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 9), ptr noundef nonnull %config) #5
  %cmp.i60.9 = icmp ugt ptr %call27.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.9, label %for.cond.8.cleanup.thread_crit_edge, label %for.cond.9

for.cond.8.cleanup.thread_crit_edge:              ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.9:                                       ; preds = %for.cond.8
  %23 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.10 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 10), ptr noundef nonnull %config) #5
  %cmp.i60.10 = icmp ugt ptr %call27.10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.10, label %for.cond.9.cleanup.thread_crit_edge, label %for.cond.10

for.cond.9.cleanup.thread_crit_edge:              ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.10:                                      ; preds = %for.cond.9
  %24 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.11 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 11), ptr noundef nonnull %config) #5
  %cmp.i60.11 = icmp ugt ptr %call27.11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.11, label %for.cond.10.cleanup.thread_crit_edge, label %for.cond.11

for.cond.10.cleanup.thread_crit_edge:             ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.cond.11:                                      ; preds = %for.cond.10
  %25 = ptrtoint ptr %ena_gpiod24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ena_gpiod24, align 4
  %call27.12 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 12), ptr noundef nonnull %config) #5
  %cmp.i60.12 = icmp ugt ptr %call27.12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.12, label %for.cond.11.cleanup.thread_crit_edge, label %for.cond.11.cleanup37_crit_edge

for.cond.11.cleanup37_crit_edge:                  ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup37

for.cond.11.cleanup.thread_crit_edge:             ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.cond.11.cleanup.thread_crit_edge, %for.cond.10.cleanup.thread_crit_edge, %for.cond.9.cleanup.thread_crit_edge, %for.cond.8.cleanup.thread_crit_edge, %for.cond.7.cleanup.thread_crit_edge, %for.cond.6.cleanup.thread_crit_edge, %for.cond.5.cleanup.thread_crit_edge, %for.cond.4.cleanup.thread_crit_edge, %for.cond.3.cleanup.thread_crit_edge, %for.cond.2.cleanup.thread_crit_edge, %for.cond.1.cleanup.thread_crit_edge, %for.cond.cleanup.thread_crit_edge, %if.end15.cleanup.thread_crit_edge
  %arrayidx.lcssa = phi ptr [ @bd71815_regulators, %if.end15.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 1), %for.cond.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 2), %for.cond.1.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 3), %for.cond.2.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 4), %for.cond.3.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 5), %for.cond.4.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 6), %for.cond.5.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 7), %for.cond.6.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 8), %for.cond.7.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 9), %for.cond.8.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 10), %for.cond.9.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 11), %for.cond.10.cleanup.thread_crit_edge ], [ getelementptr inbounds ([13 x %struct.bd71815_regulator], ptr @bd71815_regulators, i32 0, i32 12), %for.cond.11.cleanup.thread_crit_edge ]
  %call27.lcssa = phi ptr [ %call27, %if.end15.cleanup.thread_crit_edge ], [ %call27.1, %for.cond.cleanup.thread_crit_edge ], [ %call27.2, %for.cond.1.cleanup.thread_crit_edge ], [ %call27.3, %for.cond.2.cleanup.thread_crit_edge ], [ %call27.4, %for.cond.3.cleanup.thread_crit_edge ], [ %call27.5, %for.cond.4.cleanup.thread_crit_edge ], [ %call27.6, %for.cond.5.cleanup.thread_crit_edge ], [ %call27.7, %for.cond.6.cleanup.thread_crit_edge ], [ %call27.8, %for.cond.7.cleanup.thread_crit_edge ], [ %call27.9, %for.cond.8.cleanup.thread_crit_edge ], [ %call27.10, %for.cond.9.cleanup.thread_crit_edge ], [ %call27.11, %for.cond.10.cleanup.thread_crit_edge ], [ %call27.12, %for.cond.11.cleanup.thread_crit_edge ]
  %26 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %27) #8
  %28 = ptrtoint ptr %call27.lcssa to i32
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup.thread, %for.cond.11.cleanup37_crit_edge, %if.end11.cleanup37_crit_edge, %if.then7.cleanup37_crit_edge, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ %8, %if.then7.cleanup37_crit_edge ], [ %call.i, %if.end11.cleanup37_crit_edge ], [ %28, %cleanup.thread ], [ 0, %for.cond.11.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buck12_set_hw_dvs_levels(ptr noundef %np, ptr noundef %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %val2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !123
  %call = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.25, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef null) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.27, ptr noundef null) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup38_crit_edge, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false6.cleanup38_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 27
  %3 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsel_reg, align 4
  %call9 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %if.then.cleanup38_crit_edge

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.then15, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #5
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val2, align 4, !annotation !123
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %13, 1
  %call18 = call i32 @regmap_read(ptr noundef %11, i32 noundef %add, ptr noundef nonnull %val2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #5
  br label %cleanup38

cleanup:                                          ; preds = %if.then15
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsel_reg, align 4
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val2, align 4
  %or = or i32 %19, 128
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 191, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #5
  br i1 %tobool25.not, label %cleanup.if.end28_crit_edge, label %cleanup.cleanup38_crit_edge

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %dvs = getelementptr inbounds %struct.bd71815_regulator, ptr %desc, i32 0, i32 1
  %20 = ptrtoint ptr %dvs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvs, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @rohm_regulator_set_dvs_levels(ptr noundef %21, ptr noundef %np, ptr noundef %desc, ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup38_crit_edge

if.end28.cleanup38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vsel_reg, align 4
  %call.i62 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %27, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup38

cleanup38:                                        ; preds = %if.end33, %if.end28.cleanup38_crit_edge, %cleanup.cleanup38_crit_edge, %cleanup.thread, %if.then.cleanup38_crit_edge, %lor.lhs.false6.cleanup38_crit_edge
  %retval.1 = phi i32 [ %call.i, %cleanup.cleanup38_crit_edge ], [ %call9, %if.then.cleanup38_crit_edge ], [ %call30, %if.end28.cleanup38_crit_edge ], [ %call.i62, %if.end33 ], [ 0, %lor.lhs.false6.cleanup38_crit_edge ], [ %call18, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_hw_dvs_levels(ptr noundef %np, ptr noundef %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvs = getelementptr inbounds %struct.bd71815_regulator, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %dvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvs, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @rohm_regulator_set_dvs_levels(ptr noundef %1, ptr noundef %np, ptr noundef %desc, ptr noundef %3) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rohm_regulator_set_dvs_levels(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd7181x_buck12_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !123
  %mul = shl i32 %call, 1
  %add = add i32 %mul, 7
  %add2 = add i32 %mul, 8
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef 63, i32 noundef %sel, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %add.add2 = select i1 %tobool10.not, i32 %add, i32 %add2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i37 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add.add2, i32 noundef 63, i32 noundef %sel, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool15.not = icmp eq i32 %call.i37, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %neg = xor i32 %12, -1
  %call.i38 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add, i32 noundef 128, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ %call.i38, %if.end17 ], [ %call3, %entry.cleanup_crit_edge ], [ %call.i37, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd7181x_buck12_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !123
  %mul = shl i32 %call, 1
  %add = add i32 %mul, 7
  %add2 = add i32 %mul, 8
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = and i32 %4, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %add2, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %if.end10.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and14 = and i32 %10, 63
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and14, %if.end13 ], [ %call3, %entry.cleanup_crit_edge ], [ %call9, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd7181x_led_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #5
  %call1 = tail call i32 @regulator_set_current_limit_regmap(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call2)
  %cmp.not = icmp eq i32 %call, %call2
  br i1 %cmp.not, label %if.then.if.end13_crit_edge, label %if.then3

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #5
  br label %if.end

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @regulator_disable_regmap(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call10, ptr noundef nonnull @.str.29, i32 noundef %ret.0) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ret.2 = phi i32 [ %call1, %entry.if.end13_crit_edge ], [ %ret.0, %do.end ], [ 0, %if.end.if.end13_crit_edge ], [ 0, %if.then.if.end13_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_bd71815_regulator__288_629_bd7181x_regulator_init6, !1, !"__initcall__kmod_bd71815_regulator__288_629_bd7181x_regulator_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bd71815-regulator.c", i32 629, i32 1}
!2 = !{ptr @__exitcall_bd7181x_regulator_exit, !1, !"__exitcall_bd7181x_regulator_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bd71815-regulator.c", i32 631, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bd71815-regulator.c", i32 632, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bd71815-regulator.c", i32 633, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bd71815-regulator.c", i32 634, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bd71815-regulator.c", i32 624, i32 11}
!14 = !{ptr @bd7181x_regulator, !15, !"bd7181x_regulator", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bd71815-regulator.c", i32 622, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/bd71815-regulator.c", i32 571, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bd7181x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bd7181x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/bd71815-regulator.c", i32 576, i32 8}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/bd71815-regulator.c", i32 577, i32 20}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bd71815-regulator.c", i32 607, i32 4}
!30 = !{ptr @bd7181x_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bd7181x_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/bd71815-regulator.c", i32 519, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/bd71815-regulator.c", i32 522, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/bd71815-regulator.c", i32 525, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/bd71815-regulator.c", i32 528, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/bd71815-regulator.c", i32 531, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/bd71815-regulator.c", i32 534, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/bd71815-regulator.c", i32 537, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/bd71815-regulator.c", i32 544, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/bd71815-regulator.c", i32 547, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/bd71815-regulator.c", i32 550, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/bd71815-regulator.c", i32 553, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/bd71815-regulator.c", i32 555, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/bd71815-regulator.c", i32 557, i32 2}
!59 = !{ptr @bd71815_regulators, !60, !"bd71815_regulators", i1 false, i1 false}
!60 = !{!"../drivers/regulator/bd71815-regulator.c", i32 518, i32 39}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/bd71815-regulator.c", i32 204, i32 27}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/bd71815-regulator.c", i32 205, i32 27}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/bd71815-regulator.c", i32 206, i32 27}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/bd71815-regulator.c", i32 207, i32 27}
!69 = !{ptr @bd7181x_buck12_regulator_ops, !70, !"bd7181x_buck12_regulator_ops", i1 false, i1 false}
!70 = !{!"../drivers/regulator/bd71815-regulator.c", i32 389, i32 35}
!71 = !{ptr @bd7181x_ramp_table, !72, !"bd7181x_ramp_table", i1 false, i1 false}
!72 = !{!"../drivers/regulator/bd71815-regulator.c", i32 260, i32 27}
!73 = !{ptr @buck1_dvs, !74, !"buck1_dvs", i1 false, i1 false}
!74 = !{!"../drivers/regulator/bd71815-regulator.c", i32 37, i32 37}
!75 = !{ptr @buck2_dvs, !76, !"buck2_dvs", i1 false, i1 false}
!76 = !{!"../drivers/regulator/bd71815-regulator.c", i32 52, i32 37}
!77 = !{ptr @bd7181x_buck_regulator_ops, !78, !"bd7181x_buck_regulator_ops", i1 false, i1 false}
!78 = !{!"../drivers/regulator/bd71815-regulator.c", i32 379, i32 35}
!79 = !{ptr @buck3_dvs, !80, !"buck3_dvs", i1 false, i1 false}
!80 = !{!"../drivers/regulator/bd71815-regulator.c", i32 67, i32 37}
!81 = !{ptr @buck4_dvs, !82, !"buck4_dvs", i1 false, i1 false}
!82 = !{!"../drivers/regulator/bd71815-regulator.c", i32 78, i32 37}
!83 = !{ptr @buck5_dvs, !84, !"buck5_dvs", i1 false, i1 false}
!84 = !{!"../drivers/regulator/bd71815-regulator.c", i32 162, i32 37}
!85 = !{ptr @bd7181x_ldo_regulator_ops, !86, !"bd7181x_ldo_regulator_ops", i1 false, i1 false}
!86 = !{!"../drivers/regulator/bd71815-regulator.c", i32 363, i32 35}
!87 = !{ptr @ldo1_dvs, !88, !"ldo1_dvs", i1 false, i1 false}
!88 = !{!"../drivers/regulator/bd71815-regulator.c", i32 89, i32 37}
!89 = !{ptr @ldo2_dvs, !90, !"ldo2_dvs", i1 false, i1 false}
!90 = !{!"../drivers/regulator/bd71815-regulator.c", i32 100, i32 37}
!91 = !{ptr @ldo3_dvs, !92, !"ldo3_dvs", i1 false, i1 false}
!92 = !{!"../drivers/regulator/bd71815-regulator.c", i32 111, i32 37}
!93 = !{ptr @ldo4_dvs, !94, !"ldo4_dvs", i1 false, i1 false}
!94 = !{!"../drivers/regulator/bd71815-regulator.c", i32 122, i32 37}
!95 = !{ptr @ldo5_dvs, !96, !"ldo5_dvs", i1 false, i1 false}
!96 = !{!"../drivers/regulator/bd71815-regulator.c", i32 133, i32 37}
!97 = !{ptr @bd7181x_fixed_regulator_ops, !98, !"bd7181x_fixed_regulator_ops", i1 false, i1 false}
!98 = !{!"../drivers/regulator/bd71815-regulator.c", i32 372, i32 35}
!99 = !{ptr @dvref_dvs, !100, !"dvref_dvs", i1 false, i1 false}
!100 = !{!"../drivers/regulator/bd71815-regulator.c", i32 144, i32 37}
!101 = !{ptr @ldolpsr_dvs, !102, !"ldolpsr_dvs", i1 false, i1 false}
!102 = !{!"../drivers/regulator/bd71815-regulator.c", i32 153, i32 37}
!103 = !{ptr @bd7181x_led_regulator_ops, !104, !"bd7181x_led_regulator_ops", i1 false, i1 false}
!104 = !{!"../drivers/regulator/bd71815-regulator.c", i32 400, i32 35}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/bd71815-regulator.c", i32 286, i32 5}
!107 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @bd7181x_led_set_current_limit._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @bd7181x_led_set_current_limit._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @bd7181x_wled_currents, !111, !"bd7181x_wled_currents", i1 false, i1 false}
!111 = !{!"../drivers/regulator/bd71815-regulator.c", i32 31, i32 18}
!112 = !{ptr @bd7181x_pmic_id, !113, !"bd7181x_pmic_id", i1 false, i1 false}
!113 = !{!"../drivers/regulator/bd71815-regulator.c", i32 616, i32 40}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
