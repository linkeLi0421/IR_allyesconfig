; ModuleID = '/llk/IR_all_yes/drivers/regulator/s2mps11.c_pt.bc'
source_filename = "../drivers/regulator/s2mps11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.s2mps11_info = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_s2mps11__294_1246_s2mps11_pmic_driver_init6 = internal global ptr @s2mps11_pmic_driver_init, section ".initcall6.init", align 4
@s2mps11_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s2mps11_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2mps11_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s2mps11_pmic_driver_exit = internal global ptr @s2mps11_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [50 x i8] c"s2mps11.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [77 x i8] c"s2mps11.description=Samsung S2MPS11/S2MPS14/S2MPS15/S2MPU02 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"s2mps11.file=drivers/regulator/s2mps11\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"s2mps11.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s2mps11-pmic\00", [19 x i8] zeroinitializer }, align 32
@s2mps11_pmic_id = internal constant { [6 x %struct.platform_device_id], [48 x i8] } { [6 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s2mps11-regulator\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"s2mps13-regulator\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-regulator\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s2mps15-regulator\00\00\00", i32 7 }, %struct.platform_device_id { [20 x i8] c"s2mpu02-regulator\00\00\00", i32 8 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s2mps11_regulators = internal constant { [48 x %struct.regulator_desc], [2912 x i8] } { [48 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 90, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 90, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 91, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 91, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 92, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 92, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 93, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 94, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 94, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 95, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 95, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 97, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 97, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @s2mps11_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 12000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 98, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 98, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 216, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 153, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 650000, i32 6250, i32 8, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 32, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 3000000, i32 25000, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 47, i8 0, i32 225, i32 0, ptr @s2mps11_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 12500, i32 0, i32 0, i32 25000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [2912 x i8] zeroinitializer }, align 32
@s2mps13_regulators = internal constant { [50 x %struct.regulator_desc], [3064 x i8] } { [50 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 90, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 90, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 37, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 91, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 91, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 38, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 25000, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 92, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 92, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 39, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 50000, i32 12, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 93, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 40, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 41, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 42, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 43, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 44, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 45, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 46, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 47, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 12500, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 48, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1000000, i32 12500, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 49, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 500000, i32 6250, i32 16, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [3064 x i8] zeroinitializer }, align 32
@s2mps14_regulators = internal constant { [30 x %struct.regulator_desc], [1832 x i8] } { [30 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 1400000, i32 12500, i32 64, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mps14_reg_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 32, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1832 x i8] zeroinitializer }, align 32
@s2mps15_regulators = internal constant { [37 x %struct.regulator_desc], [2268 x i8] } { [37 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges5, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges4, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges3, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mps15_reg_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s2mps15_ldo_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 36, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges1, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 38, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 40, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 42, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 256, i32 0, ptr @s2mps15_reg_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 12500, i32 0, ptr @s2mps15_buck_voltage_ranges2, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 44, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [2268 x i8] zeroinitializer }, align 32
@s2mpu02_regulators = internal constant { [35 x %struct.regulator_desc], [2116 x i8] } { [35 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 44, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 52, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 55, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 57, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 59, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 61, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 12500, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1050000, i32 25000, i32 10, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 64, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 256, i32 0, ptr @s2mpu02_buck_ops, i32 0, i32 0, ptr null, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 31, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1081250, i32 6250, i32 77, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 1700000, i32 2500, i32 40, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 256, i32 0, ptr @s2mpu02_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 6250, i32 48, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [2116 x i8] zeroinitializer }, align 32
@s2mps11_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid device type: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s2mps11_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/s2mps11.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s2mps11_pmic_probe._entry_ptr = internal global ptr @s2mps11_pmic_probe._entry, section ".printk_index", align 4
@s2mps11_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator init failed for %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s2mps11_pmic_probe._entry_ptr.8 = internal global ptr @s2mps11_pmic_probe._entry.6, section ".printk_index", align 4
@s2mps11_pmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable GPIO control over %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@s2mps11_pmic_probe._entry_ptr.11 = internal global ptr @s2mps11_pmic_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@s2mps11_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO20\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO22\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO23\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO24\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO25\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO26\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO27\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO28\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO29\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO30\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO31\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO32\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO33\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO34\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO35\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO36\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO37\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO38\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@s2mps11_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_set_ramp_delay, ptr null, ptr @s2mps11_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK8\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK9\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BUCK10\00", [25 x i8] zeroinitializer }, align 32
@s2mps11_set_ramp_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable ramp rate\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s2mps11_set_ramp_delay\00", [41 x i8] zeroinitializer }, align 32
@s2mps11_set_ramp_delay._entry_ptr = internal global ptr @s2mps11_set_ramp_delay._entry, section ".printk_index", align 4
@s2mps14_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO39\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO40\00", [26 x i8] zeroinitializer }, align 32
@s2mps15_reg_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s2mps15_ldo_voltage_ranges5 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 32, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_ldo_voltage_ranges2 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 63, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_ldo_voltage_ranges1 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 12, i32 56, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_ldo_voltage_ranges3 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 52, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_ldo_voltage_ranges4 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 16, i32 32, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_reg_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s2mps15_buck_voltage_ranges1 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 32, i32 192, i32 6250 }], [16 x i8] zeroinitializer }, align 32
@s2mps15_buck_voltage_ranges2 = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 32, i32 120, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@s2mpu02_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s2mpu02_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @s2mpu02_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2mps11_regulator_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@s2mps11_pmic_dt_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 874, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find regulators sub-node\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s2mps11_pmic_dt_parse\00", [42 x i8] zeroinitializer }, align 32
@s2mps11_pmic_dt_parse._entry_ptr = internal global ptr @s2mps11_pmic_dt_parse._entry, section ".printk_index", align 4
@__const.s2mps14_pmic_dt_parse_ext_control_gpio.valid_regulators = private unnamed_addr constant [3 x i32] [i32 9, i32 10, i32 11], align 4
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,ext-control\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s2mps11-regulator\00", [46 x i8] zeroinitializer }, align 32
@s2mps14_pmic_dt_parse_ext_control_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get control GPIO for %d/%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"s2mps14_pmic_dt_parse_ext_control_gpio\00", [57 x i8] zeroinitializer }, align 32
@s2mps14_pmic_dt_parse_ext_control_gpio._entry_ptr = internal global ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry, section ".printk_index", align 4
@s2mps14_pmic_dt_parse_ext_control_gpio.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.71, ptr @.str.70, ptr @.str.3, ptr @.str.72, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mps11\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using GPIO for ext-control over %d/%s\0A\00", [57 x i8] zeroinitializer }, align 32
@switch.table.s2mps11_pmic_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 50, i32 30, i32 37, i32 35], [44 x i8] zeroinitializer }, align 32
@switch.table.s2mps11_pmic_probe.73 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @s2mps11_regulators, ptr @s2mps13_regulators, ptr @s2mps14_regulators, ptr @s2mps15_regulators, ptr @s2mpu02_regulators], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 35, i64 36, i64 37]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 12, i64 13, i64 14, i64 16, i64 34]
@__sancov_gen_cov_switch_values.77 = internal global [12 x i64] [i64 10, i64 32, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@__sancov_gen_cov_switch_values.78 = internal global [12 x i64] [i64 10, i64 32, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"s2mps11_pmic_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1238, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1240, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"s2mps11_pmic_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1228, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"s2mps11_regulators\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 440, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"s2mps13_regulators\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 564, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"s2mps14_regulators\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 661, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"s2mps15_regulators\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 786, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"s2mpu02_regulators\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1082, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1163, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1205, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1214, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 441, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"s2mps11_ldo_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 332, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 442, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 443, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 444, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 445, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 446, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 447, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 448, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 449, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 450, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 451, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 452, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 453, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 454, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 455, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 456, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 457, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 458, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 459, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 460, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 461, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 462, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 463, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 464, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 465, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 466, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 467, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 468, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 469, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 470, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 471, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 472, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 473, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 474, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 475, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 476, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 477, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 478, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 479, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"s2mps11_buck_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 344, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 480, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 481, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 482, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 483, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 484, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 486, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 488, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 490, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 491, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 213, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [16 x i8] c"s2mps14_reg_ops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 617, i32 35 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 603, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 604, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c"s2mps15_reg_ldo_ops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 699, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant [28 x i8] c"s2mps15_ldo_voltage_ranges5\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 772, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant [28 x i8] c"s2mps15_ldo_voltage_ranges2\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 757, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant [28 x i8] c"s2mps15_ldo_voltage_ranges1\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 752, i32 34 }
@___asan_gen_.313 = private unnamed_addr constant [28 x i8] c"s2mps15_ldo_voltage_ranges3\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 762, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"s2mps15_ldo_voltage_ranges4\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 767, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"s2mps15_reg_buck_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 709, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant [29 x i8] c"s2mps15_buck_voltage_ranges1\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 777, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant [29 x i8] c"s2mps15_buck_voltage_ranges2\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 782, i32 34 }
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"s2mpu02_ldo_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 916, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"s2mpu02_buck_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 928, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 872, i32 59 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 874, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 849, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 851, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 855, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [31 x i8] c"../drivers/regulator/s2mps11.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 861, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant [32 x i8] c"switch.table.s2mps11_pmic_probe\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [35 x i8] c"switch.table.s2mps11_pmic_probe.73\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_s2mps11_pmic_driver_exit, ptr @__initcall__kmod_s2mps11__294_1246_s2mps11_pmic_driver_init6, ptr @s2mps11_pmic_driver_exit, ptr @s2mps11_pmic_dt_parse._entry, ptr @s2mps11_pmic_dt_parse._entry_ptr, ptr @s2mps11_pmic_probe._entry, ptr @s2mps11_pmic_probe._entry.6, ptr @s2mps11_pmic_probe._entry.9, ptr @s2mps11_pmic_probe._entry_ptr, ptr @s2mps11_pmic_probe._entry_ptr.11, ptr @s2mps11_pmic_probe._entry_ptr.8, ptr @s2mps11_set_ramp_delay._entry, ptr @s2mps11_set_ramp_delay._entry_ptr, ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry, ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry_ptr, ptr @s2mps11_pmic_driver, ptr @.str, ptr @s2mps11_pmic_id, ptr @s2mps11_regulators, ptr @s2mps13_regulators, ptr @s2mps14_regulators, ptr @s2mps15_regulators, ptr @s2mpu02_regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @s2mps11_ldo_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @s2mps11_buck_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @s2mps14_reg_ops, ptr @.str.62, ptr @.str.63, ptr @s2mps15_reg_ldo_ops, ptr @s2mps15_ldo_voltage_ranges5, ptr @s2mps15_ldo_voltage_ranges2, ptr @s2mps15_ldo_voltage_ranges1, ptr @s2mps15_ldo_voltage_ranges3, ptr @s2mps15_ldo_voltage_ranges4, ptr @s2mps15_reg_buck_ops, ptr @s2mps15_buck_voltage_ranges1, ptr @s2mps15_buck_voltage_ranges2, ptr @s2mpu02_ldo_ops, ptr @s2mpu02_buck_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @switch.table.s2mps11_pmic_probe, ptr @switch.table.s2mps11_pmic_probe.73], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_regulators to i32), i32 11712, i32 14624, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps13_regulators to i32), i32 12200, i32 15264, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_regulators to i32), i32 7320, i32 9152, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_regulators to i32), i32 9028, i32 11296, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mpu02_regulators to i32), i32 8540, i32 10656, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_set_ramp_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_reg_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_ldo_voltage_ranges5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_ldo_voltage_ranges2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_ldo_voltage_ranges1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_ldo_voltage_ranges3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_ldo_voltage_ranges4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_reg_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_buck_voltage_ranges1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_buck_voltage_ranges2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mpu02_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mpu02_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_pmic_dt_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2mps11_pmic_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s2mps11_pmic_probe.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s2mps11_pmic_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s2mps11_pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s2mps11_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_pmic_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end:                                           ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %dev_type = getelementptr inbounds %struct.s2mps11_info, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dev_type, align 4
  %switch.tableidx = add i32 %8, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 5
  br i1 %10, label %switch.lookup, label %do.end22

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %8) #10
  br label %cleanup86

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.s2mps11_pmic_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep177 = getelementptr inbounds [5 x ptr], ptr @switch.table.s2mps11_pmic_probe.73, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep177 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load178 = load ptr, ptr %switch.gep177, align 4
  %13 = shl nuw nsw i32 %switch.load, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #7
  %ext_control_gpiod = getelementptr inbounds %struct.s2mps11_info, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %ext_control_gpiod, align 4
  %tobool28.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool28.not, label %switch.lookup.cleanup86_crit_edge, label %if.end7.i.i

