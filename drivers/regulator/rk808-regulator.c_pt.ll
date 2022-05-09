; ModuleID = '/llk/IR_all_yes/drivers/regulator/rk808-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rk808-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_rk808_regulator__288_1359_rk808_regulator_driver_init6 = internal global ptr @rk808_regulator_driver_init, section ".initcall6.init", align 4
@rk808_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk808_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk808_regulator_driver_exit = internal global ptr @rk808_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [84 x i8] c"rk808_regulator.description=regulator driver for the RK805/RK808/RK818 series PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [58 x i8] c"rk808_regulator.author=Tony xie <tony.xie@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"rk808_regulator.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [61 x i8] c"rk808_regulator.author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [57 x i8] c"rk808_regulator.author=Wadim Egorov <w.egorov@phytec.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"rk808_regulator.file=drivers/regulator/rk808-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [28 x i8] c"rk808_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [47 x i8] c"rk808_regulator.alias=platform:rk808-regulator\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk808-regulator\00", [16 x i8] zeroinitializer }, align 32
@rk805_reg = internal constant { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk805_buck_1_2_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk805_buck_1_2_voltage_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk805_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr @.str.28, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 27, i32 0, ptr @rk805_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }], [436 x i8] zeroinitializer }, align 32
@rk808_reg = internal constant { [14 x %struct.regulator_desc], [840 x i8] } { [14 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_buck1_2_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 24, ptr @rk808_buck1_2_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_buck1_2_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 24, ptr @rk808_buck1_2_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.29, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.29, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.30, ptr @.str.28, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 16, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk808_ldo3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.32, ptr @.str.31, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.32, ptr @.str.33, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.30, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.38, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.9, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.9, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [840 x i8] zeroinitializer }, align 32
@rk809_reg = internal constant { [16 x %struct.regulator_desc], [960 x i8] } { [16 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 187, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 186, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 190, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 189, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 193, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 100, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 195, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.43, ptr @.str.32, ptr @.str.43, i8 0, ptr @.str.9, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @rk809_buck5_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk809_buck5_voltage_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 222, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 204, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 206, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 208, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.29, ptr @.str.31, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 210, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.29, ptr @.str.33, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 212, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.29, ptr @.str.34, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 214, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.30, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 216, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.30, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 218, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.30, ptr @.str.44, i8 0, ptr @.str.9, ptr null, i32 12, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 220, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.32, ptr @.str.39, i8 0, ptr @.str.9, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.40, ptr @.str.41, i8 0, ptr @.str.9, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [960 x i8] zeroinitializer }, align 32
@rk817_reg = internal constant { [15 x %struct.regulator_desc], [916 x i8] } { [15 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 187, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 186, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 190, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 189, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 90, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck1_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 193, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 100, i32 0, ptr @rk817_buck_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk817_buck3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 196, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 177, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 195, i32 192, ptr @rk817_buck1_4_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr @rk8xx_regulator_of_map_mode }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 204, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 206, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 208, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.29, ptr @.str.31, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 210, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 178, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.29, ptr @.str.33, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 212, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.29, ptr @.str.34, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 214, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.30, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 216, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.30, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 218, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 179, i32 136, i32 136, i32 128, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.30, ptr @.str.44, i8 0, ptr @.str.9, ptr null, i32 12, i8 0, i32 113, i32 0, ptr @rk817_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 220, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 17, i32 17, i32 16, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr @.str.40, ptr @.str.48, i8 0, ptr @.str.9, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @rk817_boost_ops, i32 0, i32 0, ptr null, i32 4700000, i32 100000, i32 0, i32 0, i32 0, i32 -1900000, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 222, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 34, i32 34, i32 32, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr @.str.32, ptr @.str.49, i8 0, ptr @.str.9, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk817_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 180, i32 68, i32 68, i32 64, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [916 x i8] zeroinitializer }, align 32
@rk818_reg = internal constant { [17 x %struct.regulator_desc], [1036 x i8] } { [17 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.9, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr @.str.20, ptr @.str.19, i8 0, ptr @.str.9, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 712500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.9, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.24, ptr @.str.23, i8 0, ptr @.str.9, ptr null, i32 3, i8 0, i32 19, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr @.str.51, ptr @.str.50, i8 0, ptr @.str.9, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 4700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.29, ptr @.str.25, i8 0, ptr @.str.9, ptr null, i32 5, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.29, ptr @.str.27, i8 0, ptr @.str.9, ptr null, i32 6, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.30, ptr @.str.28, i8 0, ptr @.str.9, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @rk808_reg_ops_ranges, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rk808_ldo3_voltage_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.40, ptr @.str.31, i8 0, ptr @.str.9, ptr null, i32 8, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.30, ptr @.str.33, i8 0, ptr @.str.9, ptr null, i32 9, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.40, ptr @.str.34, i8 0, ptr @.str.9, ptr null, i32 10, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.30, ptr @.str.36, i8 0, ptr @.str.9, ptr null, i32 11, i8 0, i32 18, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.40, ptr @.str.37, i8 0, ptr @.str.9, ptr null, i32 12, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr @.str.32, ptr @.str.44, i8 0, ptr @.str.9, ptr null, i32 13, i8 0, i32 17, i32 0, ptr @rk808_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 400, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr @.str.32, ptr @.str.52, i8 0, ptr @.str.9, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr @.str.54, ptr @.str.53, i8 0, ptr @.str.9, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr @.str.55, ptr @.str.49, i8 0, ptr @.str.9, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @rk808_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1036 x i8] zeroinitializer }, align 32
@rk808_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported RK8XX ID %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk808_regulator_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/regulator/rk808-regulator.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk808_regulator_probe._entry_ptr = internal global ptr @rk808_regulator_probe._entry, section ".printk_index", align 4
@rk808_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %d regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@rk808_regulator_probe._entry_ptr.8 = internal global ptr @rk808_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvs\00", [28 x i8] zeroinitializer }, align 32
@rk808_regulator_dt_parse_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get dvs%d gpio (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rk808_regulator_dt_parse_pdata\00", [33 x i8] zeroinitializer }, align 32
@rk808_regulator_dt_parse_pdata._entry_ptr = internal global ptr @rk808_regulator_dt_parse_pdata._entry, section ".printk_index", align 4
@rk808_regulator_dt_parse_pdata._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 1271, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"there is no dvs%d gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rk808_regulator_dt_parse_pdata._entry_ptr.16 = internal global ptr @rk808_regulator_dt_parse_pdata._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG1\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc1\00", [27 x i8] zeroinitializer }, align 32
@rk808_reg_ops_ranges = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk805_buck_1_2_voltage_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 712500, i32 0, i32 59, i32 12500 }, %struct.linear_range { i32 1800000, i32 60, i32 62, i32 200000 }, %struct.linear_range { i32 2300000, i32 63, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG2\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc2\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG3\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc3\00", [27 x i8] zeroinitializer }, align 32
@rk805_switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk805_set_suspend_enable, ptr @rk805_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG4\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc4\00", [27 x i8] zeroinitializer }, align 32
@rk805_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk805_set_suspend_enable, ptr @rk805_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc5\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG2\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG3\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc6\00", [27 x i8] zeroinitializer }, align 32
@rk808_buck1_2_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @rk808_buck1_2_set_voltage_sel, ptr null, ptr @rk808_buck1_2_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @rk808_buck1_2_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk808_buck1_2_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2000, i32 4000, i32 6000, i32 10000], [16 x i8] zeroinitializer }, align 32
@rk808_switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk808_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk808_set_suspend_enable, ptr @rk808_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc7\00", [27 x i8] zeroinitializer }, align 32
@rk808_ldo3_voltage_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 13, i32 100000 }, %struct.linear_range { i32 2500000, i32 15, i32 15, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG4\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc9\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG5\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG6\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcc10\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG7\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG8\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcc11\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SWITCH_REG1\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc8\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SWITCH_REG2\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcc12\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk817_buck_ops_range = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr @rk8xx_set_mode, ptr @rk8xx_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr @rk8xx_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk817_buck1_voltage_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 1600000, i32 81, i32 89, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@rk817_buck1_4_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3000, i32 6300, i32 12500, i32 25000], [16 x i8] zeroinitializer }, align 32
@rk817_buck3_voltage_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 1600000, i32 81, i32 99, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCDC_REG5\00", [22 x i8] zeroinitializer }, align 32
@rk809_buck5_ops_range = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage_range, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk809_buck5_voltage_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 1800000, i32 1, i32 3, i32 200000 }, %struct.linear_range { i32 2800000, i32 4, i32 5, i32 200000 }, %struct.linear_range { i32 3300000, i32 6, i32 7, i32 300000 }], [32 x i8] zeroinitializer }, align 32
@rk817_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_set_suspend_voltage, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_REG9\00", [23 x i8] zeroinitializer }, align 32
@rk817_switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rk8xx_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"do not support this mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk8xx_set_mode\00", [17 x i8] zeroinitializer }, align 32
@rk8xx_set_mode._entry_ptr = internal global ptr @rk8xx_set_mode._entry, section ".printk_index", align 4
@rk8xx_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk8xx_set_suspend_mode\00", [41 x i8] zeroinitializer }, align 32
@rk8xx_set_suspend_mode._entry_ptr = internal global ptr @rk8xx_set_suspend_mode._entry, section ".printk_index", align 4
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOST\00", [26 x i8] zeroinitializer }, align 32
@rk817_boost_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @rk8xx_is_enabled_wmsk_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk817_set_suspend_enable, ptr @rk817_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OTG_SWITCH\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DCDC_BOOST\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"boost\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SWITCH_REG\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_SWITCH\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"h_5v\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 32848, i64 32912, i64 33136, i64 33152]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"rk808_regulator_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1352, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1355, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"rk805_reg\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 685, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"rk808_reg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 747, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [10 x i8] c"rk809_reg\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 849, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"rk817_reg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1007, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"rk818_reg\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1146, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1329, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1343, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1256, i32 49 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1262, i32 46 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1266, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1271, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 687, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 688, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"rk808_reg_ops_ranges\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 593, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"rk805_buck_1_2_voltage_ranges\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 614, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 703, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 704, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 719, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 720, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"rk805_switch_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 557, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 732, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"rk805_reg_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 544, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 736, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 739, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 742, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"rk808_buck1_2_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 565, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"rk808_buck1_2_ramp_table\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 211, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"rk808_switch_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 606, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"rk808_reg_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 580, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 812, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"rk808_ldo3_voltage_ranges\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 161, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 828, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 831, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 834, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 837, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 840, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 843, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 845, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [21 x i8] c"rk817_buck_ops_range\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 659, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"rk817_buck1_voltage_ranges\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 197, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"rk817_buck1_4_ramp_table\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 216, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant [27 x i8] c"rk817_buck3_voltage_ranges\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 204, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 944, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"rk809_buck5_ops_range\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 620, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"rk809_buck5_voltage_ranges\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 168, i32 34 }
@___asan_gen_.253 = private unnamed_addr constant [14 x i8] c"rk817_reg_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 634, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 995, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"rk817_switch_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 677, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 487, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 470, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1137, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"rk817_boost_ops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 647, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1141, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1195, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1240, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1242, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private constant [39 x i8] c"../drivers/regulator/rk808-regulator.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1244, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_rk808_regulator_driver_exit, ptr @__initcall__kmod_rk808_regulator__288_1359_rk808_regulator_driver_init6, ptr @rk808_regulator_driver_exit, ptr @rk808_regulator_dt_parse_pdata._entry, ptr @rk808_regulator_dt_parse_pdata._entry.13, ptr @rk808_regulator_dt_parse_pdata._entry_ptr, ptr @rk808_regulator_dt_parse_pdata._entry_ptr.16, ptr @rk808_regulator_probe._entry, ptr @rk808_regulator_probe._entry.6, ptr @rk808_regulator_probe._entry_ptr, ptr @rk808_regulator_probe._entry_ptr.8, ptr @rk8xx_set_mode._entry, ptr @rk8xx_set_mode._entry_ptr, ptr @rk8xx_set_suspend_mode._entry, ptr @rk8xx_set_suspend_mode._entry_ptr, ptr @rk808_regulator_driver, ptr @.str, ptr @rk805_reg, ptr @rk808_reg, ptr @rk809_reg, ptr @rk817_reg, ptr @rk818_reg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @rk808_reg_ops_ranges, ptr @rk805_buck_1_2_voltage_ranges, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @rk805_switch_ops, ptr @.str.23, ptr @.str.24, ptr @rk805_reg_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rk808_buck1_2_ops, ptr @rk808_buck1_2_ramp_table, ptr @rk808_switch_ops, ptr @rk808_reg_ops, ptr @.str.30, ptr @rk808_ldo3_voltage_ranges, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rk817_buck_ops_range, ptr @rk817_buck1_voltage_ranges, ptr @rk817_buck1_4_ramp_table, ptr @rk817_buck3_voltage_ranges, ptr @.str.43, ptr @rk809_buck5_ops_range, ptr @rk809_buck5_voltage_ranges, ptr @rk817_reg_ops, ptr @.str.44, ptr @rk817_switch_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @rk817_boost_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_reg to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_reg to i32), i32 3416, i32 4256, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk809_reg to i32), i32 3904, i32 4864, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_reg to i32), i32 3660, i32 4576, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk818_reg to i32), i32 4148, i32 5184, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regulator_dt_parse_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_regulator_dt_parse_pdata._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_reg_ops_ranges to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_buck_1_2_voltage_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk805_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_buck1_2_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_buck1_2_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_ldo3_voltage_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_buck_ops_range to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_buck1_voltage_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_buck1_4_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_buck3_voltage_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk809_buck5_ops_range to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk809_buck5_voltage_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk8xx_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk8xx_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_boost_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk808_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk808_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk808_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %6 = call ptr @memset(ptr %config, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call.i56 = tail call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull @.str.9) #7
  %tobool.not.i = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.body.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end
  %call1.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev4, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 3) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.preheader.i.if.then5.i_crit_edge, label %if.end9.i

