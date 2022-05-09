; ModuleID = '/llk/IR_all_yes/drivers/regulator/axp20x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/axp20x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_axp20x_regulator__288_1370_axp20x_regulator_driver_init6 = internal global ptr @axp20x_regulator_driver_init, section ".initcall6.init", align 4
@axp20x_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_regulator_driver_exit = internal global ptr @axp20x_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [57 x i8] c"axp20x_regulator.file=drivers/regulator/axp20x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [32 x i8] c"axp20x_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"axp20x_regulator.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"axp20x_regulator.description=Regulator Driver for AXP20X PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"axp20x_regulator.alias=platform:axp20x-regulator\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp20x-regulator\00", [47 x i8] zeroinitializer }, align 32
@axp22x_regulators = internal constant { [20 x %struct.regulator_desc], [1232 x i8] } { [20 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.20, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.20, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.32, ptr @.str.34, i8 0, ptr @.str.20, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr @.str.36, ptr @.str.35, i8 0, ptr @.str.20, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.36, ptr @.str.37, i8 0, ptr @.str.20, ptr null, i32 11, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.36, ptr @.str.38, i8 0, ptr @.str.20, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.20, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.40, ptr @.str.41, i8 0, ptr @.str.20, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.40, ptr @.str.42, i8 0, ptr @.str.20, ptr null, i32 15, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.40, ptr @.str.43, i8 0, ptr @.str.20, ptr null, i32 16, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.20, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr @.str.45, ptr @.str.46, i8 0, ptr @.str.20, ptr null, i32 18, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr @.str.45, ptr @.str.47, i8 0, ptr @.str.20, ptr null, i32 19, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1232 x i8] zeroinitializer }, align 32
@axp20x_regulators = internal constant { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.50, ptr @.str.51, ptr @.str.50, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr @.str.53, ptr @.str.52, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr @.str.55, ptr @.str.54, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 113, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr @.str.53, ptr @.str.56, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp20x_ldo4_ranges, ptr null, i32 5, ptr null, ptr null, i32 0, i32 0, i32 40, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr @.str.58, ptr @.str.57, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 7, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [436 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"x-powers,drive-vbus-en\00", [41 x i8] zeroinitializer }, align 32
@axp803_regulators = internal constant { [22 x %struct.regulator_desc], [1320 x i8] } { [22 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 34, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 69, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc5_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr @.str.60, ptr @.str.59, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.20, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.20, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.32, ptr @.str.34, i8 0, ptr @.str.20, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.20, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.40, ptr @.str.41, i8 0, ptr @.str.20, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.40, ptr @.str.42, i8 0, ptr @.str.20, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.40, ptr @.str.43, i8 0, ptr @.str.20, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr @.str.36, ptr @.str.35, i8 0, ptr @.str.20, ptr null, i32 14, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.36, ptr @.str.37, i8 0, ptr @.str.20, ptr null, i32 15, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.36, ptr @.str.38, i8 0, ptr @.str.20, ptr null, i32 16, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr @.str.62, ptr @.str.61, i8 0, ptr @.str.20, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr @.str.62, ptr @.str.63, i8 0, ptr @.str.20, ptr null, i32 18, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.64, ptr @.str.45, ptr @.str.64, i8 0, ptr @.str.20, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr @.str.45, ptr @.str.65, i8 0, ptr @.str.20, ptr null, i32 20, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr @.str.45, ptr @.str.66, i8 0, ptr @.str.20, ptr null, i32 21, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1320 x i8] zeroinitializer }, align 32
@axp806_regulators = internal constant { [16 x %struct.regulator_desc], [960 x i8] } { [16 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.67, ptr @.str.68, ptr @.str.67, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdca_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 18, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr @.str.70, ptr @.str.69, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 19, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr @.str.72, ptr @.str.71, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdca_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 20, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr @.str.74, ptr @.str.73, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdcd_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 21, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr @.str.76, ptr @.str.75, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 24, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1100000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 28, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.32, ptr @.str.34, i8 0, ptr @.str.20, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.77, ptr @.str.78, ptr @.str.77, i8 0, ptr @.str.20, ptr null, i32 8, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.79, ptr @.str.78, ptr @.str.79, i8 0, ptr @.str.20, ptr null, i32 9, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.80, ptr @.str.78, ptr @.str.80, i8 0, ptr @.str.20, ptr null, i32 10, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.81, ptr @.str.78, ptr @.str.81, i8 0, ptr @.str.20, ptr null, i32 11, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.82, ptr @.str.83, ptr @.str.82, i8 0, ptr @.str.20, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.84, ptr @.str.83, ptr @.str.84, i8 0, ptr @.str.20, ptr null, i32 13, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.85, ptr @.str.83, ptr @.str.85, i8 0, ptr @.str.20, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.86, ptr @.str.87, ptr @.str.86, i8 0, ptr @.str.20, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [960 x i8] zeroinitializer }, align 32
@axp809_regulators = internal constant { [19 x %struct.regulator_desc], [1156 x i8] } { [19 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 57, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp809_dcdc4_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.20, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.20, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.32, ptr @.str.34, i8 0, ptr @.str.20, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr @.str.36, ptr @.str.35, i8 0, ptr @.str.20, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.36, ptr @.str.37, i8 0, ptr @.str.20, ptr null, i32 11, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.36, ptr @.str.38, i8 0, ptr @.str.20, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.20, ptr null, i32 13, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.40, ptr @.str.41, i8 0, ptr @.str.20, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.45, ptr @.str.44, i8 0, ptr @.str.20, ptr null, i32 15, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr @.str.45, ptr @.str.46, i8 0, ptr @.str.20, ptr null, i32 16, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr @.str.45, ptr @.str.47, i8 0, ptr @.str.20, ptr null, i32 17, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.86, ptr @.str.87, ptr @.str.86, i8 0, ptr @.str.20, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1156 x i8] zeroinitializer }, align 32
@axp813_regulators = internal constant { [24 x %struct.regulator_desc], [1440 x i8] } { [24 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.18, ptr @.str.19, ptr @.str.18, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.20, ptr null, i32 1, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.20, ptr null, i32 2, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 34, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.20, ptr null, i32 3, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.20, ptr null, i32 4, i8 0, i32 69, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc5_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr @.str.60, ptr @.str.59, i8 0, ptr @.str.20, ptr null, i32 5, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.88, ptr @.str.89, ptr @.str.88, i8 0, ptr @.str.20, ptr null, i32 6, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 38, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.20, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.20, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.32, ptr @.str.34, i8 0, ptr @.str.20, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.20, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.40, ptr @.str.41, i8 0, ptr @.str.20, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr @.str.40, ptr @.str.42, i8 0, ptr @.str.20, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.40, ptr @.str.43, i8 0, ptr @.str.20, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr @.str.36, ptr @.str.35, i8 0, ptr @.str.20, ptr null, i32 14, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.36, ptr @.str.37, i8 0, ptr @.str.20, ptr null, i32 15, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr @.str.36, ptr @.str.38, i8 0, ptr @.str.20, ptr null, i32 16, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr @.str.62, ptr @.str.61, i8 0, ptr @.str.20, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr @.str.62, ptr @.str.63, i8 0, ptr @.str.20, ptr null, i32 18, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc zeroinitializer, %struct.regulator_desc { ptr @.str.64, ptr @.str.45, ptr @.str.64, i8 0, ptr @.str.20, ptr null, i32 20, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr @.str.45, ptr @.str.65, i8 0, ptr @.str.20, ptr null, i32 21, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr @.str.45, ptr @.str.66, i8 0, ptr @.str.20, ptr null, i32 22, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.86, ptr @.str.87, ptr @.str.86, i8 0, ptr @.str.20, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1440 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported AXP variant: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axp20x_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/axp20x-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry_ptr = internal global ptr @axp20x_regulator_probe._entry, section ".printk_index", align 4
@axp20x_regulator_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry_ptr.9 = internal global ptr @axp20x_regulator_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"x-powers,dcdc-workmode\00", [41 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set workmode on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry_ptr.13 = internal global ptr @axp20x_regulator_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-name\00", [17 x i8] zeroinitializer }, align 32
@axp22x_drivevbus_regulator = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.105, ptr @.str.105, ptr @.str.105, i8 0, ptr @.str.20, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register drivevbus\0A\00", [34 x i8] zeroinitializer }, align 32
@axp20x_regulator_probe._entry_ptr.17 = internal global ptr @axp20x_regulator_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc1\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin1\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@axp20x_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_set_ramp_delay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc2\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc3\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc4\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin4\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc5\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin5\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dc1sw\00", [26 x i8] zeroinitializer }, align 32
@axp20x_ops_sw = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dc5ldo\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo4\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_ldo\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ips\00", [28 x i8] zeroinitializer }, align 32
@axp20x_ops_fixed = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo_io0\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo_io1\00", [24 x i8] zeroinitializer }, align 32
@axp20x_set_ramp_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported ramp value %d\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axp20x_set_ramp_delay\00", [42 x i8] zeroinitializer }, align 32
@axp20x_set_ramp_delay._entry_ptr = internal global ptr @axp20x_set_ramp_delay._entry, section ".printk_index", align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"acin\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo24in\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo3in\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@axp20x_ops_range = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@axp20x_ldo4_ranges = internal constant { [5 x %struct.linear_range], [48 x i8] } { [5 x %struct.linear_range] [%struct.linear_range { i32 1250000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 1300000, i32 1, i32 8, i32 100000 }, %struct.linear_range { i32 2500000, i32 9, i32 9, i32 0 }, %struct.linear_range { i32 2700000, i32 10, i32 11, i32 100000 }, %struct.linear_range { i32 3000000, i32 12, i32 15, i32 100000 }], [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo5in\00", [25 x i8] zeroinitializer }, align 32
@axp803_dcdc234_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 70, i32 10000 }, %struct.linear_range { i32 1220000, i32 71, i32 75, i32 20000 }], [32 x i8] zeroinitializer }, align 32
@axp803_dcdc5_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 32, i32 10000 }, %struct.linear_range { i32 1140000, i32 33, i32 68, i32 20000 }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc6\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin6\00", [27 x i8] zeroinitializer }, align 32
@axp803_dcdc6_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1120000, i32 51, i32 71, i32 20000 }], [32 x i8] zeroinitializer }, align 32
@axp803_dldo2_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 26, i32 100000 }, %struct.linear_range { i32 3400000, i32 27, i32 31, i32 200000 }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc-ldo\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo-io0\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo-io1\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdca\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vina\00", [27 x i8] zeroinitializer }, align 32
@axp806_dcdca_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1120000, i32 51, i32 71, i32 20000 }], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdcb\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vinb\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdcc\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vinc\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdcd\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vind\00", [27 x i8] zeroinitializer }, align 32
@axp806_dcdcd_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 45, i32 20000 }, %struct.linear_range { i32 1600000, i32 46, i32 63, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdce\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vine\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bldo4\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cldoin\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swin\00", [27 x i8] zeroinitializer }, align 32
@axp809_dcdc4_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 47, i32 20000 }, %struct.linear_range { i32 1800000, i32 48, i32 56, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcdc7\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vin7\00", [27 x i8] zeroinitializer }, align 32
@axp20x_regulator_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 1082, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulators node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"axp20x_regulator_parse_dt\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axp20x_regulator_parse_dt._entry_ptr = internal global ptr @axp20x_regulator_parse_dt._entry, section ".printk_index", align 4
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x-powers,dcdc-freq\00", [45 x i8] zeroinitializer }, align 32
@axp20x_regulator_parse_dt._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.91, ptr @.str.4, i32 1087, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error setting dcdc frequency: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@axp20x_regulator_parse_dt._entry_ptr.96 = internal global ptr @axp20x_regulator_parse_dt._entry.94, section ".printk_index", align 4
@axp20x_set_dcdc_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 1045, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Setting DCDC frequency for unsupported AXP variant\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"axp20x_set_dcdc_freq\00", [43 x i8] zeroinitializer }, align 32
@axp20x_set_dcdc_freq._entry_ptr = internal global ptr @axp20x_set_dcdc_freq._entry, section ".printk_index", align 4
@axp20x_set_dcdc_freq._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.4, i32 1055, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DCDC frequency too low. Set to %ukHz\0A\00", [58 x i8] zeroinitializer }, align 32
@axp20x_set_dcdc_freq._entry_ptr.101 = internal global ptr @axp20x_set_dcdc_freq._entry.99, section ".printk_index", align 4
@axp20x_set_dcdc_freq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.4, i32 1061, ptr @.str.92, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DCDC frequency too high. Set to %ukHz\0A\00", [57 x i8] zeroinitializer }, align 32
@axp20x_set_dcdc_freq._entry_ptr.104 = internal global ptr @axp20x_set_dcdc_freq._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drivevbus\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.106 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 128]
@__sancov_gen_cov_switch_values.111 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"axp20x_regulator_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1363, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1366, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"axp22x_regulators\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 561, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"axp20x_regulators\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 537, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1233, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"axp803_regulators\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 687, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"axp806_regulators\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 784, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"axp809_regulators\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 849, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"axp813_regulators\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 919, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1256, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1316, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1323, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1327, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1337, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"axp22x_drivevbus_regulator\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 629, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1355, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 562, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"axp20x_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 498, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 565, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 568, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 571, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 574, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 578, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [14 x i8] c"axp20x_ops_sw\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 508, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 581, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 584, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 587, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 590, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 605, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 608, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 611, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 593, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 596, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 599, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 602, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 626, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"axp20x_ops_fixed\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 485, i32 35 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 616, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 622, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 425, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 544, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 545, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 548, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 551, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"axp20x_ops_range\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 489, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"axp20x_ldo4_ranges\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 514, i32 34 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 555, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [22 x i8] c"axp803_dcdc234_ranges\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 642, i32 34 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c"axp803_dcdc5_ranges\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 653, i32 34 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 707, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"axp803_dcdc6_ranges\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 664, i32 34 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"axp803_dldo2_ranges\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 676, i32 34 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 745, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 748, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 759, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 751, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 755, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 785, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c"axp806_dcdca_ranges\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 762, i32 34 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 789, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 792, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 796, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c"axp806_dcdcd_ranges\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 773, i32 34 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 800, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 812, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 815, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 818, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 821, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 824, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 827, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 831, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 834, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c"axp809_dcdc4_ranges\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 838, i32 34 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 943, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1082, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1084, i32 36 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1087, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1044, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1054, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1060, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.482 = private constant [40 x i8] c"../drivers/regulator/axp20x-regulator.c\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 630, i32 11 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_axp20x_regulator_driver_exit, ptr @__initcall__kmod_axp20x_regulator__288_1370_axp20x_regulator_driver_init6, ptr @axp20x_regulator_driver_exit, ptr @axp20x_regulator_parse_dt._entry, ptr @axp20x_regulator_parse_dt._entry.94, ptr @axp20x_regulator_parse_dt._entry_ptr, ptr @axp20x_regulator_parse_dt._entry_ptr.96, ptr @axp20x_regulator_probe._entry, ptr @axp20x_regulator_probe._entry.11, ptr @axp20x_regulator_probe._entry.15, ptr @axp20x_regulator_probe._entry.7, ptr @axp20x_regulator_probe._entry_ptr, ptr @axp20x_regulator_probe._entry_ptr.13, ptr @axp20x_regulator_probe._entry_ptr.17, ptr @axp20x_regulator_probe._entry_ptr.9, ptr @axp20x_set_dcdc_freq._entry, ptr @axp20x_set_dcdc_freq._entry.102, ptr @axp20x_set_dcdc_freq._entry.99, ptr @axp20x_set_dcdc_freq._entry_ptr, ptr @axp20x_set_dcdc_freq._entry_ptr.101, ptr @axp20x_set_dcdc_freq._entry_ptr.104, ptr @axp20x_set_ramp_delay._entry, ptr @axp20x_set_ramp_delay._entry_ptr, ptr @axp20x_regulator_driver, ptr @.str, ptr @axp22x_regulators, ptr @axp20x_regulators, ptr @.str.1, ptr @axp803_regulators, ptr @axp806_regulators, ptr @axp809_regulators, ptr @axp813_regulators, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @axp22x_drivevbus_regulator, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @axp20x_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @axp20x_ops_sw, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @axp20x_ops_fixed, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @axp20x_ops_range, ptr @axp20x_ldo4_ranges, ptr @.str.57, ptr @.str.58, ptr @axp803_dcdc234_ranges, ptr @axp803_dcdc5_ranges, ptr @.str.59, ptr @.str.60, ptr @axp803_dcdc6_ranges, ptr @axp803_dldo2_ranges, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @axp806_dcdca_ranges, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @axp806_dcdcd_ranges, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @axp809_dcdc4_ranges, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_regulators to i32), i32 4880, i32 6112, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulators to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_regulators to i32), i32 5368, i32 6688, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_regulators to i32), i32 3904, i32 4864, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_regulators to i32), i32 4636, i32 5792, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_regulators to i32), i32 5856, i32 7296, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_drivevbus_regulator to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ops_sw to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ops_fixed to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_set_ramp_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ops_range to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_ldo4_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_dcdc234_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_dcdc5_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_dcdc6_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp803_dldo2_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_dcdca_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp806_dcdcd_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp809_dcdc4_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_regulator_parse_dt._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_set_dcdc_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_set_dcdc_freq._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_set_dcdc_freq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %dcdcfreq.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  %workmode = alloca i32, align 4
  %dcdc1_name = alloca ptr, align 4
  %dcdc5_name = alloca ptr, align 4
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
  %4 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %7 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %8 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %config, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  %regmap4 = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap4, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %7, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %workmode) #6
  %17 = ptrtoint ptr %workmode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %workmode, align 4, !annotation !238
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcdc1_name) #6
  %18 = ptrtoint ptr %dcdc1_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.18, ptr %dcdc1_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcdc5_name) #6
  %19 = ptrtoint ptr %dcdc5_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.27, ptr %dcdc5_name, align 4
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %variant, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge268
    i32 3, label %entry.sw.bb5_crit_edge
    i32 4, label %entry.sw.bb5_crit_edge269
    i32 6, label %sw.bb10
    i32 7, label %sw.bb16
    i32 8, label %sw.bb17
    i32 9, label %sw.bb18
  ]