switch.lookup.cleanup86_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

if.end7.i.i:                                      ; preds = %switch.lookup
  %15 = mul nuw nsw i32 %switch.load, 20
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #11
  %tobool32.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool32.not, label %if.end7.i.i.cleanup86_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.cleanup86_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup86

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %i.0161 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.regulator_desc, ptr %switch.load178, i32 %i.0161
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %arrayidx35 = getelementptr %struct.of_regulator_match, ptr %call8.i.i, i32 %i.0161
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx35, align 4
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call.i143 = tail call ptr @of_get_child_by_name(ptr noundef %22, ptr noundef nonnull @.str.64) #7
  %tobool.not.i = icmp eq ptr %call.i143, null
  br i1 %tobool.not.i, label %s2mps11_pmic_dt_parse.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end
  %call3.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call.i143, ptr noundef nonnull %call8.i.i, i32 noundef %switch.load) #7
  %23 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp.i = icmp eq i32 %24, 6
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end40_crit_edge

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s2mps14_pmic_dt_parse_ext_control_gpio(ptr noundef %pdev, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %call.i) #7
  br label %if.end40

s2mps11_pmic_dt_parse.exit:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #10
  br label %out

if.end40:                                         ; preds = %if.then4.i, %if.end.i.if.end40_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i143) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %config, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_pmic, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %regmap, align 4
  %driver_data43 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %30 = ptrtoint ptr %driver_data43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data43, align 4
  %init_data48 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %of_node50 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  br label %for.body46

