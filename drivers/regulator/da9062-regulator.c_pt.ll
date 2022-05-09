; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9062-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9062-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.da9062_regulator_info = type { %struct.regulator_desc, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, %struct.reg_field }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.da9062 = type { ptr, ptr, ptr, i32 }
%struct.da9062_regulators = type { i32, i32, [0 x %struct.da9062_regulator] }
%struct.da9062_regulator = type { %struct.regulator_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9062_regulator__288_1044_da9062_regulator_init4 = internal global ptr @da9062_regulator_init, section ".initcall4.init", align 4
@da9062_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9062_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9062_regulator_cleanup = internal global ptr @da9062_regulator_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"da9062_regulator.author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [82 x i8] c"da9062_regulator.description=REGULATOR device driver for Dialog DA9062 and DA9061\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9062_regulator.file=drivers/regulator/da9062-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"da9062_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [50 x i8] c"da9062_regulator.alias=platform:da9062-regulators\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9062-regulators\00", [46 x i8] zeroinitializer }, align 32
@local_da9061_regulator_info = internal constant { [7 x %struct.da9062_regulator_info], [636 x i8] } { [7 x %struct.da9062_regulator_info] [%struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr @.str.16, ptr null, i32 0, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_a_limits, i32 0, i32 0, i32 164, i32 127, i32 0, i32 156, i32 15, i32 0, i32 0, i32 33, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 158, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 181, i32 7, i32 7, i32 0, i32 0 }, i32 181, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr @.str.16, ptr null, i32 1, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_b_limits, i32 0, i32 0, i32 167, i32 127, i32 0, i32 154, i32 15, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 160, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 167, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 184, i32 7, i32 7, i32 0, i32 0 }, i32 184, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.20, i8 0, ptr @.str.16, ptr null, i32 2, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 530000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_a_limits, i32 0, i32 0, i32 165, i32 127, i32 0, i32 155, i32 15, i32 0, i32 0, i32 34, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 159, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 165, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 7, i32 7, i32 0, i32 0 }, i32 182, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.22, i8 0, ptr @.str.16, ptr null, i32 3, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 169, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 38, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 169, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 7, i32 7, i32 0, i32 0 }, i32 186, %struct.reg_field { i32 4, i32 0, i32 0, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.24, i8 0, ptr @.str.16, ptr null, i32 4, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 170, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 39, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 170, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 187, i32 7, i32 7, i32 0, i32 0 }, i32 187, %struct.reg_field { i32 4, i32 1, i32 1, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.26, i8 0, ptr @.str.16, ptr null, i32 5, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 171, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 40, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 171, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 188, i32 7, i32 7, i32 0, i32 0 }, i32 188, %struct.reg_field { i32 4, i32 2, i32 2, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.28, i8 0, ptr @.str.16, ptr null, i32 6, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 172, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 41, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 189, i32 7, i32 7, i32 0, i32 0 }, i32 189, %struct.reg_field { i32 4, i32 3, i32 3, i32 0, i32 0 } }], [636 x i8] zeroinitializer }, align 32
@local_da9062_regulator_info = internal constant { [8 x %struct.da9062_regulator_info], [672 x i8] } { [8 x %struct.da9062_regulator_info] [%struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.15, i8 0, ptr @.str.16, ptr null, i32 0, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_a_limits, i32 0, i32 0, i32 164, i32 127, i32 0, i32 156, i32 15, i32 0, i32 0, i32 33, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 158, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 181, i32 7, i32 7, i32 0, i32 0 }, i32 181, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.18, i8 0, ptr @.str.16, ptr null, i32 1, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_a_limits, i32 0, i32 0, i32 163, i32 127, i32 0, i32 156, i32 240, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 157, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 163, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 180, i32 7, i32 7, i32 0, i32 0 }, i32 180, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.20, i8 0, ptr @.str.16, ptr null, i32 2, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_b_limits, i32 0, i32 0, i32 167, i32 127, i32 0, i32 154, i32 15, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 160, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 167, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 184, i32 7, i32 7, i32 0, i32 0 }, i32 184, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.33, i8 0, ptr @.str.16, ptr null, i32 3, i8 0, i32 128, i32 16, ptr @da9062_buck_ops, i32 0, i32 0, ptr null, i32 530000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9062_buck_a_limits, i32 0, i32 0, i32 165, i32 127, i32 0, i32 155, i32 15, i32 0, i32 0, i32 34, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9062_map_buck_mode }, %struct.reg_field { i32 159, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 165, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 7, i32 7, i32 0, i32 0 }, i32 182, %struct.reg_field zeroinitializer }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.22, i8 0, ptr @.str.16, ptr null, i32 4, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 169, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 38, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 169, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 7, i32 7, i32 0, i32 0 }, i32 186, %struct.reg_field { i32 4, i32 0, i32 0, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.24, i8 0, ptr @.str.16, ptr null, i32 5, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 170, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 39, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 170, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 187, i32 7, i32 7, i32 0, i32 0 }, i32 187, %struct.reg_field { i32 4, i32 1, i32 1, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.26, i8 0, ptr @.str.16, ptr null, i32 6, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 171, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 40, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 171, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 188, i32 7, i32 7, i32 0, i32 0 }, i32 188, %struct.reg_field { i32 4, i32 2, i32 2, i32 0, i32 0 } }, %struct.da9062_regulator_info { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.28, i8 0, ptr @.str.16, ptr null, i32 7, i8 0, i32 57, i32 0, ptr @da9062_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 172, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 41, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 189, i32 7, i32 7, i32 0, i32 0 }, i32 189, %struct.reg_field { i32 4, i32 3, i32 3, i32 0, i32 0 } }], [672 x i8] zeroinitializer }, align 32
@da9062_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 940, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unrecognised chip type\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9062_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9062-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9062_regulator_probe._entry_ptr = internal global ptr @da9062_regulator_probe._entry, section ".printk_index", align 4
@da9062_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1009, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@da9062_regulator_probe._entry_ptr.8 = internal global ptr @da9062_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO_LIM\00", [24 x i8] zeroinitializer }, align 32
@da9062_regulator_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1026, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request LDO_LIM IRQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9062_regulator_probe._entry_ptr.13 = internal global ptr @da9062_regulator_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9061 BUCK1\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9062_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9062_buck_set_mode, ptr @da9062_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9062_buck_get_status, ptr null, ptr null, ptr null, ptr null, ptr @da9062_set_suspend_voltage, ptr @da9062_suspend_enable, ptr @da9062_suspend_disable, ptr @da9062_buck_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@da9062_buck_a_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 500000, i32 600000, i32 700000, i32 800000, i32 900000, i32 1000000, i32 1100000, i32 1200000, i32 1300000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9061 BUCK2\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@da9062_buck_b_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9061 BUCK3\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9061 LDO1\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@da9062_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9062_ldo_set_mode, ptr @da9062_ldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9062_ldo_get_status, ptr null, ptr null, ptr null, ptr null, ptr @da9062_set_suspend_voltage, ptr @da9062_suspend_enable, ptr @da9062_suspend_disable, ptr @da9062_ldo_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9061 LDO2\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9061 LDO3\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9061 LDO4\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9062 BUCK1\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9062 BUCK2\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9062 BUCK3\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9062 BUCK4\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9062 LDO1\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9062 LDO2\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9062 LDO3\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9062 LDO4\00", [20 x i8] zeroinitializer }, align 32
@da9062_ldo_lim_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read LDO overcurrent indicator\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9062_ldo_lim_event\00", [43 x i8] zeroinitializer }, align 32
@da9062_ldo_lim_event._entry_ptr = internal global ptr @da9062_ldo_lim_event._entry, section ".printk_index", align 4
@switch.table.da9062_map_buck_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.da9062_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.da9062_buck_get_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"da9062_regulator_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1033, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1035, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"local_da9061_regulator_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 358, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"local_da9062_regulator_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 605, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 940, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1007, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1015, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1025, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 361, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 362, i32 20 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 363, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"da9062_buck_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 323, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"da9062_buck_a_limits\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 86, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 398, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 399, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"da9062_buck_b_limits\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 96, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 435, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 436, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 472, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 473, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"da9062_ldo_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 341, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 505, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 506, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 538, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 539, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 571, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 572, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 608, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 645, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 682, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 719, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 720, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 756, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 789, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 822, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 855, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [40 x i8] c"../drivers/regulator/da9062-regulator.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 899, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [34 x i8] c"switch.table.da9062_map_buck_mode\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [34 x i8] c"switch.table.da9062_buck_get_mode\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [36 x i8] c"switch.table.da9062_buck_get_status\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9062_regulator_cleanup, ptr @__initcall__kmod_da9062_regulator__288_1044_da9062_regulator_init4, ptr @da9062_ldo_lim_event._entry, ptr @da9062_ldo_lim_event._entry_ptr, ptr @da9062_regulator_cleanup, ptr @da9062_regulator_probe._entry, ptr @da9062_regulator_probe._entry.10, ptr @da9062_regulator_probe._entry.6, ptr @da9062_regulator_probe._entry_ptr, ptr @da9062_regulator_probe._entry_ptr.13, ptr @da9062_regulator_probe._entry_ptr.8, ptr @da9062_regulator_driver, ptr @.str, ptr @local_da9061_regulator_info, ptr @local_da9062_regulator_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @da9062_buck_ops, ptr @da9062_buck_a_limits, ptr @.str.17, ptr @.str.18, ptr @da9062_buck_b_limits, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @da9062_ldo_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.da9062_map_buck_mode, ptr @switch.table.da9062_buck_get_mode, ptr @switch.table.da9062_buck_get_status], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_da9061_regulator_info to i32), i32 2436, i32 3072, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_da9062_regulator_info to i32), i32 2784, i32 3456, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_regulator_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_buck_a_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_buck_b_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_ldo_lim_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9062_map_buck_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9062_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9062_buck_get_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9062_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9062_regulator_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9062_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %4 = call ptr @memset(ptr %config, i32 0, i32 24)
  %chip_type = getelementptr inbounds %struct.da9062, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %rinfo.0 = phi ptr [ @local_da9062_regulator_info, %sw.bb1 ], [ @local_da9061_regulator_info, %entry.sw.epilog_crit_edge ]
  %max_regulators.0 = phi i32 [ 8, %sw.bb1 ], [ 7, %entry.sw.epilog_crit_edge ]
  %10 = mul nuw nsw i32 %max_regulators.0, 272
  %11 = or i32 %10, 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %11, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %for.body.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog
  %n_regulators = getelementptr inbounds %struct.da9062_regulators, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %n_regulators to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %max_regulators.0, ptr %n_regulators, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.da9062, ptr %3, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap81 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %14 = getelementptr inbounds i8, ptr %config, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end77
  %inc = add nuw i32 %n.0226, 1
  %15 = ptrtoint ptr %n_regulators to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_regulators, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %n.0226 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226
  %hw = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 2
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %hw, align 4
  %arrayidx7 = getelementptr %struct.da9062_regulator_info, ptr %rinfo.0, i32 %n.0226
  %info = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 3
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx7, ptr %info, align 4
  %19 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx7, i32 244)
  %type = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 12
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 13
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %owner, align 4
  %mode = getelementptr %struct.da9062_regulator_info, ptr %rinfo.0, i32 %n.0226, i32 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %for.body.if.end26_crit_edge, label %if.then14

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then14:                                        ; preds = %for.body
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = insertvalue [5 x i32] undef, i32 %23, 0
  %.elt209 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 1
  %27 = ptrtoint ptr %.elt209 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack210 = load i32, ptr %.elt209, align 4
  %28 = insertvalue [5 x i32] %26, i32 %.unpack210, 1
  %.elt211 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 2
  %29 = ptrtoint ptr %.elt211 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack212 = load i32, ptr %.elt211, align 4
  %30 = insertvalue [5 x i32] %28, i32 %.unpack212, 2
  %.elt213 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 3
  %31 = ptrtoint ptr %.elt213 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack214 = load i32, ptr %.elt213, align 4
  %32 = insertvalue [5 x i32] %30, i32 %.unpack214, 3
  %.elt215 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 4
  %33 = ptrtoint ptr %.elt215 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack216 = load i32, ptr %.elt215, align 4
  %34 = insertvalue [5 x i32] %32, i32 %.unpack216, 4
  %call18 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %25, [5 x i32] %34) #7
  %mode19 = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 4
  %35 = ptrtoint ptr %mode19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call18, ptr %mode19, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.then14.if.end26_crit_edge

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %suspend = getelementptr inbounds %struct.da9062_regulator_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool29.not = icmp eq i32 %40, 0
  br i1 %tobool29.not, label %if.end26.if.end43_crit_edge, label %if.then30

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then30:                                        ; preds = %if.end26
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %43 = insertvalue [5 x i32] undef, i32 %40, 0
  %.elt200 = getelementptr inbounds %struct.da9062_regulator_info, ptr %38, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %.elt200 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack201 = load i32, ptr %.elt200, align 4
  %45 = insertvalue [5 x i32] %43, i32 %.unpack201, 1
  %.elt202 = getelementptr inbounds %struct.da9062_regulator_info, ptr %38, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %.elt202 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack203 = load i32, ptr %.elt202, align 4
  %47 = insertvalue [5 x i32] %45, i32 %.unpack203, 2
  %.elt204 = getelementptr inbounds %struct.da9062_regulator_info, ptr %38, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %.elt204 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack205 = load i32, ptr %.elt204, align 4
  %49 = insertvalue [5 x i32] %47, i32 %.unpack205, 3
  %.elt206 = getelementptr inbounds %struct.da9062_regulator_info, ptr %38, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %.elt206 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack207 = load i32, ptr %.elt206, align 4
  %51 = insertvalue [5 x i32] %49, i32 %.unpack207, 4
  %call35 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %42, [5 x i32] %51) #7
  %suspend36 = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 5
  %52 = ptrtoint ptr %suspend36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call35, ptr %suspend36, align 4
  %cmp.i217 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then39, label %if.then30.if.end43_crit_edge

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.then30.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %sleep = getelementptr inbounds %struct.da9062_regulator_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool46.not = icmp eq i32 %57, 0
  br i1 %tobool46.not, label %if.end43.if.end60_crit_edge, label %if.then47

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then47:                                        ; preds = %if.end43
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %60 = insertvalue [5 x i32] undef, i32 %57, 0
  %.elt191 = getelementptr inbounds %struct.da9062_regulator_info, ptr %55, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %.elt191 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack192 = load i32, ptr %.elt191, align 4
  %62 = insertvalue [5 x i32] %60, i32 %.unpack192, 1
  %.elt193 = getelementptr inbounds %struct.da9062_regulator_info, ptr %55, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %.elt193 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack194 = load i32, ptr %.elt193, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack194, 2
  %.elt195 = getelementptr inbounds %struct.da9062_regulator_info, ptr %55, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %.elt195 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack196 = load i32, ptr %.elt195, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack196, 3
  %.elt197 = getelementptr inbounds %struct.da9062_regulator_info, ptr %55, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %.elt197 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack198 = load i32, ptr %.elt197, align 4
  %68 = insertvalue [5 x i32] %66, i32 %.unpack198, 4
  %call52 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %59, [5 x i32] %68) #7
  %sleep53 = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 6
  %69 = ptrtoint ptr %sleep53 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call52, ptr %sleep53, align 4
  %cmp.i218 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then56, label %if.then47.if.end60_crit_edge

