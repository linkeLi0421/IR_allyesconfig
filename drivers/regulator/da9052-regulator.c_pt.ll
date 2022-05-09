; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9052-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9052-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.da9052_regulator_info = type { %struct.regulator_desc, i32, i32, i32, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.da9052_regulator = type { ptr, ptr, ptr }
%struct.da9052_pdata = type { ptr, ptr, i32, i32, i32, [14 x ptr] }

@__initcall__kmod_da9052_regulator__288_448_da9052_regulator_init4 = internal global ptr @da9052_regulator_init, section ".initcall4.init", align 4
@da9052_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_regulator_exit = internal global ptr @da9052_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"da9052_regulator.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [75 x i8] c"da9052_regulator.description=Power Regulator driver for Dialog DA9052 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9052_regulator.file=drivers/regulator/da9052-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"da9052_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"da9052_regulator.alias=platform:da9052-regulator\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052-regulator\00", [47 x i8] zeroinitializer }, align 32
@da9052_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid regulator ID specified\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9052_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9052-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_regulator_probe._entry_ptr = internal global ptr @da9052_regulator_probe._entry, section ".printk_index", align 4
@da9052_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@da9052_regulator_probe._entry_ptr.8 = internal global ptr @da9052_regulator_probe._entry.6, section ".printk_index", align 4
@da9052_regulator_info = internal global { [14 x %struct.da9052_regulator_info], [904 x i8] } { [14 x %struct.da9052_regulator_info] [%struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 500000, i32 2075000, i8 1 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 500000, i32 2075000, i8 2 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 950000, i32 2525000, i8 4 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 37, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1800000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 25, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 600000, i32 1800000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 600000, i32 1800000, i8 8 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 1725000, i32 3300000, i8 16 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 1725000, i32 3300000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1250000, i32 3650000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }], [904 x i8] zeroinitializer }, align 32
@da9053_regulator_info = internal global { [14 x %struct.da9052_regulator_info], [904 x i8] } { [14 x %struct.da9052_regulator_info] [%struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 500000, i32 2075000, i8 1 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 500000, i32 2075000, i8 2 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 950000, i32 2525000, i8 4 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @da9052_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 950000, i32 2525000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 25, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 600000, i32 1800000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 600000, i32 1800000, i8 8 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 1725000, i32 3300000, i8 16 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 25000, i32 1725000, i32 3300000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1250000, i32 3650000, i8 0 }, %struct.da9052_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 49, i32 0, ptr @da9052_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 50000, i32 1200000, i32 3600000, i8 0 }], [904 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9052_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @da9052_list_voltage, ptr null, ptr @da9052_map_voltage, ptr @da9052_regulator_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @da9052_dcdc_set_current_limit, ptr @da9052_dcdc_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9052_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@da9052_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @da9052_list_voltage, ptr null, ptr @da9052_map_voltage, ptr @da9052_regulator_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9052_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo10\00", [26 x i8] zeroinitializer }, align 32
@da9052_current_limits = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 700000, i32 800000, i32 1000000, i32 1200000], [4 x i32] [i32 1600000, i32 2000000, i32 2400000, i32 3000000], [4 x i32] [i32 800000, i32 1000000, i32 1200000, i32 1500000]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6]
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"da9052_regulator_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 437, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 440, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 413, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 427, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"da9052_regulator_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 330, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"da9053_regulator_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 347, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 331, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"da9052_dcdc_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 261, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 332, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 333, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 334, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 335, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"da9052_ldo_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 275, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 336, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 337, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 338, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 339, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 340, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 341, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 342, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 343, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 344, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"da9052_current_limits\00", align 1
@___asan_gen_.114 = private constant [40 x i8] c"../drivers/regulator/da9052-regulator.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 52, i32 18 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9052_regulator_exit, ptr @__initcall__kmod_da9052_regulator__288_448_da9052_regulator_init4, ptr @da9052_regulator_exit, ptr @da9052_regulator_probe._entry, ptr @da9052_regulator_probe._entry.6, ptr @da9052_regulator_probe._entry_ptr, ptr @da9052_regulator_probe._entry_ptr.8, ptr @da9052_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @da9052_regulator_info, ptr @da9053_regulator_info, ptr @.str.9, ptr @.str.10, ptr @da9052_dcdc_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @da9052_ldo_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @da9052_current_limits], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_regulator_info to i32), i32 3640, i32 4544, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9053_regulator_info to i32), i32 3640, i32 4544, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_current_limits to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %call.i, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_id, align 4
  %id = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.end.do.end_crit_edge [
    i8 0, label %for.body.preheader.i
    i8 1, label %if.end.sw.bb5.i_crit_edge
    i8 2, label %if.end.sw.bb5.i_crit_edge66
    i8 3, label %if.end.sw.bb5.i_crit_edge67
    i8 4, label %if.end.sw.bb5.i_crit_edge68
  ]

