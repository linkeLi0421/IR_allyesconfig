; ModuleID = '/llk/IR_all_yes/drivers/regulator/bd718x7-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bd718x7-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bd718xx_regulator_data = type { %struct.regulator_desc, %struct.rohm_dvs_config, %struct.reg_init, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.rohm_dvs_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_init = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_bd718x7_regulator__294_1852_bd718xx_regulator_init6 = internal global ptr @bd718xx_regulator_init, section ".initcall6.init", align 4
@bd718xx_regulator = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd718xx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bd718x7_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd718xx_regulator_exit = internal global ptr @bd718xx_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [77 x i8] c"bd718x7_regulator.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [71 x i8] c"bd718x7_regulator.description=BD71837/BD71847 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [59 x i8] c"bd718x7_regulator.file=drivers/regulator/bd718x7-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [30 x i8] c"bd718x7_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [46 x i8] c"bd718x7_regulator.alias=platform:bd718xx-pmic\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bd718xx-pmic\00", [19 x i8] zeroinitializer }, align 32
@bd718x7_pmic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd71837-pmic\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"bd71847-pmic\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No MFD driver data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd718xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/bd718x7-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr = internal global ptr @bd718xx_probe._entry, section ".printk_index", align 4
@bd71837_regulators = internal global { [15 x %struct.bd718xx_regulator_data], [1304 x i8] } { [15 x %struct.bd718xx_regulator_data] [%struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 0, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 13, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 160, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 7, i32 13, i32 63, i32 0, i32 14, i32 63, i32 0, i32 15, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 5, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 1, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 180, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 3, i32 16, i32 63, i32 0, i32 17, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 6, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.34, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 2, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 18, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 180, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 1, i32 18, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 7, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.36, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 3, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 19, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 180, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 1, i32 19, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 8, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.38, i8 0, ptr @.str.30, ptr null, i32 4, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71837_buck5_volts, ptr @bd71837_buck5_volt_range_sel, i32 6, ptr null, ptr null, i32 20, i32 128, i32 20, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 160, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 9, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.30, ptr null, i32 5, i8 0, i32 4, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71837_buck6_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 21, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 10, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.30, ptr null, i32 6, i8 0, i32 8, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @bd718xx_3rd_nodvs_buck_volts, ptr null, i32 0, i32 0, i32 22, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 220, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 11, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.30, ptr null, i32 7, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_4th_nodvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 23, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 12, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.30, ptr null, i32 8, i8 0, i32 8, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo1_volts, ptr @bd718xx_ldo1_volt_range_sel, i32 2, ptr null, ptr null, i32 24, i32 32, i32 24, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 440, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 24, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.30, ptr null, i32 9, i8 0, i32 2, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_2_volts, ptr null, i32 0, i32 0, i32 25, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 370, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 25, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.49, ptr null, ptr @.str.50, i8 0, ptr @.str.30, ptr null, i32 10, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo3_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 26, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 310, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 26, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.51, ptr null, ptr @.str.52, i8 0, ptr @.str.30, ptr null, i32 11, i8 0, i32 10, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo4_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 27, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 27, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.53, ptr @.str.39, ptr @.str.54, i8 0, ptr @.str.30, ptr null, i32 12, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71837_ldo5_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 310, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 28, i32 128, i32 128 }, ptr @bd71837_ldo5_inits, i32 1 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.55, ptr @.str.41, ptr @.str.56, i8 0, ptr @.str.30, ptr null, i32 13, i8 0, i32 10, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo6_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 29, i32 128, i32 128 }, ptr @bd71837_ldo6_inits, i32 1 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.57, ptr null, ptr @.str.58, i8 0, ptr @.str.30, ptr null, i32 14, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71837_ldo7_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 30, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 530, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 30, i32 128, i32 128 }, ptr null, i32 0 }], [1304 x i8] zeroinitializer }, align 32
@bd71837_swcontrol_ops = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd71837_pickable_range_buck_ops, ptr @bd71837_buck_regulator_ops, ptr @bd71837_buck_regulator_nolinear_ops, ptr @bd71837_buck_regulator_ops, ptr @bd71837_pickable_range_ldo_ops, ptr @bd71837_ldo_regulator_nolinear_ops, ptr @bd71837_ldo_regulator_ops, ptr @bd71837_ldo_regulator_ops, ptr @bd71837_ldo_regulator_ops, ptr @bd71837_ldo_regulator_ops, ptr @bd71837_ldo_regulator_ops], [36 x i8] zeroinitializer }, align 32
@bd71837_hwcontrol_ops = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, ptr @bd71837_buck34_ops_hwctrl, ptr @bd71837_buck34_ops_hwctrl, ptr @bd71837_pickable_range_buck_ops_hwcontrol, ptr @bd71837_buck_regulator_ops_hwcontrol, ptr @bd71837_buck_regulator_nolinear_ops_hwcontrol, ptr @bd71837_buck_regulator_ops_hwcontrol, ptr @bd71837_pickable_range_ldo_ops_hwcontrol, ptr @bd71837_ldo_regulator_nolinear_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol], [36 x i8] zeroinitializer }, align 32
@bd71847_regulators = internal global { [12 x %struct.bd718xx_regulator_data], [1024 x i8] } { [12 x %struct.bd718xx_regulator_data] [%struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 0, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 13, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 144, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 7, i32 13, i32 63, i32 0, i32 14, i32 63, i32 0, i32 15, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 5, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.30, ptr @buck_set_hw_dvs_levels, i32 1, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_dvs_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 192, ptr @bd718xx_ramp_delay, i32 4, i32 162, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config { i64 3, i32 16, i32 63, i32 0, i32 17, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_init { i32 6, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.34, i8 0, ptr @.str.30, ptr null, i32 2, i8 0, i32 24, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71847_buck3_volts, ptr @bd71847_buck3_volt_range_sel, i32 7, ptr null, ptr null, i32 20, i32 192, i32 20, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 162, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 9, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.36, i8 0, ptr @.str.30, ptr null, i32 3, i8 0, i32 8, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71847_buck4_volts, ptr @bd71847_buck4_volt_range_sel, i32 2, ptr null, ptr null, i32 21, i32 64, i32 21, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 240, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 10, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.38, i8 0, ptr @.str.30, ptr null, i32 4, i8 0, i32 8, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @bd718xx_3rd_nodvs_buck_volts, ptr null, i32 0, i32 0, i32 22, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 270, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 11, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.30, ptr null, i32 5, i8 0, i32 61, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_4th_nodvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 23, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 12, i32 2, i32 2 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.30, ptr null, i32 8, i8 0, i32 8, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo1_volts, ptr @bd718xx_ldo1_volt_range_sel, i32 2, ptr null, ptr null, i32 24, i32 32, i32 24, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 440, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 24, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.30, ptr null, i32 9, i8 0, i32 2, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_2_volts, ptr null, i32 0, i32 0, i32 25, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 370, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 25, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.49, ptr null, ptr @.str.50, i8 0, ptr @.str.30, ptr null, i32 10, i8 0, i32 16, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo3_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 26, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 310, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 26, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.51, ptr null, ptr @.str.52, i8 0, ptr @.str.30, ptr null, i32 11, i8 0, i32 10, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo4_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 27, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 27, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.53, ptr null, ptr @.str.54, i8 0, ptr @.str.30, ptr null, i32 12, i8 0, i32 32, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd71847_ldo5_volts, ptr @bd71847_ldo5_volt_range_sel, i32 2, ptr null, ptr null, i32 28, i32 32, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 530, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 28, i32 128, i32 128 }, ptr null, i32 0 }, %struct.bd718xx_regulator_data { %struct.regulator_desc { ptr @.str.55, ptr @.str.37, ptr @.str.56, i8 0, ptr @.str.30, ptr null, i32 13, i8 0, i32 10, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @bd718xx_ldo6_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.rohm_dvs_config zeroinitializer, %struct.reg_init { i32 29, i32 128, i32 128 }, ptr null, i32 0 }], [1024 x i8] zeroinitializer }, align 32
@bd71847_swcontrol_ops = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd718xx_pickable_range_buck_ops, ptr @bd718xx_pickable_range_buck_ops, ptr @bd718xx_buck_regulator_nolinear_ops, ptr @bd718xx_buck_regulator_ops, ptr @bd718xx_pickable_range_ldo_ops, ptr @bd718xx_ldo_regulator_nolinear_ops, ptr @bd718xx_ldo_regulator_ops, ptr @bd718xx_ldo_regulator_ops, ptr @bd718xx_pickable_range_ldo_ops, ptr @bd718xx_ldo_regulator_ops], [48 x i8] zeroinitializer }, align 32
@bd71847_hwcontrol_ops = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, ptr @bd718xx_pickable_range_buck_ops_hwcontrol, ptr @bd718xx_pickable_range_buck_ops_hwcontrol, ptr @bd718xx_buck_regulator_nolinear_ops_hwcontrol, ptr @bd718xx_buck_regulator_ops_hwcontrol, ptr @bd718xx_pickable_range_ldo_ops_hwcontrol, ptr @bd718xx_ldo_regulator_nolinear_ops_hwcontrol, ptr @bd718xx_ldo_regulator_ops_hwcontrol, ptr @bd718xx_ldo_regulator_ops_hwcontrol, ptr @bd718xx_ldo5_ops_hwstate, ptr @bd718xx_ldo_regulator_ops_hwcontrol], [48 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported chip type\0A\00", [41 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.8 = internal global ptr @bd718xx_probe._entry.6, section ".printk_index", align 4
@bd718xx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to unlock PMIC (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.11 = internal global ptr @bd718xx_probe._entry.9, section ".printk_index", align 4
@bd718xx_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 1, i8 -82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd718x7_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unlocked lock register 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rohm,reset-snvs-powered\00", [40 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to change reset target\0A\00", [33 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.17 = internal global ptr @bd718xx_probe._entry.15, section ".printk_index", align 4
@bd718xx_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 1, i8 -76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Changed all resets from SVNS to READY\0A\00", [57 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.21 = internal global ptr @bd718xx_probe._entry.19, section ".printk_index", align 4
@bd718xx_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to take control for (%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.24 = internal global ptr @bd718xx_probe._entry.22, section ".printk_index", align 4
@bd718xx_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1827, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Buck (%s) initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@bd718xx_probe._entry_ptr.27 = internal global ptr @bd718xx_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@bd718xx_dvs_buck_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 60, i32 10000 }, %struct.linear_range { i32 1300000, i32 61, i32 63, i32 0 }], [32 x i8] zeroinitializer }, align 32
@bd718xx_ramp_delay = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10000, i32 5000, i32 2500, i32 1250], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@bd71837_buck5_volts = internal constant { [6 x %struct.linear_range], [32 x i8] } { [6 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 1050000, i32 4, i32 5, i32 50000 }, %struct.linear_range { i32 1200000, i32 6, i32 7, i32 150000 }, %struct.linear_range { i32 675000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 1025000, i32 4, i32 5, i32 50000 }, %struct.linear_range { i32 1175000, i32 6, i32 7, i32 150000 }], [32 x i8] zeroinitializer }, align 32
@bd71837_buck5_volt_range_sel = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 128, i32 128, i32 128], [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck6\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@bd71837_buck6_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 3, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck7\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@bd718xx_3rd_nodvs_buck_volts = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1605000, i32 1695000, i32 1755000, i32 1800000, i32 1845000, i32 1905000, i32 1950000, i32 1995000], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck8\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK8\00", [26 x i8] zeroinitializer }, align 32
@bd718xx_4th_nodvs_buck_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 60, i32 10000 }], [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@bd718xx_ldo1_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 1600000, i32 0, i32 3, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@bd718xx_ldo1_volt_range_sel = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@ldo_2_volts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 900000, i32 800000], [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@bd718xx_ldo3_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 15, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@bd718xx_ldo4_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 9, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@bd71837_ldo5_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 15, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@bd71837_ldo5_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 36, i32 16, i32 16 }], [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@bd718xx_ldo6_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 9, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@bd71837_ldo6_inits = internal constant { [1 x %struct.reg_init], [20 x i8] } { [1 x %struct.reg_init] [%struct.reg_init { i32 36, i32 32, i32 32 }], [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@bd71837_ldo7_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 15, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@bd718xx_dvs_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_pickable_range_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd71837_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_buck_regulator_nolinear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_pickable_range_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd71837_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_ldo_regulator_nolinear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_ldo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718x7_xvp_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported Under Voltage protection level\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bd718x7_xvp_sanity_check\00", [39 x i8] zeroinitializer }, align 32
@bd718x7_xvp_sanity_check._entry_ptr = internal global ptr @bd718x7_xvp_sanity_check._entry, section ".printk_index", align 4
@bd718xx_dvs_buck_regulator_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_buck34_ops_hwctrl = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @bd71837_get_buck34_enable_hwctrl, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_pickable_range_buck_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd71837_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_buck_regulator_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_buck_regulator_nolinear_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_pickable_range_ldo_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd71837_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_ldo_regulator_nolinear_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71837_ldo_regulator_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rohm_regulator_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd71847_buck3_volts = internal constant { [7 x %struct.linear_range], [48 x i8] } { [7 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 1050000, i32 4, i32 5, i32 50000 }, %struct.linear_range { i32 1200000, i32 6, i32 7, i32 150000 }, %struct.linear_range { i32 550000, i32 0, i32 7, i32 50000 }, %struct.linear_range { i32 675000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 1025000, i32 4, i32 5, i32 50000 }, %struct.linear_range { i32 1175000, i32 6, i32 7, i32 150000 }], [48 x i8] zeroinitializer }, align 32
@bd71847_buck3_volt_range_sel = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 64, i32 128, i32 128, i32 128], [36 x i8] zeroinitializer }, align 32
@bd71847_buck4_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 2600000, i32 0, i32 3, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@bd71847_buck4_volt_range_sel = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 64], [24 x i8] zeroinitializer }, align 32
@bd71847_ldo5_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 15, i32 100000 }, %struct.linear_range { i32 800000, i32 0, i32 15, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@bd71847_ldo5_volt_range_sel = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 32], [24 x i8] zeroinitializer }, align 32
@bd718xx_pickable_range_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_pickable_regmap, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_buck_regulator_nolinear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_pickable_range_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_ldo_regulator_nolinear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_ldo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@voltage_change_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read voltage monitoring state\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage_change_prepare\00", [41 x i8] zeroinitializer }, align 32
@voltage_change_prepare._entry_ptr = internal global ptr @voltage_change_prepare._entry, section ".printk_index", align 4
@voltage_change_prepare._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to stop voltage monitoring\0A\00", [61 x i8] zeroinitializer }, align 32
@voltage_change_prepare._entry_ptr.65 = internal global ptr @voltage_change_prepare._entry.63, section ".printk_index", align 4
@voltage_change_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to re-enable voltage monitoring (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"voltage_change_done\00", [44 x i8] zeroinitializer }, align 32
@voltage_change_done._entry_ptr = internal global ptr @voltage_change_done._entry, section ".printk_index", align 4
@bd718xx_pickable_range_buck_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_pickable_regmap, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_buck_regulator_nolinear_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_buck_regulator_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_buck_ovp, ptr @bd718x7_set_buck_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_pickable_range_ldo_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_ldo_regulator_nolinear_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_ldo_regulator_ops_hwcontrol = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_restricted, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @always_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bd718xx_ldo5_ops_hwstate = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @bd718xx_set_voltage_sel_pickable_restricted, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bd718x7_set_ldo_uvp, ptr null, ptr null, ptr null, ptr null, ptr @never_enabled_by_hwstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@get_special_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find regulators node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_special_regulators\00", [41 x i8] zeroinitializer }, align 32
@get_special_regulators._entry_ptr = internal global ptr @get_special_regulators._entry, section ".printk_index", align 4
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rohm,no-regulator-enable-control\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rohm,fb-pull-up-microvolt\00", [38 x i8] zeroinitializer }, align 32
@mark_hw_controlled.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 1, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mark_hw_controlled\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator %d runlevel controlled\0A\00", [62 x i8] zeroinitializer }, align 32
@mark_hw_controlled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 1504, ptr @.str.75, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad regulator node\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mark_hw_controlled._entry_ptr = internal global ptr @mark_hw_controlled._entry, section ".printk_index", align 4
@setup_feedback_loop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Looking at node '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setup_feedback_loop\00", [44 x i8] zeroinitializer }, align 32
@setup_feedback_loop._entry_ptr = internal global ptr @setup_feedback_loop._entry, section ".printk_index", align 4
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rohm,feedback-pull-up-r1-ohms\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rohm,feedback-pull-up-r2-ohms\00", [34 x i8] zeroinitializer }, align 32
@setup_feedback_loop.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 1, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: old range min %d, step %d\0A\00", [33 x i8] zeroinitializer }, align 32
@setup_feedback_loop.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str.3, ptr @.str.81, i8 1, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"new range min %d, step %d\0A\00", [37 x i8] zeroinitializer }, align 32
@setup_feedback_loop.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str.3, ptr @.str.82, i8 1, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"regulator '%s' has FB pull-up configured\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"bd718xx_regulator\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1844, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1846, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"bd718x7_pmic_id\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1837, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1692, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"bd71837_regulators\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1080, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"bd71837_swcontrol_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1052, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"bd71837_hwcontrol_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1063, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"bd71847_regulators\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 730, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"bd71847_swcontrol_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 706, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"bd71847_hwcontrol_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 715, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1710, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1719, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1722, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1727, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1742, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1745, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1784, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1813, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1825, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1083, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1084, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1085, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"bd718xx_dvs_buck_volts\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 265, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"bd718xx_ramp_delay\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 94, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1121, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1122, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1156, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1157, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1189, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1190, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1222, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1223, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"bd71837_buck5_volts\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 276, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant [29 x i8] c"bd71837_buck5_volt_range_sel\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 291, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1249, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1250, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"bd71837_buck6_volts\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 326, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1273, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1274, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant [29 x i8] c"bd718xx_3rd_nodvs_buck_volts\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 342, i32 27 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1295, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1296, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant [29 x i8] c"bd718xx_4th_nodvs_buck_volts\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 350, i32 34 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1319, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1320, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"bd718xx_ldo1_volts\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 358, i32 34 }
@___asan_gen_.258 = private unnamed_addr constant [28 x i8] c"bd718xx_ldo1_volt_range_sel\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 363, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1345, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1346, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant [12 x i8] c"ldo_2_volts\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 369, i32 27 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1367, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1368, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"bd718xx_ldo3_volts\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 377, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1390, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1391, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"bd718xx_ldo4_volts\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 385, i32 34 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1413, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1414, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"bd71837_ldo5_volts\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 393, i32 34 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"bd71837_ldo5_inits\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 679, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1440, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1441, i32 16 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"bd718xx_ldo6_volts\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 412, i32 34 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"bd71837_ldo6_inits\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 687, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1467, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1468, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c"bd71837_ldo7_volts\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 420, i32 34 }
@___asan_gen_.321 = private unnamed_addr constant [31 x i8] c"bd718xx_dvs_buck_regulator_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [32 x i8] c"bd71837_pickable_range_buck_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"bd71837_buck_regulator_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [36 x i8] c"bd71837_buck_regulator_nolinear_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [31 x i8] c"bd71837_pickable_range_ldo_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [35 x i8] c"bd71837_ldo_regulator_nolinear_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [26 x i8] c"bd71837_ldo_regulator_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 445, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [41 x i8] c"bd718xx_dvs_buck_regulator_ops_hwcontrol\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 661, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"bd71837_buck34_ops_hwctrl\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 647, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant [42 x i8] c"bd71837_pickable_range_buck_ops_hwcontrol\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 616, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [37 x i8] c"bd71837_buck_regulator_ops_hwcontrol\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 633, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [46 x i8] c"bd71837_buck_regulator_nolinear_ops_hwcontrol\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 638, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant [41 x i8] c"bd71837_pickable_range_ldo_ops_hwcontrol\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 610, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant [45 x i8] c"bd71837_ldo_regulator_nolinear_ops_hwcontrol\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 628, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant [36 x i8] c"bd71837_ldo_regulator_ops_hwcontrol\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 623, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c"bd71847_buck3_volts\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 298, i32 34 }
@___asan_gen_.378 = private unnamed_addr constant [29 x i8] c"bd71847_buck3_volt_range_sel\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 311, i32 27 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c"bd71847_buck4_volts\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 315, i32 34 }
@___asan_gen_.384 = private unnamed_addr constant [29 x i8] c"bd71847_buck4_volt_range_sel\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 320, i32 27 }
@___asan_gen_.387 = private unnamed_addr constant [19 x i8] c"bd71847_ldo5_volts\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 401, i32 34 }
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"bd71847_ldo5_volt_range_sel\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 406, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant [32 x i8] c"bd718xx_pickable_range_buck_ops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [36 x i8] c"bd718xx_buck_regulator_nolinear_ops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"bd718xx_buck_regulator_ops\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [31 x i8] c"bd718xx_pickable_range_ldo_ops\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [35 x i8] c"bd718xx_ldo_regulator_nolinear_ops\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"bd718xx_ldo_regulator_ops\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 195, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 209, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 145, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant [42 x i8] c"bd718xx_pickable_range_buck_ops_hwcontrol\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 580, i32 1 }
@___asan_gen_.438 = private unnamed_addr constant [46 x i8] c"bd718xx_buck_regulator_nolinear_ops_hwcontrol\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 602, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant [37 x i8] c"bd718xx_buck_regulator_ops_hwcontrol\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 597, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [41 x i8] c"bd718xx_pickable_range_ldo_ops_hwcontrol\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 565, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [45 x i8] c"bd718xx_ldo_regulator_nolinear_ops_hwcontrol\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 592, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [36 x i8] c"bd718xx_ldo_regulator_ops_hwcontrol\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 587, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant [25 x i8] c"bd718xx_ldo5_ops_hwstate\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 572, i32 35 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1648, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1652, i32 33 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1655, i32 34 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1501, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1504, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1579, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1585, i32 34 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1593, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1618, i32 5 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1621, i32 5 }
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [41 x i8] c"../drivers/regulator/bd718x7-regulator.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1626, i32 3 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bd718xx_regulator_exit, ptr @__initcall__kmod_bd718x7_regulator__294_1852_bd718xx_regulator_init6, ptr @bd718x7_xvp_sanity_check._entry, ptr @bd718x7_xvp_sanity_check._entry_ptr, ptr @bd718xx_probe._entry, ptr @bd718xx_probe._entry.15, ptr @bd718xx_probe._entry.19, ptr @bd718xx_probe._entry.22, ptr @bd718xx_probe._entry.25, ptr @bd718xx_probe._entry.6, ptr @bd718xx_probe._entry.9, ptr @bd718xx_probe._entry_ptr, ptr @bd718xx_probe._entry_ptr.11, ptr @bd718xx_probe._entry_ptr.17, ptr @bd718xx_probe._entry_ptr.21, ptr @bd718xx_probe._entry_ptr.24, ptr @bd718xx_probe._entry_ptr.27, ptr @bd718xx_probe._entry_ptr.8, ptr @bd718xx_regulator_exit, ptr @get_special_regulators._entry, ptr @get_special_regulators._entry_ptr, ptr @mark_hw_controlled._entry, ptr @mark_hw_controlled._entry_ptr, ptr @setup_feedback_loop._entry, ptr @setup_feedback_loop._entry_ptr, ptr @voltage_change_done._entry, ptr @voltage_change_done._entry_ptr, ptr @voltage_change_prepare._entry, ptr @voltage_change_prepare._entry.63, ptr @voltage_change_prepare._entry_ptr, ptr @voltage_change_prepare._entry_ptr.65, ptr @bd718xx_regulator, ptr @.str, ptr @bd718x7_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bd71837_regulators, ptr @bd71837_swcontrol_ops, ptr @bd71837_hwcontrol_ops, ptr @bd71847_regulators, ptr @bd71847_swcontrol_ops, ptr @bd71847_hwcontrol_ops, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @bd718xx_dvs_buck_volts, ptr @bd718xx_ramp_delay, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @bd71837_buck5_volts, ptr @bd71837_buck5_volt_range_sel, ptr @.str.39, ptr @.str.40, ptr @bd71837_buck6_volts, ptr @.str.41, ptr @.str.42, ptr @bd718xx_3rd_nodvs_buck_volts, ptr @.str.43, ptr @.str.44, ptr @bd718xx_4th_nodvs_buck_volts, ptr @.str.45, ptr @.str.46, ptr @bd718xx_ldo1_volts, ptr @bd718xx_ldo1_volt_range_sel, ptr @.str.47, ptr @.str.48, ptr @ldo_2_volts, ptr @.str.49, ptr @.str.50, ptr @bd718xx_ldo3_volts, ptr @.str.51, ptr @.str.52, ptr @bd718xx_ldo4_volts, ptr @.str.53, ptr @.str.54, ptr @bd71837_ldo5_volts, ptr @bd71837_ldo5_inits, ptr @.str.55, ptr @.str.56, ptr @bd718xx_ldo6_volts, ptr @bd71837_ldo6_inits, ptr @.str.57, ptr @.str.58, ptr @bd71837_ldo7_volts, ptr @bd718xx_dvs_buck_regulator_ops, ptr @bd71837_pickable_range_buck_ops, ptr @bd71837_buck_regulator_ops, ptr @bd71837_buck_regulator_nolinear_ops, ptr @bd71837_pickable_range_ldo_ops, ptr @bd71837_ldo_regulator_nolinear_ops, ptr @bd71837_ldo_regulator_ops, ptr @.str.59, ptr @.str.60, ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, ptr @bd71837_buck34_ops_hwctrl, ptr @bd71837_pickable_range_buck_ops_hwcontrol, ptr @bd71837_buck_regulator_ops_hwcontrol, ptr @bd71837_buck_regulator_nolinear_ops_hwcontrol, ptr @bd71837_pickable_range_ldo_ops_hwcontrol, ptr @bd71837_ldo_regulator_nolinear_ops_hwcontrol, ptr @bd71837_ldo_regulator_ops_hwcontrol, ptr @bd71847_buck3_volts, ptr @bd71847_buck3_volt_range_sel, ptr @bd71847_buck4_volts, ptr @bd71847_buck4_volt_range_sel, ptr @bd71847_ldo5_volts, ptr @bd71847_ldo5_volt_range_sel, ptr @bd718xx_pickable_range_buck_ops, ptr @bd718xx_buck_regulator_nolinear_ops, ptr @bd718xx_buck_regulator_ops, ptr @bd718xx_pickable_range_ldo_ops, ptr @bd718xx_ldo_regulator_nolinear_ops, ptr @bd718xx_ldo_regulator_ops, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @bd718xx_pickable_range_buck_ops_hwcontrol, ptr @bd718xx_buck_regulator_nolinear_ops_hwcontrol, ptr @bd718xx_buck_regulator_ops_hwcontrol, ptr @bd718xx_pickable_range_ldo_ops_hwcontrol, ptr @bd718xx_ldo_regulator_nolinear_ops_hwcontrol, ptr @bd718xx_ldo_regulator_ops_hwcontrol, ptr @bd718xx_ldo5_ops_hwstate, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_regulator to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718x7_pmic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_regulators to i32), i32 5160, i32 6464, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_swcontrol_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_hwcontrol_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_regulators to i32), i32 4128, i32 5152, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_swcontrol_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_hwcontrol_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_dvs_buck_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ramp_delay to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck5_volts to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck5_volt_range_sel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck6_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_3rd_nodvs_buck_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_4th_nodvs_buck_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo1_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo1_volt_range_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_2_volts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo3_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo4_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo5_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo5_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo6_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo6_inits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo7_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_dvs_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_pickable_range_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck_regulator_nolinear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_pickable_range_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo_regulator_nolinear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718x7_xvp_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck34_ops_hwctrl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_pickable_range_buck_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck_regulator_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_buck_regulator_nolinear_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_pickable_range_ldo_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo_regulator_nolinear_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71837_ldo_regulator_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_buck3_volts to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_buck3_volt_range_sel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_buck4_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_buck4_volt_range_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_ldo5_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71847_ldo5_volt_range_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_pickable_range_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_buck_regulator_nolinear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_pickable_range_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo_regulator_nolinear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_change_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_change_prepare._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_change_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_pickable_range_buck_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_buck_regulator_nolinear_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_buck_regulator_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_pickable_range_ldo_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo_regulator_nolinear_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo_regulator_ops_hwcontrol to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718xx_ldo5_ops_hwstate to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_special_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_hw_controlled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_feedback_loop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718xx_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd718xx_regulator, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd718xx_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd718xx_regulator) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718xx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %omit_enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %omit_enable) #7
  %2 = ptrtoint ptr %omit_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %omit_enable, align 4, !annotation !286
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup138

