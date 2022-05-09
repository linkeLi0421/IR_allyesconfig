; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77620-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77620-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.max77620_regulator_info = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.regulator_desc }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max77620_chip = type { ptr, ptr, i32, i32, i8, i8, [3 x i32], [3 x i32], ptr, ptr }
%struct.max77620_regulator = type { ptr, ptr, [14 x ptr], [14 x %struct.max77620_regulator_pdata], [14 x i32], [14 x i32], [14 x i32] }
%struct.max77620_regulator_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_max77620_regulator__288_923_max77620_regulator_driver_init6 = internal global ptr @max77620_regulator_driver_init, section ".initcall6.init", align 4
@max77620_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77620_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77620_regulator_pm_ops, ptr null, ptr null }, ptr @max77620_regulator_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77620_regulator_driver_exit = internal global ptr @max77620_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [66 x i8] c"max77620_regulator.description=MAX77620/MAX20024 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [66 x i8] c"max77620_regulator.author=Mallikarjun Kasoju <mkasoju@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"max77620_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [61 x i8] c"max77620_regulator.file=drivers/regulator/max77620-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [34 x i8] c"max77620_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-pmic\00", [18 x i8] zeroinitializer }, align 32
@max77620_regulator_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77620_regulator_suspend, ptr @max77620_regulator_resume, ptr @max77620_regulator_suspend, ptr @max77620_regulator_resume, ptr @max77620_regulator_suspend, ptr @max77620_regulator_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max77620_regulator_devtype = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77620-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max20024-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max77663-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@max77620_regs_info = internal global { [14 x %struct.max77620_regulator_info], [888 x i8] } { [14 x %struct.max77620_regulator_info] [%struct.max77620_regulator_info { i8 0, i8 79, i8 22, i8 29, i8 48, i8 4, i8 34, i8 4, %struct.regulator_desc { ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 0, i8 0, i32 65, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 80, i8 23, i8 30, i8 48, i8 4, i8 34, i8 2, %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 1, i8 0, i32 77, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 81, i8 24, i8 31, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 2, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 82, i8 25, i8 32, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 3, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info zeroinitializer, %struct.max77620_regulator_info { i8 1, i8 70, i8 35, i8 36, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 5, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 71, i8 37, i8 38, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.19, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 6, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 72, i8 39, i8 40, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 7, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 73, i8 41, i8 42, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 8, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 74, i8 43, i8 44, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 9, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 75, i8 45, i8 46, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.29, ptr @.str.24, ptr @.str.30, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 10, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 76, i8 47, i8 48, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.31, ptr @.str.27, ptr @.str.32, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 11, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 77, i8 49, i8 50, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 12, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 50, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 78, i8 51, i8 52, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.36, ptr @.str.34, ptr @.str.37, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 13, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 52, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }], [888 x i8] zeroinitializer }, align 32
@max20024_regs_info = internal global { [14 x %struct.max77620_regulator_info], [888 x i8] } { [14 x %struct.max77620_regulator_info] [%struct.max77620_regulator_info { i8 0, i8 79, i8 22, i8 29, i8 48, i8 4, i8 34, i8 4, %struct.regulator_desc { ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 0, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 80, i8 23, i8 30, i8 48, i8 4, i8 34, i8 2, %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 1, i8 0, i32 224, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 81, i8 24, i8 31, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 2, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 82, i8 25, i8 32, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 3, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 83, i8 26, i8 33, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.73, ptr @.str.74, ptr @.str.75, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 4, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 70, i8 35, i8 36, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 5, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 71, i8 37, i8 38, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.19, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 6, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 72, i8 39, i8 40, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 7, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 73, i8 41, i8 42, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 8, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 74, i8 43, i8 44, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 9, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 75, i8 45, i8 46, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.29, ptr @.str.24, ptr @.str.30, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 10, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 76, i8 47, i8 48, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.31, ptr @.str.27, ptr @.str.32, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 11, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 77, i8 49, i8 50, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 12, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 50, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 78, i8 51, i8 52, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.36, ptr @.str.34, ptr @.str.37, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 13, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 52, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }], [888 x i8] zeroinitializer }, align 32
@max77663_regs_info = internal global { [14 x %struct.max77620_regulator_info], [888 x i8] } { [14 x %struct.max77620_regulator_info] [%struct.max77620_regulator_info { i8 0, i8 79, i8 22, i8 29, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 0, i8 0, i32 224, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 80, i8 23, i8 30, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 1, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 81, i8 24, i8 31, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 2, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 82, i8 25, i8 32, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 3, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 0, i8 83, i8 26, i8 33, i8 48, i8 4, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.73, ptr @.str.74, ptr @.str.75, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 4, i8 0, i32 256, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 600000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 70, i8 35, i8 36, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 5, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 71, i8 37, i8 38, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.18, ptr @.str.16, ptr @.str.19, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 6, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 72, i8 39, i8 40, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 7, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 73, i8 41, i8 42, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 8, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 74, i8 43, i8 44, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 9, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 75, i8 45, i8 46, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.29, ptr @.str.24, ptr @.str.30, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 10, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 2, i8 76, i8 47, i8 48, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.31, ptr @.str.27, ptr @.str.32, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 11, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 77, i8 49, i8 50, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 12, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 50, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }, %struct.max77620_regulator_info { i8 1, i8 78, i8 51, i8 52, i8 -64, i8 6, i8 -1, i8 0, %struct.regulator_desc { ptr @.str.36, ptr @.str.34, ptr @.str.37, i8 0, ptr @.str.5, ptr @max77620_of_parse_cb, i32 13, i8 0, i32 64, i32 0, ptr @max77620_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 52, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null } }], [888 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Regulator registration %s failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-sd0\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-sd0\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd0\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max77620_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @max77620_regulator_enable, ptr @max77620_regulator_disable, ptr @max77620_regulator_is_enabled, ptr @max77620_regulator_set_mode, ptr @max77620_regulator_get_mode, ptr null, ptr null, ptr @max77620_regulator_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-sd1\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-sd1\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd1\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-sd2\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-sd2\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd2\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-sd3\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-sd3\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd3\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo0\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in-ldo0-1\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo0\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo1\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo2\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in-ldo2\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo3\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in-ldo3-5\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo4\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in-ldo4-6\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo5\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo6\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo7\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in-ldo7-8\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-ldo8\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,active-fps-source\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"maxim,active-fps-power-up-slot\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"maxim,active-fps-power-down-slot\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,suspend-fps-source\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"maxim,suspend-fps-power-up-slot\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"maxim,suspend-fps-power-down-slot\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"maxim,power-ok-control\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,ramp-rate-setting\00", [40 x i8] zeroinitializer }, align 32
@max77620_config_power_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 373, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reg 0x%02x update failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_config_power_ok\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max77620-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77620_config_power_ok._entry_ptr = internal global ptr @max77620_config_power_ok._entry, section ".printk_index", align 4
@max77620_regulator_get_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.48, i32 257, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Regulator %d: Reg 0x%02x read failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max77620_regulator_get_power_mode\00", [62 x i8] zeroinitializer }, align 32
@max77620_regulator_get_power_mode._entry_ptr = internal global ptr @max77620_regulator_get_power_mode._entry, section ".printk_index", align 4
@max77620_regulator_get_fps_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.48, i32 109, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Reg 0x%02x read failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max77620_regulator_get_fps_src\00", [33 x i8] zeroinitializer }, align 32
@max77620_regulator_get_fps_src._entry_ptr = internal global ptr @max77620_regulator_get_fps_src._entry, section ".printk_index", align 4
@max77620_regulator_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.48, i32 228, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Regulator %d mode set failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max77620_regulator_set_power_mode\00", [62 x i8] zeroinitializer }, align 32
@max77620_regulator_set_power_mode._entry_ptr = internal global ptr @max77620_regulator_set_power_mode._entry, section ".printk_index", align 4
@max77620_regulator_set_fps_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.57, ptr @.str.48, i32 137, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max77620_regulator_set_fps_src\00", [33 x i8] zeroinitializer }, align 32
@max77620_regulator_set_fps_src._entry_ptr = internal global ptr @max77620_regulator_set_fps_src._entry, section ".printk_index", align 4
@max77620_regulator_set_fps_src._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.48, i32 146, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid FPS %d for regulator %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max77620_regulator_set_fps_src._entry_ptr.60 = internal global ptr @max77620_regulator_set_fps_src._entry.58, section ".printk_index", align 4
@max77620_regulator_set_fps_src._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.57, ptr @.str.48, i32 155, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@max77620_regulator_set_fps_src._entry_ptr.62 = internal global ptr @max77620_regulator_set_fps_src._entry.61, section ".printk_index", align 4
@max77620_regulator_set_fps_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.48, i32 199, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max77620_regulator_set_fps_slots\00", [63 x i8] zeroinitializer }, align 32
@max77620_regulator_set_fps_slots._entry_ptr = internal global ptr @max77620_regulator_set_fps_slots._entry, section ".printk_index", align 4
@max77620_set_slew_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.48, i32 344, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Regulator %d slew rate set failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77620_set_slew_rate\00", [41 x i8] zeroinitializer }, align 32
@max77620_set_slew_rate._entry_ptr = internal global ptr @max77620_set_slew_rate._entry, section ".printk_index", align 4
@max77620_regulator_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.48, i32 513, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Regulator %d mode %d is invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max77620_regulator_set_mode\00", [36 x i8] zeroinitializer }, align 32
@max77620_regulator_set_mode._entry_ptr = internal global ptr @max77620_regulator_set_mode._entry, section ".printk_index", align 4
@max77620_regulator_set_mode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.68, ptr @.str.48, i32 525, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@max77620_regulator_set_mode._entry_ptr.70 = internal global ptr @max77620_regulator_set_mode._entry.69, section ".printk_index", align 4
@max77620_regulator_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.48, i32 560, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max77620_regulator_get_mode\00", [36 x i8] zeroinitializer }, align 32
@max77620_regulator_get_mode._entry_ptr = internal global ptr @max77620_regulator_get_mode._entry, section ".printk_index", align 4
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77620-sd4\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-sd4\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd4\00", [28 x i8] zeroinitializer }, align 32
@max77620_read_slew_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.48, i32 274, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Register 0x%02x read failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77620_read_slew_rate\00", [40 x i8] zeroinitializer }, align 32
@max77620_read_slew_rate._entry_ptr = internal global ptr @max77620_read_slew_rate._entry, section ".printk_index", align 4
@switch.table.max77620_regulator_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @max77620_regs_info, ptr @max20024_regs_info, ptr @max77663_regs_info], [20 x i8] zeroinitializer }, align 32
@switch.table.max77620_regulator_probe.78 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 13750, i32 27500, i32 55000, i32 100000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"max77620_regulator_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 914, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 918, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"max77620_regulator_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 901, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"max77620_regulator_devtype\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 906, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"max77620_regs_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 726, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"max20024_regs_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 743, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"max77663_regs_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 761, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 851, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 727, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"max77620_regulator_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 644, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 728, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 729, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 730, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 732, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 733, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 734, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 735, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 736, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 737, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 738, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 739, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 740, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 611, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 614, i32 33 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 618, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 621, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 625, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 629, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 632, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 638, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 372, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 256, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 108, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 227, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 136, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 145, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 154, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 198, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 343, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 512, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 524, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 559, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 748, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [42 x i8] c"../drivers/regulator/max77620-regulator.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 273, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [38 x i8] c"switch.table.max77620_regulator_probe\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [41 x i8] c"switch.table.max77620_regulator_probe.78\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77620_regulator_driver_exit, ptr @__initcall__kmod_max77620_regulator__288_923_max77620_regulator_driver_init6, ptr @max77620_config_power_ok._entry, ptr @max77620_config_power_ok._entry_ptr, ptr @max77620_read_slew_rate._entry, ptr @max77620_read_slew_rate._entry_ptr, ptr @max77620_regulator_driver_exit, ptr @max77620_regulator_get_fps_src._entry, ptr @max77620_regulator_get_fps_src._entry_ptr, ptr @max77620_regulator_get_mode._entry, ptr @max77620_regulator_get_mode._entry_ptr, ptr @max77620_regulator_get_power_mode._entry, ptr @max77620_regulator_get_power_mode._entry_ptr, ptr @max77620_regulator_set_fps_slots._entry, ptr @max77620_regulator_set_fps_slots._entry_ptr, ptr @max77620_regulator_set_fps_src._entry, ptr @max77620_regulator_set_fps_src._entry.58, ptr @max77620_regulator_set_fps_src._entry.61, ptr @max77620_regulator_set_fps_src._entry_ptr, ptr @max77620_regulator_set_fps_src._entry_ptr.60, ptr @max77620_regulator_set_fps_src._entry_ptr.62, ptr @max77620_regulator_set_mode._entry, ptr @max77620_regulator_set_mode._entry.69, ptr @max77620_regulator_set_mode._entry_ptr, ptr @max77620_regulator_set_mode._entry_ptr.70, ptr @max77620_regulator_set_power_mode._entry, ptr @max77620_regulator_set_power_mode._entry_ptr, ptr @max77620_set_slew_rate._entry, ptr @max77620_set_slew_rate._entry_ptr, ptr @max77620_regulator_driver, ptr @.str, ptr @max77620_regulator_pm_ops, ptr @max77620_regulator_devtype, ptr @max77620_regs_info, ptr @max20024_regs_info, ptr @max77663_regs_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max77620_regulator_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.max77620_regulator_probe, ptr @switch.table.max77620_regulator_probe.78], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_devtype to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regs_info to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max20024_regs_info to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77663_regs_info to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_config_power_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_get_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_get_fps_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_fps_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_fps_src._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_fps_src._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_fps_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_set_slew_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_set_mode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_regulator_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_read_slew_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_regulator_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_regulator_probe.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77620_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77620_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77620_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rval.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 736, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i, align 4
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmap, align 4
  %rmap5 = getelementptr inbounds %struct.max77620_regulator, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %rmap5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rmap5, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %of_node10 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node10, align 8
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %chip_id = getelementptr inbounds %struct.max77620_chip, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %switch.lookup, label %if.end12.cleanup55_crit_edge

if.end12.cleanup55_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

switch.lookup:                                    ; preds = %if.end12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.max77620_regulator_probe, i32 0, i32 %19
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %9, ptr %regmap, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data, align 4
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  tail call void @device_set_of_node_from_dev(ptr noundef %dev, ptr noundef %26) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup
  %id.0122 = phi i32 [ 0, %switch.lookup ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp21 = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id.0122)
  %cmp22 = icmp eq i32 %id.0122, 4
  %or.cond = select i1 %cmp21, i1 %cmp22, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.max77620_regulator_info, ptr %switch.load, i32 %id.0122
  %desc = getelementptr %struct.max77620_regulator_info, ptr %switch.load, i32 %id.0122, i32 8
  %arrayidx27 = getelementptr %struct.max77620_regulator, ptr %call.i, i32 0, i32 2, i32 %id.0122
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr %struct.max77620_regulator, ptr %call.i, i32 0, i32 4, i32 %id.0122
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr %struct.max77620_regulator, ptr %call.i, i32 0, i32 3, i32 %id.0122
  %power_ok = getelementptr %struct.max77620_regulator, ptr %call.i, i32 0, i32 3, i32 %id.0122, i32 7
  %31 = ptrtoint ptr %power_ok to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %power_ok, align 4
  %ramp_rate_setting = getelementptr %struct.max77620_regulator, ptr %call.i, i32 0, i32 3, i32 %id.0122, i32 8
  %32 = ptrtoint ptr %ramp_rate_setting to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %ramp_rate_setting, align 4
  %33 = call ptr @memset(ptr %arrayidx29, i32 255, i32 24)
  %34 = load ptr, ptr %arrayidx27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i) #5
  %35 = ptrtoint ptr %rval.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %rval.i, align 4, !annotation !170
  %36 = ptrtoint ptr %rmap5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmap5, align 4
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %34, i32 0, i32 3
  %38 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cfg_addr.i, align 1
  %conv.i = zext i8 %39 to i32
  %call.i110 = call i32 @regmap_read(ptr noundef %37, i32 noundef %conv.i, ptr noundef nonnull %rval.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i = icmp slt i32 %call.i110, 0
  br i1 %cmp.i, label %max77620_read_slew_rate.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end24
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cond.i = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %rval.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rval.i, align 4
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %43, 6
  %and.i = and i32 %shr.i, 3
  %switch.gep143 = getelementptr inbounds [4 x i32], ptr @switch.table.max77620_regulator_probe.78, i32 0, i32 %and.i
  %44 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load144 = load i32, ptr %switch.gep143, align 4
  br label %if.end47

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %trunc.not.i = icmp eq i32 %45, 0
  %..i = select i1 %trunc.not.i, i32 100000, i32 5000
  br label %if.end47

max77620_read_slew_rate.exit:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %cfg_addr.i.le = getelementptr inbounds %struct.max77620_regulator_info, ptr %34, i32 0, i32 3
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %cfg_addr.i.le to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cfg_addr.i.le, align 1
  %conv4.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.76, i32 noundef %conv4.i, i32 noundef %call.i110) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i) #5
  br label %cleanup55