if.then47.if.end60_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then56:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.then47.if.end60_crit_edge, %if.end43.if.end60_crit_edge
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 4
  %suspend_sleep = getelementptr inbounds %struct.da9062_regulator_info, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %suspend_sleep to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %suspend_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool63.not = icmp eq i32 %74, 0
  br i1 %tobool63.not, label %if.end60.if.end77_crit_edge, label %if.then64

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then64:                                        ; preds = %if.end60
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %77 = insertvalue [5 x i32] undef, i32 %74, 0
  %.elt182 = getelementptr inbounds %struct.da9062_regulator_info, ptr %72, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %.elt182 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack183 = load i32, ptr %.elt182, align 4
  %79 = insertvalue [5 x i32] %77, i32 %.unpack183, 1
  %.elt184 = getelementptr inbounds %struct.da9062_regulator_info, ptr %72, i32 0, i32 4, i32 2
  %80 = ptrtoint ptr %.elt184 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack185 = load i32, ptr %.elt184, align 4
  %81 = insertvalue [5 x i32] %79, i32 %.unpack185, 2
  %.elt186 = getelementptr inbounds %struct.da9062_regulator_info, ptr %72, i32 0, i32 4, i32 3
  %82 = ptrtoint ptr %.elt186 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack187 = load i32, ptr %.elt186, align 4
  %83 = insertvalue [5 x i32] %81, i32 %.unpack187, 3
  %.elt188 = getelementptr inbounds %struct.da9062_regulator_info, ptr %72, i32 0, i32 4, i32 4
  %84 = ptrtoint ptr %.elt188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack189 = load i32, ptr %.elt188, align 4
  %85 = insertvalue [5 x i32] %83, i32 %.unpack189, 4
  %call69 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %76, [5 x i32] %85) #7
  %suspend_sleep70 = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 7
  %86 = ptrtoint ptr %suspend_sleep70 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call69, ptr %suspend_sleep70, align 4
  %cmp.i219 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then73, label %if.then64.if.end77_crit_edge