for.body46:                                       ; preds = %for.inc83.for.body46_crit_edge, %if.end40
  %ret.0163 = phi i32 [ 0, %if.end40 ], [ %ret.2.ph, %for.inc83.for.body46_crit_edge ]
  %i.1162 = phi i32 [ 0, %if.end40 ], [ %inc84, %for.inc83.for.body46_crit_edge ]
  %init_data = getelementptr %struct.of_regulator_match, ptr %call8.i.i, i32 %i.1162, i32 2
  %31 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_data, align 4
  %33 = ptrtoint ptr %init_data48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %init_data48, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %call8.i.i, i32 %i.1162, i32 3
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 4
  %36 = ptrtoint ptr %of_node50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %of_node50, align 4
  %37 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_control_gpiod, align 4
  %arrayidx52 = getelementptr ptr, ptr %38, i32 %i.1162
  %39 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx52, align 4
  %41 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ena_gpiod, align 4
  %tobool54.not = icmp eq ptr %40, null
  br i1 %tobool54.not, label %for.body46.if.end58_crit_edge, label %if.then55

for.body46.if.end58_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then55:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  call void @devm_gpiod_unhinge(ptr noundef %dev, ptr noundef nonnull %40) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %for.body46.if.end58_crit_edge
  %arrayidx60 = getelementptr %struct.regulator_desc, ptr %switch.load178, i32 %i.1162
  %call61 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx60, ptr noundef nonnull %config) #7
  %cmp.i144 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then63, label %if.end69

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.1162) #10
  br label %out

if.end69:                                         ; preds = %if.end58
  %43 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ena_gpiod, align 4
  %tobool71.not = icmp eq ptr %44, null
  br i1 %tobool71.not, label %if.end69.for.inc83_crit_edge, label %if.then72

if.end69.for.inc83_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc83

if.then72:                                        ; preds = %if.end69
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %call61, i32 0, i32 17
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %47 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call61, align 8
  %enable_reg.i = getelementptr inbounds %struct.regulator_desc, ptr %48, i32 0, i32 34
  %49 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %48, i32 0, i32 35
  %51 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enable_mask.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %50, i32 noundef %52, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp74 = icmp slt i32 %call.i.i, 0
  br i1 %cmp74, label %do.end78, label %if.then72.for.inc83_crit_edge

if.then72.for.inc83_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc83

do.end78:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call61, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %56, i32 noundef %call.i.i) #10
  br label %out

for.inc83:                                        ; preds = %if.then72.for.inc83_crit_edge, %if.end69.for.inc83_crit_edge
  %ret.2.ph = phi i32 [ %ret.0163, %if.end69.for.inc83_crit_edge ], [ %call.i.i, %if.then72.for.inc83_crit_edge ]
  %inc84 = add nuw nsw i32 %i.1162, 1
  %exitcond168.not = icmp eq i32 %inc84, %switch.load
  br i1 %exitcond168.not, label %for.inc83.out_crit_edge, label %for.inc83.for.body46_crit_edge

for.inc83.for.body46_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.inc83.out_crit_edge:                          ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc83.out_crit_edge, %do.end78, %if.then63, %s2mps11_pmic_dt_parse.exit
  %ret.3 = phi i32 [ -22, %s2mps11_pmic_dt_parse.exit ], [ %42, %if.then63 ], [ %call.i.i, %do.end78 ], [ %ret.2.ph, %for.inc83.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup86

cleanup86:                                        ; preds = %out, %if.end7.i.i.cleanup86_crit_edge, %switch.lookup.cleanup86_crit_edge, %do.end22, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ -22, %do.end22 ], [ %ret.3, %out ], [ -12, %entry.cleanup86_crit_edge ], [ -12, %switch.lookup.cleanup86_crit_edge ], [ -12, %if.end7.i.i.cleanup86_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %dev_type = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %entry.sw.bb3_crit_edge
    i32 6, label %entry.sw.bb3_crit_edge57
    i32 8, label %sw.bb17
  ]

entry.sw.bb3_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %suspend_state = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 7
  %div3.i = lshr i32 %call1, 5
  %arrayidx.i = getelementptr i32, ptr %suspend_state, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call1, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge57
  %suspend_state4 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 7
  %div3.i47 = lshr i32 %call1, 5
  %arrayidx.i48 = getelementptr i32, ptr %suspend_state4, i32 %div3.i47
  %7 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i48, align 4
  %and.i49 = and i32 %call1, 31
  %9 = shl nuw i32 1, %and.i49
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.else9, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb3
  %ext_control_gpiod = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext_control_gpiod, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %call1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.else9.sw.epilog.sink.split_crit_edge, label %if.else9.sw.epilog_crit_edge

