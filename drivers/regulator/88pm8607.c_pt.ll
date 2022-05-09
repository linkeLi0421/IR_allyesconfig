; ModuleID = '/llk/IR_all_yes/drivers/regulator/88pm8607.c_pt.bc'
source_filename = "../drivers/regulator/88pm8607.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pm8607_regulator_info = type { %struct.regulator_desc, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }

@__initcall__kmod_88pm8607__288_395_pm8607_regulator_init4 = internal global ptr @pm8607_regulator_init, section ".initcall4.init", align 4
@pm8607_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8607_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pm8607_regulator_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8607_regulator_exit = internal global ptr @pm8607_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [41 x i8] c"88pm8607.file=drivers/regulator/88pm8607\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [21 x i8] c"88pm8607.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"88pm8607.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [64 x i8] c"88pm8607.description=Regulator Driver for Marvell 88PM8607 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [43 x i8] c"88pm8607.alias=platform:88pm8607-regulator\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"88pm860x-regulator\00", [45 x i8] zeroinitializer }, align 32
@pm8607_regulator_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"88pm860x-regulator\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"88pm860x-preg\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pm8607_regulator_info = internal global { [16 x %struct.pm8607_regulator_info], [992 x i8] } { [16 x %struct.pm8607_regulator_info] [%struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @BUCK1_table, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 32, i32 1, i32 43, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @BUCK1_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @BUCK2_table, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 32, i32 2, i32 43, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @BUCK2_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @BUCK3_table, ptr null, i32 0, i32 0, i32 38, i32 63, i32 0, i32 0, i32 0, i32 32, i32 4, i32 43, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @BUCK3_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 4, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO1_table, ptr null, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO1_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO2_table, ptr null, i32 0, i32 0, i32 17, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO2_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO3_table, ptr null, i32 0, i32 0, i32 18, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO3_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO4_table, ptr null, i32 0, i32 0, i32 19, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO4_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 4, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO5_table, ptr null, i32 0, i32 0, i32 20, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO5_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO6_table, ptr null, i32 0, i32 0, i32 21, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO6_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO7_table, ptr null, i32 0, i32 0, i32 22, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO7_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO8_table, ptr null, i32 0, i32 0, i32 23, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO8_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO9_table, ptr null, i32 0, i32 0, i32 24, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO9_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 16, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO10_table, ptr null, i32 0, i32 0, i32 25, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO10_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 16, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO12_table, ptr null, i32 0, i32 0, i32 26, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO12_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO13_table, ptr null, i32 0, i32 0, i32 40, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO13_suspend_table, i32 0 }, %struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 8, i32 0, ptr @pm8607_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO14_table, ptr null, i32 0, i32 0, i32 27, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @LDO14_suspend_table, i32 0 }], [992 x i8] zeroinitializer }, align 32
@pm8607_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to find regulator %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm8607_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/regulator/88pm8607.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8607_regulator_probe._entry_ptr = internal global ptr @pm8607_regulator_probe._entry, section ".printk_index", align 4
@pm8606_regulator_info = internal global { [1 x %struct.pm8607_regulator_info], [36 x i8] } { [1 x %struct.pm8607_regulator_info] [%struct.pm8607_regulator_info { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @pm8606_preg_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 5, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 0 }], [36 x i8] zeroinitializer }, align 32
@pm8607_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8607_regulator_probe._entry_ptr.8 = internal global ptr @pm8607_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pm8607_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @pm8607_list_voltage, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@BUCK1_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 0, i32 25000, i32 50000, i32 75000, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000, i32 250000, i32 275000, i32 300000, i32 325000, i32 350000, i32 375000, i32 400000, i32 425000, i32 450000, i32 475000, i32 500000, i32 525000, i32 550000, i32 575000, i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000], [64 x i8] zeroinitializer }, align 32
@BUCK1_suspend_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 25000, i32 50000, i32 75000, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000, i32 250000, i32 275000, i32 300000, i32 325000, i32 350000, i32 375000, i32 400000, i32 425000, i32 450000, i32 475000, i32 500000, i32 525000, i32 550000, i32 575000, i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1500000, i32 1500000, i32 1500000], [64 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@BUCK2_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 50000, i32 100000, i32 150000, i32 200000, i32 250000, i32 300000, i32 350000, i32 400000, i32 450000, i32 500000, i32 550000, i32 600000, i32 650000, i32 700000, i32 750000, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000, i32 2350000, i32 2400000, i32 2450000, i32 2500000, i32 2550000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000, i32 3000000, i32 3000000, i32 3000000, i32 3000000], [64 x i8] zeroinitializer }, align 32
@BUCK2_suspend_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 50000, i32 100000, i32 150000, i32 200000, i32 250000, i32 300000, i32 350000, i32 400000, i32 450000, i32 500000, i32 550000, i32 600000, i32 650000, i32 700000, i32 750000, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000, i32 2350000, i32 2400000, i32 2450000, i32 2500000, i32 2550000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000, i32 3000000, i32 3000000, i32 3000000, i32 3000000], [64 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@BUCK3_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 25000, i32 50000, i32 75000, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000, i32 250000, i32 275000, i32 300000, i32 325000, i32 350000, i32 375000, i32 400000, i32 425000, i32 450000, i32 475000, i32 500000, i32 525000, i32 550000, i32 575000, i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1500000, i32 1500000, i32 1500000], [64 x i8] zeroinitializer }, align 32
@BUCK3_suspend_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 25000, i32 50000, i32 75000, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000, i32 250000, i32 275000, i32 300000, i32 325000, i32 350000, i32 375000, i32 400000, i32 425000, i32 450000, i32 475000, i32 500000, i32 525000, i32 550000, i32 575000, i32 600000, i32 625000, i32 650000, i32 675000, i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1500000, i32 1500000, i32 1500000], [64 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@LDO1_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 1200000, i32 2800000, i32 0], [16 x i8] zeroinitializer }, align 32
@LDO1_suspend_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 1200000, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@LDO2_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO2_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@LDO3_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO3_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@LDO4_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2900000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO4_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2900000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@LDO5_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2900000, i32 3000000, i32 3100000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@LDO5_suspend_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2900000, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@LDO6_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO6_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@LDO7_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@LDO7_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@LDO8_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@LDO8_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@LDO9_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO9_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@LDO10_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 3300000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000], [32 x i8] zeroinitializer }, align 32
@LDO10_suspend_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@LDO12_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1900000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3300000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000], [32 x i8] zeroinitializer }, align 32
@LDO12_suspend_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1900000, i32 2700000, i32 2800000, i32 2900000, i32 2900000, i32 2900000, i32 2900000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000, i32 1200000], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@LDO13_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1300000, i32 1800000, i32 2000000, i32 2500000, i32 2800000, i32 3000000, i32 0], [32 x i8] zeroinitializer }, align 32
@LDO13_suspend_table = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@LDO14_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@LDO14_suspend_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2900000], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PREG\00", [27 x i8] zeroinitializer }, align 32
@pm8606_preg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"pm8607_regulator_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 383, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 385, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"pm8607_regulator_driver_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 371, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"pm8607_regulator_info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 291, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 334, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"pm8606_regulator_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 311, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 362, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 292, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"pm8607_regulator_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 216, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"BUCK1_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 27, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"BUCK1_suspend_table\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 38, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 293, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"BUCK2_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 49, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"BUCK2_suspend_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 60, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 294, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"BUCK3_table\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 71, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"BUCK3_suspend_table\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 82, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 296, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"LDO1_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 93, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"LDO1_suspend_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 97, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 297, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"LDO2_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 101, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"LDO2_suspend_table\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 105, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 298, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"LDO3_table\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 109, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"LDO3_suspend_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 113, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 299, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"LDO4_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 117, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"LDO4_suspend_table\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 121, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 300, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"LDO5_table\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 125, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"LDO5_suspend_table\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 129, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 301, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"LDO6_table\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 133, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"LDO6_suspend_table\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 137, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 302, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"LDO7_table\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 141, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"LDO7_suspend_table\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 145, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 303, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"LDO8_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 149, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"LDO8_suspend_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 153, i32 27 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 304, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [11 x i8] c"LDO9_table\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 157, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"LDO9_suspend_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 161, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 305, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"LDO10_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 165, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c"LDO10_suspend_table\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 170, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 306, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"LDO12_table\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 175, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"LDO12_suspend_table\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 180, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 307, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"LDO13_table\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 185, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"LDO13_suspend_table\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 189, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 308, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"LDO14_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 193, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"LDO14_suspend_table\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 197, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 312, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"pm8606_preg_ops\00", align 1
@___asan_gen_.220 = private constant [32 x i8] c"../drivers/regulator/88pm8607.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 225, i32 35 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_pm8607_regulator_exit, ptr @__initcall__kmod_88pm8607__288_395_pm8607_regulator_init4, ptr @pm8607_regulator_exit, ptr @pm8607_regulator_probe._entry, ptr @pm8607_regulator_probe._entry.6, ptr @pm8607_regulator_probe._entry_ptr, ptr @pm8607_regulator_probe._entry_ptr.8, ptr @pm8607_regulator_driver, ptr @.str, ptr @pm8607_regulator_driver_ids, ptr @pm8607_regulator_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pm8606_regulator_info, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @pm8607_regulator_ops, ptr @BUCK1_table, ptr @BUCK1_suspend_table, ptr @.str.11, ptr @BUCK2_table, ptr @BUCK2_suspend_table, ptr @.str.12, ptr @BUCK3_table, ptr @BUCK3_suspend_table, ptr @.str.13, ptr @LDO1_table, ptr @LDO1_suspend_table, ptr @.str.14, ptr @LDO2_table, ptr @LDO2_suspend_table, ptr @.str.15, ptr @LDO3_table, ptr @LDO3_suspend_table, ptr @.str.16, ptr @LDO4_table, ptr @LDO4_suspend_table, ptr @.str.17, ptr @LDO5_table, ptr @LDO5_suspend_table, ptr @.str.18, ptr @LDO6_table, ptr @LDO6_suspend_table, ptr @.str.19, ptr @LDO7_table, ptr @LDO7_suspend_table, ptr @.str.20, ptr @LDO8_table, ptr @LDO8_suspend_table, ptr @.str.21, ptr @LDO9_table, ptr @LDO9_suspend_table, ptr @.str.22, ptr @LDO10_table, ptr @LDO10_suspend_table, ptr @.str.23, ptr @LDO12_table, ptr @LDO12_suspend_table, ptr @.str.24, ptr @LDO13_table, ptr @LDO13_suspend_table, ptr @.str.25, ptr @LDO14_table, ptr @LDO14_suspend_table, ptr @.str.26, ptr @pm8606_preg_ops], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_info to i32), i32 4032, i32 5024, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8606_regulator_info to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8607_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK1_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK1_suspend_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK2_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK2_suspend_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK3_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BUCK3_suspend_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO1_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO1_suspend_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO2_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO2_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO3_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO3_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO4_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO4_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO5_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO5_suspend_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO6_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO6_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO7_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO7_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO8_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO8_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO9_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO9_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO10_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO10_suspend_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO12_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO12_suspend_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO13_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO13_suspend_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO14_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO14_suspend_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8606_preg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8607_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8607_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8607_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8607_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8607_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %6 = getelementptr inbounds i8, ptr %config, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %for.cond.preheader

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 0, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp4 = icmp eq i32 %10, %9
  br i1 %cmp4, label %for.cond.preheader.if.end16_crit_edge, label %for.inc