entry.sw.bb5_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.epilog_crit_edge268:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge269
  %of_node8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %23 = ptrtoint ptr %of_node8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node8, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %25 = ptrtoint ptr %of_node13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node13, align 8
  %call.i221 = tail call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i222 = icmp ne ptr %call.i221, null
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node21 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node21, align 8
  %call.i223 = tail call ptr @of_find_property(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i224 = icmp ne ptr %call.i223, null
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %21) #9
  br label %cleanup133

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb10, %sw.bb5, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge268
  %cmp33 = phi i1 [ false, %sw.bb18 ], [ false, %sw.bb17 ], [ false, %sw.bb16 ], [ false, %sw.bb10 ], [ true, %sw.bb5 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge268 ]
  %cmp36 = phi i1 [ false, %sw.bb18 ], [ false, %sw.bb17 ], [ false, %sw.bb16 ], [ true, %sw.bb10 ], [ false, %sw.bb5 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge268 ]
  %cmp40 = phi i1 [ false, %sw.bb18 ], [ true, %sw.bb17 ], [ false, %sw.bb16 ], [ false, %sw.bb10 ], [ false, %sw.bb5 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge268 ]
  %regulators.0 = phi ptr [ @axp813_regulators, %sw.bb18 ], [ @axp809_regulators, %sw.bb17 ], [ @axp806_regulators, %sw.bb16 ], [ @axp803_regulators, %sw.bb10 ], [ @axp22x_regulators, %sw.bb5 ], [ @axp20x_regulators, %entry.sw.epilog_crit_edge ], [ @axp20x_regulators, %entry.sw.epilog_crit_edge268 ]
  %nregulators.0 = phi i32 [ 24, %sw.bb18 ], [ 19, %sw.bb17 ], [ 16, %sw.bb16 ], [ 22, %sw.bb10 ], [ 20, %sw.bb5 ], [ 7, %entry.sw.epilog_crit_edge ], [ 7, %entry.sw.epilog_crit_edge268 ]
  %drivevbus.0.shrunk = phi i1 [ %tobool.i224, %sw.bb18 ], [ false, %sw.bb17 ], [ false, %sw.bb16 ], [ %tobool.i222, %sw.bb10 ], [ %tobool.i, %sw.bb5 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge268 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcdcfreq.i) #6
  %29 = ptrtoint ptr %dcdcfreq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dcdcfreq.i, align 4
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i225 = tail call ptr @of_node_get(ptr noundef %33) #6
  %tobool.not.i = icmp eq ptr %call.i225, null
  br i1 %tobool.not.i, label %sw.epilog.axp20x_regulator_parse_dt.exit_crit_edge, label %if.end.i