if.else9.sw.epilog_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else9.sw.epilog.sink.split_crit_edge:          ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry
  %suspend_state18 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 7
  %div3.i52 = lshr i32 %call1, 5
  %arrayidx.i53 = getelementptr i32, ptr %suspend_state18, i32 %div3.i52
  %15 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i53, align 4
  %and.i54 = and i32 %call1, 31
  %17 = shl nuw i32 1, %and.i54
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %sw.bb17.sw.epilog.sink.split_crit_edge, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17.sw.epilog.sink.split_crit_edge, %if.else9.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %19 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev, align 8
  %enable_mask25 = getelementptr inbounds %struct.regulator_desc, ptr %20, i32 0, i32 35
  %21 = ptrtoint ptr %enable_mask25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_mask25, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb17.sw.epilog_crit_edge, %if.else9.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %val.0 = phi i32 [ 64, %sw.bb.sw.epilog_crit_edge ], [ 64, %sw.bb3.sw.epilog_crit_edge ], [ 0, %if.else9.sw.epilog_crit_edge ], [ 64, %sw.bb17.sw.epilog_crit_edge ], [ %22, %sw.epilog.sink.split ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %26, i32 0, i32 34
  %27 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable_reg, align 4
  %enable_mask29 = getelementptr inbounds %struct.regulator_desc, ptr %26, i32 0, i32 35
  %29 = ptrtoint ptr %enable_mask29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enable_mask29, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %28, i32 noundef %30, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %dev_type = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %entry.sw.bb3_crit_edge
    i32 6, label %entry.sw.bb3_crit_edge39
    i32 8, label %sw.bb7
  ]

entry.sw.bb3_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call1, label %sw.bb.sw.epilog12_crit_edge [
    i32 1, label %sw.bb.cleanup_crit_edge
    i32 35, label %sw.bb.cleanup_crit_edge40
    i32 36, label %sw.bb.cleanup_crit_edge41
    i32 37, label %sw.bb.cleanup_crit_edge42
  ]

sw.bb.cleanup_crit_edge42:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.cleanup_crit_edge41:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.cleanup_crit_edge40:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog12_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cond = icmp eq i32 %call1, 2
  br i1 %cond, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog12_crit_edge

sw.bb3.sw.epilog12_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call1, label %sw.default9 [
    i32 12, label %sw.bb7.sw.epilog12_crit_edge
    i32 13, label %sw.bb7.sw.epilog12_crit_edge43
    i32 14, label %sw.bb7.sw.epilog12_crit_edge44
    i32 16, label %sw.bb7.sw.epilog12_crit_edge45
    i32 34, label %sw.bb7.sw.epilog12_crit_edge46
  ]

sw.bb7.sw.epilog12_crit_edge46:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb7.sw.epilog12_crit_edge45:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb7.sw.epilog12_crit_edge44:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb7.sw.epilog12_crit_edge43:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb7.sw.epilog12_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.default9:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.default9, %sw.bb7.sw.epilog12_crit_edge, %sw.bb7.sw.epilog12_crit_edge43, %sw.bb7.sw.epilog12_crit_edge44, %sw.bb7.sw.epilog12_crit_edge45, %sw.bb7.sw.epilog12_crit_edge46, %sw.bb3.sw.epilog12_crit_edge, %sw.bb.sw.epilog12_crit_edge
  %state.0 = phi i32 [ 64, %sw.default9 ], [ 64, %sw.bb.sw.epilog12_crit_edge ], [ 64, %sw.bb3.sw.epilog12_crit_edge ], [ 1088, %sw.bb7.sw.epilog12_crit_edge ], [ 1088, %sw.bb7.sw.epilog12_crit_edge43 ], [ 1088, %sw.bb7.sw.epilog12_crit_edge44 ], [ 1088, %sw.bb7.sw.epilog12_crit_edge45 ], [ 1088, %sw.bb7.sw.epilog12_crit_edge46 ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 34
  %10 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_reg, align 4
  %call13 = call i32 @regmap_read(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sw.epilog12.cleanup_crit_edge, label %if.end

sw.epilog12.cleanup_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog12
  %suspend_state = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 7
  call void @_set_bit(i32 noundef %call1, ptr noundef %suspend_state) #7
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_mask, align 4
  %and = and i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %enable_reg19 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 34
  %20 = ptrtoint ptr %enable_reg19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_reg19, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %17, i32 noundef %state.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %sw.epilog12.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %sw.bb.cleanup_crit_edge40, %sw.bb.cleanup_crit_edge41, %sw.bb.cleanup_crit_edge42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end16 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge40 ], [ 0, %sw.bb.cleanup_crit_edge41 ], [ 0, %sw.bb.cleanup_crit_edge42 ], [ 0, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %sw.epilog12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 38, label %sw.bb
    i32 39, label %sw.bb4
    i32 40, label %sw.bb7
    i32 41, label %sw.bb17
    i32 42, label %sw.bb28
    i32 43, label %sw.bb29
    i32 44, label %entry.sw.bb40_crit_edge
    i32 45, label %entry.sw.bb40_crit_edge158
    i32 47, label %entry.sw.bb40_crit_edge159
    i32 46, label %sw.bb47
  ]

entry.sw.bb40_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

entry.sw.bb40_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

entry.sw.bb40_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %ramp_delay16 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %ramp_delay16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ramp_delay16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %ramp_delay)
  %cmp = icmp slt i32 %2, %ramp_delay
  br i1 %cmp, label %sw.bb.if.end60.sink.split_crit_edge, label %sw.bb.if.end60_crit_edge

sw.bb.if.end60_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

sw.bb.if.end60.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %tobool.not = icmp eq i32 %ramp_delay, 0
  br i1 %tobool.not, label %sw.bb4.ramp_disable_crit_edge, label %sw.bb4.if.then54.sink.split_crit_edge

sw.bb4.if.then54.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.sink.split

sw.bb4.ramp_disable_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %ramp_disable

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %tobool8.not = icmp eq i32 %ramp_delay, 0
  br i1 %tobool8.not, label %sw.bb7.ramp_disable_crit_edge, label %if.end10

