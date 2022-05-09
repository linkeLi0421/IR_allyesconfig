; ModuleID = '/llk/IR_all_yes/drivers/regulator/88pm800-regulator.c_pt.bc'
source_filename = "../drivers/regulator/88pm800-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm800_regulator_info = type { %struct.regulator_desc, i32 }
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
%struct.pm80x_platform_data = type { ptr, [24 x ptr], i32, i32, i32, ptr }
%struct.pm80x_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock }
%struct.pm80x_subchip = type { ptr, ptr, ptr, ptr, i16, i16 }

@__initcall__kmod_88pm800_regulator__288_281_pm800_regulator_driver_init6 = internal global ptr @pm800_regulator_driver_init, section ".initcall6.init", align 4
@pm800_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm800_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm800_regulator_driver_exit = internal global ptr @pm800_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [59 x i8] c"88pm800_regulator.file=drivers/regulator/88pm800-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [30 x i8] c"88pm800_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [66 x i8] c"88pm800_regulator.author=Joseph(Yossi) Hanin <yhanin@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [72 x i8] c"88pm800_regulator.description=Regulator Driver for Marvell 88PM800 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [51 x i8] c"88pm800_regulator.alias=platform:88pm800-regulator\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"88pm80x-regulator\00", [46 x i8] zeroinitializer }, align 32
@pm800_regulator_info = internal global { [24 x %struct.pm800_regulator_info], [1472 x i8] } { [24 x %struct.pm800_regulator_info] [%struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr @.str.8, ptr null, i32 0, i8 0, i32 85, i32 0, ptr @pm800_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck1_volt_range, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 60, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 3000000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.8, ptr null, i32 1, i8 0, i32 115, i32 0, ptr @pm800_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck2_5_volt_range, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 64, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 1200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.12, i8 0, ptr @.str.8, ptr null, i32 2, i8 0, i32 115, i32 0, ptr @pm800_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck2_5_volt_range, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 65, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 1200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.8, ptr null, i32 3, i8 0, i32 115, i32 0, ptr @pm800_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck2_5_volt_range, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 66, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 1200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.8, ptr null, i32 4, i8 0, i32 115, i32 0, ptr @pm800_volt_range_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck2_5_volt_range, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 70, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 1200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr @.str.8, ptr null, i32 5, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo1_volt_table, ptr null, i32 0, i32 0, i32 8, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.20, i8 0, ptr @.str.8, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo2_volt_table, ptr null, i32 0, i32 0, i32 11, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 10000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.22, i8 0, ptr @.str.8, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 12, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.24, i8 0, ptr @.str.8, ptr null, i32 8, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 13, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.26, i8 0, ptr @.str.8, ptr null, i32 9, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 14, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.28, i8 0, ptr @.str.8, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.30, i8 0, ptr @.str.8, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 16, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.8, ptr null, i32 12, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 17, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.34, i8 0, ptr @.str.8, ptr null, i32 13, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 18, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.36, i8 0, ptr @.str.8, ptr null, i32 14, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 19, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.38, i8 0, ptr @.str.8, ptr null, i32 15, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 20, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.39, ptr null, ptr @.str.40, i8 0, ptr @.str.8, ptr null, i32 16, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 21, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.41, ptr null, ptr @.str.42, i8 0, ptr @.str.8, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 22, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.43, ptr null, ptr @.str.44, i8 0, ptr @.str.8, ptr null, i32 18, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 23, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.8, ptr null, i32 19, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 24, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.47, ptr null, ptr @.str.48, i8 0, ptr @.str.8, ptr null, i32 20, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 25, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.49, ptr null, ptr @.str.50, i8 0, ptr @.str.8, ptr null, i32 21, i8 0, i32 16, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo3_17_volt_table, ptr null, i32 0, i32 0, i32 26, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 300000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.51, ptr null, ptr @.str.52, i8 0, ptr @.str.8, ptr null, i32 22, i8 0, i32 8, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo18_19_volt_table, ptr null, i32 0, i32 0, i32 27, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 200000 }, %struct.pm800_regulator_info { %struct.regulator_desc { ptr @.str.53, ptr null, ptr @.str.54, i8 0, ptr @.str.8, ptr null, i32 23, i8 0, i32 8, i32 0, ptr @pm800_volt_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo18_19_volt_table, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 200000 }], [1472 x i8] zeroinitializer }, align 32
@pm800_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm800_regulator_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/88pm800-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm800_regulator_probe._entry_ptr = internal global ptr @pm800_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pm800_volt_range_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @pm800_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck1_volt_range = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 79, i32 12500 }, %struct.linear_range { i32 1600000, i32 80, i32 84, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@buck2_5_volt_range = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 79, i32 12500 }, %struct.linear_range { i32 1600000, i32 80, i32 114, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@pm800_volt_table_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @pm800_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo1_volt_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 600000, i32 650000, i32 700000, i32 750000, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1300000, i32 1400000, i32 1500000], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@ldo2_volt_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2500000, i32 2700000, i32 2800000], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@ldo3_17_volt_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1200000, i32 1250000, i32 1700000, i32 1800000, i32 1850000, i32 1900000, i32 2500000, i32 2600000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 3000000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo10\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo11\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo12\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo13\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo14\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo15\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo16\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo17\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo18\00", [26 x i8] zeroinitializer }, align 32
@ldo18_19_volt_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1700000, i32 1800000, i32 1900000, i32 2500000, i32 2800000, i32 2900000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo19\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"pm800_regulator_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 274, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 276, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"pm800_regulator_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 198, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 265, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 199, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"pm800_volt_range_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 175, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"buck1_volt_range\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 137, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 200, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"buck2_5_volt_range\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 143, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 201, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 202, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 203, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 205, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"pm800_volt_table_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 186, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"ldo1_volt_table\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 148, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 206, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"ldo2_volt_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 153, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 207, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"ldo3_17_volt_table\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 158, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 208, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 209, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 210, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 211, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 212, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 213, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 214, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 215, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 216, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 217, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 218, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 219, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 220, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 221, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 222, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"ldo18_19_volt_table\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 164, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [41 x i8] c"../drivers/regulator/88pm800-regulator.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 223, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_pm800_regulator_driver_exit, ptr @__initcall__kmod_88pm800_regulator__288_281_pm800_regulator_driver_init6, ptr @pm800_regulator_driver_exit, ptr @pm800_regulator_probe._entry, ptr @pm800_regulator_probe._entry_ptr, ptr @pm800_regulator_driver, ptr @.str, ptr @pm800_regulator_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pm800_volt_range_ops, ptr @buck1_volt_range, ptr @.str.9, ptr @.str.10, ptr @buck2_5_volt_range, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pm800_volt_table_ops, ptr @ldo1_volt_table, ptr @.str.19, ptr @.str.20, ptr @ldo2_volt_table, ptr @.str.21, ptr @.str.22, ptr @ldo3_17_volt_table, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ldo18_19_volt_table, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_regulator_info to i32), i32 5952, i32 7424, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_volt_range_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_volt_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_5_volt_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm800_volt_table_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_volt_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_volt_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_17_volt_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo18_19_volt_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm800_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm800_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm800_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %6 = getelementptr inbounds i8, ptr %config, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %num_regulators = getelementptr inbounds %struct.pm80x_platform_data, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %for.body.preheader

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