if.end47:                                         ; preds = %sw.default.i, %sw.bb.i
  %..i.sink = phi i32 [ %..i, %sw.default.i ], [ %switch.load144, %sw.bb.i ]
  %ramp_delay15.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %34, i32 0, i32 8, i32 18
  %50 = ptrtoint ptr %ramp_delay15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %..i.sink, ptr %ramp_delay15.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i) #5
  %call48 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i111 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then50, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %call48 to i32
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 4
  %call52 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %51, ptr noundef nonnull @.str.1, ptr noundef %53) #5
  br label %cleanup55

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.0122, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.cleanup55_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup55_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup55

cleanup55:                                        ; preds = %for.inc.cleanup55_crit_edge, %if.then50, %max77620_read_slew_rate.exit, %if.end12.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup55_crit_edge ], [ -22, %if.end12.cleanup55_crit_edge ], [ %call.i110, %max77620_read_slew_rate.exit ], [ %call52, %if.then50 ], [ 0, %for.inc.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %val.i105.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %pval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval) #5
  %4 = ptrtoint ptr %pval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pval, align 4, !annotation !170
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.38, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pval, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 4, %entry.cond.end_crit_edge ]
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %arrayidx, align 4
  %call.i.i66 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.39, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66)
  %tobool2.not = icmp sgt i32 %call.i.i66, -1
  br i1 %tobool2.not, label %cond.true3, label %cond.end.cond.end5_crit_edge

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end5

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pval, align 4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true3, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %9, %cond.true3 ], [ -1, %cond.end.cond.end5_crit_edge ]
  %active_fps_pu_slot = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 2
  %10 = ptrtoint ptr %active_fps_pu_slot to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond6, ptr %active_fps_pu_slot, align 4
  %call.i.i67 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.40, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i67)
  %tobool8.not = icmp sgt i32 %call.i.i67, -1
  br i1 %tobool8.not, label %cond.true9, label %cond.end5.cond.end11_crit_edge