sw.epilog.axp20x_regulator_parse_dt.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp20x_regulator_parse_dt.exit

if.end.i:                                         ; preds = %sw.epilog
  %call1.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call.i225, ptr noundef nonnull @.str.20) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90) #9
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.93, ptr noundef nonnull %dcdcfreq.i, i32 noundef 1, i32 noundef 0) #6
  %34 = ptrtoint ptr %dcdcfreq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dcdcfreq.i, align 4
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i, align 4
  %variant.i.i = getelementptr inbounds %struct.axp20x_dev, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %variant.i.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %41, label %axp20x_set_dcdc_freq.exit.thread.i [
    i32 1, label %if.else.i.sw.epilog.i.i_crit_edge
    i32 2, label %if.else.i.sw.epilog.i.i_crit_edge270
    i32 6, label %if.else.i.sw.bb1.i.i_crit_edge
    i32 9, label %if.else.i.sw.bb1.i.i_crit_edge271
    i32 7, label %if.else.i.sw.bb2.i.i_crit_edge
    i32 3, label %if.else.i.sw.bb4.i.i_crit_edge
    i32 4, label %if.else.i.sw.bb4.i.i_crit_edge272
    i32 8, label %if.else.i.sw.bb4.i.i_crit_edge273
  ]

if.else.i.sw.bb4.i.i_crit_edge273:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i