if.end.sw.bb5.i_crit_edge68:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge67:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge66:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.preheader.i:                             ; preds = %if.end
  %18 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp3.i = icmp eq i32 %18, %16
  br i1 %cmp3.i, label %for.body.preheader.i.if.end12_crit_edge, label %for.cond.i

for.body.preheader.i.if.end12_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.i:                                       ; preds = %for.body.preheader.i
  %19 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp3.1.i = icmp eq i32 %19, %16
  br i1 %cmp3.1.i, label %for.cond.i.if.end12_crit_edge, label %for.cond.1.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.1.i:                                     ; preds = %for.cond.i
  %20 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %16)
  %cmp3.2.i = icmp eq i32 %20, %16
  br i1 %cmp3.2.i, label %for.cond.1.i.if.end12_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end12_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %21 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %16)
  %cmp3.3.i = icmp eq i32 %21, %16
  br i1 %cmp3.3.i, label %for.cond.2.i.if.end12_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end12_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %22 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp3.4.i = icmp eq i32 %22, %16
  br i1 %cmp3.4.i, label %for.cond.3.i.if.end12_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end12_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %23 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %16)
  %cmp3.5.i = icmp eq i32 %23, %16
  br i1 %cmp3.5.i, label %for.cond.4.i.if.end12_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end12_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %24 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 6, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %16)
  %cmp3.6.i = icmp eq i32 %24, %16
  br i1 %cmp3.6.i, label %for.cond.5.i.if.end12_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end12_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %25 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 7, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %16)
  %cmp3.7.i = icmp eq i32 %25, %16
  br i1 %cmp3.7.i, label %for.cond.6.i.if.end12_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end12_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %26 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 8, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %16)
  %cmp3.8.i = icmp eq i32 %26, %16
  br i1 %cmp3.8.i, label %for.cond.7.i.if.end12_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end12_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %27 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 9, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %16)
  %cmp3.9.i = icmp eq i32 %27, %16
  br i1 %cmp3.9.i, label %for.cond.8.i.if.end12_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end12_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %28 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 10, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %16)
  %cmp3.10.i = icmp eq i32 %28, %16
  br i1 %cmp3.10.i, label %for.cond.9.i.if.end12_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end12_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %29 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 11, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %16)
  %cmp3.11.i = icmp eq i32 %29, %16
  br i1 %cmp3.11.i, label %for.cond.10.i.if.end12_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end12_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %30 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 12, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %16)
  %cmp3.12.i = icmp eq i32 %30, %16
  br i1 %cmp3.12.i, label %for.cond.11.i.if.end12_crit_edge, label %for.cond.11.i.cleanup.sink.split.i_crit_edge

for.cond.11.i.cleanup.sink.split.i_crit_edge:     ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

for.cond.11.i.if.end12_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

sw.bb5.i:                                         ; preds = %if.end.sw.bb5.i_crit_edge, %if.end.sw.bb5.i_crit_edge66, %if.end.sw.bb5.i_crit_edge67, %if.end.sw.bb5.i_crit_edge68
  %31 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %16)
  %cmp13.i = icmp eq i32 %31, %16
  br i1 %cmp13.i, label %sw.bb5.i.if.end12_crit_edge, label %for.cond6.i