cond.end5.cond.end11_crit_edge:                   ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end11

cond.true9:                                       ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pval, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true9, %cond.end5.cond.end11_crit_edge
  %cond12 = phi i32 [ %12, %cond.true9 ], [ -1, %cond.end5.cond.end11_crit_edge ]
  %active_fps_pd_slot = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 1
  %13 = ptrtoint ptr %active_fps_pd_slot to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond12, ptr %active_fps_pd_slot, align 4
  %call.i.i68 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.41, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i68)
  %tobool14.not = icmp sgt i32 %call.i.i68, -1
  br i1 %tobool14.not, label %cond.true15, label %cond.end11.cond.end17_crit_edge

cond.end11.cond.end17_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end17

cond.true15:                                      ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pval, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true15, %cond.end11.cond.end17_crit_edge
  %cond18 = phi i32 [ %15, %cond.true15 ], [ -1, %cond.end11.cond.end17_crit_edge ]
  %suspend_fps_src = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 3
  %16 = ptrtoint ptr %suspend_fps_src to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond18, ptr %suspend_fps_src, align 4
  %call.i.i69 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i69)
  %tobool20.not = icmp sgt i32 %call.i.i69, -1
  br i1 %tobool20.not, label %cond.true21, label %cond.end17.cond.end23_crit_edge

cond.end17.cond.end23_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end23

cond.true21:                                      ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pval, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true21, %cond.end17.cond.end23_crit_edge
  %cond24 = phi i32 [ %18, %cond.true21 ], [ -1, %cond.end17.cond.end23_crit_edge ]
  %suspend_fps_pu_slot = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 5
  %19 = ptrtoint ptr %suspend_fps_pu_slot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond24, ptr %suspend_fps_pu_slot, align 4
  %call.i.i70 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.43, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i70)
  %tobool26.not = icmp sgt i32 %call.i.i70, -1
  br i1 %tobool26.not, label %cond.true27, label %cond.end23.cond.end29_crit_edge

cond.end23.cond.end29_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end29

cond.true27:                                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pval, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true27, %cond.end23.cond.end29_crit_edge
  %cond30 = phi i32 [ %21, %cond.true27 ], [ -1, %cond.end23.cond.end29_crit_edge ]
  %suspend_fps_pd_slot = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 4
  %22 = ptrtoint ptr %suspend_fps_pd_slot to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond30, ptr %suspend_fps_pd_slot, align 4
  %call.i.i71 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.44, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71)
  %tobool32.not = icmp sgt i32 %call.i.i71, -1
  br i1 %tobool32.not, label %if.then, label %cond.end29.if.end_crit_edge

cond.end29.if.end_crit_edge:                      ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end29.if.end_crit_edge
  %.sink = phi i32 [ %24, %if.then ], [ -1, %cond.end29.if.end_crit_edge ]
  %25 = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 7
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %25, align 4
  %call.i.i72 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.45, ptr noundef nonnull %pval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i72)
  %tobool35.not = icmp sgt i32 %call.i.i72, -1
  br i1 %tobool35.not, label %cond.true36, label %if.end.cond.end38_crit_edge

if.end.cond.end38_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end38

cond.true36:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %pval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pval, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true36, %if.end.cond.end38_crit_edge
  %cond39 = phi i32 [ %28, %cond.true36 ], [ 0, %if.end.cond.end38_crit_edge ]
  %ramp_rate_setting = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %3, i32 8
  %29 = ptrtoint ptr %ramp_rate_setting to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond39, ptr %ramp_rate_setting, align 4
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %arrayidx.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %31
  %arrayidx2.i.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 2, i32 %31
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx2.i.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.max77620_chip, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cond26.i.i = icmp eq i32 %41, 1
  br i1 %cond26.i.i, label %sw.bb.i.i, label %cond.end38.max77620_config_power_ok.exit.i_crit_edge

cond.end38.max77620_config_power_ok.exit.i_crit_edge: ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit.i

sw.bb.i.i:                                        ; preds = %cond.end38
  %power_ok.i.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %31, i32 7
  %42 = ptrtoint ptr %power_ok.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %power_ok.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.i = icmp sgt i32 %43, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i.i.max77620_config_power_ok.exit.i_crit_edge

sw.bb.i.i.max77620_config_power_ok.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp3.i.i = icmp eq i8 %45, 0
  %..i.i = select i1 %cmp3.i.i, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  %rmap.i.i = getelementptr inbounds %struct.max77620_regulator, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %rmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmap.i.i, align 4
  %cfg_addr.i.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %33, i32 0, i32 3
  %48 = ptrtoint ptr %cfg_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cfg_addr.i.i, align 1
  %conv9.i.i = zext i8 %49 to i32
  %conv11.i.i = select i1 %tobool.not.i.i, i32 0, i32 %..i.i
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %conv9.i.i, i32 noundef %..i.i, i32 noundef %conv11.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp13.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp13.i.i, label %do.end.i.i, label %if.then.i.i.max77620_config_power_ok.exit.i_crit_edge

if.then.i.i.max77620_config_power_ok.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %cfg_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cfg_addr.i.i, align 1
  %conv18.i.i = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.46, i32 noundef %conv18.i.i, i32 noundef %call.i.i.i) #8
  br label %max77620_config_power_ok.exit.i

