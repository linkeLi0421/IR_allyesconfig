; ModuleID = '/llk/IR_all_yes/drivers/regulator/sc2731-regulator.c_pt.bc'
source_filename = "../drivers/regulator/sc2731-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__initcall__kmod_sc2731_regulator__288_252_sc2731_regulator_driver_init6 = internal global ptr @sc2731_regulator_driver_init, section ".initcall6.init", align 4
@sc2731_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc2731_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc2731_regulator_driver_exit = internal global ptr @sc2731_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"sc2731_regulator.author=Chen Junhui <erick.chen@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"sc2731_regulator.description=Spreadtrum SC2731 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"sc2731_regulator.file=drivers/regulator/sc2731-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"sc2731_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc27xx-regulator\00", [47 x i8] zeroinitializer }, align 32
@sc2731_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get regmap.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sc2731_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/sc2731-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc2731_regulator_probe._entry_ptr = internal global ptr @sc2731_regulator_probe._entry, section ".printk_index", align 4
@sc2731_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to release regulator lock\0A\00", [62 x i8] zeroinitializer }, align 32
@sc2731_regulator_probe._entry_ptr.8 = internal global ptr @sc2731_regulator_probe._entry.6, section ".printk_index", align 4
@regulators = internal constant { [17 x %struct.regulator_desc], [1036 x i8] } { [17 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr null, ptr null, i32 0, i8 0, i32 512, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 3125, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3156, i32 511, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3112, i32 16, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 1, i8 0, i32 512, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 400000, i32 3125, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3172, i32 511, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3112, i32 8, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 2, i8 0, i32 512, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 600000, i32 3125, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3256, i32 511, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3112, i32 2048, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 3, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3328, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3324, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr null, ptr null, i32 4, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3336, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3332, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 5, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3344, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3340, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr null, ptr null, i32 6, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3368, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3436, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 7, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3376, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3372, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr null, ptr null, i32 8, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3384, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3444, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr null, ptr null, i32 9, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3392, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3440, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr null, ptr null, i32 10, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3408, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3404, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr null, ptr null, i32 11, i8 0, i32 256, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1200000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3424, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3420, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr null, ptr null, i32 12, i8 0, i32 128, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1000000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3456, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3452, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr null, ptr null, i32 13, i8 0, i32 128, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1000000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3464, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3460, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr null, ptr null, i32 14, i8 0, i32 128, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1000000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3472, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3468, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr null, ptr null, i32 15, i8 0, i32 128, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1000000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3480, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3476, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr null, ptr null, i32 16, i8 0, i32 128, i32 0, ptr @sc2731_regu_linear_ops, i32 0, i32 0, ptr null, i32 1000000, i32 6250, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 3504, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3448, i32 1, i32 0, i32 0, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1036 x i8] zeroinitializer }, align 32
@sc2731_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@sc2731_regulator_probe._entry_ptr.11 = internal global ptr @sc2731_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUCK_CPU0\00", [22 x i8] zeroinitializer }, align 32
@sc2731_regu_linear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUCK_CPU1\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BUCK_RF\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_CAMA0\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_CAMA1\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LDO_CAMMOT\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_VLDO\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LDO_EMMCCORE\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LDO_SDCORE\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_SDIO\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LDO_WIFIPA\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_USB33\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_CAMD0\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_CAMD1\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO_CON\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO_CAMIO\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_SRAM\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"sc2731_regulator_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 245, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 247, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 219, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 225, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 149, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 236, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 150, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [23 x i8] c"sc2731_regu_linear_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 121, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 153, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 156, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 159, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 162, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 165, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 168, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 171, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 175, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 178, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 181, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 184, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 187, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 193, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 196, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [40 x i8] c"../drivers/regulator/sc2731-regulator.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 199, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sc2731_regulator_driver_exit, ptr @__initcall__kmod_sc2731_regulator__288_252_sc2731_regulator_driver_init6, ptr @sc2731_regulator_driver_exit, ptr @sc2731_regulator_probe._entry, ptr @sc2731_regulator_probe._entry.6, ptr @sc2731_regulator_probe._entry.9, ptr @sc2731_regulator_probe._entry_ptr, ptr @sc2731_regulator_probe._entry_ptr.11, ptr @sc2731_regulator_probe._entry_ptr.8, ptr @sc2731_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @regulators, ptr @.str.10, ptr @.str.12, ptr @sc2731_regu_linear_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 4148, i32 5184, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_regu_linear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc2731_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc2731_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc2731_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc2731_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @regmap_write(ptr noundef nonnull %call, i32 noundef 3852, i32 noundef 28287) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %config, align 4
  %regmap12 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %5 = ptrtoint ptr %regmap12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %regmap12, align 4
  %call14 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @regulators, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.do.end19_crit_edge, label %for.cond