sw.bb5.i.if.end12_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.i:                                      ; preds = %sw.bb5.i
  %32 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %16)
  %cmp13.1.i = icmp eq i32 %32, %16
  br i1 %cmp13.1.i, label %for.cond6.i.if.end12_crit_edge, label %for.cond6.1.i

for.cond6.i.if.end12_crit_edge:                   ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.1.i:                                    ; preds = %for.cond6.i
  %33 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %16)
  %cmp13.2.i = icmp eq i32 %33, %16
  br i1 %cmp13.2.i, label %for.cond6.1.i.if.end12_crit_edge, label %for.cond6.2.i

for.cond6.1.i.if.end12_crit_edge:                 ; preds = %for.cond6.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.2.i:                                    ; preds = %for.cond6.1.i
  %34 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %16)
  %cmp13.3.i = icmp eq i32 %34, %16
  br i1 %cmp13.3.i, label %for.cond6.2.i.if.end12_crit_edge, label %for.cond6.3.i

for.cond6.2.i.if.end12_crit_edge:                 ; preds = %for.cond6.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.3.i:                                    ; preds = %for.cond6.2.i
  %35 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %16)
  %cmp13.4.i = icmp eq i32 %35, %16
  br i1 %cmp13.4.i, label %for.cond6.3.i.if.end12_crit_edge, label %for.cond6.4.i

for.cond6.3.i.if.end12_crit_edge:                 ; preds = %for.cond6.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.4.i:                                    ; preds = %for.cond6.3.i
  %36 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %16)
  %cmp13.5.i = icmp eq i32 %36, %16
  br i1 %cmp13.5.i, label %for.cond6.4.i.if.end12_crit_edge, label %for.cond6.5.i

for.cond6.4.i.if.end12_crit_edge:                 ; preds = %for.cond6.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.5.i:                                    ; preds = %for.cond6.4.i
  %37 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 6, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %16)
  %cmp13.6.i = icmp eq i32 %37, %16
  br i1 %cmp13.6.i, label %for.cond6.5.i.if.end12_crit_edge, label %for.cond6.6.i

for.cond6.5.i.if.end12_crit_edge:                 ; preds = %for.cond6.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.6.i:                                    ; preds = %for.cond6.5.i
  %38 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 7, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %16)
  %cmp13.7.i = icmp eq i32 %38, %16
  br i1 %cmp13.7.i, label %for.cond6.6.i.if.end12_crit_edge, label %for.cond6.7.i

for.cond6.6.i.if.end12_crit_edge:                 ; preds = %for.cond6.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.7.i:                                    ; preds = %for.cond6.6.i
  %39 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 8, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %16)
  %cmp13.8.i = icmp eq i32 %39, %16
  br i1 %cmp13.8.i, label %for.cond6.7.i.if.end12_crit_edge, label %for.cond6.8.i

for.cond6.7.i.if.end12_crit_edge:                 ; preds = %for.cond6.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.8.i:                                    ; preds = %for.cond6.7.i
  %40 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 9, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %16)
  %cmp13.9.i = icmp eq i32 %40, %16
  br i1 %cmp13.9.i, label %for.cond6.8.i.if.end12_crit_edge, label %for.cond6.9.i

for.cond6.8.i.if.end12_crit_edge:                 ; preds = %for.cond6.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.9.i:                                    ; preds = %for.cond6.8.i
  %41 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 10, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %16)
  %cmp13.10.i = icmp eq i32 %41, %16
  br i1 %cmp13.10.i, label %for.cond6.9.i.if.end12_crit_edge, label %for.cond6.10.i

for.cond6.9.i.if.end12_crit_edge:                 ; preds = %for.cond6.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.10.i:                                   ; preds = %for.cond6.9.i
  %42 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 11, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %16)
  %cmp13.11.i = icmp eq i32 %42, %16
  br i1 %cmp13.11.i, label %for.cond6.10.i.if.end12_crit_edge, label %for.cond6.11.i