max77620_config_power_ok.exit.i:                  ; preds = %do.end.i.i, %if.then.i.i.max77620_config_power_ok.exit.i_crit_edge, %sw.bb.i.i.max77620_config_power_ok.exit.i_crit_edge, %cond.end38.max77620_config_power_ok.exit.i_crit_edge
  %54 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %56 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i.i, align 4, !annotation !170
  %power_mode_mask.i.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %55, i32 0, i32 4
  %57 = ptrtoint ptr %power_mode_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %power_mode_mask.i.i, align 4
  %power_mode_shift.i.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %55, i32 0, i32 5
  %59 = ptrtoint ptr %power_mode_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %power_mode_shift.i.i, align 1
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cond.i.i = icmp eq i8 %62, 0
  %cfg_addr.i101.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %55, i32 0, i32 3
  %volt_addr.i.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %55, i32 0, i32 2
  %addr.0.in.in.i.i = select i1 %cond.i.i, ptr %cfg_addr.i101.i, ptr %volt_addr.i.i
  %63 = ptrtoint ptr %addr.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %addr.0.in.i.i = load i8, ptr %addr.0.in.in.i.i, align 1
  %addr.0.i.i = zext i8 %addr.0.in.i.i to i32
  %rmap.i102.i = getelementptr inbounds %struct.max77620_regulator, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmap.i102.i, align 4
  %call.i.i73 = call i32 @regmap_read(ptr noundef %65, i32 noundef %addr.0.i.i, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %cmp.i103.i = icmp slt i32 %call.i.i73, 0
  br i1 %cmp.i103.i, label %max77620_regulator_get_power_mode.exit.thread.i, label %max77620_regulator_get_power_mode.exit.i

max77620_regulator_get_power_mode.exit.thread.i:  ; preds = %max77620_config_power_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.51, i32 noundef %31, i32 noundef %addr.0.i.i, i32 noundef %call.i.i73) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %max77620_init_pmic.exit

max77620_regulator_get_power_mode.exit.i:         ; preds = %max77620_config_power_ok.exit.i
  %68 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i.i, align 4
  %conv5.i.i = zext i8 %58 to i32
  %and.i.i = and i32 %69, %conv5.i.i
  %conv6.i.i = zext i8 %60 to i32
  %shr.i.i = lshr i32 %and.i.i, %conv6.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %arrayidx2.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 5, i32 %31
  %70 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr.i.i, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 4, i32 %31
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %arrayidx3.i, align 4
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp4.i = icmp eq i32 %73, 4
  br i1 %cmp4.i, label %if.then5.i, label %max77620_regulator_get_power_mode.exit.i.if.end11.i_crit_edge

max77620_regulator_get_power_mode.exit.i.if.end11.i_crit_edge: ; preds = %max77620_regulator_get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then5.i:                                       ; preds = %max77620_regulator_get_power_mode.exit.i
  %74 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i105.i) #5
  %76 = ptrtoint ptr %val.i105.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %val.i105.i, align 4, !annotation !170
  %77 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmap.i102.i, align 4
  %fps_addr.i.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %fps_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fps_addr.i.i, align 1
  %conv.i.i = zext i8 %80 to i32
  %call.i108.i = call i32 @regmap_read(ptr noundef %78, i32 noundef %conv.i.i, ptr noundef nonnull %val.i105.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %cmp.i109.i = icmp slt i32 %call.i108.i, 0
  br i1 %cmp.i109.i, label %max77620_regulator_get_fps_src.exit.thread.i, label %max77620_regulator_get_fps_src.exit.i

max77620_regulator_get_fps_src.exit.thread.i:     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %fps_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fps_addr.i.i, align 1
  %conv4.i.i = zext i8 %84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.53, i32 noundef %conv4.i.i, i32 noundef %call.i108.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i105.i) #5
  br label %max77620_init_pmic.exit

max77620_regulator_get_fps_src.exit.i:            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %val.i105.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i105.i, align 4
  %and.i111.i = lshr i32 %86, 6
  %shr.i112.i = and i32 %and.i111.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i105.i) #5
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr.i112.i, ptr %arrayidx.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %max77620_regulator_get_fps_src.exit.i, %max77620_regulator_get_power_mode.exit.i.if.end11.i_crit_edge
  %88 = phi i32 [ %shr.i112.i, %max77620_regulator_get_fps_src.exit.i ], [ %73, %max77620_regulator_get_power_mode.exit.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp13.i = icmp eq i32 %88, 3
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end11.i
  %89 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx3.i, align 4
  %91 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx2.i.i, align 4
  %power_mode_mask.i116.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %power_mode_mask.i116.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %power_mode_mask.i116.i, align 4
  %power_mode_shift.i117.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %power_mode_shift.i117.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %power_mode_shift.i117.i, align 1
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cond.i118.i = icmp eq i8 %98, 0
  %cfg_addr.i119.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %92, i32 0, i32 3
  %volt_addr.i120.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %92, i32 0, i32 2
  %addr.0.in.i121.i = select i1 %cond.i118.i, ptr %cfg_addr.i119.i, ptr %volt_addr.i120.i
  %99 = ptrtoint ptr %addr.0.in.i121.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %addr.0.i122.i = load i8, ptr %addr.0.in.i121.i, align 1
  %100 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmap.i102.i, align 4
  %conv2.i.i = zext i8 %addr.0.i122.i to i32
  %conv3.i.i = zext i8 %94 to i32
  %conv4.i124.i = zext i8 %96 to i32
  %shl.i.i = shl i32 %90, %conv4.i124.i
  %call.i.i125.i = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125.i)
  %cmp.i126.i = icmp slt i32 %call.i.i125.i, 0
  br i1 %cmp.i126.i, label %max77620_regulator_set_power_mode.exit.thread.i, label %if.then14.i.if.end34.sink.split.i_crit_edge

if.then14.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.sink.split.i

max77620_regulator_set_power_mode.exit.thread.i:  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.55, i32 noundef %31, i32 noundef %call.i.i125.i) #8
  br label %max77620_init_pmic.exit

if.else.i:                                        ; preds = %if.end11.i
  %104 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx2.i, align 4
  %106 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp25.not.i = icmp eq i32 %105, %107
  br i1 %cmp25.not.i, label %if.else.i.if.end34.i_crit_edge, label %if.then26.i

if.else.i.if.end34.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then26.i:                                      ; preds = %if.else.i
  %108 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx2.i.i, align 4
  %power_mode_mask.i130.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %power_mode_mask.i130.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %power_mode_mask.i130.i, align 4
  %power_mode_shift.i131.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %109, i32 0, i32 5
  %112 = ptrtoint ptr %power_mode_shift.i131.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %power_mode_shift.i131.i, align 1
  %114 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cond.i132.i = icmp eq i8 %115, 0
  %cfg_addr.i133.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %109, i32 0, i32 3
  %volt_addr.i134.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %109, i32 0, i32 2
  %addr.0.in.i135.i = select i1 %cond.i132.i, ptr %cfg_addr.i133.i, ptr %volt_addr.i134.i
  %116 = ptrtoint ptr %addr.0.in.i135.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %addr.0.i136.i = load i8, ptr %addr.0.in.i135.i, align 1
  %117 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmap.i102.i, align 4
  %conv2.i138.i = zext i8 %addr.0.i136.i to i32
  %conv3.i139.i = zext i8 %111 to i32
  %conv4.i140.i = zext i8 %113 to i32
  %shl.i141.i = shl i32 %107, %conv4.i140.i
  %call.i.i142.i = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef %conv2.i138.i, i32 noundef %conv3.i139.i, i32 noundef %shl.i141.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142.i)
  %cmp.i143.i = icmp slt i32 %call.i.i142.i, 0
  br i1 %cmp.i143.i, label %max77620_regulator_set_power_mode.exit147.thread.i, label %if.then26.i.if.end34.sink.split.i_crit_edge

if.then26.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.sink.split.i

max77620_regulator_set_power_mode.exit147.thread.i: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.55, i32 noundef %31, i32 noundef %call.i.i142.i) #8
  br label %max77620_init_pmic.exit