if.then64.if.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then73:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call69 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.then64.if.end77_crit_edge, %if.end60.if.end77_crit_edge
  %88 = call ptr @memset(ptr %14, i32 0, i32 20)
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %91 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %config, align 4
  %92 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx, ptr %driver_data, align 4
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %95 = ptrtoint ptr %regmap81 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %regmap81, align 4
  %call84 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %rdev = getelementptr %struct.da9062_regulators, ptr %call.i, i32 0, i32 2, i32 %n.0226, i32 1
  %96 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call84, ptr %rdev, align 4
  %cmp.i220 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %do.end90, label %for.cond

do.end90:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %98) #10
  %99 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rdev, align 4
  %101 = ptrtoint ptr %100 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call96 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %for.end.cleanup_crit_edge, label %if.end99

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99:                                         ; preds = %for.end
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call96, ptr %call.i, align 4
  %call101 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call96, ptr noundef null, ptr noundef nonnull @da9062_ldo_lim_event, i32 noundef 8200, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end99.cleanup_crit_edge, label %do.end106

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -6, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end99.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end90, %if.then73, %if.then56, %if.then39, %if.then22, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %36, %if.then22 ], [ %53, %if.then39 ], [ %70, %if.then56 ], [ %87, %if.then73 ], [ %101, %do.end90 ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call96, %for.end.cleanup_crit_edge ], [ 0, %do.end106 ], [ 0, %if.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_ldo_lim_event(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.da9062_regulators, ptr %data, i32 32
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bits, align 4, !annotation !110
  %regmap = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %bits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38) #10
  br label %ldo_lim_error

if.end:                                           ; preds = %entry
  %n_regulators = getelementptr inbounds %struct.da9062_regulators, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %n_regulators to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_regulators, align 4
  %i.020 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.020)
  %cmp221 = icmp sgt i32 %i.020, -1
  br i1 %cmp221, label %if.end.for.body_crit_edge, label %if.end.ldo_lim_error_crit_edge