for.body.preheader:                               ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp ne ptr %11, null
  %inc = zext i1 %tobool5.not to i32
  %arrayidx.1 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool5.not.1 = icmp ne ptr %13, null
  %inc.1 = zext i1 %tobool5.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool5.not.2 = icmp ne ptr %15, null
  %inc.2 = zext i1 %tobool5.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool5.not.3 = icmp ne ptr %17, null
  %inc.3 = zext i1 %tobool5.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %arrayidx.4 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %tobool5.not.4 = icmp ne ptr %19, null
  %inc.4 = zext i1 %tobool5.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx.5 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %tobool5.not.5 = icmp ne ptr %21, null
  %inc.5 = zext i1 %tobool5.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx.6 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6, align 4
  %tobool5.not.6 = icmp ne ptr %23, null
  %inc.6 = zext i1 %tobool5.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  %arrayidx.7 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.7, align 4
  %tobool5.not.7 = icmp ne ptr %25, null
  %inc.7 = zext i1 %tobool5.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  %arrayidx.8 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.8, align 4
  %tobool5.not.8 = icmp ne ptr %27, null
  %inc.8 = zext i1 %tobool5.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc.8
  %arrayidx.9 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.9, align 4
  %tobool5.not.9 = icmp ne ptr %29, null
  %inc.9 = zext i1 %tobool5.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc.9
  %arrayidx.10 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.10, align 4
  %tobool5.not.10 = icmp ne ptr %31, null
  %inc.10 = zext i1 %tobool5.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc.10
  %arrayidx.11 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 11
  %32 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.11, align 4
  %tobool5.not.11 = icmp ne ptr %33, null
  %inc.11 = zext i1 %tobool5.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc.11
  %arrayidx.12 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 12
  %34 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.12, align 4
  %tobool5.not.12 = icmp ne ptr %35, null
  %inc.12 = zext i1 %tobool5.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc.12
  %arrayidx.13 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 13
  %36 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.13, align 4
  %tobool5.not.13 = icmp ne ptr %37, null
  %inc.13 = zext i1 %tobool5.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc.13
  %arrayidx.14 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.14, align 4
  %tobool5.not.14 = icmp ne ptr %39, null
  %inc.14 = zext i1 %tobool5.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc.14
  %arrayidx.15 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 15
  %40 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.15, align 4
  %tobool5.not.15 = icmp ne ptr %41, null
  %inc.15 = zext i1 %tobool5.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc.15
  %arrayidx.16 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 16
  %42 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.16, align 4
  %tobool5.not.16 = icmp ne ptr %43, null
  %inc.16 = zext i1 %tobool5.not.16 to i32
  %spec.select.16 = add nuw nsw i32 %spec.select.15, %inc.16
  %arrayidx.17 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 17
  %44 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.17, align 4
  %tobool5.not.17 = icmp ne ptr %45, null
  %inc.17 = zext i1 %tobool5.not.17 to i32
  %spec.select.17 = add nuw nsw i32 %spec.select.16, %inc.17
  %arrayidx.18 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 18
  %46 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.18, align 4
  %tobool5.not.18 = icmp ne ptr %47, null
  %inc.18 = zext i1 %tobool5.not.18 to i32
  %spec.select.18 = add nuw nsw i32 %spec.select.17, %inc.18
  %arrayidx.19 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 19
  %48 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.19, align 4
  %tobool5.not.19 = icmp ne ptr %49, null
  %inc.19 = zext i1 %tobool5.not.19 to i32
  %spec.select.19 = add nuw nsw i32 %spec.select.18, %inc.19
  %arrayidx.20 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 20
  %50 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.20, align 4
  %tobool5.not.20 = icmp ne ptr %51, null
  %inc.20 = zext i1 %tobool5.not.20 to i32
  %spec.select.20 = add nuw nsw i32 %spec.select.19, %inc.20
  %arrayidx.21 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 21
  %52 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.21, align 4
  %tobool5.not.21 = icmp ne ptr %53, null
  %inc.21 = zext i1 %tobool5.not.21 to i32
  %spec.select.21 = add nuw nsw i32 %spec.select.20, %inc.21
  %arrayidx.22 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 22
  %54 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.22, align 4
  %tobool5.not.22 = icmp ne ptr %55, null
  %inc.22 = zext i1 %tobool5.not.22 to i32
  %spec.select.22 = add nuw nsw i32 %spec.select.21, %inc.22
  %arrayidx.23 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 23
  %56 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.23, align 4
  %tobool5.not.23 = icmp ne ptr %57, null
  %inc.23 = zext i1 %tobool5.not.23 to i32
  %spec.select.23 = add nuw nsw i32 %spec.select.22, %inc.23
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.23, i32 %9)
  %cmp9.not = icmp eq i32 %spec.select.23, %9
  br i1 %cmp9.not, label %for.body.preheader.if.end12_crit_edge, label %for.body.preheader.cleanup47_crit_edge