if.else.i.sw.bb4.i.i_crit_edge272:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i

if.else.i.sw.bb4.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i

if.else.i.sw.bb2.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i.i

if.else.i.sw.bb1.i.i_crit_edge271:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

if.else.i.sw.epilog.i.i_crit_edge270:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.else.i.sw.epilog.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.else.i.sw.bb1.i.i_crit_edge, %if.else.i.sw.bb1.i.i_crit_edge271
  br label %sw.bb2.i.i

sw.bb2.i.i:                                       ; preds = %sw.bb1.i.i, %if.else.i.sw.bb2.i.i_crit_edge
  %reg.0.i.i = phi i32 [ 55, %if.else.i.sw.bb2.i.i_crit_edge ], [ 59, %sw.bb1.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 7
  %spec.select.i.i = select i1 %cmp.i.i, i32 28, i32 %reg.0.i.i
  br label %sw.bb4.i.i

sw.bb4.i.i:                                       ; preds = %sw.bb2.i.i, %if.else.i.sw.bb4.i.i_crit_edge, %if.else.i.sw.bb4.i.i_crit_edge272, %if.else.i.sw.bb4.i.i_crit_edge273
  %reg.1.i.i = phi i32 [ 55, %if.else.i.sw.bb4.i.i_crit_edge ], [ 55, %if.else.i.sw.bb4.i.i_crit_edge272 ], [ 55, %if.else.i.sw.bb4.i.i_crit_edge273 ], [ %spec.select.i.i, %sw.bb2.i.i ]
  br label %sw.epilog.i.i

axp20x_set_dcdc_freq.exit.thread.i:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #9
  br label %do.end10.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %if.else.i.sw.epilog.i.i_crit_edge, %if.else.i.sw.epilog.i.i_crit_edge270
  %reg.2.i.i = phi i32 [ %reg.1.i.i, %sw.bb4.i.i ], [ 55, %if.else.i.sw.epilog.i.i_crit_edge ], [ 55, %if.else.i.sw.epilog.i.i_crit_edge270 ]
  %min.0.i.i = phi i32 [ 1800, %sw.bb4.i.i ], [ 750, %if.else.i.sw.epilog.i.i_crit_edge ], [ 750, %if.else.i.sw.epilog.i.i_crit_edge270 ]
  %max.0.i.i = phi i32 [ 4050, %sw.bb4.i.i ], [ 1875, %if.else.i.sw.epilog.i.i_crit_edge ], [ 1875, %if.else.i.sw.epilog.i.i_crit_edge270 ]
  %def.0.i.i = phi i32 [ 3000, %sw.bb4.i.i ], [ 1500, %if.else.i.sw.epilog.i.i_crit_edge ], [ 1500, %if.else.i.sw.epilog.i.i_crit_edge270 ]
  %step.0.i.i = phi i32 [ 150, %sw.bb4.i.i ], [ 75, %if.else.i.sw.epilog.i.i_crit_edge ], [ 75, %if.else.i.sw.epilog.i.i_crit_edge270 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.i.i = icmp eq i32 %35, 0
  %spec.select43.i.i = select i1 %cmp6.i.i, i32 %def.0.i.i, i32 %35
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select43.i.i, i32 %min.0.i.i)
  %cmp9.i.i = icmp ult i32 %spec.select43.i.i, %min.0.i.i
  br i1 %cmp9.i.i, label %if.then10.i.i, label %sw.epilog.i.i.if.end15.i.i_crit_edge

sw.epilog.i.i.if.end15.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i.i

if.then10.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %min.0.i.i) #9
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then10.i.i, %sw.epilog.i.i.if.end15.i.i_crit_edge
  %dcdcfreq.addr.1.i.i = phi i32 [ %min.0.i.i, %if.then10.i.i ], [ %spec.select43.i.i, %sw.epilog.i.i.if.end15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dcdcfreq.addr.1.i.i, i32 %max.0.i.i)
  %cmp16.i.i = icmp ugt i32 %dcdcfreq.addr.1.i.i, %max.0.i.i
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end15.i.i.axp20x_set_dcdc_freq.exit.i_crit_edge

if.end15.i.i.axp20x_set_dcdc_freq.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp20x_set_dcdc_freq.exit.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %max.0.i.i) #9
  br label %axp20x_set_dcdc_freq.exit.i

axp20x_set_dcdc_freq.exit.i:                      ; preds = %if.then17.i.i, %if.end15.i.i.axp20x_set_dcdc_freq.exit.i_crit_edge
  %dcdcfreq.addr.2.i.i = phi i32 [ %max.0.i.i, %if.then17.i.i ], [ %dcdcfreq.addr.1.i.i, %if.end15.i.i.axp20x_set_dcdc_freq.exit.i_crit_edge ]
  %sub.i.i = sub i32 %dcdcfreq.addr.2.i.i, %min.0.i.i
  %div.i.i = udiv i32 %sub.i.i, %step.0.i.i
  %regmap.i.i = getelementptr inbounds %struct.axp20x_dev, ptr %39, i32 0, i32 3
  %43 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i1.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %reg.2.i.i, i32 noundef 15, i32 noundef %div.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i)
  %cmp.i = icmp slt i32 %call.i.i1.i, 0
  br i1 %cmp.i, label %axp20x_set_dcdc_freq.exit.i.do.end10.i_crit_edge, label %axp20x_set_dcdc_freq.exit.i.if.end12.i_crit_edge

axp20x_set_dcdc_freq.exit.i.if.end12.i_crit_edge: ; preds = %axp20x_set_dcdc_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

axp20x_set_dcdc_freq.exit.i.do.end10.i_crit_edge: ; preds = %axp20x_set_dcdc_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %axp20x_set_dcdc_freq.exit.i.do.end10.i_crit_edge, %axp20x_set_dcdc_freq.exit.thread.i
  %retval.0.i4.i = phi i32 [ -22, %axp20x_set_dcdc_freq.exit.thread.i ], [ %call.i.i1.i, %axp20x_set_dcdc_freq.exit.i.do.end10.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i4.i) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end10.i, %axp20x_set_dcdc_freq.exit.i.if.end12.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call1.i) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end12.i, %do.end.i
  call void @of_node_put(ptr noundef nonnull %call.i225) #6
  br label %axp20x_regulator_parse_dt.exit