if.end34.sink.split.i:                            ; preds = %if.then26.i.if.end34.sink.split.i_crit_edge, %if.then14.i.if.end34.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %90, %if.then14.i.if.end34.sink.split.i_crit_edge ], [ %107, %if.then26.i.if.end34.sink.split.i_crit_edge ]
  %121 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.sink.i, ptr %arrayidx2.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %if.else.i.if.end34.i_crit_edge
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  %call36.i = call fastcc i32 @max77620_regulator_set_fps_src(ptr noundef %1, i32 noundef %123, i32 noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end34.i.max77620_init_pmic.exit_crit_edge, label %if.end39.i

if.end34.i.max77620_init_pmic.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_init_pmic.exit

if.end39.i:                                       ; preds = %if.end34.i
  %124 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i149.i = icmp eq ptr %125, null
  br i1 %tobool.not.i149.i, label %if.end39.i.if.end43.i_crit_edge, label %if.end.i151.i

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.end.i151.i:                                    ; preds = %if.end39.i
  %active_fps_pd_slot.i.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %31, i32 1
  %active_fps_pu_slot.i.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %31, i32 2
  %126 = ptrtoint ptr %active_fps_pd_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %pd.0.i.i = load i32, ptr %active_fps_pd_slot.i.i, align 4
  %127 = ptrtoint ptr %active_fps_pu_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %pu.0.i.i = load i32, ptr %active_fps_pu_slot.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pu.0.i.i)
  %cmp.i150.i = icmp sgt i32 %pu.0.i.i, -1
  %mask.0.i.i = select i1 %cmp.i150.i, i32 56, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pd.0.i.i)
  %cmp9.i.i = icmp sgt i32 %pd.0.i.i, -1
  %or13.i.i = or i32 %mask.0.i.i, 7
  %mask.1.i.i = select i1 %cmp9.i.i, i32 %or13.i.i, i32 %mask.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.i.i)
  %tobool15.not.i.i = icmp eq i32 %mask.1.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end.i151.i.if.end43.i_crit_edge, label %if.then16.i.i

if.end.i151.i.if.end43.i_crit_edge:               ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then16.i.i:                                    ; preds = %if.end.i151.i
  %shl.i152.i = shl i32 %pu.0.i.i, 3
  %val.0.i.i = select i1 %cmp.i150.i, i32 %shl.i152.i, i32 0
  %or12.i.i = select i1 %cmp9.i.i, i32 %pd.0.i.i, i32 0
  %val.1.i.i = or i32 %val.0.i.i, %or12.i.i
  %128 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmap.i102.i, align 4
  %fps_addr.i154.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %125, i32 0, i32 1
  %130 = ptrtoint ptr %fps_addr.i154.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %fps_addr.i154.i, align 1
  %conv.i155.i = zext i8 %131 to i32
  %call.i.i156.i = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef %conv.i155.i, i32 noundef %mask.1.i.i, i32 noundef %val.1.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156.i)
  %cmp17.i.i = icmp slt i32 %call.i.i156.i, 0
  br i1 %cmp17.i.i, label %max77620_regulator_set_fps_slots.exit.i, label %if.then16.i.i.if.end43.i_crit_edge

if.then16.i.i.if.end43.i_crit_edge:               ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

max77620_regulator_set_fps_slots.exit.i:          ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %134 = ptrtoint ptr %fps_addr.i154.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %fps_addr.i154.i, align 1
  %conv21.i.i = zext i8 %135 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.63, i32 noundef %conv21.i.i, i32 noundef %call.i.i156.i) #8
  br label %max77620_init_pmic.exit

if.end43.i:                                       ; preds = %if.then16.i.i.if.end43.i_crit_edge, %if.end.i151.i.if.end43.i_crit_edge, %if.end39.i.if.end43.i_crit_edge
  %ramp_rate_setting.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %31, i32 8
  %136 = ptrtoint ptr %ramp_rate_setting.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ramp_rate_setting.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i = icmp eq i32 %137, 0
  br i1 %tobool.not.i, label %if.end43.i.max77620_init_pmic.exit_crit_edge, label %if.then44.i

if.end43.i.max77620_init_pmic.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_init_pmic.exit

if.then44.i:                                      ; preds = %if.end43.i
  %138 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx2.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp.i160.i = icmp eq i8 %141, 0
  br i1 %cmp.i160.i, label %if.then.i162.i, label %if.else16.i.i

if.then.i162.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13751, i32 %137)
  %cmp3.i161.i = icmp slt i32 %137, 13751
  br i1 %cmp3.i161.i, label %if.then.i162.i.if.end22.i.i_crit_edge, label %if.else.i.i

if.then.i162.i.if.end22.i.i_crit_edge:            ; preds = %if.then.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %if.then.i162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27501, i32 %137)
  %cmp6.i.i = icmp ult i32 %137, 27501
  br i1 %cmp6.i.i, label %if.else.i.i.if.end22.i.i_crit_edge, label %if.else9.i.i

if.else.i.i.if.end22.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 55001, i32 %137)
  %cmp10.i.i = icmp ult i32 %137, 55001
  %..i163.i = select i1 %cmp10.i.i, i32 128, i32 192
  br label %if.end22.i.i

if.else16.i.i:                                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001, i32 %137)
  %cmp17.i164.i = icmp slt i32 %137, 5001
  %.42.i.i = zext i1 %cmp17.i164.i to i32
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else16.i.i, %if.else9.i.i, %if.else.i.i.if.end22.i.i_crit_edge, %if.then.i162.i.if.end22.i.i_crit_edge
  %val.2.i.i = phi i32 [ %.42.i.i, %if.else16.i.i ], [ 0, %if.then.i162.i.if.end22.i.i_crit_edge ], [ 64, %if.else.i.i.if.end22.i.i_crit_edge ], [ %..i163.i, %if.else9.i.i ]
  %mask.0.i165.i = phi i32 [ 1, %if.else16.i.i ], [ 192, %if.then.i162.i.if.end22.i.i_crit_edge ], [ 192, %if.else.i.i.if.end22.i.i_crit_edge ], [ 192, %if.else9.i.i ]
  %142 = ptrtoint ptr %rmap.i102.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmap.i102.i, align 4
  %cfg_addr.i167.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %139, i32 0, i32 3
  %144 = ptrtoint ptr %cfg_addr.i167.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %cfg_addr.i167.i, align 1
  %conv23.i.i = zext i8 %145 to i32
  %call.i.i168.i = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef %conv23.i.i, i32 noundef %mask.0.i165.i, i32 noundef %val.2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i168.i)
  %cmp25.i.i = icmp slt i32 %call.i.i168.i, 0
  br i1 %cmp25.i.i, label %max77620_set_slew_rate.exit.thread.i, label %if.end22.i.i.max77620_init_pmic.exit_crit_edge

if.end22.i.i.max77620_init_pmic.exit_crit_edge:   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_init_pmic.exit

max77620_set_slew_rate.exit.thread.i:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.65, i32 noundef %31, i32 noundef %call.i.i168.i) #8
  br label %max77620_init_pmic.exit