if.end:                                           ; preds = %entry
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end5 [
    i32 6, label %if.end.sw.epilog_crit_edge
    i32 7, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup138

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %reg_data.0 = phi ptr [ @bd71847_regulators, %sw.bb2 ], [ @bd71837_regulators, %if.end.sw.epilog_crit_edge ]
  %num_reg_data.0 = phi i32 [ 12, %sw.bb2 ], [ 15, %if.end.sw.epilog_crit_edge ]
  %swops.0 = phi ptr [ @bd71847_swcontrol_ops, %sw.bb2 ], [ @bd71837_swcontrol_ops, %if.end.sw.epilog_crit_edge ]
  %hwops.0 = phi ptr [ @bd71847_hwcontrol_ops, %sw.bb2 ], [ @bd71837_hwcontrol_ops, %if.end.sw.epilog_crit_edge ]
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %call, i32 noundef 47, i32 noundef 17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %do.body14, label %do.end12

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i) #10
  br label %cleanup138

do.body14:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd718xx_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd718xx_probe, %if.end25)) #7
          to label %if.then20 [label %if.end25], !srcloc !287

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd718xx_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 47) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.body14
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i207 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i207, null
  br i1 %tobool.i.not, label %if.then31, label %if.end25.if.end60_crit_edge

if.end25.if.end60_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then31:                                        ; preds = %if.end25
  %call.i208 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %call, i32 noundef 32, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool33.not = icmp eq i32 %call.i208, 0
  br i1 %tobool33.not, label %do.body40, label %do.end37

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup138