axp20x_regulator_parse_dt.exit:                   ; preds = %if.end13.i, %sw.epilog.axp20x_regulator_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdcfreq.i) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %axp20x_regulator_parse_dt.exit
  %i.0253 = phi i32 [ 0, %axp20x_regulator_parse_dt.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.regulator_desc, ptr %regulators.0, i32 %i.0253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %reg.i, align 4
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %variant, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %47, label %for.body.if.end_crit_edge [
    i32 6, label %for.body.sw.bb.i_crit_edge
    i32 9, label %for.body.sw.bb.i_crit_edge274
    i32 7, label %sw.bb8.i
  ]

for.body.sw.bb.i_crit_edge274:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge274
  %49 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap4, align 4
  %call.i226 = call i32 @regmap_read(ptr noundef %50, i32 noundef 20, ptr noundef nonnull %reg.i) #6
  %51 = zext i32 %i.0253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %i.0253, label %sw.bb.i.if.end_crit_edge [
    i32 2, label %axp20x_is_polyphase_slave.exit
    i32 5, label %sw.bb3.i
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %sw.bb.i
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg.i, align 4
  %and4.i = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.i.not = icmp eq i32 %and4.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %tobool5.i.not, label %sw.bb3.i.if.end32_crit_edge, label %sw.bb3.i.for.inc_crit_edge

sw.bb3.i.for.inc_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb3.i.if.end32_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb8.i:                                         ; preds = %for.body
  %54 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap4, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 27, ptr noundef nonnull %reg.i) #6
  %56 = zext i32 %i.0253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %i.0253, label %sw.bb8.i.if.end_crit_edge [
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb15.i
    i32 4, label %sw.bb18.i
  ]

sw.bb8.i.if.end_crit_edge:                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb11.i:                                        ; preds = %sw.bb8.i
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %59 = trunc i32 %58 to i8
  %trunc = and i8 %59, -64
  %60 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %trunc, label %sw.bb11.i.if.end32_crit_edge [
    i8 -128, label %sw.bb11.i.for.inc_crit_edge
    i8 64, label %sw.bb11.i.for.inc_crit_edge275
  ]

sw.bb11.i.for.inc_crit_edge275:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb11.i.for.inc_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb11.i.if.end32_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb15.i:                                        ; preds = %sw.bb8.i
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg.i, align 4
  %and16.i = and i32 %62, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %cmp17.i, label %sw.bb15.i.for.inc_crit_edge, label %sw.bb15.i.if.end32_crit_edge

sw.bb15.i.if.end32_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb15.i.for.inc_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb18.i:                                        ; preds = %sw.bb8.i
  %63 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg.i, align 4
  %and19.i = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.i.not = icmp eq i32 %and19.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %tobool20.i.not, label %sw.bb18.i.if.end32_crit_edge, label %sw.bb18.i.for.inc_crit_edge

sw.bb18.i.for.inc_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb18.i.if.end32_crit_edge:                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

axp20x_is_polyphase_slave.exit:                   ; preds = %sw.bb.i
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i227.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br i1 %tobool.i227.not, label %axp20x_is_polyphase_slave.exit.if.end32_crit_edge, label %axp20x_is_polyphase_slave.exit.for.inc_crit_edge

axp20x_is_polyphase_slave.exit.for.inc_crit_edge: ; preds = %axp20x_is_polyphase_slave.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

axp20x_is_polyphase_slave.exit.if.end32_crit_edge: ; preds = %axp20x_is_polyphase_slave.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end:                                           ; preds = %sw.bb8.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %67 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %68)
  %cmp29 = icmp eq i32 %68, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.0253)
  %cmp30 = icmp eq i32 %i.0253, 19
  %or.cond = select i1 %cmp29, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %if.end.if.end32_crit_edge, %axp20x_is_polyphase_slave.exit.if.end32_crit_edge, %sw.bb18.i.if.end32_crit_edge, %sw.bb15.i.if.end32_crit_edge, %sw.bb11.i.if.end32_crit_edge, %sw.bb3.i.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0253)
  %cmp35 = icmp eq i32 %i.0253, 5
  %or.cond207 = select i1 %cmp33, i1 %cmp35, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0253)
  %cmp38 = icmp eq i32 %i.0253, 6
  %or.cond208 = select i1 %cmp36, i1 %cmp38, i1 false
  %or.cond216 = select i1 %or.cond207, i1 true, i1 %or.cond208
  %or.cond209 = select i1 %cmp40, i1 %cmp35, i1 false
  %or.cond217 = select i1 %or.cond216, i1 true, i1 %or.cond209
  br i1 %or.cond217, label %if.then43, label %if.end32.if.end49_crit_edge

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then43:                                        ; preds = %if.end32
  %call.i229 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i229, null
  br i1 %tobool.not, label %if.then43.cleanup133_crit_edge, label %if.end47

if.then43.cleanup133_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %69 = call ptr @memcpy(ptr %call.i229, ptr %arrayidx, i32 244)
  %70 = ptrtoint ptr %dcdc1_name to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dcdc1_name, align 4
  %supply_name = getelementptr inbounds %struct.regulator_desc, ptr %call.i229, i32 0, i32 1
  %72 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %supply_name, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end32.if.end49_crit_edge
  %desc.0 = phi ptr [ %call.i229, %if.end47 ], [ %arrayidx, %if.end32.if.end49_crit_edge ]
  %or.cond210 = select i1 %cmp33, i1 %cmp38, i1 false
  %or.cond211 = select i1 %cmp40, i1 %cmp38, i1 false
  %or.cond218 = select i1 %or.cond210, i1 true, i1 %or.cond211
  br i1 %or.cond218, label %if.then57, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then57:                                        ; preds = %if.end49
  %call.i230 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #6
  %tobool60.not = icmp eq ptr %call.i230, null
  br i1 %tobool60.not, label %if.then57.cleanup133_crit_edge, label %if.end62

if.then57.cleanup133_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.end62:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %73 = call ptr @memcpy(ptr %call.i230, ptr %arrayidx, i32 244)
  %74 = ptrtoint ptr %dcdc5_name to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dcdc5_name, align 4
  %supply_name64 = getelementptr inbounds %struct.regulator_desc, ptr %call.i230, i32 0, i32 1
  %76 = ptrtoint ptr %supply_name64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %supply_name64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %if.end49.if.end65_crit_edge
  %desc.1 = phi ptr [ %call.i230, %if.end62 ], [ %desc.0, %if.end49.if.end65_crit_edge ]
  %call67 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc.1, ptr noundef nonnull %config) #6
  %cmp.i231 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.end72, label %if.end76

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %78) #9
  %79 = ptrtoint ptr %call67 to i32
  br label %cleanup133

if.end76:                                         ; preds = %if.end65
  %of_node78 = getelementptr inbounds %struct.regulator_dev, ptr %call67, i32 0, i32 13, i32 27
  %80 = ptrtoint ptr %of_node78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node78, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %81, ptr noundef nonnull @.str.10, ptr noundef nonnull %workmode, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool80.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool80.not, label %if.then81, label %if.end76.if.end92_crit_edge