for.cond6.10.i.if.end12_crit_edge:                ; preds = %for.cond6.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond6.11.i:                                   ; preds = %for.cond6.10.i
  %43 = load i32, ptr getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 12, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %16)
  %cmp13.12.i = icmp eq i32 %43, %16
  br i1 %cmp13.12.i, label %for.cond6.11.i.if.end12_crit_edge, label %for.cond6.11.i.cleanup.sink.split.i_crit_edge

for.cond6.11.i.cleanup.sink.split.i_crit_edge:    ; preds = %for.cond6.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

for.cond6.11.i.if.end12_crit_edge:                ; preds = %for.cond6.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cleanup.sink.split.i:                             ; preds = %for.cond6.11.i.cleanup.sink.split.i_crit_edge, %for.cond.11.i.cleanup.sink.split.i_crit_edge
  %.sink38.i = phi ptr [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 13, i32 0, i32 6), %for.cond.11.i.cleanup.sink.split.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 13, i32 0, i32 6), %for.cond6.11.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi ptr [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 13), %for.cond.11.i.cleanup.sink.split.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 13), %for.cond6.11.i.cleanup.sink.split.i_crit_edge ]
  %44 = ptrtoint ptr %.sink38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %.sink38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %16)
  %cmp13.13.i = icmp eq i32 %45, %16
  br i1 %cmp13.13.i, label %cleanup.sink.split.i.if.end12_crit_edge, label %cleanup.sink.split.i.do.end_crit_edge

cleanup.sink.split.i.do.end_crit_edge:            ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

