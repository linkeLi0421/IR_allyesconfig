; ModuleID = '/llk/IR_all_yes/drivers/regulator/bd71828-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bd71828-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bd71828_regulator_data = type { %struct.regulator_desc, %struct.rohm_dvs_config, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.rohm_dvs_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.reg_init = type { i32, i32, i32 }
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

@__initcall__kmod_bd71828_regulator__288_782_bd71828_regulator_init6 = internal global ptr @bd71828_regulator_init, section ".initcall6.init", align 4
@bd71828_regulator = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd71828_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd71828_regulator_exit = internal global ptr @bd71828_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [77 x i8] c"bd71828_regulator.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"bd71828_regulator.description=BD71828 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"bd71828_regulator.file=drivers/regulator/bd71828-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"bd71828_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [46 x i8] c"bd71828_regulator.alias=platform:bd71828-pmic\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd71828-pmic\00", [19 x i8] zeroinitializer }, align 32
@bd71828_rdata = internal constant { [14 x %struct.bd71828_regulator_data], [1136 x i8] } { [14 x %struct.bd71828_regulator_data] [%struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 0, i8 0, i32 256, i32 0, ptr @bd71828_dvs_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck1267_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 13, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 6, ptr @bd71828_ramp_delay, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 13, i32 255, i32 0, i32 11, i32 255, i32 2, i32 12, i32 255, i32 4, i32 12, i32 255, i32 1, i32 0, i32 0, i32 0 }, ptr @buck1_inits, i32 1 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.13, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 1, i8 0, i32 256, i32 0, ptr @bd71828_dvs_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck1267_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 23, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 6, ptr @bd71828_ramp_delay, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 23, i32 255, i32 0, i32 21, i32 255, i32 2, i32 22, i32 255, i32 4, i32 22, i32 255, i32 1, i32 0, i32 0, i32 0 }, ptr @buck2_inits, i32 1 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 2, i8 0, i32 32, i32 0, ptr @bd71828_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck3_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 30, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 30, i32 31, i32 0, i32 30, i32 31, i32 2, i32 30, i32 31, i32 4, i32 30, i32 31, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 3, i8 0, i32 64, i32 0, ptr @bd71828_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck4_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 33, i32 63, i32 0, i32 33, i32 63, i32 2, i32 33, i32 63, i32 4, i32 33, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 4, i8 0, i32 32, i32 0, ptr @bd71828_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck5_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 36, i32 31, i32 0, i32 36, i32 31, i32 2, i32 36, i32 31, i32 4, i32 36, i32 31, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 5, i8 0, i32 256, i32 0, ptr @bd71828_dvs_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck1267_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 42, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 6, ptr @bd71828_ramp_delay, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 42, i32 255, i32 0, i32 40, i32 255, i32 2, i32 41, i32 255, i32 4, i32 41, i32 255, i32 1, i32 0, i32 0, i32 0 }, ptr @buck6_inits, i32 1 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 6, i8 0, i32 256, i32 0, ptr @bd71828_dvs_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_buck1267_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 52, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 6, ptr @bd71828_ramp_delay, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 52, i32 255, i32 0, i32 50, i32 255, i32 2, i32 51, i32 255, i32 4, i32 51, i32 255, i32 1, i32 0, i32 0, i32 0 }, ptr @buck7_inits, i32 1 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.25, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 7, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 58, i32 63, i32 0, i32 58, i32 63, i32 2, i32 58, i32 63, i32 4, i32 58, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.27, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 8, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 60, i32 63, i32 0, i32 60, i32 63, i32 2, i32 60, i32 63, i32 4, i32 60, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 9, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 62, i32 63, i32 0, i32 62, i32 63, i32 2, i32 62, i32 63, i32 4, i32 62, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.31, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 10, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 64, i32 63, i32 0, i32 64, i32 63, i32 2, i32 64, i32 63, i32 4, i32 64, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.33, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 11, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 67, i32 63, i32 0, i32 67, i32 63, i32 2, i32 67, i32 63, i32 4, i32 67, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.35, i8 0, ptr @.str.11, ptr @ldo6_parse_dt, i32 12, i8 0, i32 1, i32 0, ptr @bd71828_ldo6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, ptr null, i32 0 }, %struct.bd71828_regulator_data { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr @.str.11, ptr @buck_set_hw_dvs_levels, i32 13, i8 0, i32 64, i32 0, ptr @bd71828_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71828_ldo_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 15, i32 70, i32 63, i32 0, i32 70, i32 63, i32 2, i32 70, i32 63, i32 4, i32 70, i32 63, i32 1, i32 0, i32 0, i32 0 }, ptr null, i32 0 }], [1136 x i8] zeroinitializer }, align 32
@bd71828_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd71828_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/bd71828-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd71828_probe._entry_ptr = internal global ptr @bd71828_probe._entry, section ".printk_index", align 4
@bd71828_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator %s init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@bd71828_probe._entry_ptr.8 = internal global ptr @bd71828_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@bd71828_dvs_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71828_buck1267_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 239, i32 6250 }, %struct.linear_range { i32 2000000, i32 240, i32 255, i32 0 }], [32 x i8] zeroinitializer }, align 32
@bd71828_ramp_delay = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2500, i32 5000, i32 10000, i32 20000], [16 x i8] zeroinitializer }, align 32
@buck1_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 4, i32 16, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@buck2_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 4, i32 32, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@bd71828_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71828_buck3_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1200000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 2000000, i32 16, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@bd71828_buck4_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 31, i32 25000 }, %struct.linear_range { i32 1800000, i32 32, i32 63, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@bd71828_buck5_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 2500000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 3300000, i32 16, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck6\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@buck6_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 4, i32 64, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck7\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@buck7_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 4, i32 128, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@bd71828_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71828_ldo_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 49, i32 50000 }, %struct.linear_range { i32 3300000, i32 50, i32 63, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@bd71828_ldo6_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rohm,dvs-run-voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-idle-voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rohm,dvs-suspend-voltage\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rohm,dvs-lpsr-voltage\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"bd71828_regulator\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 775, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 777, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"bd71828_rdata\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 175, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 754, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 765, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 178, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 179, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 180, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"bd71828_dvs_buck_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 149, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"bd71828_buck1267_volts\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 68, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"bd71828_ramp_delay\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 93, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"buck1_inits\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 32, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 224, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 225, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"buck2_inits\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 44, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 265, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 266, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"bd71828_buck_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 140, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"bd71828_buck3_volts\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 73, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 306, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 307, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"bd71828_buck4_volts\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 78, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 347, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 348, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"bd71828_buck5_volts\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 83, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 388, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 389, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"buck6_inits\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 429, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 430, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"buck7_inits\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 60, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 470, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 471, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"bd71828_ldo_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 160, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"bd71828_ldo_volts\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 88, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 510, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 511, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 550, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 551, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 591, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 592, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 631, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 632, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 673, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 674, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"bd71828_ldo6_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 169, i32 35 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 693, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 694, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 114, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 115, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 116, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [41 x i8] c"../drivers/regulator/bd71828-regulator.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 117, i32 12 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd71828_regulator_exit, ptr @__initcall__kmod_bd71828_regulator__288_782_bd71828_regulator_init6, ptr @bd71828_probe._entry, ptr @bd71828_probe._entry.6, ptr @bd71828_probe._entry_ptr, ptr @bd71828_probe._entry_ptr.8, ptr @bd71828_regulator_exit, ptr @bd71828_regulator, ptr @.str, ptr @bd71828_rdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @bd71828_dvs_buck_ops, ptr @bd71828_buck1267_volts, ptr @bd71828_ramp_delay, ptr @buck1_inits, ptr @.str.12, ptr @.str.13, ptr @buck2_inits, ptr @.str.14, ptr @.str.15, ptr @bd71828_buck_ops, ptr @bd71828_buck3_volts, ptr @.str.16, ptr @.str.17, ptr @bd71828_buck4_volts, ptr @.str.18, ptr @.str.19, ptr @bd71828_buck5_volts, ptr @.str.20, ptr @.str.21, ptr @buck6_inits, ptr @.str.22, ptr @.str.23, ptr @buck7_inits, ptr @.str.24, ptr @.str.25, ptr @bd71828_ldo_ops, ptr @bd71828_ldo_volts, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @bd71828_ldo6_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_regulator to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_rdata to i32), i32 4592, i32 5728, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_dvs_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_buck1267_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_ramp_delay to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_buck3_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_buck4_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_buck5_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck6_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck7_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_ldo_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_ldo6_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd71828_regulator, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd71828_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd71828_regulator) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %1 = getelementptr inbounds i8, ptr %config, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %5 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %config, align 4
  %call = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #6
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %0, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %entry.for.body_crit_edge
  %i.064 = phi i32 [ %inc34, %for.inc33.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.bd71828_regulator_data], ptr @bd71828_rdata, i32 0, i32 %i.064
  %call6 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.body
  %7 = lshr i32 99, %i.064
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1462.not = icmp eq i32 %8, 0
  br i1 %cmp1462.not, label %for.cond13.preheader.for.inc33_crit_edge, label %for.body15.lr.ph

for.cond13.preheader.for.inc33_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %reg_init_amnt = getelementptr [14 x %struct.bd71828_regulator_data], ptr @bd71828_rdata, i32 0, i32 %i.064, i32 3
  %9 = ptrtoint ptr %reg_init_amnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_init_amnt, align 4
  %reg_inits = getelementptr [14 x %struct.bd71828_regulator_data], ptr @bd71828_rdata, i32 0, i32 %i.064, i32 2
  %11 = ptrtoint ptr %reg_inits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_inits, align 8
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 1)
  br label %for.body15

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %14) #9
  %15 = ptrtoint ptr %call6 to i32
  br label %cleanup36

