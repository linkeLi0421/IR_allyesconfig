; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77802-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77802-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.max77686_dev = type { ptr, ptr, i32, ptr, ptr, i32, %struct.mutex, [3 x i32], [3 x i32] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_max77802_regulator__288_548_max77802_pmic_driver_init6 = internal global ptr @max77802_pmic_driver_init, section ".initcall6.init", align 4
@max77802_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77802_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77802_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77802_pmic_driver_exit = internal global ptr @max77802_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"max77802_regulator.description=MAXIM 77802 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"max77802_regulator.author=Simon Glass <sjg@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"max77802_regulator.file=drivers/regulator/max77802-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"max77802_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77802-pmic\00", [18 x i8] zeroinitializer }, align 32
@max77802_pmic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77802-pmic\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@regulators = internal constant { [42 x %struct.regulator_desc], [2584 x i8] } { [42 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.10, ptr @.str.11, ptr @.str.10, i8 0, ptr @.str.12, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @max77802_buck_16_dvs_ops, i32 0, i32 0, ptr null, i32 612500, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 17, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 240, ptr @max77802_buck16_ramp_table, i32 16, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.12, ptr null, i32 1, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.12, ptr null, i32 2, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.12, ptr null, i32 3, i8 0, i32 145, i32 0, ptr @max77802_buck_234_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 48, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, ptr @max77802_buck234_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.12, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.12, ptr null, i32 5, i8 0, i32 256, i32 0, ptr @max77802_buck_16_dvs_ops, i32 0, i32 0, ptr null, i32 612500, i32 6250, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 240, ptr @max77802_buck16_ramp_table, i32 16, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.12, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.12, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.12, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.12, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max77802_buck_dvs_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.12, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.12, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 97, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.12, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 98, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 98, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.36, ptr @.str.37, ptr @.str.36, i8 0, ptr @.str.12, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 99, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 99, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.38, ptr @.str.35, ptr @.str.38, i8 0, ptr @.str.12, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 100, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 100, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.39, ptr @.str.35, ptr @.str.39, i8 0, ptr @.str.12, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 101, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.40, ptr @.str.35, ptr @.str.40, i8 0, ptr @.str.12, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 102, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 102, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.12, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 103, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 103, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr @.str.43, i8 0, ptr @.str.12, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 104, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 104, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr @.str.45, i8 0, ptr @.str.12, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 105, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 105, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.47, ptr @.str.46, ptr @.str.47, i8 0, ptr @.str.12, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 106, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 106, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.48, ptr @.str.49, ptr @.str.48, i8 0, ptr @.str.12, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 107, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.50, ptr @.str.46, ptr @.str.50, i8 0, ptr @.str.12, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.51, ptr @.str.46, ptr @.str.51, i8 0, ptr @.str.12, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.52, ptr @.str.42, ptr @.str.52, i8 0, ptr @.str.12, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.53, ptr @.str.54, ptr @.str.53, i8 0, ptr @.str.12, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.55, ptr @.str.56, ptr @.str.55, i8 0, ptr @.str.12, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.57, ptr @.str.44, ptr @.str.57, i8 0, ptr @.str.12, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 114, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 114, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.58, ptr @.str.56, ptr @.str.58, i8 0, ptr @.str.12, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 115, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 115, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.59, ptr @.str.37, ptr @.str.59, i8 0, ptr @.str.12, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic2, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 116, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 116, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.60, ptr @.str.49, ptr @.str.60, i8 0, ptr @.str.12, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 118, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 118, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.61, ptr @.str.37, ptr @.str.61, i8 0, ptr @.str.12, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 119, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.62, ptr @.str.49, ptr @.str.62, i8 0, ptr @.str.12, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 120, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 120, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.63, ptr @.str.49, ptr @.str.63, i8 0, ptr @.str.12, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 121, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 121, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.64, ptr @.str.54, ptr @.str.64, i8 0, ptr @.str.12, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 122, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 122, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.65, ptr @.str.56, ptr @.str.65, i8 0, ptr @.str.12, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 123, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 123, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.66, ptr @.str.56, ptr @.str.66, i8 0, ptr @.str.12, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 124, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 124, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.67, ptr @.str.54, ptr @.str.67, i8 0, ptr @.str.12, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 125, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 125, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.68, ptr @.str.49, ptr @.str.68, i8 0, ptr @.str.12, ptr null, i32 38, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 127, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 127, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.69, ptr @.str.37, ptr @.str.69, i8 0, ptr @.str.12, ptr null, i32 39, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 128, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.70, ptr @.str.49, ptr @.str.70, i8 0, ptr @.str.12, ptr null, i32 40, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 129, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }, %struct.regulator_desc { ptr @.str.71, ptr @.str.54, ptr @.str.71, i8 0, ptr @.str.12, ptr null, i32 41, i8 0, i32 64, i32 0, ptr @max77802_ldo_ops_logic1, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 100000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 130, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 130, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @max77802_map_mode }], [2584 x i8] zeroinitializer }, align 32
@max77802_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot read current mode for %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77802_pmic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/max77802-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77802_pmic_probe._entry_ptr = internal global ptr @max77802_pmic_probe._entry, section ".printk_index", align 4
@max77802_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator init failed for %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max77802_pmic_probe._entry_ptr.9 = internal global ptr @max77802_pmic_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max77802_buck_16_dvs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77802_buck16_ramp_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1000, i32 2000, i32 3030, i32 4000, i32 5000, i32 5880, i32 7140, i32 8330, i32 9090, i32 10000, i32 11110, i32 12500, i32 16670, i32 25000, i32 50000, i32 100000], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb2\00", [27 x i8] zeroinitializer }, align 32
@max77802_buck_234_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr @max77802_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77802_buck234_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12500, i32 25000, i32 50000, i32 100000], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb4\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb5\00", [27 x i8] zeroinitializer }, align 32
@max77802_buck_dvs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb6\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb7\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK8\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb8\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK9\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inb9\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BUCK10\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inb10\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inl10\00", [26 x i8] zeroinitializer }, align 32
@max77802_ldo_ops_logic2 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @max77802_set_mode, ptr @max77802_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@max77802_ldo_ops_logic1 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77802_set_suspend_disable, ptr @max77802_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl3\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl6\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl5\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl4\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl9\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inl7\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO20\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO23\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO24\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO25\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO26\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO27\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO28\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO29\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO30\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO32\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO33\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO34\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO35\00", [26 x i8] zeroinitializer }, align 32
@max77802_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: is disabled, mode: 0x%x not set\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77802_set_suspend_mode\00", [38 x i8] zeroinitializer }, align 32
@max77802_set_suspend_mode._entry_ptr = internal global ptr @max77802_set_suspend_mode._entry, section ".printk_index", align 4
@max77802_set_suspend_mode._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: in Low Power: 0x%x invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@max77802_set_suspend_mode._entry_ptr.76 = internal global ptr @max77802_set_suspend_mode._entry.74, section ".printk_index", align 4
@max77802_set_suspend_mode._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: regulator mode: 0x%x not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@max77802_set_suspend_mode._entry_ptr.79 = internal global ptr @max77802_set_suspend_mode._entry.77, section ".printk_index", align 4
@max77802_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.80, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max77802_set_mode\00", [46 x i8] zeroinitializer }, align 32
@max77802_set_mode._entry_ptr = internal global ptr @max77802_set_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"max77802_pmic_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 540, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 542, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"max77802_pmic_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 534, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 433, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 504, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 525, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 434, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [25 x i8] c"max77802_buck_16_dvs_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 257, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"max77802_buck16_ramp_table\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 53, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 435, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"max77802_buck_234_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 271, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"max77802_buck234_ramp_table\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 46, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 436, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 437, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 438, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"max77802_buck_dvs_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 286, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 439, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 440, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 441, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 442, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 443, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 444, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"max77802_ldo_ops_logic2\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 242, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 445, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"max77802_ldo_ops_logic1\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 226, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 446, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 447, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 448, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 449, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 450, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 451, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 452, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 453, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 454, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 455, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 456, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 457, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 458, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 459, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 460, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 461, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 462, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 463, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 464, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 465, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 466, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 467, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 468, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 469, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 470, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 471, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 472, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 473, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 474, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 475, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 172, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 196, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 200, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.353 = private constant [42 x i8] c"../drivers/regulator/max77802-regulator.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 125, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max77802_pmic_driver_exit, ptr @__initcall__kmod_max77802_regulator__288_548_max77802_pmic_driver_init6, ptr @max77802_pmic_driver_exit, ptr @max77802_pmic_probe._entry, ptr @max77802_pmic_probe._entry.6, ptr @max77802_pmic_probe._entry_ptr, ptr @max77802_pmic_probe._entry_ptr.9, ptr @max77802_set_mode._entry, ptr @max77802_set_mode._entry_ptr, ptr @max77802_set_suspend_mode._entry, ptr @max77802_set_suspend_mode._entry.74, ptr @max77802_set_suspend_mode._entry.77, ptr @max77802_set_suspend_mode._entry_ptr, ptr @max77802_set_suspend_mode._entry_ptr.76, ptr @max77802_set_suspend_mode._entry_ptr.79, ptr @max77802_pmic_driver, ptr @.str, ptr @max77802_pmic_id, ptr @regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @max77802_buck_16_dvs_ops, ptr @max77802_buck16_ramp_table, ptr @.str.13, ptr @.str.14, ptr @max77802_buck_234_ops, ptr @max77802_buck234_ramp_table, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @max77802_buck_dvs_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @max77802_ldo_ops_logic2, ptr @.str.33, ptr @max77802_ldo_ops_logic1, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_pmic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 10248, i32 12832, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_buck_16_dvs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_buck16_ramp_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_buck_234_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_buck234_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_buck_dvs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_ldo_ops_logic2 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_ldo_ops_logic1 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_set_suspend_mode._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_set_suspend_mode._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77802_pmic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77802_pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77802_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_pmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %5 = getelementptr inbounds i8, ptr %config, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %config, align 4
  %regmap = getelementptr inbounds %struct.max77686_dev, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %regmap5, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.068 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.068
  %id6 = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.068, i32 6
  %15 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id6, align 4
  %17 = and i32 %i.068, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %switch.hole_check, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.hole_check.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %19 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %if.end.i.max77802_get_opmode_shift.exit_crit_edge, label %if.end7.i