sw.bb7.ramp_disable_crit_edge:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ramp_disable

if.end10:                                         ; preds = %sw.bb7
  %ramp_delay34 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ramp_delay34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ramp_delay34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ramp_delay)
  %cmp11 = icmp slt i32 %4, %ramp_delay
  br i1 %cmp11, label %if.end10.if.then54.sink.split_crit_edge, label %if.end10.if.then54_crit_edge

if.end10.if.then54_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end10.if.then54.sink.split_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.sink.split

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %tobool18.not = icmp eq i32 %ramp_delay, 0
  br i1 %tobool18.not, label %sw.bb17.ramp_disable_crit_edge, label %if.end20

sw.bb17.ramp_disable_crit_edge:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %ramp_disable

if.end20:                                         ; preds = %sw.bb17
  %ramp_delay3421 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %ramp_delay3421 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ramp_delay3421, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ramp_delay)
  %cmp22 = icmp slt i32 %6, %ramp_delay
  br i1 %cmp22, label %if.end20.if.then54.sink.split_crit_edge, label %if.end20.if.then54_crit_edge

if.end20.if.then54_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end20.if.then54.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ramp_delay5 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 2
  br label %if.end60.sink.split

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %tobool30.not = icmp eq i32 %ramp_delay, 0
  br i1 %tobool30.not, label %sw.bb29.ramp_disable_crit_edge, label %if.end32

sw.bb29.ramp_disable_crit_edge:                   ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ramp_disable

if.end32:                                         ; preds = %sw.bb29
  %ramp_delay1633 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %ramp_delay1633 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ramp_delay1633, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ramp_delay)
  %cmp34 = icmp slt i32 %8, %ramp_delay
  br i1 %cmp34, label %if.end32.if.then54.sink.split_crit_edge, label %if.end32.if.then54_crit_edge

if.end32.if.then54_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.end32.if.then54.sink.split_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54.sink.split

sw.bb40:                                          ; preds = %entry.sw.bb40_crit_edge, %entry.sw.bb40_crit_edge158, %entry.sw.bb40_crit_edge159
  %ramp_delay7810 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %ramp_delay7810 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ramp_delay7810, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %ramp_delay)
  %cmp41 = icmp slt i32 %10, %ramp_delay
  br i1 %cmp41, label %sw.bb40.if.end60.sink.split_crit_edge, label %sw.bb40.if.end60_crit_edge

sw.bb40.if.end60_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

sw.bb40.if.end60.sink.split_crit_edge:            ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ramp_delay9 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 5
  br label %if.end60.sink.split

if.then54.sink.split:                             ; preds = %if.end32.if.then54.sink.split_crit_edge, %if.end20.if.then54.sink.split_crit_edge, %if.end10.if.then54.sink.split_crit_edge, %sw.bb4.if.then54.sink.split_crit_edge
  %call.sink.sink = phi ptr [ %ramp_delay1633, %if.end32.if.then54.sink.split_crit_edge ], [ %call, %sw.bb4.if.then54.sink.split_crit_edge ], [ %ramp_delay34, %if.end10.if.then54.sink.split_crit_edge ], [ %ramp_delay3421, %if.end20.if.then54.sink.split_crit_edge ]
  %enable_shift.0.ph153.ph = phi i32 [ 0, %if.end32.if.then54.sink.split_crit_edge ], [ 3, %sw.bb4.if.then54.sink.split_crit_edge ], [ 2, %if.end10.if.then54.sink.split_crit_edge ], [ 1, %if.end20.if.then54.sink.split_crit_edge ]
  %ramp_reg.0.ph152.ph = phi i32 [ 17, %if.end32.if.then54.sink.split_crit_edge ], [ 16, %sw.bb4.if.then54.sink.split_crit_edge ], [ 16, %if.end10.if.then54.sink.split_crit_edge ], [ 16, %if.end20.if.then54.sink.split_crit_edge ]
  %ramp_shift.0.ph150.ph = phi i32 [ 4, %if.end32.if.then54.sink.split_crit_edge ], [ 6, %sw.bb4.if.then54.sink.split_crit_edge ], [ 4, %if.end10.if.then54.sink.split_crit_edge ], [ 4, %if.end20.if.then54.sink.split_crit_edge ]
  %11 = ptrtoint ptr %call.sink.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ramp_delay, ptr %call.sink.sink, align 4
  br label %if.then54