do.body40:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd718xx_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bd718xx_probe, %if.end60)) #7
          to label %if.then54 [label %if.end60], !srcloc !287

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd718xx_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %do.body40, %if.end25.if.end60_crit_edge
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %config, align 4
  %regmap64 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %17 = ptrtoint ptr %regmap64 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %regmap64, align 4
  %call67 = call fastcc i32 @get_special_regulators(ptr noundef %15, ptr noundef nonnull %reg_data.0, i32 noundef %num_reg_data.0, ptr noundef nonnull %omit_enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %for.cond.preheader, label %if.end60.cleanup138_crit_edge

if.end60.cleanup138_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

for.cond.preheader:                               ; preds = %if.end60
  %18 = ptrtoint ptr %omit_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %omit_enable, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc134.for.body_crit_edge, %for.cond.preheader
  %i.0225 = phi i32 [ 0, %for.cond.preheader ], [ %inc135, %for.inc134.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0225
  %and = and i32 %19, %shl
  %arrayidx = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end78, label %if.end78.thread

if.end78:                                         ; preds = %for.body
  %arrayidx76 = getelementptr ptr, ptr %swops.0, i32 %i.0225
  %20 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx76, align 4
  %ops77 = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 10
  %22 = ptrtoint ptr %ops77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ops77, align 8
  %call80 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end78.do.end85_crit_edge, label %land.lhs.true

if.end78.do.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

if.end78.thread:                                  ; preds = %for.body
  %arrayidx74 = getelementptr ptr, ptr %hwops.0, i32 %i.0225
  %23 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx74, align 4
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 10
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ops, align 8
  %call80213 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i214 = icmp ugt ptr %call80213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.end78.thread.do.end85_crit_edge, label %if.end78.thread.if.end110_crit_edge

if.end78.thread.if.end110_crit_edge:              ; preds = %if.end78.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end78.thread.do.end85_crit_edge:               ; preds = %if.end78.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

do.end85:                                         ; preds = %if.end78.thread.do.end85_crit_edge, %if.end78.do.end85_crit_edge
  %call80216 = phi ptr [ %call80213, %if.end78.thread.do.end85_crit_edge ], [ %call80, %if.end78.do.end85_crit_edge ]
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %27) #10
  %28 = ptrtoint ptr %call80216 to i32
  br label %cleanup138

land.lhs.true:                                    ; preds = %if.end78
  br i1 %tobool.i.not, label %land.lhs.true.if.then98_crit_edge, label %lor.lhs.false

land.lhs.true.if.then98_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

lor.lhs.false:                                    ; preds = %land.lhs.true
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %call80, i32 0, i32 14
  %29 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %constraints, align 8
  %always_on = getelementptr inbounds %struct.regulation_constraints, ptr %30, i32 0, i32 28
  %31 = ptrtoint ptr %always_on to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %always_on, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load)
  %.not = icmp ugt i16 %bf.load, -16385
  br i1 %.not, label %lor.lhs.false.if.end110_crit_edge, label %lor.lhs.false.if.then98_crit_edge

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then98

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then98:                                        ; preds = %lor.lhs.false.if.then98_crit_edge, %land.lhs.true.if.then98_crit_edge
  %init = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225, i32 2
  %32 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %init, align 8
  %mask = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225, i32 2, i32 1
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask, align 4
  %val = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225, i32 2, i32 2
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 8
  %call.i209 = call i32 @regmap_update_bits_base(ptr noundef nonnull %call, i32 noundef %33, i32 noundef %35, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool102.not = icmp eq i32 %call.i209, 0
  br i1 %tobool102.not, label %if.then98.if.end110_crit_edge, label %do.end106

if.then98.if.end110_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.end106:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %39) #10
  br label %cleanup138