if.end.i.max77802_get_opmode_shift.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = add i32 %16, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %22 = icmp ult i32 %21, 32
  %spec.select.i = select i1 %22, i32 6, i32 -22
  br label %max77802_get_opmode_shift.exit

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %16 to i16
  %switch.shifted = lshr i16 1009, %switch.maskindex
  %23 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %switch.lobit.not = icmp eq i16 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i_crit_edge, label %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge

switch.hole_check.max77802_get_opmode_shift.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

switch.hole_check.if.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

max77802_get_opmode_shift.exit:                   ; preds = %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge, %if.end7.i, %if.end.i.max77802_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end.i.max77802_get_opmode_shift.exit_crit_edge ], [ %spec.select.i, %if.end7.i ], [ 0, %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr [42 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.068, i32 34
  %26 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_reg, align 4
  %call10 = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end14.thread, label %if.end14

if.end14.thread:                                  ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %i.068) #9
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %val, align 4
  br label %if.else18

if.end14:                                         ; preds = %max77802_get_opmode_shift.exit
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shr = ashr i32 %30, %retval.0.i
  %and = and i32 %shr, 3
  store i32 %and, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %if.end14.if.end21_crit_edge, label %if.end14.if.else18_crit_edge

if.end14.if.else18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else18

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.else18:                                        ; preds = %if.end14.if.else18_crit_edge, %if.end14.thread
  %storemerge65 = phi i32 [ 3, %if.end14.thread ], [ %and, %if.end14.if.else18_crit_edge ]
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end14.if.end21_crit_edge
  %storemerge65.sink = phi i32 [ %storemerge65, %if.else18 ], [ 3, %if.end14.if.end21_crit_edge ]
  %arrayidx20 = getelementptr [42 x i32], ptr %call.i, i32 0, i32 %16
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge65.sink, ptr %arrayidx20, align 4
  %call24 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.068, i32 noundef %32) #9
  br label %cleanup36