for.cond.preheader.if.end16_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc:                                          ; preds = %for.cond.preheader
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 1, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4.1 = icmp eq i32 %11, %9
  br i1 %cmp4.1, label %for.inc.if.end16_crit_edge, label %for.inc.1

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.1:                                        ; preds = %for.inc
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 2, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp4.2 = icmp eq i32 %12, %9
  br i1 %cmp4.2, label %land.lhs.true, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 3, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp4.3 = icmp eq i32 %13, %9
  br i1 %cmp4.3, label %for.inc.2.if.end16_crit_edge, label %for.inc.3

for.inc.2.if.end16_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.3:                                        ; preds = %for.inc.2
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 4, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp4.4 = icmp eq i32 %14, %9
  br i1 %cmp4.4, label %for.inc.3.if.end16_crit_edge, label %for.inc.4

for.inc.3.if.end16_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.4:                                        ; preds = %for.inc.3
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 5, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp4.5 = icmp eq i32 %15, %9
  br i1 %cmp4.5, label %for.inc.4.if.end16_crit_edge, label %for.inc.5

for.inc.4.if.end16_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.5:                                        ; preds = %for.inc.4
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 6, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp4.6 = icmp eq i32 %16, %9
  br i1 %cmp4.6, label %for.inc.5.if.end16_crit_edge, label %for.inc.6