if.end9.do.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond:                                         ; preds = %if.end9
  %call14.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i.1 = icmp ugt ptr %call14.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.do.end19_crit_edge, label %for.cond.1

for.cond.do.end19_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.1:                                       ; preds = %for.cond
  %call14.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.2 = icmp ugt ptr %call14.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.do.end19_crit_edge, label %for.cond.2

for.cond.1.do.end19_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.2:                                       ; preds = %for.cond.1
  %call14.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i.3 = icmp ugt ptr %call14.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.do.end19_crit_edge, label %for.cond.3

for.cond.2.do.end19_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.3:                                       ; preds = %for.cond.2
  %call14.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i.4 = icmp ugt ptr %call14.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.do.end19_crit_edge, label %for.cond.4

for.cond.3.do.end19_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.4:                                       ; preds = %for.cond.3
  %call14.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i.5 = icmp ugt ptr %call14.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.do.end19_crit_edge, label %for.cond.5

for.cond.4.do.end19_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.5:                                       ; preds = %for.cond.4
  %call14.6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 6), ptr noundef nonnull %config) #5
  %cmp.i.6 = icmp ugt ptr %call14.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.cond.5.do.end19_crit_edge, label %for.cond.6

for.cond.5.do.end19_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.6:                                       ; preds = %for.cond.5
  %call14.7 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 7), ptr noundef nonnull %config) #5
  %cmp.i.7 = icmp ugt ptr %call14.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.cond.6.do.end19_crit_edge, label %for.cond.7

for.cond.6.do.end19_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.7:                                       ; preds = %for.cond.6
  %call14.8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 8), ptr noundef nonnull %config) #5
  %cmp.i.8 = icmp ugt ptr %call14.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8, label %for.cond.7.do.end19_crit_edge, label %for.cond.8

for.cond.7.do.end19_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.8:                                       ; preds = %for.cond.7
  %call14.9 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 9), ptr noundef nonnull %config) #5
  %cmp.i.9 = icmp ugt ptr %call14.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.9, label %for.cond.8.do.end19_crit_edge, label %for.cond.9

for.cond.8.do.end19_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.9:                                       ; preds = %for.cond.8
  %call14.10 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 10), ptr noundef nonnull %config) #5
  %cmp.i.10 = icmp ugt ptr %call14.10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.10, label %for.cond.9.do.end19_crit_edge, label %for.cond.10

for.cond.9.do.end19_crit_edge:                    ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.10:                                      ; preds = %for.cond.9
  %call14.11 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 11), ptr noundef nonnull %config) #5
  %cmp.i.11 = icmp ugt ptr %call14.11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.11, label %for.cond.10.do.end19_crit_edge, label %for.cond.11

for.cond.10.do.end19_crit_edge:                   ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.11:                                      ; preds = %for.cond.10
  %call14.12 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 12), ptr noundef nonnull %config) #5
  %cmp.i.12 = icmp ugt ptr %call14.12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.12, label %for.cond.11.do.end19_crit_edge, label %for.cond.12

for.cond.11.do.end19_crit_edge:                   ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.12:                                      ; preds = %for.cond.11
  %call14.13 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 13), ptr noundef nonnull %config) #5
  %cmp.i.13 = icmp ugt ptr %call14.13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.13, label %for.cond.12.do.end19_crit_edge, label %for.cond.13

for.cond.12.do.end19_crit_edge:                   ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.13:                                      ; preds = %for.cond.12
  %call14.14 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 14), ptr noundef nonnull %config) #5
  %cmp.i.14 = icmp ugt ptr %call14.14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.14, label %for.cond.13.do.end19_crit_edge, label %for.cond.14

for.cond.13.do.end19_crit_edge:                   ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.14:                                      ; preds = %for.cond.13
  %call14.15 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 15), ptr noundef nonnull %config) #5
  %cmp.i.15 = icmp ugt ptr %call14.15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.15, label %for.cond.14.do.end19_crit_edge, label %for.cond.15

for.cond.14.do.end19_crit_edge:                   ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

for.cond.15:                                      ; preds = %for.cond.14
  %call14.16 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 16), ptr noundef nonnull %config) #5
  %cmp.i.16 = icmp ugt ptr %call14.16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.16, label %for.cond.15.do.end19_crit_edge, label %for.cond.15.cleanup_crit_edge