if.end110:                                        ; preds = %if.then98.if.end110_crit_edge, %lor.lhs.false.if.end110_crit_edge, %if.end78.thread.if.end110_crit_edge
  %additional_init_amnt = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225, i32 4
  %40 = ptrtoint ptr %additional_init_amnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %additional_init_amnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp112223 = icmp sgt i32 %41, 0
  br i1 %cmp112223, label %for.body113.lr.ph, label %if.end110.for.inc134_crit_edge

if.end110.for.inc134_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc134

for.body113.lr.ph:                                ; preds = %if.end110
  %additional_inits = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data.0, i32 %i.0225, i32 3
  br label %for.body113

for.cond111:                                      ; preds = %for.body113
  %inc = add nuw nsw i32 %j.0224, 1
  %42 = ptrtoint ptr %additional_init_amnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %additional_init_amnt, align 8
  %cmp112 = icmp slt i32 %inc, %43
  br i1 %cmp112, label %for.cond111.for.body113_crit_edge, label %for.cond111.for.inc134_crit_edge

for.cond111.for.inc134_crit_edge:                 ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc134

for.cond111.for.body113_crit_edge:                ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body113

for.body113:                                      ; preds = %for.cond111.for.body113_crit_edge, %for.body113.lr.ph
  %j.0224 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc, %for.cond111.for.body113_crit_edge ]
  %44 = ptrtoint ptr %additional_inits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %additional_inits, align 4
  %arrayidx114 = getelementptr %struct.reg_init, ptr %45, i32 %j.0224
  %46 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx114, align 4
  %mask118 = getelementptr %struct.reg_init, ptr %45, i32 %j.0224, i32 1
  %48 = ptrtoint ptr %mask118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask118, align 4
  %val121 = getelementptr %struct.reg_init, ptr %45, i32 %j.0224, i32 2
  %50 = ptrtoint ptr %val121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val121, align 4
  %call.i210 = call i32 @regmap_update_bits_base(ptr noundef nonnull %call, i32 noundef %47, i32 noundef %49, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool123.not = icmp eq i32 %call.i210, 0
  br i1 %tobool123.not, label %for.cond111, label %do.end127

do.end127:                                        ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %53) #10
  br label %cleanup138