max77620_init_pmic.exit:                          ; preds = %max77620_set_slew_rate.exit.thread.i, %if.end22.i.i.max77620_init_pmic.exit_crit_edge, %if.end43.i.max77620_init_pmic.exit_crit_edge, %max77620_regulator_set_fps_slots.exit.i, %if.end34.i.max77620_init_pmic.exit_crit_edge, %max77620_regulator_set_power_mode.exit147.thread.i, %max77620_regulator_set_power_mode.exit.thread.i, %max77620_regulator_get_fps_src.exit.thread.i, %max77620_regulator_get_power_mode.exit.thread.i
  %retval.0.i = phi i32 [ %call36.i, %if.end34.i.max77620_init_pmic.exit_crit_edge ], [ %call.i.i156.i, %max77620_regulator_set_fps_slots.exit.i ], [ %call.i.i73, %max77620_regulator_get_power_mode.exit.thread.i ], [ %call.i108.i, %max77620_regulator_get_fps_src.exit.thread.i ], [ %call.i.i125.i, %max77620_regulator_set_power_mode.exit.thread.i ], [ %call.i.i142.i, %max77620_regulator_set_power_mode.exit147.thread.i ], [ %call.i.i168.i, %max77620_set_slew_rate.exit.thread.i ], [ 0, %if.end22.i.i.max77620_init_pmic.exit_crit_edge ], [ 0, %if.end43.i.max77620_init_pmic.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77620_regulator_set_fps_src(ptr nocapture noundef %pmic, i32 noundef %fps_src, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %pmic, i32 0, i32 2, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !170
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %fps_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fps_src, label %do.end11 [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %if.end.sw.epilog_crit_edge54
    i32 2, label %if.end.sw.epilog_crit_edge55
    i32 3, label %if.end.sw.epilog_crit_edge56
    i32 4, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge56:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge54:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %rmap = getelementptr inbounds %struct.max77620_regulator, ptr %pmic, i32 0, i32 1
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %fps_addr = getelementptr inbounds %struct.max77620_regulator_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %fps_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fps_addr, align 1
  %conv = zext i8 %7 to i32
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %conv, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmic, align 4
  %10 = ptrtoint ptr %fps_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fps_addr, align 1
  %conv6 = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %conv6, i32 noundef %call) #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = lshr i32 %13, 6
  %shr = and i32 %and, 3
  %arrayidx8 = getelementptr %struct.max77620_regulator, ptr %pmic, i32 0, i32 6, i32 %id
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %arrayidx8, align 4
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmic, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.59, i32 noundef %fps_src, i32 noundef %id) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge54, %if.end.sw.epilog_crit_edge55, %if.end.sw.epilog_crit_edge56
  %rmap13 = getelementptr inbounds %struct.max77620_regulator, ptr %pmic, i32 0, i32 1
  %17 = ptrtoint ptr %rmap13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmap13, align 4
  %fps_addr14 = getelementptr inbounds %struct.max77620_regulator_info, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %fps_addr14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fps_addr14, align 1
  %conv15 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %fps_src, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %conv15, i32 noundef 192, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %do.end22, label %if.end26

do.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pmic, align 4
  %23 = ptrtoint ptr %fps_addr14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fps_addr14, align 1
  %conv25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.46, i32 noundef %conv25, i32 noundef %call.i) #8
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx28 = getelementptr %struct.max77620_regulator, ptr %pmic, i32 0, i32 6, i32 %id
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %fps_src, ptr %arrayidx28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end22, %do.end11, %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call, %do.end ], [ 0, %if.end7 ], [ %call.i, %do.end22 ], [ 0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 6, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 4, i32 %call1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %power_mode_mask.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power_mode_mask.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode_mask.i, align 4
  %power_mode_shift.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %power_mode_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_mode_shift.i, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cond.i = icmp eq i8 %11, 0
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %5, i32 0, i32 3
  %volt_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %5, i32 0, i32 2
  %addr.0.in.i = select i1 %cond.i, ptr %cfg_addr.i, ptr %volt_addr.i
  %12 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %addr.0.i = load i8, ptr %addr.0.in.i, align 1
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmap.i, align 4
  %conv2.i = zext i8 %addr.0.i to i32
  %conv3.i = zext i8 %7 to i32
  %conv4.i = zext i8 %9 to i32
  %shl.i = shl i32 %3, %conv4.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.55, i32 noundef %call1, i32 noundef %call.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 5, i32 %call1
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %arrayidx6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 6, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %power_mode_mask.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %power_mode_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode_mask.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cond.i = icmp eq i8 %7, 0
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 3
  %volt_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 2
  %addr.0.in.i = select i1 %cond.i, ptr %cfg_addr.i, ptr %volt_addr.i
  %8 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %addr.0.i = load i8, ptr %addr.0.in.i, align 1
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmap.i, align 4
  %conv2.i = zext i8 %addr.0.i to i32
  %conv3.i = zext i8 %5 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.55, i32 noundef %call1, i32 noundef %call.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 5, i32 %call1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 6, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !170
  %power_mode_mask.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %power_mode_mask.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_mode_mask.i, align 4
  %power_mode_shift.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %power_mode_shift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %power_mode_shift.i, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cond.i = icmp eq i8 %10, 0
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 3
  %volt_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 2
  %addr.0.in.in.i = select i1 %cond.i, ptr %cfg_addr.i, ptr %volt_addr.i
  %11 = ptrtoint ptr %addr.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %addr.0.in.i = load i8, ptr %addr.0.in.in.i, align 1
  %addr.0.i = zext i8 %addr.0.in.i to i32
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %addr.0.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max77620_regulator_get_power_mode.exit.thread, label %max77620_regulator_get_power_mode.exit

max77620_regulator_get_power_mode.exit.thread:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.51, i32 noundef %call1, i32 noundef %addr.0.i, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

max77620_regulator_get_power_mode.exit:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %conv5.i = zext i8 %6 to i32
  %and.i = and i32 %17, %conv5.i
  %conv6.i = zext i8 %8 to i32
  %shr.i = lshr i32 %and.i, %conv6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp6.not = icmp ne i32 %shr.i, 0
  %. = zext i1 %cmp6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %max77620_regulator_get_power_mode.exit, %max77620_regulator_get_power_mode.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %max77620_regulator_get_power_mode.exit ], [ %call.i, %max77620_regulator_get_power_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %mode, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.67, i32 noundef %call1, i32 noundef %mode) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %entry.sw.epilog_crit_edge
  %fpwm.0.off0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 4, %entry.sw.epilog_crit_edge ]
  %power_mode.0 = phi i32 [ 2, %sw.bb5 ], [ 3, %sw.bb4 ], [ 3, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end, label %sw.epilog.skip_fpwm_crit_edge

sw.epilog.skip_fpwm_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_fpwm

if.end:                                           ; preds = %sw.epilog
  %rmap = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmap, align 4
  %cfg_addr = getelementptr inbounds %struct.max77620_regulator_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cfg_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cfg_addr, align 1
  %conv9 = zext i8 %10 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %conv9, i32 noundef 4, i32 noundef %fpwm.0.off0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %13 = ptrtoint ptr %cfg_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cfg_addr, align 1
  %conv20 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63, i32 noundef %conv20, i32 noundef %call.i) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %current_mode = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 3, i32 %call1, i32 6
  %15 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mode, ptr %current_mode, align 4
  br label %skip_fpwm

skip_fpwm:                                        ; preds = %if.end21, %sw.epilog.skip_fpwm_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %power_mode_mask.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %power_mode_mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %power_mode_mask.i, align 4
  %power_mode_shift.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %power_mode_shift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %power_mode_shift.i, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cond.i = icmp eq i8 %23, 0
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %17, i32 0, i32 3
  %volt_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %17, i32 0, i32 2
  %addr.0.in.i = select i1 %cond.i, ptr %cfg_addr.i, ptr %volt_addr.i
  %24 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %addr.0.i = load i8, ptr %addr.0.in.i, align 1
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmap.i, align 4
  %conv2.i = zext i8 %addr.0.i to i32
  %conv3.i = zext i8 %19 to i32
  %conv4.i = zext i8 %21 to i32
  %shl.i = shl i32 %power_mode.0, %conv4.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %max77620_regulator_set_power_mode.exit.thread, label %if.end26

max77620_regulator_set_power_mode.exit.thread:    ; preds = %skip_fpwm
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.55, i32 noundef %call1, i32 noundef %call.i.i) #8
  br label %cleanup