if.end76.if.end92_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then81:                                        ; preds = %if.end76
  %82 = ptrtoint ptr %workmode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %workmode, align 4
  %call.i232 = call ptr @rdev_get_drvdata(ptr noundef %call67) #6
  %variant.i233 = getelementptr inbounds %struct.axp20x_dev, ptr %call.i232, i32 0, i32 5
  %84 = ptrtoint ptr %variant.i233 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %variant.i233, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %85, label %do.end.i237 [
    i32 1, label %if.then81.sw.bb.i234_crit_edge
    i32 2, label %if.then81.sw.bb.i234_crit_edge276
    i32 7, label %sw.bb5.i
    i32 3, label %if.then81.sw.bb6.i_crit_edge
    i32 4, label %if.then81.sw.bb6.i_crit_edge277
    i32 8, label %if.then81.sw.bb6.i_crit_edge278
    i32 6, label %sw.bb15.i236
    i32 9, label %sw.bb26.i
  ]

if.then81.sw.bb6.i_crit_edge278:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then81.sw.bb6.i_crit_edge277:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then81.sw.bb6.i_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then81.sw.bb.i234_crit_edge276:                ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i234

if.then81.sw.bb.i234_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i234

sw.bb.i234:                                       ; preds = %if.then81.sw.bb.i234_crit_edge, %if.then81.sw.bb.i234_crit_edge276
  %id.off.i = add nsw i32 %i.0253, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off.i)
  %switch.i = icmp ult i32 %id.off.i, 2
  br i1 %switch.i, label %if.end.i235, label %sw.bb.i234.do.end87_crit_edge

sw.bb.i234.do.end87_crit_edge:                    ; preds = %sw.bb.i234
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

if.end.i235:                                      ; preds = %sw.bb.i234
  call void @__sanitizer_cov_trace_pc() #8
  %spec.store.select.i = select i1 %cmp38, i32 2, i32 4
  %87 = call i32 @llvm.cttz.i32(i32 %spec.store.select.i, i1 true) #6, !range !239
  br label %axp20x_set_dcdc_workmode.exit

sw.bb5.i:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb5.i, %if.then81.sw.bb6.i_crit_edge, %if.then81.sw.bb6.i_crit_edge277, %if.then81.sw.bb6.i_crit_edge278
  %reg.0.i = phi i32 [ 128, %if.then81.sw.bb6.i_crit_edge ], [ 128, %if.then81.sw.bb6.i_crit_edge277 ], [ 128, %if.then81.sw.bb6.i_crit_edge278 ], [ 27, %sw.bb5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0253)
  %88 = icmp ugt i32 %i.0253, 4
  br i1 %88, label %sw.bb6.i.do.end87_crit_edge, label %if.end10.i

sw.bb6.i.do.end87_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

if.end10.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl12.i = shl nuw nsw i32 1, %i.0253
  br label %axp20x_set_dcdc_workmode.exit

sw.bb15.i236:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0253)
  %89 = icmp ugt i32 %i.0253, 5
  br i1 %89, label %sw.bb15.i236.do.end87_crit_edge, label %if.end20.i

sw.bb15.i236.do.end87_crit_edge:                  ; preds = %sw.bb15.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

if.end20.i:                                       ; preds = %sw.bb15.i236
  call void @__sanitizer_cov_trace_pc() #8
  %shl23.i = shl nuw nsw i32 1, %i.0253
  br label %axp20x_set_dcdc_workmode.exit

sw.bb26.i:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0253)
  %90 = icmp ugt i32 %i.0253, 6
  br i1 %90, label %sw.bb26.i.do.end87_crit_edge, label %if.end31.i

sw.bb26.i.do.end87_crit_edge:                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

if.end31.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl34.i = shl nuw nsw i32 1, %i.0253
  br label %axp20x_set_dcdc_workmode.exit

do.end.i237:                                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1150, i32 noundef 9, ptr noundef null) #6
  br label %do.end87

axp20x_set_dcdc_workmode.exit:                    ; preds = %if.end31.i, %if.end20.i, %if.end10.i, %if.end.i235
  %id.pn.i = phi i32 [ %i.0253, %if.end31.i ], [ %i.0253, %if.end20.i ], [ %i.0253, %if.end10.i ], [ %87, %if.end.i235 ]
  %reg.1.i = phi i32 [ 128, %if.end31.i ], [ 128, %if.end20.i ], [ %reg.0.i, %if.end10.i ], [ 128, %if.end.i235 ]
  %mask.0.i = phi i32 [ %shl34.i, %if.end31.i ], [ %shl23.i, %if.end20.i ], [ %shl12.i, %if.end10.i ], [ %spec.store.select.i, %if.end.i235 ]
  %workmode.addr.0.i = shl i32 %83, %id.pn.i
  %regmap.i238 = getelementptr inbounds %struct.regulator_dev, ptr %call67, i32 0, i32 17
  %91 = ptrtoint ptr %regmap.i238 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i238, align 4
  %call.i.i239 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %reg.1.i, i32 noundef %mask.0.i, i32 noundef %workmode.addr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239)
  %tobool83.not = icmp eq i32 %call.i.i239, 0
  br i1 %tobool83.not, label %axp20x_set_dcdc_workmode.exit.if.end92_crit_edge, label %axp20x_set_dcdc_workmode.exit.do.end87_crit_edge

axp20x_set_dcdc_workmode.exit.do.end87_crit_edge: ; preds = %axp20x_set_dcdc_workmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87

axp20x_set_dcdc_workmode.exit.if.end92_crit_edge: ; preds = %axp20x_set_dcdc_workmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end87:                                         ; preds = %axp20x_set_dcdc_workmode.exit.do.end87_crit_edge, %do.end.i237, %sw.bb26.i.do.end87_crit_edge, %sw.bb15.i236.do.end87_crit_edge, %sw.bb6.i.do.end87_crit_edge, %sw.bb.i234.do.end87_crit_edge
  %93 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call67, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %96) #9
  br label %if.end92

if.end92:                                         ; preds = %do.end87, %axp20x_set_dcdc_workmode.exit.if.end92_crit_edge, %if.end76.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0253)
  %cmp95 = icmp eq i32 %i.0253, 0
  %or.cond212 = select i1 %cmp33, i1 %cmp95, i1 false
  %or.cond213 = select i1 %cmp40, i1 %cmp95, i1 false
  %or.cond219 = select i1 %or.cond212, i1 true, i1 %or.cond213
  br i1 %or.cond219, label %if.then100, label %if.end92.if.end104_crit_edge

if.end92.if.end104_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %of_node78 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node78, align 8
  %call103 = call i32 @of_property_read_string(ptr noundef %98, ptr noundef nonnull @.str.14, ptr noundef nonnull %dcdc1_name) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end92.if.end104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0253)
  %cmp107 = icmp eq i32 %i.0253, 4
  %or.cond214 = select i1 %cmp33, i1 %cmp107, i1 false
  %or.cond215 = select i1 %cmp40, i1 %cmp107, i1 false
  %or.cond220 = select i1 %or.cond214, i1 true, i1 %or.cond215
  br i1 %or.cond220, label %if.then112, label %if.end104.for.inc_crit_edge