for.inc134:                                       ; preds = %for.cond111.for.inc134_crit_edge, %if.end110.for.inc134_crit_edge
  %inc135 = add nuw nsw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc135, %num_reg_data.0
  br i1 %exitcond.not, label %for.inc134.cleanup138_crit_edge, label %for.inc134.for.body_crit_edge

for.inc134.for.body_crit_edge:                    ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc134.cleanup138_crit_edge:                  ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

cleanup138:                                       ; preds = %for.inc134.cleanup138_crit_edge, %do.end127, %do.end106, %do.end85, %if.end60.cleanup138_crit_edge, %do.end37, %do.end12, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call67, %if.end60.cleanup138_crit_edge ], [ -22, %do.end5 ], [ %call.i, %do.end12 ], [ %call.i208, %do.end37 ], [ %call.i209, %do.end106 ], [ %call.i210, %do.end127 ], [ %28, %do.end85 ], [ 0, %for.inc134.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %omit_enable) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_special_regulators(ptr noundef %dev, ptr nocapture noundef %reg_data, i32 noundef %num_reg_data, ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  %uv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv) #7
  %2 = ptrtoint ptr %uv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uv, align 4, !annotation !286
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %info, align 4
  %call = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.30) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp.not43 = icmp eq ptr %call1, null
  br i1 %cmp.not43, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_reg_data)
  %cmp.not18.i = icmp eq i32 %num_reg_data, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.044 = phi ptr [ %call1, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %call.i = call ptr @of_find_property(ptr noundef nonnull %np.044, ptr noundef nonnull @.str.70, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %for.body.if.end4_crit_edge, label %if.then3

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %for.body
  br i1 %cmp.not18.i, label %if.then3.do.end10.i_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.do.end10.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then3.for.body.i_crit_edge ]
  %sub.i = add i32 %i.019.i, -1
  %of_match.i = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data, i32 %sub.i, i32 0, i32 2
  %4 = ptrtoint ptr %of_match.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match.i, align 8
  %call.i39 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %np.044, ptr noundef %5) #7
  br i1 %call.i39, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %sub.i
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %or.i = or i32 %7, %shl.i
  store i32 %or.i, ptr %info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mark_hw_controlled.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_special_regulators, %if.end4)) #7
          to label %if.then6.i [label %if.end4], !srcloc !287

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mark_hw_controlled.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %i.019.i) #7
  br label %if.end4

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.019.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %num_reg_data
  br i1 %cmp.not.i, label %for.inc.i.do.end10.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end10.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %for.inc.i.do.end10.i_crit_edge, %if.then3.do.end10.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end10.i, %if.then6.i, %if.end.i, %for.body.if.end4_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.044, ptr noundef nonnull @.str.71, ptr noundef nonnull %uv, i32 noundef 1, i32 noundef 0) #7
  %8 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %8, label %if.end4.err_out_crit_edge [
    i32 0, label %if.end10
    i32 -22, label %if.end4.for.inc_crit_edge
  ]

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4.err_out_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end10:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uv, align 4
  %call11 = call fastcc i32 @setup_feedback_loop(ptr noundef %dev, ptr noundef nonnull %np.044, ptr noundef %reg_data, i32 noundef %num_reg_data, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %if.end10.err_out_crit_edge

if.end10.err_out_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %if.end4.for.inc_crit_edge
  %call15 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.044) #7
  %cmp.not = icmp eq ptr %call15, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