for.cond13:                                       ; preds = %for.body15
  %inc = add nuw nsw i32 %j.063, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.cond13.for.inc33_crit_edge, label %for.cond13.for.body15_crit_edge

for.cond13.for.body15_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.cond13.for.inc33_crit_edge:                   ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

for.body15:                                       ; preds = %for.cond13.for.body15_crit_edge, %for.body15.lr.ph
  %j.063 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc, %for.cond13.for.body15_crit_edge ]
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %arrayidx17 = getelementptr %struct.reg_init, ptr %12, i32 %j.063
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %mask = getelementptr %struct.reg_init, ptr %12, i32 %j.063, i32 1
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %val = getelementptr %struct.reg_init, ptr %12, i32 %j.063, i32 2
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %for.cond13, label %do.end27

do.end27:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %25) #9
  br label %cleanup36

for.inc33:                                        ; preds = %for.cond13.for.inc33_crit_edge, %for.cond13.preheader.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.064, 1
  %exitcond71.not = icmp eq i32 %inc34, 14
  br i1 %exitcond71.not, label %for.inc33.cleanup36_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc33.cleanup36_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

cleanup36:                                        ; preds = %for.inc33.cleanup36_crit_edge, %do.end27, %do.end, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ -19, %entry.cleanup36_crit_edge ], [ %call.i, %do.end27 ], [ %15, %do.end ], [ 0, %for.inc33.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buck_set_hw_dvs_levels(ptr noundef %np, ptr noundef %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvs = getelementptr inbounds %struct.bd71828_regulator_data, ptr %desc, i32 0, i32 1
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @rohm_regulator_set_dvs_levels(ptr noundef %dvs, ptr noundef %np, ptr noundef %desc, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldo6_parse_dt(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %uv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv) #6
  %0 = ptrtoint ptr %uv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uv, align 4
  %regmap1 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %1 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap1, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 34
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef nonnull %uv, i32 noundef 1, i32 noundef 0) #6
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.end4
    i32 -22, label %entry.for.inc_crit_edge
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %. = sext i1 %tobool5.not to i32
  %7 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_reg, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %8, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end4.for.inc_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call.i.i.1 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.39, ptr noundef nonnull %uv, i32 noundef 1, i32 noundef 0) #6
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i.1, i32 0) #6
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %9, label %for.inc.cleanup_crit_edge [
    i32 0, label %if.end4.1
    i32 -22, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.1:                                        ; preds = %for.inc
  %11 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.1 = icmp ne i32 %12, 0
  %..1 = sext i1 %tobool5.not.1 to i32
  %13 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg, align 4
  %call.i.1 = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %14, i32 noundef 2, i32 noundef %..1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool10.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool10.not.1, label %if.end4.1.for.inc.1_crit_edge, label %if.end4.1.cleanup_crit_edge

if.end4.1.cleanup_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call.i.i.2 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.40, ptr noundef nonnull %uv, i32 noundef 1, i32 noundef 0) #6
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.2, i32 0) #6
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %15, label %for.inc.1.cleanup_crit_edge [
    i32 0, label %if.end4.2
    i32 -22, label %for.inc.1.for.inc.2_crit_edge
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.2:                                        ; preds = %for.inc.1
  %17 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.2 = icmp ne i32 %18, 0
  %..2 = sext i1 %tobool5.not.2 to i32
  %19 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_reg, align 4
  %call.i.2 = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %20, i32 noundef 4, i32 noundef %..2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool10.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool10.not.2, label %if.end4.2.for.inc.2_crit_edge, label %if.end4.2.cleanup_crit_edge

if.end4.2.cleanup_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.2.for.inc.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call.i.i.3 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.41, ptr noundef nonnull %uv, i32 noundef 1, i32 noundef 0) #6
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i.3, i32 0) #6
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %21, label %for.inc.2.cleanup_crit_edge [
    i32 0, label %if.end4.3
    i32 -22, label %for.inc.2.for.inc.3_crit_edge
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.3:                                        ; preds = %for.inc.2
  %23 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.3 = icmp ne i32 %24, 0
  %..3 = sext i1 %tobool5.not.3 to i32
  %25 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enable_reg, align 4
  %call.i.3 = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %26, i32 noundef 1, i32 noundef %..3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool10.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool10.not.3, label %if.end4.3.for.inc.3_crit_edge, label %if.end4.3.cleanup_crit_edge

if.end4.3.cleanup_crit_edge:                      ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.3.for.inc.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end4.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.end4.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end4.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.end4.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %entry.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %9, %for.inc.cleanup_crit_edge ], [ %call.i.1, %if.end4.1.cleanup_crit_edge ], [ %15, %for.inc.1.cleanup_crit_edge ], [ %call.i.2, %if.end4.2.cleanup_crit_edge ], [ %21, %for.inc.2.cleanup_crit_edge ], [ %call.i.3, %if.end4.3.cleanup_crit_edge ], [ 0, %for.inc.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rohm_regulator_set_dvs_levels(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_bd71828_regulator__288_782_bd71828_regulator_init6, !1, !"__initcall__kmod_bd71828_regulator__288_782_bd71828_regulator_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bd71828-regulator.c", i32 782, i32 1}
!2 = !{ptr @__exitcall_bd71828_regulator_exit, !1, !"__exitcall_bd71828_regulator_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bd71828-regulator.c", i32 784, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bd71828-regulator.c", i32 785, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bd71828-regulator.c", i32 786, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bd71828-regulator.c", i32 787, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bd71828-regulator.c", i32 777, i32 11}
!14 = !{ptr @bd71828_regulator, !15, !"bd71828_regulator", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bd71828-regulator.c", i32 775, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/bd71828-regulator.c", i32 754, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bd71828_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bd71828_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/bd71828-regulator.c", i32 765, i32 5}
!26 = !{ptr @bd71828_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bd71828_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bd71828-regulator.c", i32 178, i32 12}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/bd71828-regulator.c", i32 179, i32 16}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/bd71828-regulator.c", i32 180, i32 23}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/bd71828-regulator.c", i32 224, i32 12}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/bd71828-regulator.c", i32 225, i32 16}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/bd71828-regulator.c", i32 265, i32 12}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/bd71828-regulator.c", i32 266, i32 16}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/bd71828-regulator.c", i32 306, i32 12}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/bd71828-regulator.c", i32 307, i32 16}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/bd71828-regulator.c", i32 347, i32 12}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/bd71828-regulator.c", i32 348, i32 16}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/bd71828-regulator.c", i32 388, i32 12}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/bd71828-regulator.c", i32 389, i32 16}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/bd71828-regulator.c", i32 429, i32 12}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/bd71828-regulator.c", i32 430, i32 16}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/bd71828-regulator.c", i32 470, i32 12}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/bd71828-regulator.c", i32 471, i32 16}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/bd71828-regulator.c", i32 510, i32 12}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/bd71828-regulator.c", i32 511, i32 16}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/bd71828-regulator.c", i32 550, i32 12}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/bd71828-regulator.c", i32 551, i32 16}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/bd71828-regulator.c", i32 591, i32 12}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/bd71828-regulator.c", i32 592, i32 16}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/bd71828-regulator.c", i32 631, i32 12}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/bd71828-regulator.c", i32 632, i32 16}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/bd71828-regulator.c", i32 673, i32 12}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/bd71828-regulator.c", i32 674, i32 16}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/bd71828-regulator.c", i32 693, i32 12}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/bd71828-regulator.c", i32 694, i32 16}
!86 = !{ptr @bd71828_rdata, !87, !"bd71828_rdata", i1 false, i1 false}
!87 = !{!"../drivers/regulator/bd71828-regulator.c", i32 175, i32 44}
!88 = !{ptr @bd71828_dvs_buck_ops, !89, !"bd71828_dvs_buck_ops", i1 false, i1 false}
!89 = !{!"../drivers/regulator/bd71828-regulator.c", i32 149, i32 35}
!90 = !{ptr @bd71828_buck1267_volts, !91, !"bd71828_buck1267_volts", i1 false, i1 false}
!91 = !{!"../drivers/regulator/bd71828-regulator.c", i32 68, i32 34}
!92 = !{ptr @bd71828_ramp_delay, !93, !"bd71828_ramp_delay", i1 false, i1 false}
!93 = !{!"../drivers/regulator/bd71828-regulator.c", i32 93, i32 27}
!94 = !{ptr @buck1_inits, !95, !"buck1_inits", i1 false, i1 false}
!95 = !{!"../drivers/regulator/bd71828-regulator.c", i32 32, i32 30}
!96 = !{ptr @buck2_inits, !97, !"buck2_inits", i1 false, i1 false}
!97 = !{!"../drivers/regulator/bd71828-regulator.c", i32 44, i32 30}
!98 = !{ptr @bd71828_buck_ops, !99, !"bd71828_buck_ops", i1 false, i1 false}
!99 = !{!"../drivers/regulator/bd71828-regulator.c", i32 140, i32 35}
!100 = !{ptr @bd71828_buck3_volts, !101, !"bd71828_buck3_volts", i1 false, i1 false}
!101 = !{!"../drivers/regulator/bd71828-regulator.c", i32 73, i32 34}
!102 = !{ptr @bd71828_buck4_volts, !103, !"bd71828_buck4_volts", i1 false, i1 false}
!103 = !{!"../drivers/regulator/bd71828-regulator.c", i32 78, i32 34}
!104 = !{ptr @bd71828_buck5_volts, !105, !"bd71828_buck5_volts", i1 false, i1 false}
!105 = !{!"../drivers/regulator/bd71828-regulator.c", i32 83, i32 34}
!106 = !{ptr @buck6_inits, !107, !"buck6_inits", i1 false, i1 false}
!107 = !{!"../drivers/regulator/bd71828-regulator.c", i32 52, i32 30}
!108 = !{ptr @buck7_inits, !109, !"buck7_inits", i1 false, i1 false}
!109 = !{!"../drivers/regulator/bd71828-regulator.c", i32 60, i32 30}
!110 = !{ptr @bd71828_ldo_ops, !111, !"bd71828_ldo_ops", i1 false, i1 false}
!111 = !{!"../drivers/regulator/bd71828-regulator.c", i32 160, i32 35}
!112 = !{ptr @bd71828_ldo_volts, !113, !"bd71828_ldo_volts", i1 false, i1 false}
!113 = !{!"../drivers/regulator/bd71828-regulator.c", i32 88, i32 34}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/bd71828-regulator.c", i32 114, i32 40}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/bd71828-regulator.c", i32 115, i32 12}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/bd71828-regulator.c", i32 116, i32 12}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/bd71828-regulator.c", i32 117, i32 12}
!122 = distinct !{null, !123, !"props", i1 false, i1 false}
!123 = !{!"../drivers/regulator/bd71828-regulator.c", i32 114, i32 28}
!124 = !{ptr @bd71828_ldo6_ops, !125, !"bd71828_ldo6_ops", i1 false, i1 false}
!125 = !{!"../drivers/regulator/bd71828-regulator.c", i32 169, i32 35}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