for.body.preheader.i.if.then5.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then5.i:                                       ; preds = %for.inc.i.if.then5.i_crit_edge, %for.body.preheader.i.if.then5.i_crit_edge
  %i.050.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.then5.i_crit_edge ], [ 1, %for.inc.i.if.then5.i_crit_edge ]
  %call1.lcssa.i = phi ptr [ %call1.i, %for.body.preheader.i.if.then5.i_crit_edge ], [ %call1.1.i, %for.inc.i.if.then5.i_crit_edge ]
  %12 = ptrtoint ptr %call1.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %i.050.lcssa.i, i32 noundef %12) #10
  br label %rk808_regulator_dt_parse_pdata.exit

if.end9.i:                                        ; preds = %for.body.preheader.i
  %tobool12.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end17.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 0) #10
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 2, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef 2, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %do.end16.i
  %ret.1.i = phi i32 [ %call.i.i, %if.end17.i ], [ 0, %do.end16.i ]
  %call1.1.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %dev4, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 3) #7
  %arrayidx.1.i = getelementptr [2 x ptr], ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call1.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.if.then5.i_crit_edge, label %if.end9.1.i

for.inc.i.if.then5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.end9.1.i:                                      ; preds = %for.inc.i
  %tobool12.not.1.i = icmp eq ptr %call1.1.i, null
  br i1 %tobool12.not.1.i, label %do.end16.1.i, label %if.end17.1.i