if.then54:                                        ; preds = %if.then54.sink.split, %if.end32.if.then54_crit_edge, %if.end20.if.then54_crit_edge, %if.end10.if.then54_crit_edge
  %enable_shift.0.ph153 = phi i32 [ 0, %if.end32.if.then54_crit_edge ], [ 1, %if.end20.if.then54_crit_edge ], [ 2, %if.end10.if.then54_crit_edge ], [ %enable_shift.0.ph153.ph, %if.then54.sink.split ]
  %ramp_reg.0.ph152 = phi i32 [ 17, %if.end32.if.then54_crit_edge ], [ 16, %if.end20.if.then54_crit_edge ], [ 16, %if.end10.if.then54_crit_edge ], [ %ramp_reg.0.ph152.ph, %if.then54.sink.split ]
  %ramp_shift.0.ph150 = phi i32 [ 4, %if.end32.if.then54_crit_edge ], [ 4, %if.end20.if.then54_crit_edge ], [ 4, %if.end10.if.then54_crit_edge ], [ %ramp_shift.0.ph150.ph, %if.then54.sink.split ]
  %ramp_delay.addr.5.ph148 = phi i32 [ %8, %if.end32.if.then54_crit_edge ], [ %6, %if.end20.if.then54_crit_edge ], [ %4, %if.end10.if.then54_crit_edge ], [ %ramp_delay, %if.then54.sink.split ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %enable_shift.0.ph153
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.then54.if.end60_crit_edge, label %do.end

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end:                                           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end60.sink.split:                              ; preds = %sw.bb47, %sw.bb40.if.end60.sink.split_crit_edge, %sw.bb28, %sw.bb.if.end60.sink.split_crit_edge
  %ramp_delay7810.sink = phi ptr [ %ramp_delay5, %sw.bb28 ], [ %ramp_delay9, %sw.bb47 ], [ %ramp_delay16, %sw.bb.if.end60.sink.split_crit_edge ], [ %ramp_delay7810, %sw.bb40.if.end60.sink.split_crit_edge ]
  %ramp_shift.0.ph149.ph = phi i32 [ 6, %sw.bb28 ], [ 0, %sw.bb47 ], [ 4, %sw.bb.if.end60.sink.split_crit_edge ], [ 2, %sw.bb40.if.end60.sink.split_crit_edge ]
  %14 = ptrtoint ptr %ramp_delay7810.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ramp_delay, ptr %ramp_delay7810.sink, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %if.then54.if.end60_crit_edge, %sw.bb40.if.end60_crit_edge, %sw.bb.if.end60_crit_edge
  %ramp_reg.0.ph151 = phi i32 [ %ramp_reg.0.ph152, %if.then54.if.end60_crit_edge ], [ 17, %sw.bb.if.end60_crit_edge ], [ 17, %sw.bb40.if.end60_crit_edge ], [ 17, %if.end60.sink.split ]
  %ramp_shift.0.ph149 = phi i32 [ %ramp_shift.0.ph150, %if.then54.if.end60_crit_edge ], [ 4, %sw.bb.if.end60_crit_edge ], [ 2, %sw.bb40.if.end60_crit_edge ], [ %ramp_shift.0.ph149.ph, %if.end60.sink.split ]
  %ramp_delay.addr.5.ph147 = phi i32 [ %ramp_delay.addr.5.ph148, %if.then54.if.end60_crit_edge ], [ %2, %sw.bb.if.end60_crit_edge ], [ %10, %sw.bb40.if.end60_crit_edge ], [ %ramp_delay, %if.end60.sink.split ]
  %div.i = sdiv i32 %ramp_delay.addr.5.ph147, 6250
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp10.i = icmp ult i32 %div.i, 2
  br i1 %cmp10.i, label %if.end60.get_ramp_delay.exit_crit_edge, label %if.end60.if.end.i_crit_edge

if.end60.if.end.i_crit_edge:                      ; preds = %if.end60
  br label %if.end.i

if.end60.get_ramp_delay.exit_crit_edge:           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ramp_delay.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end60.if.end.i_crit_edge
  %cnt.012.i = phi i8 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.end60.if.end.i_crit_edge ]
  %ramp_delay.addr.011.i = phi i32 [ %shr.i, %if.end.i.if.end.i_crit_edge ], [ %div.i, %if.end60.if.end.i_crit_edge ]
  %shr.i = ashr i32 %ramp_delay.addr.011.i, 1
  %inc.i = add i8 %cnt.012.i, 1
  %cmp.i = icmp ult i32 %ramp_delay.addr.011.i, 4
  br i1 %cmp.i, label %if.end.i.get_ramp_delay.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.get_ramp_delay.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ramp_delay.exit

get_ramp_delay.exit:                              ; preds = %if.end.i.get_ramp_delay.exit_crit_edge, %if.end60.get_ramp_delay.exit_crit_edge
  %cnt.0.lcssa.i = phi i8 [ 0, %if.end60.get_ramp_delay.exit_crit_edge ], [ %inc.i, %if.end.i.get_ramp_delay.exit_crit_edge ]
  %15 = tail call i8 @llvm.umin.i8(i8 %cnt.0.lcssa.i, i8 3) #7
  %conv5.i = zext i8 %15 to i32
  %regmap62 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %16 = ptrtoint ptr %regmap62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap62, align 4
  %shl63 = shl i32 3, %ramp_shift.0.ph149
  %shl64 = shl i32 %conv5.i, %ramp_shift.0.ph149
  %call.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %ramp_reg.0.ph151, i32 noundef %shl63, i32 noundef %shl64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

ramp_disable:                                     ; preds = %sw.bb29.ramp_disable_crit_edge, %sw.bb17.ramp_disable_crit_edge, %sw.bb7.ramp_disable_crit_edge, %sw.bb4.ramp_disable_crit_edge
  %enable_shift.0 = phi i32 [ 3, %sw.bb4.ramp_disable_crit_edge ], [ 2, %sw.bb7.ramp_disable_crit_edge ], [ 1, %sw.bb17.ramp_disable_crit_edge ], [ 0, %sw.bb29.ramp_disable_crit_edge ]
  %regmap66 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %18 = ptrtoint ptr %regmap66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap66, align 4
  %shl67 = shl nuw nsw i32 1, %enable_shift.0
  %call.i128 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef %shl67, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %ramp_disable, %get_ramp_delay.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i127, %get_ramp_delay.exit ], [ %call.i128, %ramp_disable ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mps11_regulator_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call1, label %entry.if.then_crit_edge [
    i32 39, label %entry.sw.epilog_crit_edge
    i32 40, label %entry.sw.bb2_crit_edge
    i32 41, label %entry.sw.bb2_crit_edge37
    i32 42, label %sw.bb3
    i32 43, label %entry.sw.bb4_crit_edge
    i32 38, label %entry.sw.bb4_crit_edge38
    i32 44, label %entry.sw.bb5_crit_edge
    i32 45, label %entry.sw.bb5_crit_edge39
    i32 47, label %entry.sw.bb5_crit_edge40
    i32 46, label %sw.bb6
  ]

entry.sw.bb5_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb4_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge37
  %ramp_delay34 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ramp_delay5 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge38
  %ramp_delay16 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge39, %entry.sw.bb5_crit_edge40
  %ramp_delay7810 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ramp_delay9 = getelementptr inbounds %struct.s2mps11_info, ptr %call, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %ramp_delay.0.in = phi ptr [ %ramp_delay9, %sw.bb6 ], [ %ramp_delay7810, %sw.bb5 ], [ %ramp_delay16, %sw.bb4 ], [ %ramp_delay5, %sw.bb3 ], [ %ramp_delay34, %sw.bb2 ], [ %call, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %ramp_delay.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %ramp_delay.0 = load i32, ptr %ramp_delay.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay.0)
  %cmp = icmp eq i32 %ramp_delay.0, 0
  br i1 %cmp, label %sw.epilog.if.then_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %ramp_delay7 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %ramp_delay7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ramp_delay7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %ramp_delay.1 = phi i32 [ %5, %if.then ], [ %ramp_delay.0, %sw.epilog.if.end_crit_edge ]
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uV_step, align 4
  %reass.add = sub i32 %new_selector, %old_selector
  %reass.mul = mul i32 %reass.add, %9
  %10 = tail call i32 @llvm.abs.i32(i32 %reass.mul, i1 false)
  %add18 = add i32 %ramp_delay.1, -1
  %sub19 = add i32 %add18, %10
  %div = udiv i32 %sub19, %ramp_delay.1
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2mpu02_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %switch.tableidx = add i32 %call, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.mult = mul i32 %switch.tableidx, -2
  %switch.offset = add i32 %switch.idx.mult, 6
  %div.i = sdiv i32 %ramp_delay, 6250
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp10.i = icmp ult i32 %div.i, 2
  br i1 %cmp10.i, label %switch.lookup.get_ramp_delay.exit_crit_edge, label %switch.lookup.if.end.i_crit_edge

switch.lookup.if.end.i_crit_edge:                 ; preds = %switch.lookup
  br label %if.end.i

switch.lookup.get_ramp_delay.exit_crit_edge:      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ramp_delay.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %switch.lookup.if.end.i_crit_edge
  %cnt.012.i = phi i8 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %switch.lookup.if.end.i_crit_edge ]
  %ramp_delay.addr.011.i = phi i32 [ %shr.i, %if.end.i.if.end.i_crit_edge ], [ %div.i, %switch.lookup.if.end.i_crit_edge ]
  %shr.i = ashr i32 %ramp_delay.addr.011.i, 1
  %inc.i = add i8 %cnt.012.i, 1
  %cmp.i = icmp ult i32 %ramp_delay.addr.011.i, 4
  br i1 %cmp.i, label %if.end.i.get_ramp_delay.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.get_ramp_delay.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_ramp_delay.exit