for.inc:                                          ; preds = %if.end21
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.inc.cleanup36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

cleanup36:                                        ; preds = %for.inc.cleanup36_crit_edge, %cleanup.thread, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup36_crit_edge ], [ %32, %cleanup.thread ], [ 0, %for.inc.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max77802_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp = icmp eq i32 %mode, 3
  %cond = select i1 %cmp, i32 2, i32 8
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %0 = icmp ult i32 %call1, 10
  br i1 %0, label %switch.hole_check, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.hole_check.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = add i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %if.end.i.max77802_get_opmode_shift.exit_crit_edge, label %if.end7.i

if.end.i.max77802_get_opmode_shift.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = add i32 %call1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %4 = icmp ult i32 %3, 32
  %spec.select.i = select i1 %4, i32 6, i32 -22
  br label %max77802_get_opmode_shift.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %call1 to i16
  %switch.shifted = lshr i16 1009, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i_crit_edge, label %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge

switch.hole_check.max77802_get_opmode_shift.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

switch.hole_check.if.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

max77802_get_opmode_shift.exit:                   ; preds = %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge, %if.end7.i, %if.end.i.max77802_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end.i.max77802_get_opmode_shift.exit_crit_edge ], [ %spec.select.i, %if.end7.i ], [ 0, %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge ]
  %arrayidx = getelementptr [42 x i32], ptr %call, i32 0, i32 %call1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %max77802_get_opmode_shift.exit.if.end_crit_edge