if.end17.1.i:                                     ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.1.i = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %call1.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1.i)
  %tobool22.not.1.i = icmp eq i32 %call21.1.i, 0
  %spec.select.1.i = select i1 %tobool22.not.1.i, i32 4, i32 0
  %call.i.1.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef 4, i32 noundef %spec.select.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %rk808_regulator_dt_parse_pdata.exit

do.end16.1.i:                                     ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 1) #10
  br label %rk808_regulator_dt_parse_pdata.exit

rk808_regulator_dt_parse_pdata.exit:              ; preds = %do.end16.1.i, %if.end17.1.i, %if.then5.i
  %ret.2.i = phi i32 [ %12, %if.then5.i ], [ %call.i.1.i, %if.end17.1.i ], [ %ret.1.i, %do.end16.1.i ]
  tail call void @of_node_put(ptr noundef nonnull %call.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp = icmp slt i32 %ret.2.i, 0
  br i1 %cmp, label %rk808_regulator_dt_parse_pdata.exit.cleanup_crit_edge, label %if.end7

rk808_regulator_dt_parse_pdata.exit.cleanup_crit_edge: ; preds = %rk808_regulator_dt_parse_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %rk808_regulator_dt_parse_pdata.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %variant, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end [
    i32 32848, label %if.end7.sw.epilog_crit_edge
    i32 0, label %sw.bb8
    i32 32912, label %sw.bb9
    i32 33136, label %sw.bb10
    i32 33152, label %sw.bb11
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.1, i32 noundef %16) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %if.end7.sw.epilog_crit_edge
  %regulators.0 = phi ptr [ @rk818_reg, %sw.bb11 ], [ @rk817_reg, %sw.bb10 ], [ @rk809_reg, %sw.bb9 ], [ @rk808_reg, %sw.bb8 ], [ @rk805_reg, %if.end7.sw.epilog_crit_edge ]
  %nregulators.0 = phi i32 [ 17, %sw.bb11 ], [ 15, %sw.bb10 ], [ 16, %sw.bb9 ], [ 14, %sw.bb8 ], [ 7, %if.end7.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev4, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %regmap17 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %22 = ptrtoint ptr %regmap17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %regmap17, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.060 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.regulator_desc, ptr %regulators.0, i32 %i.060
  %call20 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %for.inc

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.7, i32 noundef %i.060) #10
  %23 = ptrtoint ptr %call20 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %nregulators.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end25, %do.end, %rk808_regulator_dt_parse_pdata.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %23, %do.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.2.i, %rk808_regulator_dt_parse_pdata.exit.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_voltage_range(ptr noundef %rdev, i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uv, i32 noundef %uv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %3, 1
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef %call, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_enable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %add = add i32 %3, 2
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_disable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %add = add i32 %3, 2
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_set_suspend_enable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %add = add i32 %3, 2
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk805_set_suspend_disable(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_reg, align 4
  %add = add i32 %3, 2
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uv, i32 noundef %uv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %3, 1
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef %7, i32 noundef %call, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %old_sel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %arrayidx = getelementptr [2 x ptr], ptr %call, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sel) #7
  %6 = ptrtoint ptr %old_sel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %old_sel, align 4, !annotation !174
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !174
  %vsel_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %8 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel_mask.i, align 4
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %5, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.rk808_buck1_2_i2c_set_voltage_sel.exit_crit_edge

if.then.rk808_buck1_2_i2c_set_voltage_sel.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rk808_buck1_2_i2c_set_voltage_sel.exit

if.end.i:                                         ; preds = %if.then
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %13, %neg.i
  %and2.i = and i32 %13, %9
  %14 = call i32 @llvm.cttz.i32(i32 %9, i1 true) #7, !range !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %iszero.i = icmp eq i32 %9, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %14
  %shr.i = lshr i32 %and2.i, %sub.i
  %delta_sel.047.i = sub i32 %sel, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %delta_sel.047.i)
  %cmp448.i = icmp sgt i32 %delta_sel.047.i, 8
  br i1 %cmp448.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %old_sel.049.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %if.end.i.while.body.i_crit_edge ]
  %add.i = add i32 %old_sel.049.i, 8
  %shl.i = shl i32 %add.i, %sub.i
  %or.i = or i32 %shl.i, %and.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %val.i, align 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev, align 8
  %vsel_reg10.i = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %vsel_reg10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vsel_reg10.i, align 4
  %call11.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %21, i32 noundef %or.i) #7
  %delta_sel.0.i = sub i32 %sel, %add.i
  %cmp4.i = icmp sgt i32 %delta_sel.0.i, 8
  br i1 %cmp4.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %shl16.i = shl i32 %sel, %sub.i
  %or17.i = or i32 %and.i, %shl16.i
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or17.i, ptr %val.i, align 4
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdev, align 8
  %vsel_reg20.i = getelementptr inbounds %struct.regulator_desc, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %vsel_reg20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vsel_reg20.i, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %24, i32 noundef %28, i32 noundef %or17.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748) #7
  br label %rk808_buck1_2_i2c_set_voltage_sel.exit