if.end.ldo_lim_error_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ldo_lim_error

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.023 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.020, %if.end.for.body_crit_edge ]
  %handled.022 = phi i32 [ %handled.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %info = getelementptr %struct.da9062_regulators, ptr %data, i32 0, i32 2, i32 %i.023, i32 3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %oc_event = getelementptr inbounds %struct.da9062_regulator_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %oc_event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oc_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp5.not = icmp eq i32 %12, 4
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %lsb = getelementptr inbounds %struct.da9062_regulator_info, ptr %10, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsb, align 4
  %shl = shl nuw i32 1, %14
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits, align 4
  %and = and i32 %shl, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %rdev = getelementptr %struct.da9062_regulators, ptr %data, i32 0, i32 2, i32 %i.023, i32 1
  %17 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdev, align 4
  %call11 = call i32 @regulator_notifier_call_chain(ptr noundef %18, i32 noundef 2, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ %handled.022, %for.body.for.inc_crit_edge ], [ 1, %if.then10 ], [ %handled.022, %if.end7.for.inc_crit_edge ]
  %i.0 = add i32 %i.023, -1
  %cmp2 = icmp sgt i32 %i.0, -1
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.ldo_lim_error_crit_edge

for.inc.ldo_lim_error_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %ldo_lim_error

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ldo_lim_error:                                    ; preds = %for.inc.ldo_lim_error_crit_edge, %if.end.ldo_lim_error_crit_edge, %do.end
  %handled.2 = phi i32 [ 0, %do.end ], [ 0, %if.end.ldo_lim_error_crit_edge ], [ %handled.1, %for.inc.ldo_lim_error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  ret i32 %handled.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da9062_map_buck_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9062_map_buck_mode, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %mode3 = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode3, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !110
  %mode = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %if.end
  %sleep = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %. = select i1 %tobool.not, i32 1, i32 8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9062_buck_get_mode, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end7, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %., %if.end7 ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_buck_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.else
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !110
  %mode.i = getelementptr inbounds %struct.da9062_regulator, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode.i, align 4
  %call1.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.else7, label %if.end.i

if.end.i:                                         ; preds = %if.then2
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i
  %sleep.i = getelementptr inbounds %struct.da9062_regulator, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep.i, align 4
  %call4.i = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %11, label %if.end7.i

if.end7.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 8
  br label %if.then5

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9062_buck_get_status, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then5

if.then5:                                         ; preds = %switch.lookup, %if.end7.i
  %retval.0.i.ph = phi i32 [ %..i, %if.end7.i ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call6 = call i32 @regulator_mode_to_status(i32 noundef %retval.0.i.ph) #7
  br label %if.end12

if.else7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end12

11:                                               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end12

if.end12:                                         ; preds = %11, %if.else7, %if.then5, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call, %if.else.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ -5, %11 ], [ %call1.i, %if.else7 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %info = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call1 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uv, i32 noundef %uv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero = icmp eq i32 %5, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %shl = shl i32 %call1, %sub
  %hw = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %regmap = getelementptr inbounds %struct.da9062, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %suspend_vsel_reg = getelementptr inbounds %struct.da9062_regulator_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %suspend_vsel_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %suspend_vsel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef %5, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %suspend = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %suspend = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_buck_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %mode3 = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode3, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_mode_to_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_ldo_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %sleep = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_ldo_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !110
  %sleep = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_ldo_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.else
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !110
  %sleep.i = getelementptr inbounds %struct.da9062_regulator, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep.i, align 4
  %call1.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %da9062_ldo_get_mode.exit, label %if.then5

da9062_ldo_get_mode.exit:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end12

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %call6 = call i32 @regulator_mode_to_status(i32 noundef %..i) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %da9062_ldo_get_mode.exit, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call, %if.else.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ -5, %da9062_ldo_get_mode.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_ldo_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %suspend_sleep = getelementptr inbounds %struct.da9062_regulator, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %suspend_sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %suspend_sleep, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_da9062_regulator__288_1044_da9062_regulator_init4, !1, !"__initcall__kmod_da9062_regulator__288_1044_da9062_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9062-regulator.c", i32 1044, i32 1}
!2 = !{ptr @__exitcall_da9062_regulator_cleanup, !3, !"__exitcall_da9062_regulator_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/da9062-regulator.c", i32 1050, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/da9062-regulator.c", i32 1053, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/da9062-regulator.c", i32 1054, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/da9062-regulator.c", i32 1055, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/da9062-regulator.c", i32 1056, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/da9062-regulator.c", i32 1035, i32 11}
!15 = !{ptr @da9062_regulator_driver, !16, !"da9062_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/da9062-regulator.c", i32 1033, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/da9062-regulator.c", i32 940, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9062_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9062_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9062-regulator.c", i32 1007, i32 4}
!27 = !{ptr @da9062_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9062_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9062-regulator.c", i32 1015, i32 38}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/da9062-regulator.c", i32 1025, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @da9062_regulator_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @da9062_regulator_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/da9062-regulator.c", i32 361, i32 16}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/da9062-regulator.c", i32 362, i32 20}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/da9062-regulator.c", i32 363, i32 27}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/da9062-regulator.c", i32 398, i32 16}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/da9062-regulator.c", i32 399, i32 20}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/da9062-regulator.c", i32 435, i32 16}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/da9062-regulator.c", i32 436, i32 20}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9062-regulator.c", i32 472, i32 16}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/da9062-regulator.c", i32 473, i32 20}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9062-regulator.c", i32 505, i32 16}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9062-regulator.c", i32 506, i32 20}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/da9062-regulator.c", i32 538, i32 16}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/da9062-regulator.c", i32 539, i32 20}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/da9062-regulator.c", i32 571, i32 16}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/da9062-regulator.c", i32 572, i32 20}
!66 = !{ptr @local_da9061_regulator_info, !67, !"local_da9061_regulator_info", i1 false, i1 false}
!67 = !{!"../drivers/regulator/da9062-regulator.c", i32 358, i32 43}
!68 = !{ptr @da9062_buck_ops, !69, !"da9062_buck_ops", i1 false, i1 false}
!69 = !{!"../drivers/regulator/da9062-regulator.c", i32 323, i32 35}
!70 = !{ptr @da9062_buck_a_limits, !71, !"da9062_buck_a_limits", i1 false, i1 false}
!71 = !{!"../drivers/regulator/da9062-regulator.c", i32 86, i32 27}
!72 = !{ptr @da9062_buck_b_limits, !73, !"da9062_buck_b_limits", i1 false, i1 false}
!73 = !{!"../drivers/regulator/da9062-regulator.c", i32 96, i32 27}
!74 = !{ptr @da9062_ldo_ops, !75, !"da9062_ldo_ops", i1 false, i1 false}
!75 = !{!"../drivers/regulator/da9062-regulator.c", i32 341, i32 35}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/da9062-regulator.c", i32 608, i32 16}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/da9062-regulator.c", i32 645, i32 16}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/da9062-regulator.c", i32 682, i32 16}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/da9062-regulator.c", i32 719, i32 16}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/da9062-regulator.c", i32 720, i32 20}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/da9062-regulator.c", i32 756, i32 16}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/da9062-regulator.c", i32 789, i32 16}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/da9062-regulator.c", i32 822, i32 16}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/da9062-regulator.c", i32 855, i32 16}
!94 = !{ptr @local_da9062_regulator_info, !95, !"local_da9062_regulator_info", i1 false, i1 false}
!95 = !{!"../drivers/regulator/da9062-regulator.c", i32 605, i32 43}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/da9062-regulator.c", i32 899, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @da9062_ldo_lim_event._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @da9062_ldo_lim_event._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i32 0, i32 33}