if.end26:                                         ; preds = %skip_fpwm
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 5, i32 %call1
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %power_mode.0, ptr %arrayidx6.i, align 4
  %arrayidx27 = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 4, i32 %call1
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %power_mode.0, ptr %arrayidx27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %max77620_regulator_set_power_mode.exit.thread, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ %call.i, %do.end17 ], [ %call.i.i, %max77620_regulator_set_power_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !170
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !170
  %power_mode_mask.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %power_mode_mask.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode_mask.i, align 4
  %power_mode_shift.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %power_mode_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_mode_shift.i, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cond.i = icmp eq i8 %11, 0
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %4, i32 0, i32 3
  %volt_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %4, i32 0, i32 2
  %addr.0.in.in.i = select i1 %cond.i, ptr %cfg_addr.i, ptr %volt_addr.i
  %12 = ptrtoint ptr %addr.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %addr.0.in.i = load i8, ptr %addr.0.in.in.i, align 1
  %addr.0.i = zext i8 %addr.0.in.i to i32
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %addr.0.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max77620_regulator_get_power_mode.exit.thread, label %max77620_regulator_get_power_mode.exit

max77620_regulator_get_power_mode.exit.thread:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef %call1, i32 noundef %addr.0.i, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

max77620_regulator_get_power_mode.exit:           ; preds = %entry
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %conv5.i = zext i8 %7 to i32
  %and.i = and i32 %18, %conv5.i
  %conv6.i = zext i8 %9 to i32
  %shr.i = lshr i32 %and.i, %conv6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp4 = icmp eq i8 %20, 0
  br i1 %cmp4, label %if.then6, label %max77620_regulator_get_power_mode.exit.if.end16_crit_edge

max77620_regulator_get_power_mode.exit.if.end16_crit_edge: ; preds = %max77620_regulator_get_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then6:                                         ; preds = %max77620_regulator_get_power_mode.exit
  %21 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmap.i, align 4
  %cfg_addr = getelementptr inbounds %struct.max77620_regulator_info, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %cfg_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cfg_addr, align 1
  %conv7 = zext i8 %24 to i32
  %call8 = call i32 @regmap_read(ptr noundef %22, i32 noundef %conv7, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %27 = ptrtoint ptr %cfg_addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cfg_addr, align 1
  %conv13 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.71, i32 noundef %conv13, i32 noundef %call8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and = lshr i32 %30, 2
  %and.lobit = and i32 %and, 1
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %max77620_regulator_get_power_mode.exit.if.end16_crit_edge
  %fpwm.0 = phi i32 [ %and.lobit, %if.end14 ], [ 0, %max77620_regulator_get_power_mode.exit.if.end16_crit_edge ]
  %31 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %shr.i, label %if.end16.cleanup_crit_edge [
    i32 3, label %if.end16.sw.bb_crit_edge
    i32 0, label %if.end16.sw.bb_crit_edge41
    i32 2, label %if.end16.sw.epilog_crit_edge
    i32 1, label %if.end16.sw.epilog_crit_edge42
  ]

if.end16.sw.epilog_crit_edge42:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end16.sw.bb_crit_edge41:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fpwm.0)
  %tobool17.not = icmp eq i32 %fpwm.0, 0
  %. = select i1 %tobool17.not, i32 2, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end16.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge42
  %reg_mode.0 = phi i32 [ %., %sw.bb ], [ 4, %if.end16.sw.epilog_crit_edge ], [ 4, %if.end16.sw.epilog_crit_edge42 ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end16.cleanup_crit_edge, %do.end, %max77620_regulator_get_power_mode.exit.thread
  %retval.0 = phi i32 [ %call8, %do.end ], [ %reg_mode.0, %sw.epilog ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %max77620_regulator_get_power_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %ramp_rate_setting = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 3, i32 %call1, i32 8
  %0 = ptrtoint ptr %ramp_rate_setting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ramp_rate_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.max77620_regulator, ptr %call, i32 0, i32 2, i32 %call1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else16.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 13751, i32 %ramp_delay)
  %cmp3.i = icmp slt i32 %ramp_delay, 13751
  br i1 %cmp3.i, label %if.then.i.if.end22.i_crit_edge, label %if.else.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27501, i32 %ramp_delay)
  %cmp6.i = icmp ult i32 %ramp_delay, 27501
  br i1 %cmp6.i, label %if.else.i.if.end22.i_crit_edge, label %if.else9.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 55001, i32 %ramp_delay)
  %cmp10.i = icmp ult i32 %ramp_delay, 55001
  %..i = select i1 %cmp10.i, i32 128, i32 192
  br label %if.end22.i

if.else16.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001, i32 %ramp_delay)
  %cmp17.i = icmp slt i32 %ramp_delay, 5001
  %.42.i = zext i1 %cmp17.i to i32
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %if.else9.i, %if.else.i.if.end22.i_crit_edge, %if.then.i.if.end22.i_crit_edge
  %val.2.i = phi i32 [ %.42.i, %if.else16.i ], [ 0, %if.then.i.if.end22.i_crit_edge ], [ 64, %if.else.i.if.end22.i_crit_edge ], [ %..i, %if.else9.i ]
  %mask.0.i = phi i32 [ 1, %if.else16.i ], [ 192, %if.then.i.if.end22.i_crit_edge ], [ 192, %if.else.i.if.end22.i_crit_edge ], [ 192, %if.else9.i ]
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmap.i, align 4
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cfg_addr.i, align 1
  %conv23.i = zext i8 %9 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %conv23.i, i32 noundef %mask.0.i, i32 noundef %val.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp25.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp25.i, label %do.end.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.65, i32 noundef %call1, i32 noundef %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end22.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 2, i32 %id.013
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.max77620_regulator_set_fps_slots.exit_crit_edge, label %if.end.i

for.body.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

if.end.i:                                         ; preds = %for.body
  %suspend_fps_pu_slot.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.013, i32 5
  %suspend_fps_pd_slot.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.013, i32 4
  %4 = ptrtoint ptr %suspend_fps_pd_slot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pd.0.i = load i32, ptr %suspend_fps_pd_slot.i, align 4
  %5 = ptrtoint ptr %suspend_fps_pu_slot.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pu.0.i = load i32, ptr %suspend_fps_pu_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pu.0.i)
  %cmp.i = icmp sgt i32 %pu.0.i, -1
  %mask.0.i = select i1 %cmp.i, i32 56, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pd.0.i)
  %cmp9.i = icmp sgt i32 %pd.0.i, -1
  %or13.i = or i32 %mask.0.i, 7
  %mask.1.i = select i1 %cmp9.i, i32 %or13.i, i32 %mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.i)
  %tobool15.not.i = icmp eq i32 %mask.1.i, 0
  br i1 %tobool15.not.i, label %if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge, label %if.then16.i

if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

if.then16.i:                                      ; preds = %if.end.i
  %shl.i = shl i32 %pu.0.i, 3
  %val.0.i = select i1 %cmp.i, i32 %shl.i, i32 0
  %or12.i = select i1 %cmp9.i, i32 %pd.0.i, i32 0
  %val.1.i = or i32 %val.0.i, %or12.i
  %6 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmap.i, align 4
  %fps_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %fps_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fps_addr.i, align 1
  %conv.i = zext i8 %9 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %conv.i, i32 noundef %mask.1.i, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp17.i, label %do.end.i, label %if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge

if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

do.end.i:                                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %fps_addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fps_addr.i, align 1
  %conv21.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.63, i32 noundef %conv21.i, i32 noundef %call.i.i) #8
  br label %max77620_regulator_set_fps_slots.exit

max77620_regulator_set_fps_slots.exit:            ; preds = %do.end.i, %if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge, %if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge, %for.body.max77620_regulator_set_fps_slots.exit_crit_edge
  %suspend_fps_src = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.013, i32 3
  %14 = ptrtoint ptr %suspend_fps_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %suspend_fps_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %max77620_regulator_set_fps_slots.exit.for.inc_crit_edge, label %if.end

max77620_regulator_set_fps_slots.exit.for.inc_crit_edge: ; preds = %max77620_regulator_set_fps_slots.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %max77620_regulator_set_fps_slots.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call fastcc i32 @max77620_regulator_set_fps_src(ptr noundef %1, i32 noundef %15, i32 noundef %id.013)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %max77620_regulator_set_fps_slots.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.013, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_regulator_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmap.i = getelementptr inbounds %struct.max77620_regulator, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.022
  %arrayidx2.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 2, i32 %id.022
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %chip_id.i = getelementptr inbounds %struct.max77620_chip, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cond26.i = icmp eq i32 %11, 1
  br i1 %cond26.i, label %sw.bb.i, label %for.body.max77620_config_power_ok.exit_crit_edge

for.body.max77620_config_power_ok.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit

sw.bb.i:                                          ; preds = %for.body
  %power_ok.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.022, i32 7
  %12 = ptrtoint ptr %power_ok.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp sgt i32 %13, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.max77620_config_power_ok.exit_crit_edge

sw.bb.i.max77620_config_power_ok.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit

if.then.i:                                        ; preds = %sw.bb.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp3.i = icmp eq i8 %15, 0
  %..i = select i1 %cmp3.i, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %16 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmap.i, align 4
  %cfg_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cfg_addr.i, align 1
  %conv9.i = zext i8 %19 to i32
  %conv11.i = select i1 %tobool.not.i, i32 0, i32 %..i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %conv9.i, i32 noundef %..i, i32 noundef %conv11.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i, label %do.end.i, label %if.then.i.max77620_config_power_ok.exit_crit_edge

if.then.i.max77620_config_power_ok.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_config_power_ok.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %cfg_addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cfg_addr.i, align 1
  %conv18.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.46, i32 noundef %conv18.i, i32 noundef %call.i.i) #8
  br label %max77620_config_power_ok.exit