for.inc.5.if.end16_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.6:                                        ; preds = %for.inc.5
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 7, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp4.7 = icmp eq i32 %17, %9
  br i1 %cmp4.7, label %for.inc.6.if.end16_crit_edge, label %for.inc.7

for.inc.6.if.end16_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.7:                                        ; preds = %for.inc.6
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 8, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %9)
  %cmp4.8 = icmp eq i32 %18, %9
  br i1 %cmp4.8, label %for.inc.7.if.end16_crit_edge, label %for.inc.8

for.inc.7.if.end16_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.8:                                        ; preds = %for.inc.7
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 9, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %9)
  %cmp4.9 = icmp eq i32 %19, %9
  br i1 %cmp4.9, label %for.inc.8.if.end16_crit_edge, label %for.inc.9

for.inc.8.if.end16_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.9:                                        ; preds = %for.inc.8
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 10, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %9)
  %cmp4.10 = icmp eq i32 %20, %9
  br i1 %cmp4.10, label %for.inc.9.if.end16_crit_edge, label %for.inc.10

for.inc.9.if.end16_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.10:                                       ; preds = %for.inc.9
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 11, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %9)
  %cmp4.11 = icmp eq i32 %21, %9
  br i1 %cmp4.11, label %for.inc.10.if.end16_crit_edge, label %for.inc.11