if.end104.for.inc_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then112:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %of_node78 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %of_node78, align 8
  %call115 = call i32 @of_property_read_string(ptr noundef %100, ptr noundef nonnull @.str.14, ptr noundef nonnull %dcdc5_name) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then112, %if.end104.for.inc_crit_edge, %if.end.for.inc_crit_edge, %axp20x_is_polyphase_slave.exit.for.inc_crit_edge, %sw.bb18.i.for.inc_crit_edge, %sw.bb15.i.for.inc_crit_edge, %sw.bb11.i.for.inc_crit_edge, %sw.bb11.i.for.inc_crit_edge275, %sw.bb3.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0253, 1
  %exitcond.not = icmp eq i32 %inc, %nregulators.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %drivevbus.0.shrunk, label %if.then119, label %for.end.cleanup133_crit_edge

for.end.cleanup133_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.then119:                                       ; preds = %for.end
  %101 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap4, align 4
  %call.i241 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 143, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call123 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @axp22x_drivevbus_regulator, ptr noundef nonnull %config) #6
  %cmp.i242 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end128, label %if.then119.cleanup133_crit_edge

if.then119.cleanup133_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

do.end128:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  %103 = ptrtoint ptr %call123 to i32
  br label %cleanup133

cleanup133:                                       ; preds = %do.end128, %if.then119.cleanup133_crit_edge, %for.end.cleanup133_crit_edge, %do.end72, %if.then57.cleanup133_crit_edge, %if.then43.cleanup133_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ %103, %do.end128 ], [ 0, %if.then119.cleanup133_crit_edge ], [ 0, %for.end.cleanup133_crit_edge ], [ %79, %do.end72 ], [ -12, %if.then57.cleanup133_crit_edge ], [ -12, %if.then43.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdc5_name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcdc1_name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %workmode) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_enable_regmap(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp = icmp eq i32 %call1, 2
  %or.cond = select i1 %cond, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %entry
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %constraints, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true2

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true2:                                   ; preds = %land.lhs.true
  %soft_start = getelementptr inbounds %struct.regulation_constraints, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %soft_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %soft_start, align 4
  %5 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not = icmp eq i16 %5, 0
  br i1 %tobool4.not, label %land.lhs.true2.sw.epilog_crit_edge, label %if.then

land.lhs.true2.sw.epilog_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true2
  %call5 = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %call8 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup22_crit_edge, label %if.end11

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp12 = icmp eq i32 %call8, 0
  br i1 %cmp12, label %if.end11.sw.epilog_crit_edge, label %if.end14

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  %call16 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #6
  %or = or i32 %call16, %call15
  %call17 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %call8) #6
  %or18 = or i32 %or, %call17
  br label %cleanup22

sw.epilog:                                        ; preds = %if.end11.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %land.lhs.true2.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call21 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #6
  br label %cleanup22

cleanup22:                                        ; preds = %sw.epilog, %if.end14, %if.end.cleanup22_crit_edge
  %retval.1 = phi i32 [ %call21, %sw.epilog ], [ %or18, %if.end14 ], [ %call8, %if.end.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %variant = getelementptr inbounds %struct.axp20x_dev, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond53 = icmp eq i32 %1, 2
  br i1 %cond53, label %sw.bb, label %entry.cleanup45_crit_edge

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp = icmp eq i32 %call1, 5
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp3 = icmp eq i32 %call1, 2
  br i1 %cmp3, label %if.end.sw.epilog_crit_edge, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i8 [ 4, %sw.bb.sw.epilog_crit_edge ], [ 8, %if.end.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 5, %sw.bb.sw.epilog_crit_edge ], [ 10, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp)
  %cmp6 = icmp sgt i32 %ramp, 0
  %conv9 = select i1 %cmp6, i8 %.sink, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp)
  %cmp15 = icmp eq i32 %ramp, 0
  br i1 %cmp15, label %sw.epilog.if.end40_crit_edge, label %for.cond.preheader

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.cond.preheader:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %ramp)
  %cmp20 = icmp sgt i32 %ramp, 1600
  br i1 %cmp20, label %cleanup.thread, label %if.end23

if.end23:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %not.cmp = xor i1 %cmp, true
  %conv30 = zext i1 %not.cmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %ramp)
  %cmp20.1 = icmp sgt i32 %ramp, 800
  %cfg.1.1 = shl nuw nsw i8 1, %conv30
  %spec.select = select i1 %cmp20.1, i8 0, i8 %cfg.1.1
  %or72 = or i8 %spec.select, %conv9
  br label %if.end40

cleanup.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48, i32 noundef %ramp) #9
  br label %cleanup45

if.end40:                                         ; preds = %if.end23, %sw.epilog.if.end40_crit_edge
  %cfg.3 = phi i8 [ %or72, %if.end23 ], [ %conv9, %sw.epilog.if.end40_crit_edge ]
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv43 = zext i8 %cfg.3 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 37, i32 noundef %mask.0, i32 noundef %conv43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup45