get_ramp_delay.exit:                              ; preds = %if.end.i.get_ramp_delay.exit_crit_edge, %switch.lookup.get_ramp_delay.exit_crit_edge
  %cnt.0.lcssa.i = phi i8 [ 0, %switch.lookup.get_ramp_delay.exit_crit_edge ], [ %inc.i, %if.end.i.get_ramp_delay.exit_crit_edge ]
  %1 = tail call i8 @llvm.umin.i8(i8 %cnt.0.lcssa.i, i8 3) #7
  %conv5.i = zext i8 %1 to i32
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %shl = shl i32 3, %switch.offset
  %shl5 = shl i32 %conv5.i, %switch.offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 42, i32 noundef %shl, i32 noundef %shl5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %get_ramp_delay.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %get_ramp_delay.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s2mps14_pmic_dt_parse_ext_control_gpio(ptr noundef %pdev, ptr nocapture noundef readonly %rdata, ptr nocapture noundef readonly %s2mps11) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_control_gpiod = getelementptr inbounds %struct.s2mps11_info, ptr %s2mps11, i32 0, i32 8
  %0 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_control_gpiod, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @__const.s2mps14_pmic_dt_parse_ext_control_gpio.valid_regulators, i32 0, i32 %i.067
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.of_regulator_match, ptr %rdata, i32 %3
  %init_data = getelementptr %struct.of_regulator_match, ptr %rdata, i32 %3, i32 2
  %4 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %of_node = getelementptr %struct.of_regulator_match, ptr %rdata, i32 %3, i32 3
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fwnode = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %call.i = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev, ptr noundef %fwnode, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.68) #7
  %arrayidx7 = getelementptr ptr, ptr %1, i32 %3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %arrayidx7, align 4
  %cmp10 = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp10, label %if.end20.thread, label %if.else

if.end20.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx7, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end20

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %3, ptr noundef %11) #10
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx7, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.body24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s2mps14_pmic_dt_parse_ext_control_gpio.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s2mps14_pmic_dt_parse_ext_control_gpio, %cleanup)) #7
          to label %if.then31 [label %cleanup], !srcloc !205