for.inc.10.if.end16_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.11:                                       ; preds = %for.inc.10
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 12, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %9)
  %cmp4.12 = icmp eq i32 %22, %9
  br i1 %cmp4.12, label %for.inc.11.if.end16_crit_edge, label %for.inc.12

for.inc.11.if.end16_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.12:                                       ; preds = %for.inc.11
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 13, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %9)
  %cmp4.13 = icmp eq i32 %23, %9
  br i1 %cmp4.13, label %for.inc.12.if.end16_crit_edge, label %for.inc.13

for.inc.12.if.end16_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.13:                                       ; preds = %for.inc.12
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 14, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %9)
  %cmp4.14 = icmp eq i32 %24, %9
  br i1 %cmp4.14, label %for.inc.13.if.end16_crit_edge, label %for.inc.14

for.inc.13.if.end16_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.inc.14:                                       ; preds = %for.inc.13
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 15, i32 0, i32 27), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %9)
  %cmp4.15 = icmp eq i32 %25, %9
  br i1 %cmp4.15, label %for.inc.14.if.end16_crit_edge, label %do.end

for.inc.14.if.end16_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end:                                           ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call3, align 4
  %conv = zext i32 %27 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i64 noundef %conv) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.inc.1
  %buck3_double = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %buck3_double to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buck3_double, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %if.then15

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  store i32 1, ptr getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 2, i32 2), align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %for.inc.14.if.end16_crit_edge, %for.inc.13.if.end16_crit_edge, %for.inc.12.if.end16_crit_edge, %for.inc.11.if.end16_crit_edge, %for.inc.10.if.end16_crit_edge, %for.inc.9.if.end16_crit_edge, %for.inc.8.if.end16_crit_edge, %for.inc.7.if.end16_crit_edge, %for.inc.6.if.end16_crit_edge, %for.inc.5.if.end16_crit_edge, %for.inc.4.if.end16_crit_edge, %for.inc.3.if.end16_crit_edge, %for.inc.2.if.end16_crit_edge, %for.inc.if.end16_crit_edge, %for.cond.preheader.if.end16_crit_edge, %entry.if.end16_crit_edge
  %info.275 = phi ptr [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 2), %if.then15 ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 2), %land.lhs.true.if.end16_crit_edge ], [ @pm8606_regulator_info, %entry.if.end16_crit_edge ], [ @pm8607_regulator_info, %for.cond.preheader.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 1), %for.inc.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 3), %for.inc.2.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 4), %for.inc.3.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 5), %for.inc.4.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 6), %for.inc.5.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 7), %for.inc.6.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 8), %for.inc.7.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 9), %for.inc.8.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 10), %for.inc.9.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 11), %for.inc.10.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 12), %for.inc.11.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 13), %for.inc.12.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 14), %for.inc.13.if.end16_crit_edge ], [ getelementptr inbounds ([16 x %struct.pm8607_regulator_info], ptr @pm8607_regulator_info, i32 0, i32 15), %for.inc.14.if.end16_crit_edge ]
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %33 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %info.275, ptr %driver_data, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %34 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %init_data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp22 = icmp eq i32 %36, 2
  %regmap = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 5
  %regmap_companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 6
  %.sink.in = select i1 %cmp22, ptr %regmap, ptr %regmap_companion
  %37 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.sink = load ptr, ptr %.sink.in, align 4
  %38 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.sink, ptr %38, align 4
  %call31 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %info.275, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %info.275 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.275, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %41) #8
  %42 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %info.275, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end36, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %42, %do.end36 ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8607_list_voltage(ptr noundef %rdev, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @regulator_list_voltage_table(ptr noundef %rdev, i32 noundef %index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %slope_double = getelementptr inbounds %struct.pm8607_regulator_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %slope_double to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slope_double, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %shl = zext i1 %tobool.not to i32
  %spec.select = shl nuw i32 %call1, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_88pm8607__288_395_pm8607_regulator_init4, !1, !"__initcall__kmod_88pm8607__288_395_pm8607_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/88pm8607.c", i32 395, i32 1}
!2 = !{ptr @__exitcall_pm8607_regulator_exit, !3, !"__exitcall_pm8607_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/88pm8607.c", i32 401, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/88pm8607.c", i32 403, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/88pm8607.c", i32 404, i32 1}
!9 = !{ptr @__UNIQUE_ID_description292, !10, !"__UNIQUE_ID_description292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/88pm8607.c", i32 405, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/88pm8607.c", i32 406, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/88pm8607.c", i32 385, i32 11}
!15 = !{ptr @pm8607_regulator_driver, !16, !"pm8607_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/88pm8607.c", i32 383, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/88pm8607.c", i32 334, i32 4}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pm8607_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pm8607_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/88pm8607.c", i32 362, i32 3}
!27 = !{ptr @pm8607_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pm8607_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/88pm8607.c", i32 292, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/88pm8607.c", i32 293, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/88pm8607.c", i32 294, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/88pm8607.c", i32 296, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/88pm8607.c", i32 297, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/88pm8607.c", i32 298, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/88pm8607.c", i32 299, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/88pm8607.c", i32 300, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/88pm8607.c", i32 301, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/88pm8607.c", i32 302, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/88pm8607.c", i32 303, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/88pm8607.c", i32 304, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/88pm8607.c", i32 305, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/88pm8607.c", i32 306, i32 2}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/88pm8607.c", i32 307, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/88pm8607.c", i32 308, i32 2}
!62 = !{ptr @pm8607_regulator_info, !63, !"pm8607_regulator_info", i1 false, i1 false}
!63 = !{!"../drivers/regulator/88pm8607.c", i32 291, i32 37}
!64 = !{ptr @pm8607_regulator_ops, !65, !"pm8607_regulator_ops", i1 false, i1 false}
!65 = !{!"../drivers/regulator/88pm8607.c", i32 216, i32 35}
!66 = !{ptr @BUCK1_table, !67, !"BUCK1_table", i1 false, i1 false}
!67 = !{!"../drivers/regulator/88pm8607.c", i32 27, i32 27}
!68 = !{ptr @BUCK1_suspend_table, !69, !"BUCK1_suspend_table", i1 false, i1 false}
!69 = !{!"../drivers/regulator/88pm8607.c", i32 38, i32 27}
!70 = !{ptr @BUCK2_table, !71, !"BUCK2_table", i1 false, i1 false}
!71 = !{!"../drivers/regulator/88pm8607.c", i32 49, i32 27}
!72 = !{ptr @BUCK2_suspend_table, !73, !"BUCK2_suspend_table", i1 false, i1 false}
!73 = !{!"../drivers/regulator/88pm8607.c", i32 60, i32 27}
!74 = !{ptr @BUCK3_table, !75, !"BUCK3_table", i1 false, i1 false}
!75 = !{!"../drivers/regulator/88pm8607.c", i32 71, i32 27}
!76 = !{ptr @BUCK3_suspend_table, !77, !"BUCK3_suspend_table", i1 false, i1 false}
!77 = !{!"../drivers/regulator/88pm8607.c", i32 82, i32 27}
!78 = !{ptr @LDO1_table, !79, !"LDO1_table", i1 false, i1 false}
!79 = !{!"../drivers/regulator/88pm8607.c", i32 93, i32 27}
!80 = !{ptr @LDO1_suspend_table, !81, !"LDO1_suspend_table", i1 false, i1 false}
!81 = !{!"../drivers/regulator/88pm8607.c", i32 97, i32 27}
!82 = !{ptr @LDO2_table, !83, !"LDO2_table", i1 false, i1 false}
!83 = !{!"../drivers/regulator/88pm8607.c", i32 101, i32 27}
!84 = !{ptr @LDO2_suspend_table, !85, !"LDO2_suspend_table", i1 false, i1 false}
!85 = !{!"../drivers/regulator/88pm8607.c", i32 105, i32 27}
!86 = !{ptr @LDO3_table, !87, !"LDO3_table", i1 false, i1 false}
!87 = !{!"../drivers/regulator/88pm8607.c", i32 109, i32 27}
!88 = !{ptr @LDO3_suspend_table, !89, !"LDO3_suspend_table", i1 false, i1 false}
!89 = !{!"../drivers/regulator/88pm8607.c", i32 113, i32 27}
!90 = !{ptr @LDO4_table, !91, !"LDO4_table", i1 false, i1 false}
!91 = !{!"../drivers/regulator/88pm8607.c", i32 117, i32 27}
!92 = !{ptr @LDO4_suspend_table, !93, !"LDO4_suspend_table", i1 false, i1 false}
!93 = !{!"../drivers/regulator/88pm8607.c", i32 121, i32 27}
!94 = !{ptr @LDO5_table, !95, !"LDO5_table", i1 false, i1 false}
!95 = !{!"../drivers/regulator/88pm8607.c", i32 125, i32 27}
!96 = !{ptr @LDO5_suspend_table, !97, !"LDO5_suspend_table", i1 false, i1 false}
!97 = !{!"../drivers/regulator/88pm8607.c", i32 129, i32 27}
!98 = !{ptr @LDO6_table, !99, !"LDO6_table", i1 false, i1 false}
!99 = !{!"../drivers/regulator/88pm8607.c", i32 133, i32 27}
!100 = !{ptr @LDO6_suspend_table, !101, !"LDO6_suspend_table", i1 false, i1 false}
!101 = !{!"../drivers/regulator/88pm8607.c", i32 137, i32 27}
!102 = !{ptr @LDO7_table, !103, !"LDO7_table", i1 false, i1 false}
!103 = !{!"../drivers/regulator/88pm8607.c", i32 141, i32 27}
!104 = !{ptr @LDO7_suspend_table, !105, !"LDO7_suspend_table", i1 false, i1 false}
!105 = !{!"../drivers/regulator/88pm8607.c", i32 145, i32 27}
!106 = !{ptr @LDO8_table, !107, !"LDO8_table", i1 false, i1 false}
!107 = !{!"../drivers/regulator/88pm8607.c", i32 149, i32 27}
!108 = !{ptr @LDO8_suspend_table, !109, !"LDO8_suspend_table", i1 false, i1 false}
!109 = !{!"../drivers/regulator/88pm8607.c", i32 153, i32 27}
!110 = !{ptr @LDO9_table, !111, !"LDO9_table", i1 false, i1 false}
!111 = !{!"../drivers/regulator/88pm8607.c", i32 157, i32 27}
!112 = !{ptr @LDO9_suspend_table, !113, !"LDO9_suspend_table", i1 false, i1 false}
!113 = !{!"../drivers/regulator/88pm8607.c", i32 161, i32 27}
!114 = !{ptr @LDO10_table, !115, !"LDO10_table", i1 false, i1 false}
!115 = !{!"../drivers/regulator/88pm8607.c", i32 165, i32 27}
!116 = !{ptr @LDO10_suspend_table, !117, !"LDO10_suspend_table", i1 false, i1 false}
!117 = !{!"../drivers/regulator/88pm8607.c", i32 170, i32 27}
!118 = !{ptr @LDO12_table, !119, !"LDO12_table", i1 false, i1 false}
!119 = !{!"../drivers/regulator/88pm8607.c", i32 175, i32 27}
!120 = !{ptr @LDO12_suspend_table, !121, !"LDO12_suspend_table", i1 false, i1 false}
!121 = !{!"../drivers/regulator/88pm8607.c", i32 180, i32 27}
!122 = !{ptr @LDO13_table, !123, !"LDO13_table", i1 false, i1 false}
!123 = !{!"../drivers/regulator/88pm8607.c", i32 185, i32 27}
!124 = !{ptr @LDO13_suspend_table, !125, !"LDO13_suspend_table", i1 false, i1 false}
!125 = !{!"../drivers/regulator/88pm8607.c", i32 189, i32 27}
!126 = !{ptr @LDO14_table, !127, !"LDO14_table", i1 false, i1 false}
!127 = !{!"../drivers/regulator/88pm8607.c", i32 193, i32 27}
!128 = !{ptr @LDO14_suspend_table, !129, !"LDO14_suspend_table", i1 false, i1 false}
!129 = !{!"../drivers/regulator/88pm8607.c", i32 197, i32 27}
!130 = !{ptr @.str.26, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/88pm8607.c", i32 312, i32 2}
!132 = !{ptr @pm8606_regulator_info, !133, !"pm8606_regulator_info", i1 false, i1 false}
!133 = !{!"../drivers/regulator/88pm8607.c", i32 311, i32 37}
!134 = !{ptr @pm8606_preg_ops, !135, !"pm8606_preg_ops", i1 false, i1 false}
!135 = !{!"../drivers/regulator/88pm8607.c", i32 225, i32 35}
!136 = !{ptr @pm8607_regulator_driver_ids, !137, !"pm8607_regulator_driver_ids", i1 false, i1 false}
!137 = !{!"../drivers/regulator/88pm8607.c", i32 371, i32 40}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