max77802_get_opmode_shift.exit.if.end_crit_edge:  ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %max77802_get_opmode_shift.exit.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 35
  %15 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_mask, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %18, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %14, i32 noundef %16, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %0 = icmp ult i32 %call1, 10
  br i1 %0, label %switch.hole_check, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.hole_check.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = add i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %if.end.i.max77802_get_opmode_shift.exit_crit_edge, label %if.end7.i

if.end.i.max77802_get_opmode_shift.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = add i32 %call1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %4 = icmp ult i32 %3, 32
  %spec.select.i = select i1 %4, i32 6, i32 -22
  br label %max77802_get_opmode_shift.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %call1 to i16
  %switch.shifted = lshr i16 1009, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i_crit_edge, label %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge

switch.hole_check.max77802_get_opmode_shift.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

switch.hole_check.if.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

max77802_get_opmode_shift.exit:                   ; preds = %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge, %if.end7.i, %if.end.i.max77802_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end.i.max77802_get_opmode_shift.exit_crit_edge ], [ %spec.select.i, %if.end7.i ], [ 0, %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge ]
  %arrayidx = getelementptr [42 x i32], ptr %call, i32 0, i32 %call1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx, align 4
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 34
  %11 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 35
  %13 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 1, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %12, i32 noundef %14, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %0 = icmp ult i32 %call1, 10
  br i1 %0, label %switch.hole_check, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.hole_check.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = add i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %if.end.i.max77802_get_opmode_shift.exit_crit_edge, label %if.end7.i

if.end.i.max77802_get_opmode_shift.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = add i32 %call1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %4 = icmp ult i32 %3, 32
  %spec.select.i = select i1 %4, i32 6, i32 -22
  br label %max77802_get_opmode_shift.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %call1 to i16
  %switch.shifted = lshr i16 1009, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i_crit_edge, label %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge

switch.hole_check.max77802_get_opmode_shift.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

switch.hole_check.if.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

max77802_get_opmode_shift.exit:                   ; preds = %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge, %if.end7.i, %if.end.i.max77802_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end.i.max77802_get_opmode_shift.exit_crit_edge ], [ %spec.select.i, %if.end7.i ], [ 0, %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge ]
  %arrayidx = getelementptr [42 x i32], ptr %call, i32 0, i32 %call1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.72, ptr noundef %11, i32 noundef %mode) #9
  br label %cleanup