for.body.preheader.cleanup47_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup47

for.body.preheader.if.end12_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %for.body.preheader.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev13, align 4
  %60 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %config, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %regmap_power = getelementptr inbounds %struct.pm80x_subchip, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %regmap_power to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap_power, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %regmap, align 4
  %num_regulators20 = getelementptr inbounds %struct.pm80x_platform_data, ptr %5, i32 0, i32 2
  %init_data28 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body17

for.body17:                                       ; preds = %for.inc44.for.body17_crit_edge, %if.end12
  %i.180 = phi i32 [ 0, %if.end12 ], [ %inc45, %for.inc44.for.body17_crit_edge ]
  br i1 %tobool.not, label %for.body17.if.end29_crit_edge, label %land.lhs.true19

for.body17.if.end29_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true19:                                  ; preds = %for.body17
  %66 = ptrtoint ptr %num_regulators20 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_regulators20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool21.not = icmp eq i32 %67, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end29_crit_edge, label %if.then22

land.lhs.true19.if.end29_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %land.lhs.true19
  %arrayidx24 = getelementptr %struct.pm80x_platform_data, ptr %5, i32 0, i32 1, i32 %i.180
  %68 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %69, null
  br i1 %tobool25.not, label %if.then22.for.inc44_crit_edge, label %if.end27

if.then22.for.inc44_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc44

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %init_data28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %init_data28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %land.lhs.true19.if.end29_crit_edge, %for.body17.if.end29_crit_edge
  %arrayidx30 = getelementptr [24 x %struct.pm800_regulator_info], ptr @pm800_regulator_info, i32 0, i32 %i.180
  %71 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx30, ptr %driver_data, align 4
  %call33 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx30, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup41, label %if.end29.for.inc44_crit_edge

if.end29.for.inc44_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc44

cleanup41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %call33 to i32
  %73 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %74) #8
  br label %cleanup47

