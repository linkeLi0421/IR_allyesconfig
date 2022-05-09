; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8925-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8925-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max8925_regulator_info = type { %struct.regulator_desc, ptr, i32, i32 }
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
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }

@__initcall__kmod_max8925_regulator__288_274_max8925_regulator_init4 = internal global ptr @max8925_regulator_init, section ".initcall4.init", align 4
@max8925_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8925_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8925_regulator_exit = internal global ptr @max8925_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [59 x i8] c"max8925_regulator.file=drivers/regulator/max8925-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [30 x i8] c"max8925_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [69 x i8] c"max8925_regulator.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [67 x i8] c"max8925_regulator.description=Regulator Driver for Maxim 8925 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [51 x i8] c"max8925_regulator.alias=platform:max8925-regulator\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8925-regulator\00", [46 x i8] zeroinitializer }, align 32
@max8925_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No REG resource!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8925_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/max8925-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_regulator_probe._entry_ptr = internal global ptr @max8925_regulator_probe._entry, section ".printk_index", align 4
@max8925_regulator_info = internal global { [23 x %struct.max8925_regulator_info], [1472 x i8] } { [23 x %struct.max8925_regulator_info] [%struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.13, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @max8925_regulator_sdv_ops, i32 0, i32 0, ptr null, i32 637500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 6, i32 4 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.13, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @max8925_regulator_sdv_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 9, i32 7 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.13, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @max8925_regulator_sdv_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 12, i32 10 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.13, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 26, i32 24 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.13, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 30, i32 28 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.13, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 34, i32 32 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.13, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 38, i32 36 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.13, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 42, i32 40 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.13, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 46, i32 44 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.13, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 50, i32 48 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.13, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 54, i32 52 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.13, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 58, i32 56 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.13, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 62, i32 60 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.13, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 66, i32 64 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.13, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 70, i32 68 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.13, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 74, i32 72 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.13, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 78, i32 76 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.13, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 82, i32 80 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.13, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 18, i32 16 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.13, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 22, i32 20 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.13, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 116, i32 114 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.13, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 94, i32 92 }, %struct.max8925_regulator_info { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.13, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @max8925_regulator_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 158, i32 156 }], [1472 x i8] zeroinitializer }, align 32
@max8925_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to find regulator %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@max8925_regulator_probe._entry_ptr.8 = internal global ptr @max8925_regulator_probe._entry.6, section ".printk_index", align 4
@max8925_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@max8925_regulator_probe._entry_ptr.11 = internal global ptr @max8925_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDV1\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max8925_regulator_sdv_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8925_set_voltage_sel, ptr null, ptr @max8925_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_enable, ptr @max8925_disable, ptr @max8925_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_set_dvm_voltage, ptr @max8925_set_dvm_enable, ptr @max8925_set_dvm_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDV2\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDV3\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@max8925_regulator_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8925_set_voltage_sel, ptr null, ptr @max8925_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_enable, ptr @max8925_disable, ptr @max8925_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO20\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"max8925_regulator_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 263, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 265, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 230, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"max8925_regulator_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 191, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 240, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 254, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 192, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"max8925_regulator_sdv_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 132, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 193, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 194, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 196, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"max8925_regulator_ldo_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 145, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 197, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 198, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 199, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 200, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 201, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 202, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 203, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 204, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 205, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 206, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 207, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 208, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 209, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 210, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 211, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 212, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 213, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 214, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [41 x i8] c"../drivers/regulator/max8925-regulator.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 215, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_max8925_regulator_exit, ptr @__initcall__kmod_max8925_regulator__288_274_max8925_regulator_init4, ptr @max8925_regulator_exit, ptr @max8925_regulator_probe._entry, ptr @max8925_regulator_probe._entry.6, ptr @max8925_regulator_probe._entry.9, ptr @max8925_regulator_probe._entry_ptr, ptr @max8925_regulator_probe._entry_ptr.11, ptr @max8925_regulator_probe._entry_ptr.8, ptr @max8925_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max8925_regulator_info, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @max8925_regulator_sdv_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @max8925_regulator_ldo_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_info to i32), i32 5888, i32 7360, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_sdv_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_regulator_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8925_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8925_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8925_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %10 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp5 = icmp eq i32 %10, %9
  br i1 %cmp5, label %for.cond.preheader.if.end15_crit_edge, label %for.inc

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %11 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp5.1 = icmp eq i32 %11, %9
  br i1 %cmp5.1, label %for.inc.if.end15_crit_edge, label %for.inc.1

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.1:                                        ; preds = %for.inc
  %12 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp5.2 = icmp eq i32 %12, %9
  br i1 %cmp5.2, label %for.inc.1.if.end15_crit_edge, label %for.inc.2