if.then31:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s2mps14_pmic_dt_parse_ext_control_gpio.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %3, ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body24, %if.end20.cleanup_crit_edge, %do.end, %if.end20.thread, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__initcall__kmod_s2mps11__294_1246_s2mps11_pmic_driver_init6, !1, !"__initcall__kmod_s2mps11__294_1246_s2mps11_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/s2mps11.c", i32 1246, i32 1}
!2 = !{ptr @__exitcall_s2mps11_pmic_driver_exit, !1, !"__exitcall_s2mps11_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/regulator/s2mps11.c", i32 1249, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/regulator/s2mps11.c", i32 1250, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/regulator/s2mps11.c", i32 1251, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/s2mps11.c", i32 1240, i32 11}
!12 = !{ptr @s2mps11_pmic_driver, !13, !"s2mps11_pmic_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/s2mps11.c", i32 1238, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/s2mps11.c", i32 1163, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @s2mps11_pmic_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @s2mps11_pmic_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/s2mps11.c", i32 1205, i32 4}
!24 = !{ptr @s2mps11_pmic_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @s2mps11_pmic_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/s2mps11.c", i32 1214, i32 5}
!28 = !{ptr @s2mps11_pmic_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @s2mps11_pmic_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/s2mps11.c", i32 441, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/s2mps11.c", i32 442, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/s2mps11.c", i32 443, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/s2mps11.c", i32 444, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/s2mps11.c", i32 445, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/s2mps11.c", i32 446, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/s2mps11.c", i32 447, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/s2mps11.c", i32 448, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/s2mps11.c", i32 449, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/s2mps11.c", i32 450, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/s2mps11.c", i32 451, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/s2mps11.c", i32 452, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/s2mps11.c", i32 453, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/s2mps11.c", i32 454, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/s2mps11.c", i32 455, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/s2mps11.c", i32 456, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/s2mps11.c", i32 457, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/s2mps11.c", i32 458, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/s2mps11.c", i32 459, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/s2mps11.c", i32 460, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/s2mps11.c", i32 461, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/s2mps11.c", i32 462, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/s2mps11.c", i32 463, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/s2mps11.c", i32 464, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/s2mps11.c", i32 465, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/s2mps11.c", i32 466, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/s2mps11.c", i32 467, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/s2mps11.c", i32 468, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/s2mps11.c", i32 469, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/s2mps11.c", i32 470, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/s2mps11.c", i32 471, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/s2mps11.c", i32 472, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/s2mps11.c", i32 473, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/s2mps11.c", i32 474, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/s2mps11.c", i32 475, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/s2mps11.c", i32 476, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/s2mps11.c", i32 477, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/s2mps11.c", i32 478, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/s2mps11.c", i32 479, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/s2mps11.c", i32 480, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/s2mps11.c", i32 481, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/s2mps11.c", i32 482, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/s2mps11.c", i32 483, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/s2mps11.c", i32 484, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/s2mps11.c", i32 486, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/s2mps11.c", i32 488, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/s2mps11.c", i32 490, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/s2mps11.c", i32 491, i32 2}
!126 = !{ptr @s2mps11_regulators, !127, !"s2mps11_regulators", i1 false, i1 false}
!127 = !{!"../drivers/regulator/s2mps11.c", i32 440, i32 36}
!128 = !{ptr @s2mps11_ldo_ops, !129, !"s2mps11_ldo_ops", i1 false, i1 false}
!129 = !{!"../drivers/regulator/s2mps11.c", i32 332, i32 35}
!130 = !{ptr @s2mps11_buck_ops, !131, !"s2mps11_buck_ops", i1 false, i1 false}
!131 = !{!"../drivers/regulator/s2mps11.c", i32 344, i32 35}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/s2mps11.c", i32 213, i32 4}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @s2mps11_set_ramp_delay._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @s2mps11_set_ramp_delay._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/s2mps11.c", i32 603, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/s2mps11.c", i32 604, i32 2}
!141 = !{ptr @s2mps13_regulators, !142, !"s2mps13_regulators", i1 false, i1 false}
!142 = !{!"../drivers/regulator/s2mps11.c", i32 564, i32 36}
!143 = !{ptr @s2mps14_reg_ops, !144, !"s2mps14_reg_ops", i1 false, i1 false}
!144 = !{!"../drivers/regulator/s2mps11.c", i32 617, i32 35}
!145 = !{ptr @s2mps14_regulators, !146, !"s2mps14_regulators", i1 false, i1 false}
!146 = !{!"../drivers/regulator/s2mps11.c", i32 661, i32 36}
!147 = !{ptr @s2mps15_regulators, !148, !"s2mps15_regulators", i1 false, i1 false}
!148 = !{!"../drivers/regulator/s2mps11.c", i32 786, i32 36}
!149 = !{ptr @s2mps15_reg_ldo_ops, !150, !"s2mps15_reg_ldo_ops", i1 false, i1 false}
!150 = !{!"../drivers/regulator/s2mps11.c", i32 699, i32 35}
!151 = !{ptr @s2mps15_ldo_voltage_ranges5, !152, !"s2mps15_ldo_voltage_ranges5", i1 false, i1 false}
!152 = !{!"../drivers/regulator/s2mps11.c", i32 772, i32 34}
!153 = !{ptr @s2mps15_ldo_voltage_ranges2, !154, !"s2mps15_ldo_voltage_ranges2", i1 false, i1 false}
!154 = !{!"../drivers/regulator/s2mps11.c", i32 757, i32 34}
!155 = !{ptr @s2mps15_ldo_voltage_ranges1, !156, !"s2mps15_ldo_voltage_ranges1", i1 false, i1 false}
!156 = !{!"../drivers/regulator/s2mps11.c", i32 752, i32 34}
!157 = !{ptr @s2mps15_ldo_voltage_ranges3, !158, !"s2mps15_ldo_voltage_ranges3", i1 false, i1 false}
!158 = !{!"../drivers/regulator/s2mps11.c", i32 762, i32 34}
!159 = !{ptr @s2mps15_ldo_voltage_ranges4, !160, !"s2mps15_ldo_voltage_ranges4", i1 false, i1 false}
!160 = !{!"../drivers/regulator/s2mps11.c", i32 767, i32 34}
!161 = !{ptr @s2mps15_reg_buck_ops, !162, !"s2mps15_reg_buck_ops", i1 false, i1 false}
!162 = !{!"../drivers/regulator/s2mps11.c", i32 709, i32 35}
!163 = !{ptr @s2mps15_buck_voltage_ranges1, !164, !"s2mps15_buck_voltage_ranges1", i1 false, i1 false}
!164 = !{!"../drivers/regulator/s2mps11.c", i32 777, i32 34}
!165 = !{ptr @s2mps15_buck_voltage_ranges2, !166, !"s2mps15_buck_voltage_ranges2", i1 false, i1 false}
!166 = !{!"../drivers/regulator/s2mps11.c", i32 782, i32 34}
!167 = !{ptr @s2mpu02_regulators, !168, !"s2mpu02_regulators", i1 false, i1 false}
!168 = !{!"../drivers/regulator/s2mps11.c", i32 1082, i32 36}
!169 = !{ptr @s2mpu02_ldo_ops, !170, !"s2mpu02_ldo_ops", i1 false, i1 false}
!170 = !{!"../drivers/regulator/s2mps11.c", i32 916, i32 35}
!171 = !{ptr @s2mpu02_buck_ops, !172, !"s2mpu02_buck_ops", i1 false, i1 false}
!172 = !{!"../drivers/regulator/s2mps11.c", i32 928, i32 35}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/regulator/s2mps11.c", i32 872, i32 59}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/regulator/s2mps11.c", i32 874, i32 3}
!177 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @s2mps11_pmic_dt_parse._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @s2mps11_pmic_dt_parse._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/s2mps11.c", i32 849, i32 5}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/s2mps11.c", i32 851, i32 5}
!184 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/regulator/s2mps11.c", i32 855, i32 4}
!186 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @s2mps14_pmic_dt_parse_ext_control_gpio._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/regulator/s2mps11.c", i32 861, i32 4}
!191 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @s2mps14_pmic_dt_parse_ext_control_gpio.__UNIQUE_ID_ddebug288, !190, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!193 = !{ptr @s2mps11_pmic_id, !194, !"s2mps11_pmic_id", i1 false, i1 false}
!194 = !{!"../drivers/regulator/s2mps11.c", i32 1228, i32 40}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{i64 2148187078, i64 2148187083, i64 2148187096, i64 2148187140, i64 2148187174, i64 2148187195}