rk808_buck1_2_i2c_set_voltage_sel.exit:           ; preds = %while.end.i, %if.then.rk808_buck1_2_i2c_set_voltage_sel.exit_crit_edge
  %retval.0.i = phi i32 [ %call21.i, %while.end.i ], [ %call.i, %if.then.rk808_buck1_2_i2c_set_voltage_sel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %5, 2
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %32 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rdev, align 8
  %vsel_reg6 = getelementptr inbounds %struct.regulator_desc, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %vsel_reg6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vsel_reg6, align 4
  %call7 = call i32 @regmap_read(ptr noundef %31, i32 noundef %35, ptr noundef nonnull %old_sel) #7
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regmap8 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %36 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap8, align 4
  %add9 = add i32 %5, 2
  %call10 = call i32 @regmap_read(ptr noundef %37, i32 noundef %add9, ptr noundef nonnull %old_sel) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  %reg.0 = phi i32 [ %add, %if.then4 ], [ %5, %if.else ]
  %ret.0 = phi i32 [ %call7, %if.then4 ], [ %call10, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp12.not = icmp eq i32 %ret.0, 0
  br i1 %cmp12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %38 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %39, i32 0, i32 28
  %40 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vsel_mask, align 4
  %42 = call i32 @llvm.cttz.i32(i32 %41, i1 true), !range !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %iszero = icmp eq i32 %41, 0
  %sub = select i1 %iszero, i32 -1, i32 %42
  %shl = shl i32 %sel, %sub
  %43 = ptrtoint ptr %old_sel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old_sel, align 4
  %neg = xor i32 %41, -1
  %and = and i32 %44, %neg
  %or = or i32 %shl, %and
  %regmap18 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %45 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap18, align 4
  %call19 = call i32 @regmap_write(ptr noundef %46, i32 noundef %reg.0, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext = zext i1 %cmp to i32
  call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %lnot.ext) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %rk808_buck1_2_i2c_set_voltage_sel.exit
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %retval.0.i, %rk808_buck1_2_i2c_set_voltage_sel.exit ], [ %ret.0, %if.end11.cleanup_crit_edge ], [ %call19, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sel) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_get_voltage_sel_regmap(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %arrayidx = getelementptr [2 x ptr], ptr %call, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !174
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %rdev) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %8, 2
  %call4 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_mask, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, %12
  %15 = call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %iszero = icmp eq i32 %12, 0
  %sub = select i1 %iszero, i32 -1, i32 %15
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %shr, %if.end7 ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_buck1_2_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %arrayidx = getelementptr [2 x ptr], ptr %call, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @regulator_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk8xx_regulator_of_map_mode(i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 1
  %switch.select3 = select i1 %switch.selectcmp2, i32 1, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_is_enabled_wmsk_regmap(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !174
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
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_mask, align 4
  %and = and i32 %10, 240
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or = or i32 %12, %and
  %and4 = and i32 %or, %10
  %enable_is_inverted = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 38
  %13 = ptrtoint ptr %enable_is_inverted to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_is_inverted, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %enable_val18 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 36
  %15 = ptrtoint ptr %enable_val18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_val18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end16, label %if.then6

if.then6:                                         ; preds = %if.end
  br i1 %tobool19.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %16)
  %cmp12 = icmp ne i32 %and4, %16
  %conv = zext i1 %cmp12 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp14 = icmp eq i32 %and4, 0
  %conv15 = zext i1 %cmp14 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %16)
  %cmp23 = icmp eq i32 %and4, %16
  %conv24 = zext i1 %cmp23 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp26 = icmp ne i32 %and4, 0
  %conv27 = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then20, %if.end13, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then9 ], [ %conv15, %if.end13 ], [ %conv24, %if.then20 ], [ %conv27, %if.end25 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %mode, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap2 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap2, align 4
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %vsel_reg4 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %vsel_reg4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_reg4, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i10, %sw.bb1 ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_get_mode(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !174
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
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
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %. = select i1 %tobool1.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk817_set_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %0 = icmp ult i32 %call.i, 4
  br i1 %0, label %entry.if.end15.i_crit_edge, label %if.else.i

entry.if.end15.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.else.i:                                        ; preds = %entry
  %1 = add i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %call.i, 4
  br label %if.end15.i

if.else6.i:                                       ; preds = %if.else.i
  %3 = and i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %if.then10.i, label %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge

if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rk817_set_suspend_enable_ctrl.exit

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add12.i = add nsw i32 %call.i, -8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.then5.i, %entry.if.end15.i_crit_edge
  %id_slp.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add12.i, %if.then10.i ], [ %call.i, %entry.if.end15.i_crit_edge ]
  %div36.i = lshr i32 %id_slp.0.i, 3
  %add16.i = add nuw nsw i32 %div36.i, 181
  %rem.i = and i32 %id_slp.0.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add16.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %rk817_set_suspend_enable_ctrl.exit

rk817_set_suspend_enable_ctrl.exit:               ; preds = %if.end15.i, %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end15.i ], [ -22, %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk817_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %0 = icmp ult i32 %call.i, 4
  br i1 %0, label %entry.if.end15.i_crit_edge, label %if.else.i

entry.if.end15.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.else.i:                                        ; preds = %entry
  %1 = add i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %call.i, 4
  br label %if.end15.i

if.else6.i:                                       ; preds = %if.else.i
  %3 = and i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %if.then10.i, label %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge

if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rk817_set_suspend_enable_ctrl.exit

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add12.i = add nsw i32 %call.i, -8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.then5.i, %entry.if.end15.i_crit_edge
  %id_slp.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add12.i, %if.then10.i ], [ %call.i, %entry.if.end15.i_crit_edge ]
  %div36.i = lshr i32 %id_slp.0.i, 3
  %add16.i = add nuw nsw i32 %div36.i, 181
  %rem.i = and i32 %id_slp.0.i, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add16.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %rk817_set_suspend_enable_ctrl.exit