if.end:                                           ; preds = %max77802_get_opmode_shift.exit
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end22 [
    i32 8, label %sw.bb
    i32 2, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %if.then6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 35
  %19 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 2, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %18, i32 noundef %20, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %21 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.78, ptr noundef %24, i32 noundef %mode) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then6, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.end22 ], [ %call.i, %if.then6 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %0 = icmp ult i32 %call1, 10
  br i1 %0, label %switch.hole_check, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %switch.hole_check.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = add i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %if.end.i.max77802_get_opmode_shift.exit_crit_edge, label %if.end7.i

if.end.i.max77802_get_opmode_shift.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = add i32 %call1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %4 = icmp ult i32 %3, 32
  %spec.select.i = select i1 %4, i32 6, i32 -22
  br label %max77802_get_opmode_shift.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %call1 to i16
  %switch.shifted = lshr i16 1009, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end.i_crit_edge, label %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge

switch.hole_check.max77802_get_opmode_shift.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77802_get_opmode_shift.exit

switch.hole_check.if.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

max77802_get_opmode_shift.exit:                   ; preds = %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge, %if.end7.i, %if.end.i.max77802_get_opmode_shift.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end.i.max77802_get_opmode_shift.exit_crit_edge ], [ %spec.select.i, %if.end7.i ], [ 0, %switch.hole_check.max77802_get_opmode_shift.exit_crit_edge ]
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %mode, label %do.end [
    i32 8, label %max77802_get_opmode_shift.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb3
  ]

max77802_get_opmode_shift.exit.sw.epilog_crit_edge: ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %max77802_get_opmode_shift.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef %10, i32 noundef %mode) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %max77802_get_opmode_shift.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ 3, %sw.bb3 ], [ 1, %max77802_get_opmode_shift.exit.sw.epilog_crit_edge ]
  %arrayidx = getelementptr [42 x i32], ptr %call, i32 0, i32 %call1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val.0, ptr %arrayidx, align 4
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 35
  %18 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_mask, align 4
  %shl = shl nuw nsw i32 %val.0, %retval.0.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %17, i32 noundef %19, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77802_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %arrayidx = getelementptr [42 x i32], ptr %call, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  %cond.i = select i1 %cmp.i, i32 2, i32 8
  ret i32 %cond.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !68, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !161, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_max77802_regulator__288_548_max77802_pmic_driver_init6, !1, !"__initcall__kmod_max77802_regulator__288_548_max77802_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77802-regulator.c", i32 548, i32 1}