cleanup45:                                        ; preds = %if.end40, %cleanup.thread, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.end40 ], [ -524, %if.end.cleanup45_crit_edge ], [ -524, %entry.cleanup45_crit_edge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !65, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !110, !112, !113, !115, !116, !118, !120, !121, !123, !125, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !173, !175, !177, !178, !180, !182, !184, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !203, !204, !205, !206, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @__initcall__kmod_axp20x_regulator__288_1370_axp20x_regulator_driver_init6, !1, !"__initcall__kmod_axp20x_regulator__288_1370_axp20x_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1370, i32 1}
!2 = !{ptr @__exitcall_axp20x_regulator_driver_exit, !1, !"__exitcall_axp20x_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1372, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1373, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1374, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1375, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1366, i32 12}
!14 = !{ptr @axp20x_regulator_driver, !15, !"axp20x_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1363, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1233, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1256, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @axp20x_regulator_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @axp20x_regulator_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1316, i32 4}
!28 = !{ptr @axp20x_regulator_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @axp20x_regulator_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1323, i32 9}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1327, i32 5}
!34 = !{ptr @axp20x_regulator_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @axp20x_regulator_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1337, i32 7}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1355, i32 4}
!40 = !{ptr @axp20x_regulator_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @axp20x_regulator_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/axp20x-regulator.c", i32 562, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/axp20x-regulator.c", i32 565, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/axp20x-regulator.c", i32 568, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/axp20x-regulator.c", i32 571, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/axp20x-regulator.c", i32 574, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/axp20x-regulator.c", i32 578, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/axp20x-regulator.c", i32 581, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/axp20x-regulator.c", i32 584, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/axp20x-regulator.c", i32 587, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/axp20x-regulator.c", i32 590, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/axp20x-regulator.c", i32 605, i32 2}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/axp20x-regulator.c", i32 608, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/axp20x-regulator.c", i32 611, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/axp20x-regulator.c", i32 593, i32 2}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/axp20x-regulator.c", i32 596, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/axp20x-regulator.c", i32 599, i32 2}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/axp20x-regulator.c", i32 602, i32 2}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/axp20x-regulator.c", i32 626, i32 2}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/axp20x-regulator.c", i32 616, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/axp20x-regulator.c", i32 622, i32 2}
!92 = !{ptr @axp22x_regulators, !93, !"axp22x_regulators", i1 false, i1 false}
!93 = !{!"../drivers/regulator/axp20x-regulator.c", i32 561, i32 36}
!94 = !{ptr @axp20x_ops, !95, !"axp20x_ops", i1 false, i1 false}
!95 = !{!"../drivers/regulator/axp20x-regulator.c", i32 498, i32 35}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/axp20x-regulator.c", i32 425, i32 4}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @axp20x_set_ramp_delay._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @axp20x_set_ramp_delay._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"axp209_dcdc2_ldo3_slew_rates", i1 false, i1 false}
!102 = !{!"../drivers/regulator/axp20x-regulator.c", i32 363, i32 18}
!103 = !{ptr @axp20x_ops_sw, !104, !"axp20x_ops_sw", i1 false, i1 false}
!104 = !{!"../drivers/regulator/axp20x-regulator.c", i32 508, i32 35}
!105 = !{ptr @axp20x_ops_fixed, !106, !"axp20x_ops_fixed", i1 false, i1 false}
!106 = !{!"../drivers/regulator/axp20x-regulator.c", i32 485, i32 35}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/axp20x-regulator.c", i32 544, i32 2}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/axp20x-regulator.c", i32 545, i32 2}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/axp20x-regulator.c", i32 548, i32 2}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/axp20x-regulator.c", i32 551, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/axp20x-regulator.c", i32 555, i32 2}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @axp20x_regulators, !122, !"axp20x_regulators", i1 false, i1 false}
!122 = !{!"../drivers/regulator/axp20x-regulator.c", i32 537, i32 36}
!123 = !{ptr @axp20x_ops_range, !124, !"axp20x_ops_range", i1 false, i1 false}
!124 = !{!"../drivers/regulator/axp20x-regulator.c", i32 489, i32 35}
!125 = !{ptr @axp20x_ldo4_ranges, !126, !"axp20x_ldo4_ranges", i1 false, i1 false}
!126 = !{!"../drivers/regulator/axp20x-regulator.c", i32 514, i32 34}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/axp20x-regulator.c", i32 707, i32 2}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/axp20x-regulator.c", i32 745, i32 2}
!132 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/axp20x-regulator.c", i32 748, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/axp20x-regulator.c", i32 759, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/axp20x-regulator.c", i32 751, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/axp20x-regulator.c", i32 755, i32 2}
!141 = !{ptr @axp803_regulators, !142, !"axp803_regulators", i1 false, i1 false}
!142 = !{!"../drivers/regulator/axp20x-regulator.c", i32 687, i32 36}
!143 = !{ptr @axp803_dcdc234_ranges, !144, !"axp803_dcdc234_ranges", i1 false, i1 false}
!144 = !{!"../drivers/regulator/axp20x-regulator.c", i32 642, i32 34}
!145 = !{ptr @axp803_dcdc5_ranges, !146, !"axp803_dcdc5_ranges", i1 false, i1 false}
!146 = !{!"../drivers/regulator/axp20x-regulator.c", i32 653, i32 34}
!147 = !{ptr @axp803_dcdc6_ranges, !148, !"axp803_dcdc6_ranges", i1 false, i1 false}
!148 = !{!"../drivers/regulator/axp20x-regulator.c", i32 664, i32 34}
!149 = !{ptr @axp803_dldo2_ranges, !150, !"axp803_dldo2_ranges", i1 false, i1 false}
!150 = !{!"../drivers/regulator/axp20x-regulator.c", i32 676, i32 34}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/regulator/axp20x-regulator.c", i32 785, i32 2}
!153 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/axp20x-regulator.c", i32 789, i32 2}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/axp20x-regulator.c", i32 792, i32 2}
!159 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/axp20x-regulator.c", i32 796, i32 2}
!162 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/axp20x-regulator.c", i32 800, i32 2}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/axp20x-regulator.c", i32 812, i32 2}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/axp20x-regulator.c", i32 815, i32 2}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/regulator/axp20x-regulator.c", i32 818, i32 2}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/regulator/axp20x-regulator.c", i32 821, i32 2}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/regulator/axp20x-regulator.c", i32 824, i32 2}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/axp20x-regulator.c", i32 827, i32 2}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/axp20x-regulator.c", i32 831, i32 2}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/axp20x-regulator.c", i32 834, i32 2}
!184 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @axp806_regulators, !186, !"axp806_regulators", i1 false, i1 false}
!186 = !{!"../drivers/regulator/axp20x-regulator.c", i32 784, i32 36}
!187 = !{ptr @axp806_dcdca_ranges, !188, !"axp806_dcdca_ranges", i1 false, i1 false}
!188 = !{!"../drivers/regulator/axp20x-regulator.c", i32 762, i32 34}
!189 = !{ptr @axp806_dcdcd_ranges, !190, !"axp806_dcdcd_ranges", i1 false, i1 false}
!190 = !{!"../drivers/regulator/axp20x-regulator.c", i32 773, i32 34}
!191 = !{ptr @axp809_regulators, !192, !"axp809_regulators", i1 false, i1 false}
!192 = !{!"../drivers/regulator/axp20x-regulator.c", i32 849, i32 36}
!193 = !{ptr @axp809_dcdc4_ranges, !194, !"axp809_dcdc4_ranges", i1 false, i1 false}
!194 = !{!"../drivers/regulator/axp20x-regulator.c", i32 838, i32 34}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/regulator/axp20x-regulator.c", i32 943, i32 2}
!197 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @axp813_regulators, !199, !"axp813_regulators", i1 false, i1 false}
!199 = !{!"../drivers/regulator/axp20x-regulator.c", i32 919, i32 36}
!200 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1082, i32 3}
!202 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @axp20x_regulator_parse_dt._entry, !201, !"_entry", i1 false, i1 false}
!205 = !{ptr @axp20x_regulator_parse_dt._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1084, i32 36}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1087, i32 4}
!210 = !{ptr @axp20x_regulator_parse_dt._entry.94, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @axp20x_regulator_parse_dt._entry_ptr.96, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1044, i32 3}
!214 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @axp20x_set_dcdc_freq._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @axp20x_set_dcdc_freq._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1054, i32 3}
!219 = !{ptr @axp20x_set_dcdc_freq._entry.99, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @axp20x_set_dcdc_freq._entry_ptr.101, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/regulator/axp20x-regulator.c", i32 1060, i32 3}
!223 = !{ptr @axp20x_set_dcdc_freq._entry.102, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @axp20x_set_dcdc_freq._entry_ptr.104, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/regulator/axp20x-regulator.c", i32 630, i32 11}
!227 = !{ptr @axp22x_drivevbus_regulator, !228, !"axp22x_drivevbus_regulator", i1 false, i1 false}
!228 = !{!"../drivers/regulator/axp20x-regulator.c", i32 629, i32 36}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{!"auto-init"}
!239 = !{i32 1, i32 33}