cleanup.sink.split.i.if.end12_crit_edge:          ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end:                                           ; preds = %cleanup.sink.split.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %info = getelementptr inbounds %struct.da9052_regulator, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end12:                                         ; preds = %cleanup.sink.split.i.if.end12_crit_edge, %for.cond6.11.i.if.end12_crit_edge, %for.cond6.10.i.if.end12_crit_edge, %for.cond6.9.i.if.end12_crit_edge, %for.cond6.8.i.if.end12_crit_edge, %for.cond6.7.i.if.end12_crit_edge, %for.cond6.6.i.if.end12_crit_edge, %for.cond6.5.i.if.end12_crit_edge, %for.cond6.4.i.if.end12_crit_edge, %for.cond6.3.i.if.end12_crit_edge, %for.cond6.2.i.if.end12_crit_edge, %for.cond6.1.i.if.end12_crit_edge, %for.cond6.i.if.end12_crit_edge, %sw.bb5.i.if.end12_crit_edge, %for.cond.11.i.if.end12_crit_edge, %for.cond.10.i.if.end12_crit_edge, %for.cond.9.i.if.end12_crit_edge, %for.cond.8.i.if.end12_crit_edge, %for.cond.7.i.if.end12_crit_edge, %for.cond.6.i.if.end12_crit_edge, %for.cond.5.i.if.end12_crit_edge, %for.cond.4.i.if.end12_crit_edge, %for.cond.3.i.if.end12_crit_edge, %for.cond.2.i.if.end12_crit_edge, %for.cond.1.i.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge, %for.body.preheader.i.if.end12_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 12), %for.cond6.11.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 11), %for.cond6.10.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 10), %for.cond6.9.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 9), %for.cond6.8.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 8), %for.cond6.7.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 7), %for.cond6.6.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 6), %for.cond6.5.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 5), %for.cond6.4.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 4), %for.cond6.3.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 3), %for.cond6.2.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 2), %for.cond6.1.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9053_regulator_info, i32 0, i32 1), %for.cond6.i.if.end12_crit_edge ], [ @da9053_regulator_info, %sw.bb5.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 12), %for.cond.11.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 11), %for.cond.10.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 10), %for.cond.9.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 9), %for.cond.8.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 8), %for.cond.7.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 7), %for.cond.6.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 6), %for.cond.5.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 5), %for.cond.4.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 4), %for.cond.3.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 3), %for.cond.2.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 2), %for.cond.1.i.if.end12_crit_edge ], [ getelementptr inbounds ([14 x %struct.da9052_regulator_info], ptr @da9052_regulator_info, i32 0, i32 1), %for.cond.i.if.end12_crit_edge ], [ @da9052_regulator_info, %for.body.preheader.i.if.end12_crit_edge ], [ %.sink.i, %cleanup.sink.split.i.if.end12_crit_edge ]
  %info62 = getelementptr inbounds %struct.da9052_regulator, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %info62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i.ph, ptr %info62, align 4
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %7, align 4
  %50 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %51 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.da9052, ptr %7, i32 0, i32 1
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %regmap15 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %54 = ptrtoint ptr %regmap15 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %regmap15, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.da9052_pdata, ptr %11, i32 0, i32 5, i32 %56
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %59 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %init_data, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %call22 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %retval.0.i.ph, ptr noundef nonnull %config) #6
  %rdev = getelementptr inbounds %struct.da9052_regulator, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call22, ptr %rdev, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end28, label %if.end34

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %info62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info62, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %64) #9
  %65 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rdev, align 4
  %67 = ptrtoint ptr %66 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %67, %do.end28 ], [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9052_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp = icmp eq i32 %call2, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %selector)
  %cmp6 = icmp ugt i32 %selector, 23
  %or.cond = and i1 %cmp6, %cmp3
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %step_uV = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %step_uV, align 4
  %mul = mul i32 %7, 24
  %min_uV = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_uV, align 4
  %10 = mul i32 %selector, 100000
  %add = add i32 %10, -2400000
  %mul8 = add i32 %add, %9
  %add9 = add i32 %mul8, %mul
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %step_uV10 = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %step_uV10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %step_uV10, align 4
  %mul11 = mul i32 %12, %selector
  %min_uV12 = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %min_uV12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_uV12, align 4
  %add13 = add i32 %mul11, %14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %volt_uV.0 = phi i32 [ %add9, %if.then ], [ %add13, %if.else ]
  %max_uV = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %volt_uV.0, i32 %16)
  %cmp14 = icmp sgt i32 %volt_uV.0, %16
  %.volt_uV.0 = select i1 %cmp14, i32 -22, i32 %volt_uV.0
  ret i32 %.volt_uV.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_map_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9052_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %max_uV1.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_uV1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_uV1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min_uV)
  %cmp.i = icmp slt i32 %3, %min_uV
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %min_uV2.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %min_uV2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_uV2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uV)
  %cmp3.i = icmp sgt i32 %5, %max_uV
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %min_uV2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_uV2.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 %min_uV)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp9 = icmp eq i32 %call2, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10 = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %8)
  %cmp13 = icmp sgt i32 %8, 2999999
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub16 = add nsw i32 %8, -2900001
  %div54 = udiv i32 %sub16, 100000
  %add17 = add nuw nsw i32 %div54, 24
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %step_uV = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %step_uV, align 4
  %sub19 = xor i32 %7, -1
  %add20 = add i32 %8, %sub19
  %sub21 = add i32 %add20, %14
  %div23 = sdiv i32 %sub21, %14
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then15
  %sel.0 = phi i32 [ %add17, %if.then15 ], [ %div23, %if.else ]
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1.i = getelementptr inbounds %struct.da9052_regulator, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info1.i, align 4
  %call2.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i)
  %cmp.i50 = icmp eq i32 %call2.i, 3
  br i1 %cmp.i50, label %land.lhs.true.i, label %if.end24.if.else.i_crit_edge

if.end24.if.else.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end24
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %chip_id.i = getelementptr inbounds %struct.da9052, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp3.i51 = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sel.0)
  %cmp6.i = icmp ugt i32 %sel.0, 23
  %or.cond.i = and i1 %cmp6.i, %cmp3.i51
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %step_uV.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %step_uV.i, align 4
  %mul.i = mul i32 %22, 24
  %min_uV.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_uV.i, align 4
  %25 = mul i32 %sel.0, 100000
  %add.i = add i32 %25, -2400000
  %mul8.i = add i32 %add.i, %24
  %add9.i = add i32 %mul8.i, %mul.i
  br label %da9052_list_voltage.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end24.if.else.i_crit_edge
  %step_uV10.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %step_uV10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %step_uV10.i, align 4
  %mul11.i = mul i32 %27, %sel.0
  %min_uV12.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %16, i32 0, i32 2
  %28 = ptrtoint ptr %min_uV12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_uV12.i, align 4
  %add13.i = add i32 %mul11.i, %29
  br label %da9052_list_voltage.exit