!2 = !{ptr @__exitcall_max77802_pmic_driver_exit, !1, !"__exitcall_max77802_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max77802-regulator.c", i32 550, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max77802-regulator.c", i32 551, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max77802-regulator.c", i32 552, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max77802-regulator.c", i32 542, i32 11}
!12 = !{ptr @max77802_pmic_driver, !13, !"max77802_pmic_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max77802-regulator.c", i32 540, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max77802-regulator.c", i32 504, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max77802_pmic_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max77802_pmic_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/max77802-regulator.c", i32 525, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max77802_pmic_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @max77802_pmic_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max77802-regulator.c", i32 434, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max77802-regulator.c", i32 435, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/max77802-regulator.c", i32 436, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/max77802-regulator.c", i32 437, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max77802-regulator.c", i32 438, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/max77802-regulator.c", i32 439, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max77802-regulator.c", i32 440, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/max77802-regulator.c", i32 441, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max77802-regulator.c", i32 442, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/max77802-regulator.c", i32 443, i32 2}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/max77802-regulator.c", i32 444, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max77802-regulator.c", i32 445, i32 2}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max77802-regulator.c", i32 446, i32 2}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max77802-regulator.c", i32 447, i32 2}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max77802-regulator.c", i32 448, i32 2}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/max77802-regulator.c", i32 449, i32 2}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max77802-regulator.c", i32 450, i32 2}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/max77802-regulator.c", i32 451, i32 2}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/max77802-regulator.c", i32 452, i32 2}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/max77802-regulator.c", i32 453, i32 2}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/max77802-regulator.c", i32 454, i32 2}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/max77802-regulator.c", i32 455, i32 2}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/max77802-regulator.c", i32 456, i32 2}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/max77802-regulator.c", i32 457, i32 2}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/max77802-regulator.c", i32 458, i32 2}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/max77802-regulator.c", i32 459, i32 2}
!97 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/max77802-regulator.c", i32 460, i32 2}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/max77802-regulator.c", i32 461, i32 2}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/max77802-regulator.c", i32 462, i32 2}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/max77802-regulator.c", i32 463, i32 2}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/max77802-regulator.c", i32 464, i32 2}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/max77802-regulator.c", i32 465, i32 2}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/max77802-regulator.c", i32 466, i32 2}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/max77802-regulator.c", i32 467, i32 2}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/max77802-regulator.c", i32 468, i32 2}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/max77802-regulator.c", i32 469, i32 2}
!119 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/max77802-regulator.c", i32 470, i32 2}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/max77802-regulator.c", i32 471, i32 2}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/max77802-regulator.c", i32 472, i32 2}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/max77802-regulator.c", i32 473, i32 2}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/max77802-regulator.c", i32 474, i32 2}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/regulator/max77802-regulator.c", i32 475, i32 2}
!131 = !{ptr @regulators, !132, !"regulators", i1 false, i1 false}
!132 = !{!"../drivers/regulator/max77802-regulator.c", i32 433, i32 36}
!133 = !{ptr @max77802_buck_16_dvs_ops, !134, !"max77802_buck_16_dvs_ops", i1 false, i1 false}
!134 = !{!"../drivers/regulator/max77802-regulator.c", i32 257, i32 35}
!135 = !{ptr @max77802_buck16_ramp_table, !136, !"max77802_buck16_ramp_table", i1 false, i1 false}
!136 = !{!"../drivers/regulator/max77802-regulator.c", i32 53, i32 27}
!137 = !{ptr @max77802_buck_234_ops, !138, !"max77802_buck_234_ops", i1 false, i1 false}
!138 = !{!"../drivers/regulator/max77802-regulator.c", i32 271, i32 35}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/max77802-regulator.c", i32 172, i32 3}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @max77802_set_suspend_mode._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @max77802_set_suspend_mode._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/regulator/max77802-regulator.c", i32 196, i32 4}
!146 = !{ptr @max77802_set_suspend_mode._entry.74, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @max77802_set_suspend_mode._entry_ptr.76, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/regulator/max77802-regulator.c", i32 200, i32 3}
!150 = !{ptr @max77802_set_suspend_mode._entry.77, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @max77802_set_suspend_mode._entry_ptr.79, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @max77802_buck234_ramp_table, !153, !"max77802_buck234_ramp_table", i1 false, i1 false}
!153 = !{!"../drivers/regulator/max77802-regulator.c", i32 46, i32 27}
!154 = !{ptr @max77802_buck_dvs_ops, !155, !"max77802_buck_dvs_ops", i1 false, i1 false}
!155 = !{!"../drivers/regulator/max77802-regulator.c", i32 286, i32 35}
!156 = !{ptr @max77802_ldo_ops_logic2, !157, !"max77802_ldo_ops_logic2", i1 false, i1 false}
!157 = !{!"../drivers/regulator/max77802-regulator.c", i32 242, i32 35}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/regulator/max77802-regulator.c", i32 125, i32 3}
!160 = !{ptr @max77802_set_mode._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @max77802_set_mode._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @max77802_ldo_ops_logic1, !163, !"max77802_ldo_ops_logic1", i1 false, i1 false}
!163 = !{!"../drivers/regulator/max77802-regulator.c", i32 226, i32 35}
!164 = !{ptr @max77802_pmic_id, !165, !"max77802_pmic_id", i1 false, i1 false}
!165 = !{!"../drivers/regulator/max77802-regulator.c", i32 534, i32 40}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