for.inc44:                                        ; preds = %if.end29.for.inc44_crit_edge, %if.then22.for.inc44_crit_edge
  %inc45 = add nuw nsw i32 %i.180, 1
  %exitcond.not = icmp eq i32 %inc45, 24
  br i1 %exitcond.not, label %for.inc44.cleanup47_crit_edge, label %for.inc44.for.body17_crit_edge

for.inc44.for.body17_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

for.inc44.cleanup47_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup47

cleanup47:                                        ; preds = %for.inc44.cleanup47_crit_edge, %cleanup41, %for.body.preheader.cleanup47_crit_edge
  %retval.4 = phi i32 [ %72, %cleanup41 ], [ -22, %for.body.preheader.cleanup47_crit_edge ], [ 0, %for.inc44.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm800_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %max_ua = getelementptr inbounds %struct.pm800_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %max_ua to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_ua, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_88pm800_regulator__288_281_pm800_regulator_driver_init6, !1, !"__initcall__kmod_88pm800_regulator__288_281_pm800_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/88pm800-regulator.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_pm800_regulator_driver_exit, !1, !"__exitcall_pm800_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/88pm800-regulator.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/88pm800-regulator.c", i32 284, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/88pm800-regulator.c", i32 285, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/88pm800-regulator.c", i32 286, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/88pm800-regulator.c", i32 276, i32 11}
!14 = !{ptr @pm800_regulator_driver, !15, !"pm800_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/88pm800-regulator.c", i32 274, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/88pm800-regulator.c", i32 265, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pm800_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pm800_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/88pm800-regulator.c", i32 199, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/88pm800-regulator.c", i32 200, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/88pm800-regulator.c", i32 201, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/88pm800-regulator.c", i32 202, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/88pm800-regulator.c", i32 203, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/88pm800-regulator.c", i32 205, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/88pm800-regulator.c", i32 206, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/88pm800-regulator.c", i32 207, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/88pm800-regulator.c", i32 208, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/88pm800-regulator.c", i32 209, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/88pm800-regulator.c", i32 210, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/88pm800-regulator.c", i32 211, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/88pm800-regulator.c", i32 212, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/88pm800-regulator.c", i32 213, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/88pm800-regulator.c", i32 214, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/88pm800-regulator.c", i32 215, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/88pm800-regulator.c", i32 216, i32 2}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/88pm800-regulator.c", i32 217, i32 2}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/88pm800-regulator.c", i32 218, i32 2}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/88pm800-regulator.c", i32 219, i32 2}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/88pm800-regulator.c", i32 220, i32 2}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/88pm800-regulator.c", i32 221, i32 2}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/88pm800-regulator.c", i32 222, i32 2}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/88pm800-regulator.c", i32 223, i32 2}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pm800_regulator_info, !98, !"pm800_regulator_info", i1 false, i1 false}
!98 = !{!"../drivers/regulator/88pm800-regulator.c", i32 198, i32 36}
!99 = !{ptr @pm800_volt_range_ops, !100, !"pm800_volt_range_ops", i1 false, i1 false}
!100 = !{!"../drivers/regulator/88pm800-regulator.c", i32 175, i32 35}
!101 = !{ptr @buck1_volt_range, !102, !"buck1_volt_range", i1 false, i1 false}
!102 = !{!"../drivers/regulator/88pm800-regulator.c", i32 137, i32 34}
!103 = !{ptr @buck2_5_volt_range, !104, !"buck2_5_volt_range", i1 false, i1 false}
!104 = !{!"../drivers/regulator/88pm800-regulator.c", i32 143, i32 34}
!105 = !{ptr @pm800_volt_table_ops, !106, !"pm800_volt_table_ops", i1 false, i1 false}
!106 = !{!"../drivers/regulator/88pm800-regulator.c", i32 186, i32 35}
!107 = !{ptr @ldo1_volt_table, !108, !"ldo1_volt_table", i1 false, i1 false}
!108 = !{!"../drivers/regulator/88pm800-regulator.c", i32 148, i32 27}
!109 = !{ptr @ldo2_volt_table, !110, !"ldo2_volt_table", i1 false, i1 false}
!110 = !{!"../drivers/regulator/88pm800-regulator.c", i32 153, i32 27}
!111 = !{ptr @ldo3_17_volt_table, !112, !"ldo3_17_volt_table", i1 false, i1 false}
!112 = !{!"../drivers/regulator/88pm800-regulator.c", i32 158, i32 27}
!113 = !{ptr @ldo18_19_volt_table, !114, !"ldo18_19_volt_table", i1 false, i1 false}
!114 = !{!"../drivers/regulator/88pm800-regulator.c", i32 164, i32 27}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