err_out:                                          ; preds = %if.end10.err_out_crit_edge, %if.end4.err_out_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_out_crit_edge ], [ %8, %if.end4.err_out_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.044) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %for.end, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_out ], [ 0, %for.end ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buck_set_hw_dvs_levels(ptr noundef %np, ptr noundef %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvs = getelementptr inbounds %struct.bd718xx_regulator_data, ptr %desc, i32 0, i32 1
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @rohm_regulator_set_dvs_levels(ptr noundef %dvs, ptr noundef %np, ptr noundef %desc, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rohm_regulator_set_dvs_levels(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718x7_set_buck_ovp(ptr noundef %rdev, i32 noundef %lim_uV, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp.not.i = icmp eq i32 %severity, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uV)
  %tobool.not.i = icmp eq i32 %lim_uV, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, 7
  br i1 %cmp.i.i, label %bd718x7_get_buck_ovp_info.exit, label %if.end4

bd718x7_get_buck_ovp_info.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp22.i.i = icmp sgt i32 %3, 3
  %..i.i = select i1 %cmp22.i.i, i32 34, i32 35
  %rem.i = srem i32 %3, 4
  %mul.i = shl nsw i32 %rem.i, 1
  %add.i = or i32 %mul.i, 1
  %shl.i = shl nuw i32 1, %add.i
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  br i1 %enable, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %..i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %..i.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %bd718x7_get_buck_ovp_info.exit, %if.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i21, %if.end8 ], [ -22, %bd718x7_get_buck_ovp_info.exit ], [ -22, %do.end.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718x7_set_buck_uvp(ptr noundef %rdev, i32 noundef %lim_uV, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp.not.i = icmp eq i32 %severity, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uV)
  %tobool.not.i = icmp eq i32 %lim_uV, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, 7
  br i1 %cmp.i.i, label %bd718x7_get_buck_uvp_info.exit, label %if.end4

bd718x7_get_buck_uvp_info.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 484, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp22.i.i = icmp sgt i32 %3, 3
  %..i.i = select i1 %cmp22.i.i, i32 34, i32 35
  %rem.i = srem i32 %3, 4
  %mul.i = shl nsw i32 %rem.i, 1
  %shl.i = shl nuw i32 1, %mul.i
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  br i1 %enable, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %..i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %..i.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %bd718x7_get_buck_uvp_info.exit, %if.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i21, %if.end8 ], [ -22, %bd718x7_get_buck_uvp_info.exit ], [ -22, %do.end.i ], [ -22, %if.end.i.cleanup_crit_edge ]
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_pickable_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_set_voltage_sel_pickable_restricted(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %5(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @regulator_set_voltage_sel_pickable_regmap(ptr noundef %rdev, i32 noundef %sel) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_pickable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_pickable_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rohm_regulator_set_voltage_sel_restricted(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718x7_set_ldo_uvp(ptr noundef %rdev, i32 noundef %lim_uV, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %severity)
  %cmp.not.i = icmp eq i32 %severity, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lim_uV)
  %tobool.not.i = icmp eq i32 %lim_uV, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sub = add i32 %3, -8
  %shl = shl nuw i32 1, %sub
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  br i1 %enable, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ %call.i14, %if.end4 ], [ -22, %do.end.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @always_enabled_by_hwstate(ptr nocapture noundef readnone %rdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71837_get_buck34_enable_hwctrl(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !286
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = lshr i32 %8, 2
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718xx_set_voltage_sel_pickable_restricted(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !286
  %call = call fastcc i32 @voltage_change_prepare(ptr noundef %rdev, i32 noundef %sel, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @regulator_set_voltage_sel_pickable_regmap(ptr noundef %rdev, i32 noundef %sel) #7
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #7
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 36, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.then.i.cleanup_crit_edge ], [ %call1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @voltage_change_prepare(ptr noundef %rdev, i32 noundef %sel, ptr nocapture noundef writeonly %mask) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %6(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.then

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %ops2 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops2, align 4
  %get_voltage_sel = getelementptr inbounds %struct.regulator_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %get_voltage_sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_voltage_sel, align 4
  %call3 = tail call i32 %12(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup45_crit_edge, label %if.end

if.then.cleanup45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev, align 8
  %ops6 = getelementptr inbounds %struct.regulator_desc, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops6, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call7 = tail call i32 %18(ptr noundef %rdev, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup45_crit_edge, label %if.end10

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end10:                                         ; preds = %if.end
  %19 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev, align 8
  %ops12 = getelementptr inbounds %struct.regulator_desc, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops12, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call14 = tail call i32 %24(ptr noundef %rdev, i32 noundef %sel) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end10.cleanup45_crit_edge, label %if.end17

if.end10.cleanup45_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %call7)
  %cmp18 = icmp ugt i32 %call14, %call7
  br i1 %cmp18, label %if.then19, label %if.end17.cleanup45_crit_edge

if.end17.cleanup45_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp, align 4, !annotation !286
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %sub = add i32 %29, -8
  %shl = shl nuw i32 1, %sub
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %31, i32 noundef 36, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.then19
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp, align 4
  %and = and i32 %33, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end29, label %if.end24.cleanup.thread_crit_edge

if.end24.cleanup.thread_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end29:                                         ; preds = %if.end24
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 36, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end29.cleanup.thread_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.cleanup.thread_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end29.cleanup.thread_crit_edge, %if.end24.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  br label %cleanup45

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %.str.64.sink = phi ptr [ @.str.61, %if.then19.cleanup_crit_edge ], [ @.str.64, %if.end29.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %call21, %if.then19.cleanup_crit_edge ], [ %call.i, %if.end29.cleanup_crit_edge ]
  %dev35 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull %.str.64.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup, %cleanup.thread, %if.end17.cleanup45_crit_edge, %if.end10.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %if.then.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.3 = phi i32 [ 0, %cleanup.thread ], [ 0, %if.end17.cleanup45_crit_edge ], [ 0, %entry.cleanup45_crit_edge ], [ %call14, %if.end10.cleanup45_crit_edge ], [ %call7, %if.end.cleanup45_crit_edge ], [ %call3, %if.then.cleanup45_crit_edge ], [ %retval.0, %cleanup ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd718xx_set_voltage_sel_restricted(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !286
  %call = call fastcc i32 @voltage_change_prepare(ptr noundef %rdev, i32 noundef %sel, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %sel) #7
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #7
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 36, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.then.i.cleanup_crit_edge ], [ %call1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @never_enabled_by_hwstate(ptr nocapture noundef readnone %rdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_feedback_loop(ptr noundef %dev, ptr noundef %np, ptr nocapture noundef %reg_data, i32 noundef %num_reg_data, i32 noundef %fb_uv) unnamed_addr #2 align 64 {
entry:
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r1) #7
  %0 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r1, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r2) #7
  %1 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %r2, align 4, !annotation !286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_reg_data)
  %cmp180.not = icmp eq i32 %num_reg_data, 0
  br i1 %cmp180.not, label %entry.cleanup105_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0181 = phi i32 [ %inc103, %for.inc102.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bd718xx_regulator_data, ptr %reg_data, i32 %i.0181
  %of_match = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %of_match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_match, align 4
  %call = call zeroext i1 @of_node_name_eq(ptr noundef %np, ptr noundef %3) #7
  br i1 %call, label %do.end, label %for.inc102

do.end:                                           ; preds = %for.body
  %of_match.le = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %of_match.le to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match.le, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %5) #10
  %id = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp4 = icmp sgt i32 %7, 7
  br i1 %cmp4, label %do.end.cleanup105_crit_edge, label %if.end6

do.end.cleanup105_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end6:                                          ; preds = %do.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.78, ptr noundef nonnull %r1, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup105_crit_edge

if.end6.cleanup105_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end9:                                          ; preds = %if.end6
  %8 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end9.cleanup105_crit_edge, label %if.end12

if.end9.cleanup105_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end12:                                         ; preds = %if.end9
  %call.i.i156 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.79, ptr noundef nonnull %r2, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i156)
  %tobool14.not = icmp sgt i32 %call.i.i156, -1
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup105_crit_edge

if.end12.cleanup105_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

if.end16:                                         ; preds = %if.end12
  %n_linear_ranges = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 22
  %10 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_linear_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %if.end16.do.body80_crit_edge, label %land.lhs.true

if.end16.do.body80_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80

land.lhs.true:                                    ; preds = %if.end16
  %linear_ranges = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 20
  %12 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %linear_ranges, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true.do.body80_crit_edge, label %if.then19

land.lhs.true.do.body80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80

if.then19:                                        ; preds = %land.lhs.true
  %mul = shl i32 %11, 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #7
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.then19.cleanup105_crit_edge, label %for.cond25.preheader

if.then19.cleanup105_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

for.cond25.preheader:                             ; preds = %if.then19
  %14 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_linear_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp27165 = icmp sgt i32 %15, 0
  br i1 %cmp27165, label %for.cond25.preheader.for.body28_crit_edge, label %for.cond25.preheader.do.body80.sink.split_crit_edge

for.cond25.preheader.do.body80.sink.split_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80.sink.split

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

for.body28:                                       ; preds = %do.end77.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %j.0166 = phi i32 [ %inc, %do.end77.for.body28_crit_edge ], [ 0, %for.cond25.preheader.for.body28_crit_edge ]
  %16 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %linear_ranges, align 4
  %arrayidx30 = getelementptr %struct.linear_range, ptr %17, i32 %j.0166
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx30, align 4
  %step34 = getelementptr %struct.linear_range, ptr %17, i32 %j.0166, i32 3
  %20 = ptrtoint ptr %step34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %step34, align 4
  %sub = sub i32 %fb_uv, %19
  %22 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r2, align 4
  %mul35 = mul i32 %23, %sub
  %24 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r1, align 4
  %div = sdiv i32 %mul35, %25
  %sub36 = sub i32 %19, %div
  %add = add i32 %25, %23
  %mul37 = mul i32 %add, %21
  %div38 = sdiv i32 %mul37, %25
  %arrayidx39 = getelementptr %struct.linear_range, ptr %call.i, i32 %j.0166
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub36, ptr %arrayidx39, align 4
  %step42 = getelementptr %struct.linear_range, ptr %call.i, i32 %j.0166, i32 3
  %27 = ptrtoint ptr %step42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div38, ptr %step42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_feedback_loop.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_feedback_loop, %do.body60)) #7
          to label %if.then50 [label %do.body60], !srcloc !287

if.then50:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %linear_ranges, align 4
  %arrayidx52 = getelementptr %struct.linear_range, ptr %31, i32 %j.0166
  %32 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx52, align 4
  %step56 = getelementptr %struct.linear_range, ptr %31, i32 %j.0166, i32 3
  %34 = ptrtoint ptr %step56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %step56, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_feedback_loop.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef %29, i32 noundef %33, i32 noundef %35) #7
  br label %do.body60

do.body60:                                        ; preds = %if.then50, %for.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_feedback_loop.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_feedback_loop, %do.end77)) #7
          to label %if.then74 [label %do.end77], !srcloc !287

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_feedback_loop.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %sub36, i32 noundef %div38) #7
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %do.body60
  %inc = add nuw nsw i32 %j.0166, 1
  %36 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_linear_ranges, align 4
  %cmp27 = icmp slt i32 %inc, %37
  br i1 %cmp27, label %do.end77.for.body28_crit_edge, label %do.end77.do.body80.sink.split_crit_edge

do.end77.do.body80.sink.split_crit_edge:          ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80.sink.split

do.end77.for.body28_crit_edge:                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

do.body80.sink.split:                             ; preds = %do.end77.do.body80.sink.split_crit_edge, %for.cond25.preheader.do.body80.sink.split_crit_edge
  %38 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %linear_ranges, align 4
  br label %do.body80

do.body80:                                        ; preds = %do.body80.sink.split, %land.lhs.true.do.body80_crit_edge, %if.end16.do.body80_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_feedback_loop.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_feedback_loop, %cleanup105)) #7
          to label %if.then94 [label %cleanup105], !srcloc !287

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_feedback_loop.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef %40) #7
  br label %cleanup105

for.inc102:                                       ; preds = %for.body
  %inc103 = add nuw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc103, %num_reg_data
  br i1 %exitcond.not, label %for.inc102.cleanup105_crit_edge, label %for.inc102.for.body_crit_edge

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc102.cleanup105_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup105

cleanup105:                                       ; preds = %for.inc102.cleanup105_crit_edge, %if.then94, %do.body80, %if.then19.cleanup105_crit_edge, %if.end12.cleanup105_crit_edge, %if.end9.cleanup105_crit_edge, %if.end6.cleanup105_crit_edge, %do.end.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  %retval.3 = phi i32 [ -19, %entry.cleanup105_crit_edge ], [ %call.i.i, %if.end6.cleanup105_crit_edge ], [ %call.i.i156, %if.end12.cleanup105_crit_edge ], [ -22, %if.end9.cleanup105_crit_edge ], [ -22, %do.end.cleanup105_crit_edge ], [ -12, %if.then19.cleanup105_crit_edge ], [ 0, %do.body80 ], [ 0, %if.then94 ], [ -19, %for.inc102.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r1) #7
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !179, !181, !182, !183, !184, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !229, !231, !232, !233, !234, !235, !236, !237, !239, !241, !242, !243, !244, !246, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !266, !268, !269, !271, !272, !274, !275}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @__initcall__kmod_bd718x7_regulator__294_1852_bd718xx_regulator_init6, !1, !"__initcall__kmod_bd718x7_regulator__294_1852_bd718xx_regulator_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1852, i32 1}
!2 = !{ptr @__exitcall_bd718xx_regulator_exit, !1, !"__exitcall_bd718xx_regulator_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1854, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1855, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1856, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias299, !11, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1857, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1846, i32 11}
!14 = !{ptr @bd718xx_regulator, !15, !"bd718xx_regulator", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1844, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1692, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bd718xx_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bd718xx_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1710, i32 3}
!26 = !{ptr @bd718xx_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bd718xx_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1719, i32 3}
!30 = !{ptr @bd718xx_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bd718xx_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1722, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bd718xx_probe.__UNIQUE_ID_ddebug292, !33, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1727, i32 7}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1742, i32 4}
!40 = !{ptr @bd718xx_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bd718xx_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1745, i32 4}
!44 = !{ptr @bd718xx_probe.__UNIQUE_ID_ddebug293, !43, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1784, i32 4}
!47 = !{ptr @bd718xx_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @bd718xx_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1813, i32 5}
!51 = !{ptr @bd718xx_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bd718xx_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1825, i32 5}
!55 = !{ptr @bd718xx_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bd718xx_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1083, i32 12}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1084, i32 16}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1085, i32 23}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1121, i32 12}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1122, i32 16}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1156, i32 12}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1157, i32 16}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1189, i32 12}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1190, i32 16}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1222, i32 12}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1223, i32 16}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1249, i32 12}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1250, i32 16}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1273, i32 12}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1274, i32 16}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1295, i32 12}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1296, i32 16}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1319, i32 12}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1320, i32 16}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1345, i32 12}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1346, i32 16}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1367, i32 12}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1368, i32 16}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1390, i32 12}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1391, i32 16}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1413, i32 12}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1414, i32 16}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1440, i32 12}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1441, i32 16}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1467, i32 12}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1468, i32 16}
!119 = !{ptr @bd71837_regulators, !120, !"bd71837_regulators", i1 false, i1 false}
!120 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1080, i32 38}
!121 = !{ptr @bd718xx_dvs_buck_volts, !122, !"bd718xx_dvs_buck_volts", i1 false, i1 false}
!122 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 265, i32 34}
!123 = !{ptr @bd718xx_ramp_delay, !124, !"bd718xx_ramp_delay", i1 false, i1 false}
!124 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 94, i32 27}
!125 = !{ptr @bd71837_buck5_volts, !126, !"bd71837_buck5_volts", i1 false, i1 false}
!126 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 276, i32 34}
!127 = !{ptr @bd71837_buck5_volt_range_sel, !128, !"bd71837_buck5_volt_range_sel", i1 false, i1 false}
!128 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 291, i32 27}
!129 = !{ptr @bd71837_buck6_volts, !130, !"bd71837_buck6_volts", i1 false, i1 false}
!130 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 326, i32 34}
!131 = !{ptr @bd718xx_3rd_nodvs_buck_volts, !132, !"bd718xx_3rd_nodvs_buck_volts", i1 false, i1 false}
!132 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 342, i32 27}
!133 = !{ptr @bd718xx_4th_nodvs_buck_volts, !134, !"bd718xx_4th_nodvs_buck_volts", i1 false, i1 false}
!134 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 350, i32 34}
!135 = !{ptr @bd718xx_ldo1_volts, !136, !"bd718xx_ldo1_volts", i1 false, i1 false}
!136 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 358, i32 34}
!137 = !{ptr @bd718xx_ldo1_volt_range_sel, !138, !"bd718xx_ldo1_volt_range_sel", i1 false, i1 false}
!138 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 363, i32 27}
!139 = !{ptr @ldo_2_volts, !140, !"ldo_2_volts", i1 false, i1 false}
!140 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 369, i32 27}
!141 = !{ptr @bd718xx_ldo3_volts, !142, !"bd718xx_ldo3_volts", i1 false, i1 false}
!142 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 377, i32 34}
!143 = !{ptr @bd718xx_ldo4_volts, !144, !"bd718xx_ldo4_volts", i1 false, i1 false}
!144 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 385, i32 34}
!145 = !{ptr @bd71837_ldo5_volts, !146, !"bd71837_ldo5_volts", i1 false, i1 false}
!146 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 393, i32 34}
!147 = !{ptr @bd71837_ldo5_inits, !148, !"bd71837_ldo5_inits", i1 false, i1 false}
!148 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 679, i32 30}
!149 = !{ptr @bd718xx_ldo6_volts, !150, !"bd718xx_ldo6_volts", i1 false, i1 false}
!150 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 412, i32 34}
!151 = !{ptr @bd71837_ldo6_inits, !152, !"bd71837_ldo6_inits", i1 false, i1 false}
!152 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 687, i32 30}
!153 = !{ptr @bd71837_ldo7_volts, !154, !"bd71837_ldo7_volts", i1 false, i1 false}
!154 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 420, i32 34}
!155 = !{ptr @bd71837_swcontrol_ops, !156, !"bd71837_swcontrol_ops", i1 false, i1 false}
!156 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1052, i32 36}
!157 = !{ptr @bd718xx_dvs_buck_regulator_ops, !158, !"bd718xx_dvs_buck_regulator_ops", i1 false, i1 false}
!158 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 661, i32 1}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 445, i32 3}
!161 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @bd718x7_xvp_sanity_check._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @bd718x7_xvp_sanity_check._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @bd71837_pickable_range_buck_ops, !165, !"bd71837_pickable_range_buck_ops", i1 false, i1 false}
!165 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 616, i32 1}
!166 = !{ptr @bd71837_buck_regulator_ops, !167, !"bd71837_buck_regulator_ops", i1 false, i1 false}
!167 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 633, i32 1}
!168 = !{ptr @bd71837_buck_regulator_nolinear_ops, !169, !"bd71837_buck_regulator_nolinear_ops", i1 false, i1 false}
!169 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 638, i32 1}
!170 = !{ptr @bd71837_pickable_range_ldo_ops, !171, !"bd71837_pickable_range_ldo_ops", i1 false, i1 false}
!171 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 610, i32 1}
!172 = !{ptr @bd71837_ldo_regulator_nolinear_ops, !173, !"bd71837_ldo_regulator_nolinear_ops", i1 false, i1 false}
!173 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 628, i32 1}
!174 = !{ptr @bd71837_ldo_regulator_ops, !175, !"bd71837_ldo_regulator_ops", i1 false, i1 false}
!175 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 623, i32 1}
!176 = !{ptr @bd71837_hwcontrol_ops, !177, !"bd71837_hwcontrol_ops", i1 false, i1 false}
!177 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1063, i32 36}
!178 = !{ptr @bd718xx_dvs_buck_regulator_ops_hwcontrol, !158, !"bd718xx_dvs_buck_regulator_ops_hwcontrol", i1 false, i1 false}
!179 = !{ptr @bd71837_buck34_ops_hwctrl, !180, !"bd71837_buck34_ops_hwctrl", i1 false, i1 false}
!180 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 647, i32 35}
!181 = !{ptr @bd71837_pickable_range_buck_ops_hwcontrol, !165, !"bd71837_pickable_range_buck_ops_hwcontrol", i1 false, i1 false}
!182 = !{ptr @bd71837_buck_regulator_ops_hwcontrol, !167, !"bd71837_buck_regulator_ops_hwcontrol", i1 false, i1 false}
!183 = !{ptr @bd71837_buck_regulator_nolinear_ops_hwcontrol, !169, !"bd71837_buck_regulator_nolinear_ops_hwcontrol", i1 false, i1 false}
!184 = !{ptr @bd71837_pickable_range_ldo_ops_hwcontrol, !171, !"bd71837_pickable_range_ldo_ops_hwcontrol", i1 false, i1 false}
!185 = !{ptr @bd71837_ldo_regulator_nolinear_ops_hwcontrol, !173, !"bd71837_ldo_regulator_nolinear_ops_hwcontrol", i1 false, i1 false}
!186 = !{ptr @bd71837_ldo_regulator_ops_hwcontrol, !175, !"bd71837_ldo_regulator_ops_hwcontrol", i1 false, i1 false}
!187 = !{ptr @bd71847_regulators, !188, !"bd71847_regulators", i1 false, i1 false}
!188 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 730, i32 38}
!189 = !{ptr @bd71847_buck3_volts, !190, !"bd71847_buck3_volts", i1 false, i1 false}
!190 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 298, i32 34}
!191 = !{ptr @bd71847_buck3_volt_range_sel, !192, !"bd71847_buck3_volt_range_sel", i1 false, i1 false}
!192 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 311, i32 27}
!193 = !{ptr @bd71847_buck4_volts, !194, !"bd71847_buck4_volts", i1 false, i1 false}
!194 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 315, i32 34}
!195 = !{ptr @bd71847_buck4_volt_range_sel, !196, !"bd71847_buck4_volt_range_sel", i1 false, i1 false}
!196 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 320, i32 27}
!197 = !{ptr @bd71847_ldo5_volts, !198, !"bd71847_ldo5_volts", i1 false, i1 false}
!198 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 401, i32 34}
!199 = !{ptr @bd71847_ldo5_volt_range_sel, !200, !"bd71847_ldo5_volt_range_sel", i1 false, i1 false}
!200 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 406, i32 27}
!201 = !{ptr @bd71847_swcontrol_ops, !202, !"bd71847_swcontrol_ops", i1 false, i1 false}
!202 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 706, i32 36}
!203 = !{ptr @bd718xx_pickable_range_buck_ops, !204, !"bd718xx_pickable_range_buck_ops", i1 false, i1 false}
!204 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 580, i32 1}
!205 = !{ptr @bd718xx_buck_regulator_nolinear_ops, !206, !"bd718xx_buck_regulator_nolinear_ops", i1 false, i1 false}
!206 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 602, i32 1}
!207 = !{ptr @bd718xx_buck_regulator_ops, !208, !"bd718xx_buck_regulator_ops", i1 false, i1 false}
!208 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 597, i32 1}
!209 = !{ptr @bd718xx_pickable_range_ldo_ops, !210, !"bd718xx_pickable_range_ldo_ops", i1 false, i1 false}
!210 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 565, i32 1}
!211 = !{ptr @.str.61, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 195, i32 5}
!213 = !{ptr @.str.62, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @voltage_change_prepare._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @voltage_change_prepare._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.64, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 209, i32 5}
!218 = !{ptr @voltage_change_prepare._entry.63, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @voltage_change_prepare._entry_ptr.65, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.66, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 145, i32 4}
!222 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @voltage_change_done._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @voltage_change_done._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @bd718xx_ldo_regulator_nolinear_ops, !226, !"bd718xx_ldo_regulator_nolinear_ops", i1 false, i1 false}
!226 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 592, i32 1}
!227 = !{ptr @bd718xx_ldo_regulator_ops, !228, !"bd718xx_ldo_regulator_ops", i1 false, i1 false}
!228 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 587, i32 1}
!229 = !{ptr @bd71847_hwcontrol_ops, !230, !"bd71847_hwcontrol_ops", i1 false, i1 false}
!230 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 715, i32 36}
!231 = !{ptr @bd718xx_pickable_range_buck_ops_hwcontrol, !204, !"bd718xx_pickable_range_buck_ops_hwcontrol", i1 false, i1 false}
!232 = !{ptr @bd718xx_buck_regulator_nolinear_ops_hwcontrol, !206, !"bd718xx_buck_regulator_nolinear_ops_hwcontrol", i1 false, i1 false}
!233 = !{ptr @bd718xx_buck_regulator_ops_hwcontrol, !208, !"bd718xx_buck_regulator_ops_hwcontrol", i1 false, i1 false}
!234 = !{ptr @bd718xx_pickable_range_ldo_ops_hwcontrol, !210, !"bd718xx_pickable_range_ldo_ops_hwcontrol", i1 false, i1 false}
!235 = !{ptr @bd718xx_ldo_regulator_nolinear_ops_hwcontrol, !226, !"bd718xx_ldo_regulator_nolinear_ops_hwcontrol", i1 false, i1 false}
!236 = !{ptr @bd718xx_ldo_regulator_ops_hwcontrol, !228, !"bd718xx_ldo_regulator_ops_hwcontrol", i1 false, i1 false}
!237 = !{ptr @bd718xx_ldo5_ops_hwstate, !238, !"bd718xx_ldo5_ops_hwstate", i1 false, i1 false}
!238 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 572, i32 35}
!239 = !{ptr @.str.68, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1648, i32 3}
!241 = !{ptr @.str.69, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @get_special_regulators._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @get_special_regulators._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.70, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1652, i32 33}
!246 = !{ptr @.str.71, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1655, i32 34}
!248 = !{ptr @.str.72, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1501, i32 3}
!250 = !{ptr @.str.73, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @mark_hw_controlled.__UNIQUE_ID_ddebug288, !249, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!252 = !{ptr @.str.74, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1504, i32 2}
!254 = !{ptr @.str.75, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @mark_hw_controlled._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @mark_hw_controlled._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.76, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1579, i32 3}
!259 = !{ptr @.str.77, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @setup_feedback_loop._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @setup_feedback_loop._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.78, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1585, i32 34}
!264 = !{ptr @.str.79, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1593, i32 34}
!266 = !{ptr @.str.80, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1618, i32 5}
!268 = !{ptr @setup_feedback_loop.__UNIQUE_ID_ddebug289, !267, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!269 = !{ptr @.str.81, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1621, i32 5}
!271 = !{ptr @setup_feedback_loop.__UNIQUE_ID_ddebug290, !270, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!272 = !{ptr @.str.82, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1626, i32 3}
!274 = !{ptr @setup_feedback_loop.__UNIQUE_ID_ddebug291, !273, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!275 = !{ptr @bd718x7_pmic_id, !276, !"bd718x7_pmic_id", i1 false, i1 false}
!276 = !{!"../drivers/regulator/bd718x7-regulator.c", i32 1837, i32 40}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"auto-init"}
!287 = !{i64 2148809616, i64 2148809621, i64 2148809634, i64 2148809678, i64 2148809712, i64 2148809733}