for.inc.1.if.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.2:                                        ; preds = %for.inc.1
  %13 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp5.3 = icmp eq i32 %13, %9
  br i1 %cmp5.3, label %for.inc.2.if.end15_crit_edge, label %for.inc.3

for.inc.2.if.end15_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.3:                                        ; preds = %for.inc.2
  %14 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp5.4 = icmp eq i32 %14, %9
  br i1 %cmp5.4, label %for.inc.3.if.end15_crit_edge, label %for.inc.4

for.inc.3.if.end15_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.4:                                        ; preds = %for.inc.3
  %15 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp5.5 = icmp eq i32 %15, %9
  br i1 %cmp5.5, label %for.inc.4.if.end15_crit_edge, label %for.inc.5

for.inc.4.if.end15_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.5:                                        ; preds = %for.inc.4
  %16 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp5.6 = icmp eq i32 %16, %9
  br i1 %cmp5.6, label %for.inc.5.if.end15_crit_edge, label %for.inc.6

for.inc.5.if.end15_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.6:                                        ; preds = %for.inc.5
  %17 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp5.7 = icmp eq i32 %17, %9
  br i1 %cmp5.7, label %for.inc.6.if.end15_crit_edge, label %for.inc.7

for.inc.6.if.end15_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.7:                                        ; preds = %for.inc.6
  %18 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %9)
  %cmp5.8 = icmp eq i32 %18, %9
  br i1 %cmp5.8, label %for.inc.7.if.end15_crit_edge, label %for.inc.8

for.inc.7.if.end15_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.8:                                        ; preds = %for.inc.7
  %19 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 9, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %9)
  %cmp5.9 = icmp eq i32 %19, %9
  br i1 %cmp5.9, label %for.inc.8.if.end15_crit_edge, label %for.inc.9

for.inc.8.if.end15_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.9:                                        ; preds = %for.inc.8
  %20 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 10, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %9)
  %cmp5.10 = icmp eq i32 %20, %9
  br i1 %cmp5.10, label %for.inc.9.if.end15_crit_edge, label %for.inc.10

for.inc.9.if.end15_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.10:                                       ; preds = %for.inc.9
  %21 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 11, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %9)
  %cmp5.11 = icmp eq i32 %21, %9
  br i1 %cmp5.11, label %for.inc.10.if.end15_crit_edge, label %for.inc.11

for.inc.10.if.end15_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.11:                                       ; preds = %for.inc.10
  %22 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 12, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %9)
  %cmp5.12 = icmp eq i32 %22, %9
  br i1 %cmp5.12, label %for.inc.11.if.end15_crit_edge, label %for.inc.12

for.inc.11.if.end15_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.12:                                       ; preds = %for.inc.11
  %23 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 13, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %9)
  %cmp5.13 = icmp eq i32 %23, %9
  br i1 %cmp5.13, label %for.inc.12.if.end15_crit_edge, label %for.inc.13

for.inc.12.if.end15_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.13:                                       ; preds = %for.inc.12
  %24 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 14, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %9)
  %cmp5.14 = icmp eq i32 %24, %9
  br i1 %cmp5.14, label %for.inc.13.if.end15_crit_edge, label %for.inc.14

for.inc.13.if.end15_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.14:                                       ; preds = %for.inc.13
  %25 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 15, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %9)
  %cmp5.15 = icmp eq i32 %25, %9
  br i1 %cmp5.15, label %for.inc.14.if.end15_crit_edge, label %for.inc.15

for.inc.14.if.end15_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.15:                                       ; preds = %for.inc.14
  %26 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 16, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %9)
  %cmp5.16 = icmp eq i32 %26, %9
  br i1 %cmp5.16, label %for.inc.15.if.end15_crit_edge, label %for.inc.16

for.inc.15.if.end15_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.16:                                       ; preds = %for.inc.15
  %27 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 17, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %9)
  %cmp5.17 = icmp eq i32 %27, %9
  br i1 %cmp5.17, label %for.inc.16.if.end15_crit_edge, label %for.inc.17

for.inc.16.if.end15_crit_edge:                    ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.17:                                       ; preds = %for.inc.16
  %28 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 18, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %9)
  %cmp5.18 = icmp eq i32 %28, %9
  br i1 %cmp5.18, label %for.inc.17.if.end15_crit_edge, label %for.inc.18

for.inc.17.if.end15_crit_edge:                    ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.18:                                       ; preds = %for.inc.17
  %29 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 19, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %9)
  %cmp5.19 = icmp eq i32 %29, %9
  br i1 %cmp5.19, label %for.inc.18.if.end15_crit_edge, label %for.inc.19