for.cond.15.cleanup_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.15.do.end19_crit_edge:                   ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end19:                                         ; preds = %for.cond.15.do.end19_crit_edge, %for.cond.14.do.end19_crit_edge, %for.cond.13.do.end19_crit_edge, %for.cond.12.do.end19_crit_edge, %for.cond.11.do.end19_crit_edge, %for.cond.10.do.end19_crit_edge, %for.cond.9.do.end19_crit_edge, %for.cond.8.do.end19_crit_edge, %for.cond.7.do.end19_crit_edge, %for.cond.6.do.end19_crit_edge, %for.cond.5.do.end19_crit_edge, %for.cond.4.do.end19_crit_edge, %for.cond.3.do.end19_crit_edge, %for.cond.2.do.end19_crit_edge, %for.cond.1.do.end19_crit_edge, %for.cond.do.end19_crit_edge, %if.end9.do.end19_crit_edge
  %arrayidx.lcssa = phi ptr [ @regulators, %if.end9.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), %for.cond.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), %for.cond.1.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), %for.cond.2.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), %for.cond.3.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), %for.cond.4.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 6), %for.cond.5.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 7), %for.cond.6.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 8), %for.cond.7.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 9), %for.cond.8.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 10), %for.cond.9.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 11), %for.cond.10.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 12), %for.cond.11.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 13), %for.cond.12.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 14), %for.cond.13.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 15), %for.cond.14.do.end19_crit_edge ], [ getelementptr inbounds ([17 x %struct.regulator_desc], ptr @regulators, i32 0, i32 16), %for.cond.15.do.end19_crit_edge ]
  %call14.lcssa = phi ptr [ %call14, %if.end9.do.end19_crit_edge ], [ %call14.1, %for.cond.do.end19_crit_edge ], [ %call14.2, %for.cond.1.do.end19_crit_edge ], [ %call14.3, %for.cond.2.do.end19_crit_edge ], [ %call14.4, %for.cond.3.do.end19_crit_edge ], [ %call14.5, %for.cond.4.do.end19_crit_edge ], [ %call14.6, %for.cond.5.do.end19_crit_edge ], [ %call14.7, %for.cond.6.do.end19_crit_edge ], [ %call14.8, %for.cond.7.do.end19_crit_edge ], [ %call14.9, %for.cond.8.do.end19_crit_edge ], [ %call14.10, %for.cond.9.do.end19_crit_edge ], [ %call14.11, %for.cond.10.do.end19_crit_edge ], [ %call14.12, %for.cond.11.do.end19_crit_edge ], [ %call14.13, %for.cond.12.do.end19_crit_edge ], [ %call14.14, %for.cond.13.do.end19_crit_edge ], [ %call14.15, %for.cond.14.do.end19_crit_edge ], [ %call14.16, %for.cond.15.do.end19_crit_edge ]
  %6 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %7) #8
  %8 = ptrtoint ptr %call14.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %for.cond.15.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end7 ], [ %8, %do.end19 ], [ -19, %do.end ], [ 0, %for.cond.15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_sc2731_regulator__288_252_sc2731_regulator_driver_init6, !1, !"__initcall__kmod_sc2731_regulator__288_252_sc2731_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/sc2731-regulator.c", i32 252, i32 1}
!2 = !{ptr @__exitcall_sc2731_regulator_driver_exit, !1, !"__exitcall_sc2731_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/sc2731-regulator.c", i32 254, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/sc2731-regulator.c", i32 255, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/sc2731-regulator.c", i32 256, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/sc2731-regulator.c", i32 247, i32 11}
!12 = !{ptr @sc2731_regulator_driver, !13, !"sc2731_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/sc2731-regulator.c", i32 245, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/sc2731-regulator.c", i32 219, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sc2731_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sc2731_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/sc2731-regulator.c", i32 225, i32 3}
!24 = !{ptr @sc2731_regulator_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc2731_regulator_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/sc2731-regulator.c", i32 236, i32 4}
!28 = !{ptr @sc2731_regulator_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sc2731_regulator_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/sc2731-regulator.c", i32 150, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/sc2731-regulator.c", i32 153, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/sc2731-regulator.c", i32 156, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/sc2731-regulator.c", i32 159, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/sc2731-regulator.c", i32 162, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/sc2731-regulator.c", i32 165, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/sc2731-regulator.c", i32 168, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/sc2731-regulator.c", i32 171, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/sc2731-regulator.c", i32 175, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/sc2731-regulator.c", i32 178, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/sc2731-regulator.c", i32 181, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/sc2731-regulator.c", i32 184, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/sc2731-regulator.c", i32 187, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/sc2731-regulator.c", i32 190, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/sc2731-regulator.c", i32 193, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/sc2731-regulator.c", i32 196, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/sc2731-regulator.c", i32 199, i32 2}
!64 = !{ptr @regulators, !65, !"regulators", i1 false, i1 false}
!65 = !{!"../drivers/regulator/sc2731-regulator.c", i32 149, i32 36}
!66 = !{ptr @sc2731_regu_linear_ops, !67, !"sc2731_regu_linear_ops", i1 false, i1 false}
!67 = !{!"../drivers/regulator/sc2731-regulator.c", i32 121, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