rk817_set_suspend_enable_ctrl.exit:               ; preds = %if.end15.i, %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end15.i ], [ -22, %if.else6.i.rk817_set_suspend_enable_ctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk8xx_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %3, 1
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %mode, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap2 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap2, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i8, %sw.bb1 ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !91, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !160, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__initcall__kmod_rk808_regulator__288_1359_rk808_regulator_driver_init6, !1, !"__initcall__kmod_rk808_regulator__288_1359_rk808_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/rk808-regulator.c", i32 1359, i32 1}
!2 = !{ptr @__exitcall_rk808_regulator_driver_exit, !1, !"__exitcall_rk808_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/rk808-regulator.c", i32 1361, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/rk808-regulator.c", i32 1362, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/rk808-regulator.c", i32 1363, i32 1}
!9 = !{ptr @__UNIQUE_ID_author292, !10, !"__UNIQUE_ID_author292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/rk808-regulator.c", i32 1364, i32 1}
!11 = !{ptr @__UNIQUE_ID_author293, !12, !"__UNIQUE_ID_author293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/rk808-regulator.c", i32 1365, i32 1}
!13 = !{ptr @__UNIQUE_ID_file294, !14, !"__UNIQUE_ID_file294", i1 false, i1 false}
!14 = !{!"../drivers/regulator/rk808-regulator.c", i32 1366, i32 1}
!15 = !{ptr @__UNIQUE_ID_license295, !14, !"__UNIQUE_ID_license295", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias296, !17, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!17 = !{!"../drivers/regulator/rk808-regulator.c", i32 1367, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/rk808-regulator.c", i32 1355, i32 11}
!20 = !{ptr @rk808_regulator_driver, !21, !"rk808_regulator_driver", i1 false, i1 false}
!21 = !{!"../drivers/regulator/rk808-regulator.c", i32 1352, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/rk808-regulator.c", i32 1329, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rk808_regulator_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rk808_regulator_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/rk808-regulator.c", i32 1343, i32 4}
!32 = !{ptr @rk808_regulator_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rk808_regulator_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/rk808-regulator.c", i32 1256, i32 49}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/rk808-regulator.c", i32 1262, i32 46}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/rk808-regulator.c", i32 1266, i32 4}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rk808_regulator_dt_parse_pdata._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rk808_regulator_dt_parse_pdata._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/rk808-regulator.c", i32 1271, i32 4}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rk808_regulator_dt_parse_pdata._entry.13, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rk808_regulator_dt_parse_pdata._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/rk808-regulator.c", i32 687, i32 11}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/rk808-regulator.c", i32 688, i32 18}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/rk808-regulator.c", i32 703, i32 11}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/rk808-regulator.c", i32 704, i32 18}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/rk808-regulator.c", i32 719, i32 11}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/rk808-regulator.c", i32 720, i32 18}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/rk808-regulator.c", i32 732, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/rk808-regulator.c", i32 736, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/rk808-regulator.c", i32 739, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/rk808-regulator.c", i32 742, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rk805_reg, !72, !"rk805_reg", i1 false, i1 false}
!72 = !{!"../drivers/regulator/rk808-regulator.c", i32 685, i32 36}
!73 = !{ptr @rk808_reg_ops_ranges, !74, !"rk808_reg_ops_ranges", i1 false, i1 false}
!74 = !{!"../drivers/regulator/rk808-regulator.c", i32 593, i32 35}
!75 = !{ptr @rk805_buck_1_2_voltage_ranges, !76, !"rk805_buck_1_2_voltage_ranges", i1 false, i1 false}
!76 = !{!"../drivers/regulator/rk808-regulator.c", i32 614, i32 34}
!77 = !{ptr @rk805_switch_ops, !78, !"rk805_switch_ops", i1 false, i1 false}
!78 = !{!"../drivers/regulator/rk808-regulator.c", i32 557, i32 35}
!79 = !{ptr @rk805_reg_ops, !80, !"rk805_reg_ops", i1 false, i1 false}
!80 = !{!"../drivers/regulator/rk808-regulator.c", i32 544, i32 35}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/rk808-regulator.c", i32 812, i32 18}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/rk808-regulator.c", i32 828, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/rk808-regulator.c", i32 831, i32 2}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/rk808-regulator.c", i32 834, i32 2}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/rk808-regulator.c", i32 837, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/rk808-regulator.c", i32 840, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/rk808-regulator.c", i32 843, i32 2}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/rk808-regulator.c", i32 845, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rk808_reg, !103, !"rk808_reg", i1 false, i1 false}
!103 = !{!"../drivers/regulator/rk808-regulator.c", i32 747, i32 36}
!104 = !{ptr @rk808_buck1_2_ops, !105, !"rk808_buck1_2_ops", i1 false, i1 false}
!105 = !{!"../drivers/regulator/rk808-regulator.c", i32 565, i32 35}
!106 = !{ptr @rk808_buck1_2_ramp_table, !107, !"rk808_buck1_2_ramp_table", i1 false, i1 false}
!107 = !{!"../drivers/regulator/rk808-regulator.c", i32 211, i32 27}
!108 = !{ptr @rk808_switch_ops, !109, !"rk808_switch_ops", i1 false, i1 false}
!109 = !{!"../drivers/regulator/rk808-regulator.c", i32 606, i32 35}
!110 = !{ptr @rk808_reg_ops, !111, !"rk808_reg_ops", i1 false, i1 false}
!111 = !{!"../drivers/regulator/rk808-regulator.c", i32 580, i32 35}
!112 = !{ptr @rk808_ldo3_voltage_ranges, !113, !"rk808_ldo3_voltage_ranges", i1 false, i1 false}
!113 = !{!"../drivers/regulator/rk808-regulator.c", i32 161, i32 34}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/rk808-regulator.c", i32 944, i32 11}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/rk808-regulator.c", i32 995, i32 2}
!118 = !{ptr @rk809_reg, !119, !"rk809_reg", i1 false, i1 false}
!119 = !{!"../drivers/regulator/rk808-regulator.c", i32 849, i32 36}
!120 = !{ptr @rk817_buck_ops_range, !121, !"rk817_buck_ops_range", i1 false, i1 false}
!121 = !{!"../drivers/regulator/rk808-regulator.c", i32 659, i32 35}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/rk808-regulator.c", i32 487, i32 3}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @rk8xx_set_mode._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @rk8xx_set_mode._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/rk808-regulator.c", i32 470, i32 3}
!129 = !{ptr @rk8xx_set_suspend_mode._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rk8xx_set_suspend_mode._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @rk817_buck1_voltage_ranges, !132, !"rk817_buck1_voltage_ranges", i1 false, i1 false}
!132 = !{!"../drivers/regulator/rk808-regulator.c", i32 197, i32 34}
!133 = !{ptr @rk817_buck1_4_ramp_table, !134, !"rk817_buck1_4_ramp_table", i1 false, i1 false}
!134 = !{!"../drivers/regulator/rk808-regulator.c", i32 216, i32 27}
!135 = !{ptr @rk817_buck3_voltage_ranges, !136, !"rk817_buck3_voltage_ranges", i1 false, i1 false}
!136 = !{!"../drivers/regulator/rk808-regulator.c", i32 204, i32 34}
!137 = !{ptr @rk809_buck5_ops_range, !138, !"rk809_buck5_ops_range", i1 false, i1 false}
!138 = !{!"../drivers/regulator/rk808-regulator.c", i32 620, i32 35}
!139 = !{ptr @rk809_buck5_voltage_ranges, !140, !"rk809_buck5_voltage_ranges", i1 false, i1 false}
!140 = !{!"../drivers/regulator/rk808-regulator.c", i32 168, i32 34}
!141 = !{ptr @rk817_reg_ops, !142, !"rk817_reg_ops", i1 false, i1 false}
!142 = !{!"../drivers/regulator/rk808-regulator.c", i32 634, i32 35}
!143 = !{ptr @rk817_switch_ops, !144, !"rk817_switch_ops", i1 false, i1 false}
!144 = !{!"../drivers/regulator/rk808-regulator.c", i32 677, i32 35}
!145 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/rk808-regulator.c", i32 1137, i32 2}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/rk808-regulator.c", i32 1141, i32 2}
!149 = !{ptr @rk817_reg, !150, !"rk817_reg", i1 false, i1 false}
!150 = !{!"../drivers/regulator/rk808-regulator.c", i32 1007, i32 36}
!151 = !{ptr @rk817_boost_ops, !152, !"rk817_boost_ops", i1 false, i1 false}
!152 = !{!"../drivers/regulator/rk808-regulator.c", i32 647, i32 35}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/regulator/rk808-regulator.c", i32 1195, i32 2}
!155 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/rk808-regulator.c", i32 1240, i32 2}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/regulator/rk808-regulator.c", i32 1242, i32 2}
!160 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/rk808-regulator.c", i32 1244, i32 2}
!163 = !{ptr @rk818_reg, !164, !"rk818_reg", i1 false, i1 false}
!164 = !{!"../drivers/regulator/rk808-regulator.c", i32 1146, i32 36}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"auto-init"}
!175 = !{i32 0, i32 33}
!176 = !{i8 0, i8 2}