da9052_list_voltage.exit:                         ; preds = %if.else.i, %if.then.i
  %volt_uV.0.i = phi i32 [ %add9.i, %if.then.i ], [ %add13.i, %if.else.i ]
  %max_uV.i = getelementptr inbounds %struct.da9052_regulator_info, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %volt_uV.0.i, i32 %31)
  %cmp14.i = icmp sgt i32 %volt_uV.0.i, %31
  %.volt_uV.0.i = select i1 %cmp14.i, i32 -22, i32 %volt_uV.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.volt_uV.0.i)
  %cmp26 = icmp slt i32 %.volt_uV.0.i, 0
  %call25.sel.0 = select i1 %cmp26, i32 %.volt_uV.0.i, i32 %sel.0
  br label %cleanup

cleanup:                                          ; preds = %da9052_list_voltage.exit, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25.sel.0, %da9052_list_voltage.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9052_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_reg, align 4
  %conv = trunc i32 %7 to i8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel_mask, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %7, 255
  %conv1.i = and i32 %9, 255
  %conv2.i = and i32 %selector, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %da9052_reg_update.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

da9052_reg_update.exit:                           ; preds = %if.end.i
  %call6.i = tail call i32 %13(ptr noundef %3, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %da9052_reg_update.exit.cleanup_crit_edge, label %da9052_reg_update.exit.if.end_crit_edge

da9052_reg_update.exit.if.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

da9052_reg_update.exit.cleanup_crit_edge:         ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_update.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i39 = phi i32 [ %call6.i, %da9052_reg_update.exit.if.end_crit_edge ], [ %call.i.i, %if.end.i.if.end_crit_edge ]
  %14 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge40
    i32 2, label %if.end.sw.bb_crit_edge41
    i32 5, label %if.end.sw.bb_crit_edge42
    i32 6, label %if.end.sw.bb_crit_edge43
  ]

if.end.sw.bb_crit_edge43:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge42:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge41:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge40:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge40, %if.end.sw.bb_crit_edge41, %if.end.sw.bb_crit_edge42, %if.end.sw.bb_crit_edge43
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %activate_bit = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %activate_bit to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %activate_bit, align 4
  %regmap.i22 = getelementptr inbounds %struct.da9052, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i22, align 4
  %conv1.i23 = zext i8 %18 to i32
  %call.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 60, i32 noundef %conv1.i23, i32 noundef %conv1.i23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp.i26, label %sw.bb.cleanup_crit_edge, label %if.end.i29

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i29:                                       ; preds = %sw.bb
  %fix_io.i27 = getelementptr inbounds %struct.da9052, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %fix_io.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fix_io.i27, align 4
  %tobool.not.i28 = icmp eq ptr %22, null
  br i1 %tobool.not.i28, label %if.end.i29.cleanup_crit_edge, label %if.then4.i31

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i31:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i30 = tail call i32 %22(ptr noundef %16, i8 noundef zeroext 60) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i31, %if.end.i29.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %da9052_reg_update.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %da9052_reg_update.exit.cleanup_crit_edge ], [ %retval.0.i39, %if.end.cleanup_crit_edge ], [ %call.i.i25, %sw.bb.cleanup_crit_edge ], [ %call6.i30, %if.then4.i31 ], [ %call.i.i25, %if.end.i29.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_dcdc_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp eq i32 %call1, 0
  %spec.select = select i1 %cmp3, i32 1, i32 2
  %row.0 = select i1 %cmp, i32 0, i32 %spec.select
  %arrayidx9 = getelementptr [3 x [4 x i32]], ptr @da9052_current_limits, i32 0, i32 %row.0, i32 3
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_uA)
  %cmp10.not = icmp ult i32 %5, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uA)
  %cmp14.not = icmp ugt i32 %5, %max_uA
  %or.cond = or i1 %cmp10.not, %cmp14.not
  br i1 %or.cond, label %for.inc, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.inc:                                          ; preds = %entry
  %arrayidx9.1 = getelementptr [3 x [4 x i32]], ptr @da9052_current_limits, i32 0, i32 %row.0, i32 2
  %6 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %min_uA)
  %cmp10.not.1 = icmp ult i32 %7, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_uA)
  %cmp14.not.1 = icmp ugt i32 %7, %max_uA
  %or.cond.1 = or i1 %cmp10.not.1, %cmp14.not.1
  br i1 %or.cond.1, label %for.inc.1, label %for.inc.if.end21_crit_edge

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.inc.1:                                        ; preds = %for.inc
  %arrayidx9.2 = getelementptr [3 x [4 x i32]], ptr @da9052_current_limits, i32 0, i32 %row.0, i32 1
  %8 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %min_uA)
  %cmp10.not.2 = icmp ult i32 %9, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %max_uA)
  %cmp14.not.2 = icmp ugt i32 %9, %max_uA
  %or.cond.2 = or i1 %cmp10.not.2, %cmp14.not.2
  br i1 %or.cond.2, label %for.inc.2, label %for.inc.1.if.end21_crit_edge