max77620_config_power_ok.exit:                    ; preds = %do.end.i, %if.then.i.max77620_config_power_ok.exit_crit_edge, %sw.bb.i.max77620_config_power_ok.exit_crit_edge, %for.body.max77620_config_power_ok.exit_crit_edge
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i17 = icmp eq ptr %25, null
  br i1 %tobool.not.i17, label %max77620_config_power_ok.exit.max77620_regulator_set_fps_slots.exit_crit_edge, label %if.end.i

max77620_config_power_ok.exit.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %max77620_config_power_ok.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

if.end.i:                                         ; preds = %max77620_config_power_ok.exit
  %active_fps_pd_slot.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.022, i32 1
  %active_fps_pu_slot.i = getelementptr %struct.max77620_regulator, ptr %1, i32 0, i32 3, i32 %id.022, i32 2
  %26 = ptrtoint ptr %active_fps_pd_slot.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %pd.0.i = load i32, ptr %active_fps_pd_slot.i, align 4
  %27 = ptrtoint ptr %active_fps_pu_slot.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pu.0.i = load i32, ptr %active_fps_pu_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pu.0.i)
  %cmp.i18 = icmp sgt i32 %pu.0.i, -1
  %mask.0.i = select i1 %cmp.i18, i32 56, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pd.0.i)
  %cmp9.i = icmp sgt i32 %pd.0.i, -1
  %or13.i = or i32 %mask.0.i, 7
  %mask.1.i = select i1 %cmp9.i, i32 %or13.i, i32 %mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.1.i)
  %tobool15.not.i = icmp eq i32 %mask.1.i, 0
  br i1 %tobool15.not.i, label %if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge, label %if.then16.i

if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

if.then16.i:                                      ; preds = %if.end.i
  %shl.i = shl i32 %pu.0.i, 3
  %val.0.i = select i1 %cmp.i18, i32 %shl.i, i32 0
  %or12.i = select i1 %cmp9.i, i32 %pd.0.i, i32 0
  %val.1.i = or i32 %val.0.i, %or12.i
  %28 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmap.i, align 4
  %fps_addr.i = getelementptr inbounds %struct.max77620_regulator_info, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %fps_addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fps_addr.i, align 1
  %conv.i = zext i8 %31 to i32
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %conv.i, i32 noundef %mask.1.i, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp17.i = icmp slt i32 %call.i.i20, 0
  br i1 %cmp17.i, label %do.end.i21, label %if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge

if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77620_regulator_set_fps_slots.exit

do.end.i21:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %fps_addr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fps_addr.i, align 1
  %conv21.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.63, i32 noundef %conv21.i, i32 noundef %call.i.i20) #8
  br label %max77620_regulator_set_fps_slots.exit

max77620_regulator_set_fps_slots.exit:            ; preds = %do.end.i21, %if.then16.i.max77620_regulator_set_fps_slots.exit_crit_edge, %if.end.i.max77620_regulator_set_fps_slots.exit_crit_edge, %max77620_config_power_ok.exit.max77620_regulator_set_fps_slots.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp4 = icmp slt i32 %37, 0
  br i1 %cmp4, label %max77620_regulator_set_fps_slots.exit.for.inc_crit_edge, label %if.end

max77620_regulator_set_fps_slots.exit.for.inc_crit_edge: ; preds = %max77620_regulator_set_fps_slots.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %max77620_regulator_set_fps_slots.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call fastcc i32 @max77620_regulator_set_fps_src(ptr noundef %1, i32 noundef %37, i32 noundef %id.022)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %max77620_regulator_set_fps_slots.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.022, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !152, !154, !155, !156, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_max77620_regulator__288_923_max77620_regulator_driver_init6, !1, !"__initcall__kmod_max77620_regulator__288_923_max77620_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77620-regulator.c", i32 923, i32 1}
!2 = !{ptr @__exitcall_max77620_regulator_driver_exit, !1, !"__exitcall_max77620_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max77620-regulator.c", i32 925, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max77620-regulator.c", i32 926, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max77620-regulator.c", i32 927, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/max77620-regulator.c", i32 928, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max77620-regulator.c", i32 918, i32 11}
!14 = !{ptr @max77620_regulator_driver, !15, !"max77620_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max77620-regulator.c", i32 914, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/max77620-regulator.c", i32 851, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/max77620-regulator.c", i32 727, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max77620-regulator.c", i32 728, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max77620-regulator.c", i32 729, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max77620-regulator.c", i32 730, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/max77620-regulator.c", i32 732, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max77620-regulator.c", i32 733, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max77620-regulator.c", i32 734, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max77620-regulator.c", i32 735, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max77620-regulator.c", i32 736, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max77620-regulator.c", i32 737, i32 2}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max77620-regulator.c", i32 738, i32 2}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/max77620-regulator.c", i32 739, i32 2}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/max77620-regulator.c", i32 740, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @max77620_regs_info, !68, !"max77620_regs_info", i1 false, i1 false}
!68 = !{!"../drivers/regulator/max77620-regulator.c", i32 726, i32 39}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max77620-regulator.c", i32 611, i32 33}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/max77620-regulator.c", i32 614, i32 33}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max77620-regulator.c", i32 618, i32 8}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/max77620-regulator.c", i32 621, i32 33}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max77620-regulator.c", i32 625, i32 8}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/max77620-regulator.c", i32 629, i32 8}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/max77620-regulator.c", i32 632, i32 33}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/max77620-regulator.c", i32 638, i32 33}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/max77620-regulator.c", i32 372, i32 5}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @max77620_config_power_ok._entry, !86, !"_entry", i1 false, i1 false}
!92 = !{ptr @max77620_config_power_ok._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/max77620-regulator.c", i32 256, i32 3}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @max77620_regulator_get_power_mode._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @max77620_regulator_get_power_mode._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/max77620-regulator.c", i32 108, i32 3}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @max77620_regulator_get_fps_src._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @max77620_regulator_get_fps_src._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/max77620-regulator.c", i32 227, i32 3}
!105 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @max77620_regulator_set_power_mode._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @max77620_regulator_set_power_mode._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/max77620-regulator.c", i32 136, i32 4}
!110 = !{ptr @max77620_regulator_set_fps_src._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @max77620_regulator_set_fps_src._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/max77620-regulator.c", i32 145, i32 3}
!114 = !{ptr @max77620_regulator_set_fps_src._entry.58, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @max77620_regulator_set_fps_src._entry_ptr.60, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @max77620_regulator_set_fps_src._entry.61, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/regulator/max77620-regulator.c", i32 154, i32 3}
!118 = !{ptr @max77620_regulator_set_fps_src._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/max77620-regulator.c", i32 198, i32 4}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @max77620_regulator_set_fps_slots._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @max77620_regulator_set_fps_slots._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/max77620-regulator.c", i32 343, i32 3}
!126 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @max77620_set_slew_rate._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @max77620_set_slew_rate._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @max77620_regulator_ops, !130, !"max77620_regulator_ops", i1 false, i1 false}
!130 = !{!"../drivers/regulator/max77620-regulator.c", i32 644, i32 35}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/max77620-regulator.c", i32 512, i32 3}
!133 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @max77620_regulator_set_mode._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @max77620_regulator_set_mode._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @max77620_regulator_set_mode._entry.69, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/regulator/max77620-regulator.c", i32 524, i32 3}
!138 = !{ptr @max77620_regulator_set_mode._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/max77620-regulator.c", i32 559, i32 4}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @max77620_regulator_get_mode._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @max77620_regulator_get_mode._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/regulator/max77620-regulator.c", i32 748, i32 2}
!146 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @max20024_regs_info, !149, !"max20024_regs_info", i1 false, i1 false}
!149 = !{!"../drivers/regulator/max77620-regulator.c", i32 743, i32 39}
!150 = !{ptr @max77663_regs_info, !151, !"max77663_regs_info", i1 false, i1 false}
!151 = !{!"../drivers/regulator/max77620-regulator.c", i32 761, i32 39}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/max77620-regulator.c", i32 273, i32 3}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @max77620_read_slew_rate._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @max77620_read_slew_rate._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @max77620_regulator_pm_ops, !158, !"max77620_regulator_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/regulator/max77620-regulator.c", i32 901, i32 32}
!159 = !{ptr @max77620_regulator_devtype, !160, !"max77620_regulator_devtype", i1 false, i1 false}
!160 = !{!"../drivers/regulator/max77620-regulator.c", i32 906, i32 40}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