for.inc.18.if.end15_crit_edge:                    ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.19:                                       ; preds = %for.inc.18
  %30 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 20, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %9)
  %cmp5.20 = icmp eq i32 %30, %9
  br i1 %cmp5.20, label %for.inc.19.if.end15_crit_edge, label %for.inc.20

for.inc.19.if.end15_crit_edge:                    ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.20:                                       ; preds = %for.inc.19
  %31 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 21, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %9)
  %cmp5.21 = icmp eq i32 %31, %9
  br i1 %cmp5.21, label %for.inc.20.if.end15_crit_edge, label %for.inc.21

for.inc.20.if.end15_crit_edge:                    ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

for.inc.21:                                       ; preds = %for.inc.20
  %32 = load i32, ptr getelementptr inbounds ([23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 22, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %9)
  %cmp5.22 = icmp eq i32 %32, %9
  br i1 %cmp5.22, label %for.inc.21.if.end15_crit_edge, label %do.end12

for.inc.21.if.end15_crit_edge:                    ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end12:                                         ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call3, align 4
  %conv = zext i32 %34 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %conv) #8
  br label %cleanup

if.end15:                                         ; preds = %for.inc.21.if.end15_crit_edge, %for.inc.20.if.end15_crit_edge, %for.inc.19.if.end15_crit_edge, %for.inc.18.if.end15_crit_edge, %for.inc.17.if.end15_crit_edge, %for.inc.16.if.end15_crit_edge, %for.inc.15.if.end15_crit_edge, %for.inc.14.if.end15_crit_edge, %for.inc.13.if.end15_crit_edge, %for.inc.12.if.end15_crit_edge, %for.inc.11.if.end15_crit_edge, %for.inc.10.if.end15_crit_edge, %for.inc.9.if.end15_crit_edge, %for.inc.8.if.end15_crit_edge, %for.inc.7.if.end15_crit_edge, %for.inc.6.if.end15_crit_edge, %for.inc.5.if.end15_crit_edge, %for.inc.4.if.end15_crit_edge, %for.inc.3.if.end15_crit_edge, %for.inc.2.if.end15_crit_edge, %for.inc.1.if.end15_crit_edge, %for.inc.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge
  %i.064.lcssa = phi i32 [ 0, %for.cond.preheader.if.end15_crit_edge ], [ 1, %for.inc.if.end15_crit_edge ], [ 2, %for.inc.1.if.end15_crit_edge ], [ 3, %for.inc.2.if.end15_crit_edge ], [ 4, %for.inc.3.if.end15_crit_edge ], [ 5, %for.inc.4.if.end15_crit_edge ], [ 6, %for.inc.5.if.end15_crit_edge ], [ 7, %for.inc.6.if.end15_crit_edge ], [ 8, %for.inc.7.if.end15_crit_edge ], [ 9, %for.inc.8.if.end15_crit_edge ], [ 10, %for.inc.9.if.end15_crit_edge ], [ 11, %for.inc.10.if.end15_crit_edge ], [ 12, %for.inc.11.if.end15_crit_edge ], [ 13, %for.inc.12.if.end15_crit_edge ], [ 14, %for.inc.13.if.end15_crit_edge ], [ 15, %for.inc.14.if.end15_crit_edge ], [ 16, %for.inc.15.if.end15_crit_edge ], [ 17, %for.inc.16.if.end15_crit_edge ], [ 18, %for.inc.17.if.end15_crit_edge ], [ 19, %for.inc.18.if.end15_crit_edge ], [ 20, %for.inc.19.if.end15_crit_edge ], [ 21, %for.inc.20.if.end15_crit_edge ], [ 22, %for.inc.21.if.end15_crit_edge ]
  %ri.161 = getelementptr [23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 %i.064.lcssa
  %i2c = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c, align 4
  %i2c16 = getelementptr [23 x %struct.max8925_regulator_info], ptr @max8925_regulator_info, i32 0, i32 %i.064.lcssa, i32 1
  %37 = ptrtoint ptr %i2c16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %i2c16, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ri.161, ptr %driver_data, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end15.if.end21_crit_edge, label %if.then20

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %42 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %5, ptr %init_data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  %call23 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %ri.161, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %ri.161 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ri.161, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %44) #8
  %45 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call23, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end28, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end12 ], [ %45, %do.end28 ], [ 0, %if.end32 ], [ -22, %do.end ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, -1
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %vol_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_reg, align 4
  %conv1 = trunc i32 %selector to i8
  %call2 = tail call i32 @max8925_set_bits(ptr noundef %6, i32 noundef %8, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %vol_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_reg, align 4
  %call1 = tail call i32 @max8925_reg_read(ptr noundef %1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_voltages, align 4
  %conv = add i32 %7, 255
  %and = and i32 %call1, 255
  %conv4 = and i32 %and, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %enable_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %call1 = tail call i32 @max8925_set_bits(ptr noundef %1, i32 noundef %3, i8 noundef zeroext 29, i8 noundef zeroext 29) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %enable_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %call1 = tail call i32 @max8925_set_bits(ptr noundef %1, i32 noundef %3, i8 noundef zeroext 29, i8 noundef zeroext 28) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %enable_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %call1 = tail call i32 @max8925_reg_read(ptr noundef %1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %4 = and i32 %call1, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %4)
  %cmp2.not = icmp eq i32 %4, 28
  %and4 = and i32 %call1, 1
  %spec.select = select i1 %cmp2.not, i32 %and4, i32 1
  %retval.0 = select i1 %cmp, i32 %call1, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_set_dvm_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = add i32 %uV, -1000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -150001, i32 %0)
  %1 = icmp ult i32 %0, -150001
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub2 = add nsw i32 %uV, -800001
  %div12 = udiv i32 %sub2, 50000
  %div.tr = trunc i32 %div12 to i8
  %conv4 = shl nuw nsw i8 %div.tr, 5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %enable_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_reg, align 4
  %call5 = tail call i32 @max8925_set_bits(ptr noundef %3, i32 noundef %5, i8 noundef zeroext 96, i8 noundef zeroext %conv4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_set_dvm_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %vol_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_reg, align 4
  %call1 = tail call i32 @max8925_set_bits(ptr noundef %1, i32 noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 64) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_set_dvm_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %i2c = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %vol_reg = getelementptr inbounds %struct.max8925_regulator_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_reg, align 4
  %call1 = tail call i32 @max8925_set_bits(ptr noundef %1, i32 noundef %3, i8 noundef zeroext 64, i8 noundef zeroext 0) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_max8925_regulator__288_274_max8925_regulator_init4, !1, !"__initcall__kmod_max8925_regulator__288_274_max8925_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8925-regulator.c", i32 274, i32 1}
!2 = !{ptr @__exitcall_max8925_regulator_exit, !3, !"__exitcall_max8925_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8925-regulator.c", i32 280, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8925-regulator.c", i32 282, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max8925-regulator.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_description292, !10, !"__UNIQUE_ID_description292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/max8925-regulator.c", i32 284, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8925-regulator.c", i32 285, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8925-regulator.c", i32 265, i32 11}
!15 = !{ptr @max8925_regulator_driver, !16, !"max8925_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8925-regulator.c", i32 263, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/max8925-regulator.c", i32 230, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max8925_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max8925_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/max8925-regulator.c", i32 240, i32 3}
!27 = !{ptr @max8925_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max8925_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max8925-regulator.c", i32 254, i32 3}
!31 = !{ptr @max8925_regulator_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max8925_regulator_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/max8925-regulator.c", i32 192, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max8925-regulator.c", i32 193, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/max8925-regulator.c", i32 194, i32 2}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max8925-regulator.c", i32 196, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max8925-regulator.c", i32 197, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max8925-regulator.c", i32 198, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max8925-regulator.c", i32 199, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max8925-regulator.c", i32 200, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max8925-regulator.c", i32 201, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max8925-regulator.c", i32 202, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max8925-regulator.c", i32 203, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max8925-regulator.c", i32 204, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/max8925-regulator.c", i32 205, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/max8925-regulator.c", i32 206, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/max8925-regulator.c", i32 207, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/max8925-regulator.c", i32 208, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max8925-regulator.c", i32 209, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/max8925-regulator.c", i32 210, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/max8925-regulator.c", i32 211, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/max8925-regulator.c", i32 212, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/max8925-regulator.c", i32 213, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/max8925-regulator.c", i32 214, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/max8925-regulator.c", i32 215, i32 2}
!80 = !{ptr @max8925_regulator_info, !81, !"max8925_regulator_info", i1 false, i1 false}
!81 = !{!"../drivers/regulator/max8925-regulator.c", i32 191, i32 38}
!82 = !{ptr @max8925_regulator_sdv_ops, !83, !"max8925_regulator_sdv_ops", i1 false, i1 false}
!83 = !{!"../drivers/regulator/max8925-regulator.c", i32 132, i32 35}
!84 = !{ptr @max8925_regulator_ldo_ops, !85, !"max8925_regulator_ldo_ops", i1 false, i1 false}
!85 = !{!"../drivers/regulator/max8925-regulator.c", i32 145, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