for.inc.1.if.end21_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx9.3 = getelementptr [3 x [4 x i32]], ptr @da9052_current_limits, i32 0, i32 %row.0, i32 0
  %10 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %min_uA)
  %cmp10.not.3 = icmp ult i32 %11, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %max_uA)
  %cmp14.not.3 = icmp ugt i32 %11, %max_uA
  %or.cond.3 = or i1 %cmp10.not.3, %cmp14.not.3
  br i1 %or.cond.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.2.if.end21_crit_edge

for.inc.2.if.end21_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %for.inc.2.if.end21_crit_edge, %for.inc.1.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %entry.if.end21_crit_edge
  %i.070.lcssa = phi i32 [ 3, %entry.if.end21_crit_edge ], [ 2, %for.inc.if.end21_crit_edge ], [ 1, %for.inc.1.if.end21_crit_edge ], [ 0, %for.inc.2.if.end21_crit_edge ]
  %12 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22 = icmp eq i32 %12, 0
  %div = sdiv i32 %call1, 2
  %13 = trunc i32 %div to i8
  %conv26 = add i8 %13, 44
  br i1 %cmp22, label %if.then24, label %if.else29

if.then24:                                        ; preds = %if.end21
  %conv27 = shl nuw nsw i32 %i.070.lcssa, 2
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %conv26 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %conv.i, i32 noundef 12, i32 noundef %conv27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then24.cleanup_crit_edge, label %if.end.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then24
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else29:                                        ; preds = %if.end21
  %conv35 = shl nuw nsw i32 %i.070.lcssa, 6
  %regmap.i55 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i55, align 4
  %conv.i56 = zext i8 %conv26 to i32
  %call.i.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv.i56, i32 noundef 192, i32 noundef %conv35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i59, label %if.else29.cleanup_crit_edge, label %if.end.i62

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i62:                                       ; preds = %if.else29
  %fix_io.i60 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %fix_io.i60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fix_io.i60, align 4
  %tobool.not.i61 = icmp eq ptr %21, null
  br i1 %tobool.not.i61, label %if.end.i62.cleanup_crit_edge, label %if.end.i62.cleanup.sink.split_crit_edge

if.end.i62.cleanup.sink.split_crit_edge:          ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i62.cleanup_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i62.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %17, %if.end.i.cleanup.sink.split_crit_edge ], [ %21, %if.end.i62.cleanup.sink.split_crit_edge ]
  %call6.i63 = tail call i32 %.sink(ptr noundef %1, i8 noundef zeroext %conv26) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i62.cleanup_crit_edge, %if.else29.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then24.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i58, %if.else29.cleanup_crit_edge ], [ %call.i.i58, %if.end.i62.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ %call6.i63, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_dcdc_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %div = sdiv i32 %call1, 2
  %2 = trunc i32 %div to i8
  %conv = add i8 %2, 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !77
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %conv to i32
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %7(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %da9052_reg_read.exit.cleanup_crit_edge, label %if.end

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp eq i32 %10, 0
  %ret.0.in.v = select i1 %cmp4, i32 2, i32 6
  %ret.0.in = lshr i32 %9, %ret.0.in.v
  %ret.0 = and i32 %ret.0.in, 3
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %chip_id = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp12 = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp16 = icmp eq i32 %call1, 0
  %spec.select = select i1 %cmp16, i32 1, i32 2
  %row.0 = select i1 %cmp12, i32 0, i32 %spec.select
  %arrayidx21 = getelementptr [3 x [4 x i32]], ptr @da9052_current_limits, i32 0, i32 %row.0, i32 %ret.0
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %da9052_reg_read.exit.cleanup_crit_edge, %da9052_reg_read.exit.thread
  %retval.0 = phi i32 [ %16, %if.end ], [ %9, %da9052_reg_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_regulator_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_sel, i32 noundef %new_sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info1 = getelementptr inbounds %struct.da9052_regulator, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %2 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call2, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge8
    i32 2, label %entry.sw.bb_crit_edge9
    i32 5, label %entry.sw.bb_crit_edge10
    i32 6, label %entry.sw.bb_crit_edge11
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %sub = sub i32 %new_sel, %old_sel
  %3 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %step_uV = getelementptr inbounds %struct.da9052_regulator_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step_uV, align 4
  %mul = mul i32 %5, %3
  %sub4 = add i32 %mul, 6249
  %div = sdiv i32 %sub4, 6250
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %div, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_da9052_regulator__288_448_da9052_regulator_init4, !1, !"__initcall__kmod_da9052_regulator__288_448_da9052_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9052-regulator.c", i32 448, i32 1}
!2 = !{ptr @__exitcall_da9052_regulator_exit, !3, !"__exitcall_da9052_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/da9052-regulator.c", i32 454, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/da9052-regulator.c", i32 456, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/da9052-regulator.c", i32 457, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/da9052-regulator.c", i32 458, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/da9052-regulator.c", i32 459, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/da9052-regulator.c", i32 440, i32 11}
!15 = !{ptr @da9052_regulator_driver, !16, !"da9052_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/da9052-regulator.c", i32 437, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/da9052-regulator.c", i32 413, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9052_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9052_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9052-regulator.c", i32 427, i32 3}
!27 = !{ptr @da9052_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9052_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9052-regulator.c", i32 331, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/da9052-regulator.c", i32 332, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/da9052-regulator.c", i32 333, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/da9052-regulator.c", i32 334, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/da9052-regulator.c", i32 335, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/da9052-regulator.c", i32 336, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/da9052-regulator.c", i32 337, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/da9052-regulator.c", i32 338, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/da9052-regulator.c", i32 339, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/da9052-regulator.c", i32 340, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9052-regulator.c", i32 341, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/da9052-regulator.c", i32 342, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9052-regulator.c", i32 343, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9052-regulator.c", i32 344, i32 2}
!58 = !{ptr @da9052_regulator_info, !59, !"da9052_regulator_info", i1 false, i1 false}
!59 = !{!"../drivers/regulator/da9052-regulator.c", i32 330, i32 37}
!60 = !{ptr @da9052_dcdc_ops, !61, !"da9052_dcdc_ops", i1 false, i1 false}
!61 = !{!"../drivers/regulator/da9052-regulator.c", i32 261, i32 35}
!62 = !{ptr @da9052_current_limits, !63, !"da9052_current_limits", i1 false, i1 false}
!63 = !{!"../drivers/regulator/da9052-regulator.c", i32 52, i32 18}
!64 = !{ptr @da9052_ldo_ops, !65, !"da9052_ldo_ops", i1 false, i1 false}
!65 = !{!"../drivers/regulator/da9052-regulator.c", i32 275, i32 35}
!66 = !{ptr @da9053_regulator_info, !67, !"da9053_regulator_info", i1 false, i1 false}
!67 = !{!"../drivers/regulator/da9052-regulator.c", i32 347, i32 37}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
