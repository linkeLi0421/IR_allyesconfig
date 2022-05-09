; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8998.c_pt.bc'
source_filename = "../drivers/regulator/max8998.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.max8998_regulator_data = type { i32, ptr, ptr }
%struct.max8998_data = type { ptr, ptr, i32, [4 x i8], [2 x i8], i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_max8998__293_816_max8998_pmic_init4 = internal global ptr @max8998_pmic_init, section ".initcall4.init", align 4
@max8998_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8998_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8998_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8998_pmic_cleanup = internal global ptr @max8998_pmic_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [56 x i8] c"max8998.description=MAXIM 8998 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [57 x i8] c"max8998.author=Kyungmin Park <kyungmin.park@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"max8998.file=drivers/regulator/max8998\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"max8998.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8998-pmic\00", [19 x i8] zeroinitializer }, align 32
@max8998_pmic_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8998-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"lp3974-pmic\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No platform init data supplied\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8998_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/max8998.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry_ptr = internal global ptr @max8998_pmic_probe._entry, section ".printk_index", align 4
@max8998_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAX8998 SET1 GPIO defined as 0 !\0A\00", [62 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry_ptr.8 = internal global ptr @max8998_pmic_probe._entry.6, section ".printk_index", align 4
@max8998_pmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAX8998 SET2 GPIO defined as 0 !\0A\00", [62 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry_ptr.11 = internal global ptr @max8998_pmic_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAX8998 BUCK1_SET1\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAX8998 BUCK1_SET2\00", [45 x i8] zeroinitializer }, align 32
@regulators = internal constant { [26 x %struct.regulator_desc], [1592 x i8] } { [26 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 11, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 11, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 7, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 3000000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 2800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 950000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 26, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 26, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 22, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.64, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 22, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1200000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 32, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 32, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr null, i32 750000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 21, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.70, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 16, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.72, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.74, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.76, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 8, ptr @max8998_charger_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @charger_current_table, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [1592 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAX8998 SET3 GPIO defined as 0 !\0A\00", [62 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry_ptr.16 = internal global ptr @max8998_pmic_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAX8998 BUCK2_SET3\00", [45 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regulator %s init failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@max8998_pmic_probe._entry_ptr.20 = internal global ptr @max8998_pmic_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find regulators sub-node\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max8998_pmic_dt_parse_pdata\00", [36 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry_ptr = internal global ptr @max8998_pmic_dt_parse_pdata._entry, section ".printk_index", align 4
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8998,pmic-buck-voltage-lock\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"max8998,pmic-buck1-default-dvs-idx\00", [61 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.3, i32 629, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid value for default dvs index, using 0 instead\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry_ptr.29 = internal global ptr @max8998_pmic_dt_parse_pdata._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"max8998,pmic-buck2-default-dvs-idx\00", [61 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.3, i32 637, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry_ptr.32 = internal global ptr @max8998_pmic_dt_parse_pdata._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8998,pmic-buck1-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck1 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry_ptr.36 = internal global ptr @max8998_pmic_dt_parse_pdata._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8998,pmic-buck2-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck2 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_pdata._entry_ptr.40 = internal global ptr @max8998_pmic_dt_parse_pdata._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8998,pmic-buck1-dvs-gpios\00", [35 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_dvs_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid buck1 gpio[0]: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8998_pmic_dt_parse_dvs_gpio\00", [33 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_dvs_gpio._entry_ptr = internal global ptr @max8998_pmic_dt_parse_dvs_gpio._entry, section ".printk_index", align 4
@max8998_pmic_dt_parse_dvs_gpio._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid buck1 gpio[1]: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_dvs_gpio._entry_ptr.46 = internal global ptr @max8998_pmic_dt_parse_dvs_gpio._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max8998,pmic-buck2-dvs-gpio\00", [36 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_dvs_gpio._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid buck 2 gpio: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@max8998_pmic_dt_parse_dvs_gpio._entry_ptr.50 = internal global ptr @max8998_pmic_dt_parse_dvs_gpio._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@max8998_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8998_set_voltage_ldo_sel, ptr null, ptr @max8998_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@max8998_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8998_set_voltage_buck_sel, ptr null, ptr @max8998_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_set_voltage_buck_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EN32KHz-AP\00", [21 x i8] zeroinitializer }, align 32
@max8998_others_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EN32KHz-CP\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENVICHG\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT1\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT2\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHARGER\00", [24 x i8] zeroinitializer }, align 32
@max8998_charger_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_set_current_limit, ptr @max8998_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_disable, ptr @max8998_ldo_enable, ptr @max8998_ldo_is_enabled_inverted, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@charger_current_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 90000, i32 380000, i32 475000, i32 550000, i32 570000, i32 600000, i32 700000, i32 800000], [32 x i8] zeroinitializer }, align 32
@max8998_set_voltage_buck_sel.buck1_last_val = internal global { i8, [31 x i8] } zeroinitializer, align 32
@max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8998\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8998_set_voltage_buck_sel\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"BUCK1, selector:%d, buck1_vol1:%d, buck1_vol2:%d\0Abuck1_vol3:%d, buck1_vol4:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.80, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max8998->buck1_idx:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.81, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: SET1:%d, SET2:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.82, i8 0, i8 76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BUCK2, selector:%d buck2_vol1:%d, buck2_vol2:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.83, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: SET3:%d\0A\00", [19 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_enable = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\11\11\11\11\14\14\14\0D\0D\0D", [38 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_enable.84 = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 7, i32 6, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_disable = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\11\11\11\11\14\14\14\0D\0D\0D", [38 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_disable.85 = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 7, i32 6, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_is_enabled = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\11\11\11\11\14\14\14\0D\0D\0D", [38 x i8] zeroinitializer }, align 32
@switch.table.max8998_ldo_is_enabled.86 = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 7, i32 6, i32 0], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.87 = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.88 = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.89 = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"max8998_pmic_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 804, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 806, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"max8998_pmic_id\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 797, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 673, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 706, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 713, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 719, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 724, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 512, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 749, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 754, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 788, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 581, i32 48 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 583, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 621, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 625, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 629, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 633, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 637, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 641, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 645, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 650, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 654, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 548, i32 36 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 550, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 557, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 562, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 564, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 513, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"max8998_ldo_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 442, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 514, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 515, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 516, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 517, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 518, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 519, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 520, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 521, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 522, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 523, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 524, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 525, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 526, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 527, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 528, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 529, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"max8998_buck_ops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 452, i32 35 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 530, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 531, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 532, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 533, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"max8998_others_ops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 472, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 534, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 535, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 536, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 537, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 538, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c"max8998_charger_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 463, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"charger_current_table\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 36, i32 27 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"buck1_last_val\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 249, i32 12 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 257, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 282, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 293, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 303, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [31 x i8] c"../drivers/regulator/max8998.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 327, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [32 x i8] c"switch.table.max8998_ldo_enable\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [35 x i8] c"switch.table.max8998_ldo_enable.84\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [33 x i8] c"switch.table.max8998_ldo_disable\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [36 x i8] c"switch.table.max8998_ldo_disable.85\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [36 x i8] c"switch.table.max8998_ldo_is_enabled\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [39 x i8] c"switch.table.max8998_ldo_is_enabled.86\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_max8998_pmic_cleanup, ptr @__initcall__kmod_max8998__293_816_max8998_pmic_init4, ptr @max8998_pmic_cleanup, ptr @max8998_pmic_dt_parse_dvs_gpio._entry, ptr @max8998_pmic_dt_parse_dvs_gpio._entry.44, ptr @max8998_pmic_dt_parse_dvs_gpio._entry.48, ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr, ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr.46, ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr.50, ptr @max8998_pmic_dt_parse_pdata._entry, ptr @max8998_pmic_dt_parse_pdata._entry.26, ptr @max8998_pmic_dt_parse_pdata._entry.31, ptr @max8998_pmic_dt_parse_pdata._entry.34, ptr @max8998_pmic_dt_parse_pdata._entry.38, ptr @max8998_pmic_dt_parse_pdata._entry_ptr, ptr @max8998_pmic_dt_parse_pdata._entry_ptr.29, ptr @max8998_pmic_dt_parse_pdata._entry_ptr.32, ptr @max8998_pmic_dt_parse_pdata._entry_ptr.36, ptr @max8998_pmic_dt_parse_pdata._entry_ptr.40, ptr @max8998_pmic_probe._entry, ptr @max8998_pmic_probe._entry.14, ptr @max8998_pmic_probe._entry.18, ptr @max8998_pmic_probe._entry.6, ptr @max8998_pmic_probe._entry.9, ptr @max8998_pmic_probe._entry_ptr, ptr @max8998_pmic_probe._entry_ptr.11, ptr @max8998_pmic_probe._entry_ptr.16, ptr @max8998_pmic_probe._entry_ptr.20, ptr @max8998_pmic_probe._entry_ptr.8, ptr @max8998_pmic_driver, ptr @.str, ptr @max8998_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @regulators, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @max8998_ldo_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @max8998_buck_ops, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @max8998_others_ops, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @max8998_charger_ops, ptr @charger_current_table, ptr @max8998_set_voltage_buck_sel.buck1_last_val, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @switch.table.max8998_ldo_enable, ptr @switch.table.max8998_ldo_enable.84, ptr @switch.table.max8998_ldo_disable, ptr @switch.table.max8998_ldo_disable.85, ptr @switch.table.max8998_ldo_is_enabled, ptr @switch.table.max8998_ldo_is_enabled.86], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 6344, i32 7936, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_pdata._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_pdata._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_pdata._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_pdata._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_dvs_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_dvs_gpio._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_pmic_dt_parse_dvs_gpio._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_others_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_charger_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_current_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_set_voltage_buck_sel.buck1_last_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_enable to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_enable.84 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_disable to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_disable.85 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_is_enabled to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8998_ldo_is_enabled.86 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8998_pmic_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8998_pmic_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8998_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_pmic_probe(ptr noundef %pdev) #2 align 64 {
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
  %pdata1 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %6 = call ptr @memset(ptr %config, i32 0, i32 24)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  br label %cleanup243

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.21) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.22) #10
  br label %cleanup243

if.end.i:                                         ; preds = %if.then6
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.i.of_get_child_count.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.of_get_child_count.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %num_regulators.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num.0.lcssa.i.i, ptr %num_regulators.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 12) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %of_get_child_count.exit.i.if.then7.i_crit_edge, label %devm_kcalloc.exit.i, !prof !189

of_get_child_count.exit.i.if.then7.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef %18, i32 noundef 3520) #7
  %tobool6.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i, label %devm_kcalloc.exit.i.if.then7.i_crit_edge, label %if.end8.i

devm_kcalloc.exit.i.if.then7.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %devm_kcalloc.exit.i.if.then7.i_crit_edge, %of_get_child_count.exit.i.if.then7.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %cleanup243

if.end8.i:                                        ; preds = %devm_kcalloc.exit.i
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %5, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i
  %i.0131.i = phi i32 [ 0, %if.end8.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rdata.0130.i = phi ptr [ %call5.i.i.i, %if.end8.i ], [ %rdata.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.0131.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call9.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call.i, ptr noundef %21) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.0131.i, i32 6
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %24 = ptrtoint ptr %rdata.0130.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rdata.0130.i, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %call17.i = tail call ptr @of_get_regulator_init_data(ptr noundef %26, ptr noundef nonnull %call9.i, ptr noundef %arrayidx.i) #7
  %initdata.i = getelementptr inbounds %struct.max8998_regulator_data, ptr %rdata.0130.i, i32 0, i32 1
  %27 = ptrtoint ptr %initdata.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17.i, ptr %initdata.i, align 4
  %reg_node.i = getelementptr inbounds %struct.max8998_regulator_data, ptr %rdata.0130.i, i32 0, i32 2
  %28 = ptrtoint ptr %reg_node.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %reg_node.i, align 4
  %incdec.ptr.i = getelementptr %struct.max8998_regulator_data, ptr %rdata.0130.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %rdata.1.i = phi ptr [ %incdec.ptr.i, %if.end12.i ], [ %rdata.0130.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0131.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %rdata.1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %31 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.ptr.div.i, ptr %num_regulators.i, align 4
  tail call void @of_node_put(ptr noundef %call9.i) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  %call.i.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i.i)
  %32 = icmp ult i32 %call.i.i.i, 2048
  br i1 %32, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.42, i32 noundef %call.i.i.i) #10
  br label %cleanup243

if.end.i.i:                                       ; preds = %for.end.i
  %buck1_set1.i.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 7
  %35 = ptrtoint ptr %buck1_set1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.i.i, ptr %buck1_set1.i.i, align 4
  %call.i32.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i32.i.i)
  %36 = icmp ult i32 %call.i32.i.i, 2048
  br i1 %36, label %if.end9.i.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.45, i32 noundef %call.i32.i.i) #10
  br label %cleanup243

if.end9.i.i:                                      ; preds = %if.end.i.i
  %buck1_set2.i.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 8
  %39 = ptrtoint ptr %buck1_set2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i32.i.i, ptr %buck1_set2.i.i, align 4
  %call.i33.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i33.i.i)
  %40 = icmp ult i32 %call.i33.i.i, 2048
  br i1 %40, label %if.end23.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.49, i32 noundef %call.i33.i.i) #10
  br label %cleanup243

if.end23.i:                                       ; preds = %if.end9.i.i
  %buck2_set3.i.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 10
  %43 = ptrtoint ptr %buck2_set3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i33.i.i, ptr %buck2_set3.i.i, align 4
  %call24.i = tail call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then26.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %buck_voltage_lock.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %buck_voltage_lock.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %buck_voltage_lock.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end27.i_crit_edge
  %buck1_default_idx.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 9
  %call.i.i122.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.25, ptr noundef %buck1_default_idx.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i122.i)
  %tobool29.not.i = icmp sgt i32 %call.i.i122.i, -1
  br i1 %tobool29.not.i, label %land.lhs.true.i, label %if.end27.i.if.end38.i_crit_edge

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %45 = ptrtoint ptr %buck1_default_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buck1_default_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp31.i = icmp sgt i32 %46, 3
  br i1 %cmp31.i, label %if.then32.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %buck1_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %buck1_default_idx.i, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.27) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then32.i, %land.lhs.true.i.if.end38.i_crit_edge, %if.end27.i.if.end38.i_crit_edge
  %buck2_default_idx.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 11
  %call.i.i123.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.30, ptr noundef %buck2_default_idx.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i)
  %tobool40.not.i = icmp sgt i32 %call.i.i123.i, -1
  br i1 %tobool40.not.i, label %land.lhs.true41.i, label %if.end38.i.if.end50.i_crit_edge

if.end38.i.if.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

land.lhs.true41.i:                                ; preds = %if.end38.i
  %50 = ptrtoint ptr %buck2_default_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buck2_default_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp43.i = icmp sgt i32 %51, 1
  br i1 %cmp43.i, label %if.then44.i, label %land.lhs.true41.i.if.end50.i_crit_edge

land.lhs.true41.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %buck2_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %buck2_default_idx.i, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.27) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then44.i, %land.lhs.true41.i.if.end50.i_crit_edge, %if.end38.i.if.end50.i_crit_edge
  %buck1_voltage.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 5
  %call.i124.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.33, ptr noundef %buck1_voltage.i, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i124.i)
  %tobool52.not.i = icmp sgt i32 %call.i124.i, -1
  br i1 %tobool52.not.i, label %if.end58.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.35) #10
  br label %cleanup243

if.end58.i:                                       ; preds = %if.end50.i
  %buck2_voltage.i = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 6
  %call.i125.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.37, ptr noundef %buck2_voltage.i, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i125.i)
  %tobool61.not.i = icmp sgt i32 %call.i125.i, -1
  br i1 %tobool61.not.i, label %if.end58.i.if.end11_crit_edge, label %do.end65.i

if.end58.i.if.end11_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end65.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.39) #10
  br label %cleanup243

if.end11:                                         ; preds = %if.end58.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call.i345 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i345, null
  br i1 %tobool14.not, label %if.end11.cleanup243_crit_edge, label %if.end16

if.end11.cleanup243_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

if.end16:                                         ; preds = %if.end11
  %59 = ptrtoint ptr %call.i345 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev, ptr %call.i345, align 4
  %iodev19 = getelementptr inbounds %struct.max8998_data, ptr %call.i345, i32 0, i32 1
  %60 = ptrtoint ptr %iodev19 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %3, ptr %iodev19, align 4
  %num_regulators = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 1
  %61 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_regulators, align 4
  %num_regulators20 = getelementptr inbounds %struct.max8998_data, ptr %call.i345, i32 0, i32 2
  %63 = ptrtoint ptr %num_regulators20 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %num_regulators20, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i345, ptr %driver_data.i.i, align 4
  %i2c22 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 2
  %65 = ptrtoint ptr %i2c22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c22, align 4
  %buck1_default_idx = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 9
  %67 = ptrtoint ptr %buck1_default_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buck1_default_idx, align 4
  %buck1_idx = getelementptr inbounds %struct.max8998_data, ptr %call.i345, i32 0, i32 5
  %69 = ptrtoint ptr %buck1_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %buck1_idx, align 4
  %buck2_default_idx = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 11
  %70 = ptrtoint ptr %buck2_default_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buck2_default_idx, align 4
  %buck2_idx = getelementptr inbounds %struct.max8998_data, ptr %call.i345, i32 0, i32 6
  %72 = ptrtoint ptr %buck2_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %buck2_idx, align 4
  %buck1_set1 = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 7
  %73 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buck1_set1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %74)
  %75 = icmp ult i32 %74, 2048
  br i1 %75, label %land.lhs.true, label %if.end16.if.end126_crit_edge

if.end16.if.end126_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

land.lhs.true:                                    ; preds = %if.end16
  %buck1_set2 = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 8
  %76 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buck1_set2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %77)
  %78 = icmp ult i32 %77, 2048
  br i1 %78, label %if.then25, label %land.lhs.true.if.end126_crit_edge

land.lhs.true.if.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool27.not = icmp eq i32 %74, 0
  br i1 %tobool27.not, label %do.end31, label %if.end60

do.end31:                                         ; preds = %if.then25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %79 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buck1_set1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool34.not = icmp eq i32 %80, 0
  br i1 %tobool34.not, label %do.end47, label %do.end31.cleanup243_crit_edge, !prof !189

do.end31.cleanup243_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

do.end47:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 708, i32 noundef 9, ptr noundef null) #7
  br label %cleanup243

if.end60:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool62.not = icmp eq i32 %77, 0
  br i1 %tobool62.not, label %do.end66, label %if.end102

do.end66:                                         ; preds = %if.end60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %81 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buck1_set2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool70.not = icmp eq i32 %82, 0
  br i1 %tobool70.not, label %do.end88, label %do.end66.cleanup243_crit_edge, !prof !189

do.end66.cleanup243_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

do.end88:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 715, i32 noundef 9, ptr noundef null) #7
  br label %cleanup243

if.end102:                                        ; preds = %if.end60
  %call104 = tail call i32 @gpio_request(i32 noundef %74, ptr noundef nonnull @.str.12) #7
  %83 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buck1_set1, align 4
  %85 = ptrtoint ptr %buck1_idx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buck1_idx, align 4
  %and = and i32 %86, 1
  %call.i346 = tail call ptr @gpio_to_desc(i32 noundef %84) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i346, i32 noundef %and) #7
  %87 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buck1_set2, align 4
  %call109 = tail call i32 @gpio_request(i32 noundef %88, ptr noundef nonnull @.str.13) #7
  %89 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buck1_set2, align 4
  %91 = ptrtoint ptr %buck1_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buck1_idx, align 4
  %shr = lshr i32 %92, 1
  %and112 = and i32 %shr, 1
  %call.i347 = tail call ptr @gpio_to_desc(i32 noundef %90) #7
  %call1.i348 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i347, i32 noundef %and112) #7
  %arrayidx115 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 5, i32 0
  %93 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx115, align 4
  br label %while.cond

for.cond:                                         ; preds = %while.end
  %arrayidx115.1 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %arrayidx115.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx115.1, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.cond.1.while.cond.1_crit_edge, %for.cond
  %i.0.1 = phi i32 [ %inc.1, %while.cond.1.while.cond.1_crit_edge ], [ 0, %for.cond ]
  %mul.1 = mul i32 %i.0.1, 25000
  %add.1 = add i32 %mul.1, 750000
  %cmp116.1 = icmp ult i32 %add.1, %96
  %inc.1 = add i32 %i.0.1, 1
  br i1 %cmp116.1, label %while.cond.1.while.cond.1_crit_edge, label %while.end.1

while.cond.1.while.cond.1_crit_edge:              ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.1

while.end.1:                                      ; preds = %while.cond.1
  %conv.1 = trunc i32 %i.0.1 to i8
  %arrayidx117.1 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.1, ptr %arrayidx117.1, align 1
  %call121.1 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 22, i8 noundef zeroext %conv.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.1)
  %tobool122.not.1 = icmp eq i32 %call121.1, 0
  br i1 %tobool122.not.1, label %for.cond.1, label %while.end.1.cleanup243_crit_edge

while.end.1.cleanup243_crit_edge:                 ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

for.cond.1:                                       ; preds = %while.end.1
  %arrayidx115.2 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 5, i32 2
  %98 = ptrtoint ptr %arrayidx115.2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx115.2, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.cond.2.while.cond.2_crit_edge, %for.cond.1
  %i.0.2 = phi i32 [ %inc.2, %while.cond.2.while.cond.2_crit_edge ], [ 0, %for.cond.1 ]
  %mul.2 = mul i32 %i.0.2, 25000
  %add.2 = add i32 %mul.2, 750000
  %cmp116.2 = icmp ult i32 %add.2, %99
  %inc.2 = add i32 %i.0.2, 1
  br i1 %cmp116.2, label %while.cond.2.while.cond.2_crit_edge, label %while.end.2

while.cond.2.while.cond.2_crit_edge:              ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.2

while.end.2:                                      ; preds = %while.cond.2
  %conv.2 = trunc i32 %i.0.2 to i8
  %arrayidx117.2 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.2, ptr %arrayidx117.2, align 1
  %call121.2 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 23, i8 noundef zeroext %conv.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.2)
  %tobool122.not.2 = icmp eq i32 %call121.2, 0
  br i1 %tobool122.not.2, label %for.cond.2, label %while.end.2.cleanup243_crit_edge

while.end.2.cleanup243_crit_edge:                 ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

for.cond.2:                                       ; preds = %while.end.2
  %arrayidx115.3 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 5, i32 3
  %101 = ptrtoint ptr %arrayidx115.3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx115.3, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.cond.3.while.cond.3_crit_edge, %for.cond.2
  %i.0.3 = phi i32 [ %inc.3, %while.cond.3.while.cond.3_crit_edge ], [ 0, %for.cond.2 ]
  %mul.3 = mul i32 %i.0.3, 25000
  %add.3 = add i32 %mul.3, 750000
  %cmp116.3 = icmp ult i32 %add.3, %102
  %inc.3 = add i32 %i.0.3, 1
  br i1 %cmp116.3, label %while.cond.3.while.cond.3_crit_edge, label %while.end.3

while.cond.3.while.cond.3_crit_edge:              ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.3

while.end.3:                                      ; preds = %while.cond.3
  %conv.3 = trunc i32 %i.0.3 to i8
  %arrayidx117.3 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 3, i32 3
  %103 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.3, ptr %arrayidx117.3, align 1
  %call121.3 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 24, i8 noundef zeroext %conv.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.3)
  %tobool122.not.3 = icmp eq i32 %call121.3, 0
  br i1 %tobool122.not.3, label %while.end.3.if.end126_crit_edge, label %while.end.3.cleanup243_crit_edge

while.end.3.cleanup243_crit_edge:                 ; preds = %while.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

while.end.3.if.end126_crit_edge:                  ; preds = %while.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end102
  %i.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %if.end102 ]
  %mul = mul i32 %i.0, 25000
  %add = add i32 %mul, 750000
  %cmp116 = icmp ult i32 %add, %94
  %inc = add i32 %i.0, 1
  br i1 %cmp116, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = trunc i32 %i.0 to i8
  %arrayidx117 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 3, i32 0
  %104 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv, ptr %arrayidx117, align 1
  %call121 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 21, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %for.cond, label %while.end.cleanup243_crit_edge

while.end.cleanup243_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

if.end126:                                        ; preds = %while.end.3.if.end126_crit_edge, %land.lhs.true.if.end126_crit_edge, %if.end16.if.end126_crit_edge
  %buck2_set3 = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 10
  %105 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %buck2_set3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %106)
  %107 = icmp ult i32 %106, 2048
  br i1 %107, label %if.then128, label %if.end126.if.end210_crit_edge

if.end126.if.end210_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool130.not = icmp eq i32 %106, 0
  br i1 %tobool130.not, label %do.end134, label %if.end170

do.end134:                                        ; preds = %if.then128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %108 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %buck2_set3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool138.not = icmp eq i32 %109, 0
  br i1 %tobool138.not, label %do.end156, label %do.end134.cleanup243_crit_edge, !prof !189

do.end134.cleanup243_crit_edge:                   ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

do.end156:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 751, i32 noundef 9, ptr noundef null) #7
  br label %cleanup243

if.end170:                                        ; preds = %if.then128
  %call172 = tail call i32 @gpio_request(i32 noundef %106, ptr noundef nonnull @.str.17) #7
  %110 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buck2_set3, align 4
  %112 = ptrtoint ptr %buck2_idx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %buck2_idx, align 4
  %and175 = and i32 %113, 1
  %call.i349 = tail call ptr @gpio_to_desc(i32 noundef %111) #7
  %call1.i350 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i349, i32 noundef %and175) #7
  %arrayidx189 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 6, i32 0
  %114 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx189, align 4
  br label %while.cond182

for.cond177:                                      ; preds = %while.end194
  %arrayidx189.1 = getelementptr %struct.max8998_platform_data, ptr %5, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %arrayidx189.1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx189.1, align 4
  br label %while.cond182.1

while.cond182.1:                                  ; preds = %while.cond182.1.while.cond182.1_crit_edge, %for.cond177
  %i.1.1 = phi i32 [ %inc193.1, %while.cond182.1.while.cond182.1_crit_edge ], [ 0, %for.cond177 ]
  %mul187.1 = mul i32 %i.1.1, 25000
  %add188.1 = add i32 %mul187.1, 750000
  %cmp190.1 = icmp ult i32 %add188.1, %117
  %inc193.1 = add i32 %i.1.1, 1
  br i1 %cmp190.1, label %while.cond182.1.while.cond182.1_crit_edge, label %while.end194.1

while.cond182.1.while.cond182.1_crit_edge:        ; preds = %while.cond182.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond182.1

while.end194.1:                                   ; preds = %while.cond182.1
  %conv195.1 = trunc i32 %i.1.1 to i8
  %arrayidx196.1 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 4, i32 1
  %118 = ptrtoint ptr %arrayidx196.1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv195.1, ptr %arrayidx196.1, align 1
  %call200.1 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 26, i8 noundef zeroext %conv195.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.1)
  %tobool201.not.1 = icmp eq i32 %call200.1, 0
  br i1 %tobool201.not.1, label %while.end194.1.if.end210_crit_edge, label %while.end194.1.cleanup243_crit_edge

while.end194.1.cleanup243_crit_edge:              ; preds = %while.end194.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

while.end194.1.if.end210_crit_edge:               ; preds = %while.end194.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

while.cond182:                                    ; preds = %while.cond182.while.cond182_crit_edge, %if.end170
  %i.1 = phi i32 [ %inc193, %while.cond182.while.cond182_crit_edge ], [ 0, %if.end170 ]
  %mul187 = mul i32 %i.1, 25000
  %add188 = add i32 %mul187, 750000
  %cmp190 = icmp ult i32 %add188, %115
  %inc193 = add i32 %i.1, 1
  br i1 %cmp190, label %while.cond182.while.cond182_crit_edge, label %while.end194

while.cond182.while.cond182_crit_edge:            ; preds = %while.cond182
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond182

while.end194:                                     ; preds = %while.cond182
  %conv195 = trunc i32 %i.1 to i8
  %arrayidx196 = getelementptr %struct.max8998_data, ptr %call.i345, i32 0, i32 4, i32 0
  %119 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv195, ptr %arrayidx196, align 1
  %call200 = tail call i32 @max8998_write_reg(ptr noundef %66, i8 noundef zeroext 25, i8 noundef zeroext %conv195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %for.cond177, label %while.end194.cleanup243_crit_edge

while.end194.cleanup243_crit_edge:                ; preds = %while.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

if.end210:                                        ; preds = %while.end194.1.if.end210_crit_edge, %if.end126.if.end210_crit_edge
  %120 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp213358 = icmp sgt i32 %121, 0
  br i1 %cmp213358, label %for.body215.lr.ph, label %if.end210.cleanup243_crit_edge

if.end210.cleanup243_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

for.body215.lr.ph:                                ; preds = %if.end210
  %of_node222 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body215

for.cond211:                                      ; preds = %for.body215
  %inc241 = add nuw nsw i32 %i.2359, 1
  %122 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_regulators, align 4
  %cmp213 = icmp slt i32 %inc241, %123
  br i1 %cmp213, label %for.cond211.for.body215_crit_edge, label %for.cond211.cleanup243_crit_edge

for.cond211.cleanup243_crit_edge:                 ; preds = %for.cond211
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup243

for.cond211.for.body215_crit_edge:                ; preds = %for.cond211
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body215

for.body215:                                      ; preds = %for.cond211.for.body215_crit_edge, %for.body215.lr.ph
  %i.2359 = phi i32 [ 0, %for.body215.lr.ph ], [ %inc241, %for.cond211.for.body215_crit_edge ]
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %5, align 4
  %arrayidx217 = getelementptr %struct.max8998_regulator_data, ptr %125, i32 %i.2359
  %126 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx217, align 4
  %sub = add i32 %127, -2
  %128 = ptrtoint ptr %call.i345 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i345, align 4
  %130 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %config, align 4
  %131 = load ptr, ptr %5, align 4
  %reg_node = getelementptr %struct.max8998_regulator_data, ptr %131, i32 %i.2359, i32 2
  %132 = ptrtoint ptr %reg_node to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_node, align 4
  %134 = ptrtoint ptr %of_node222 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %of_node222, align 4
  %135 = load ptr, ptr %5, align 4
  %initdata = getelementptr %struct.max8998_regulator_data, ptr %135, i32 %i.2359, i32 1
  %136 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %initdata, align 4
  %138 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %init_data, align 4
  %139 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i345, ptr %driver_data, align 4
  %arrayidx226 = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %sub
  %call227 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx226, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call227, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup237.thread, label %for.cond211

cleanup237.thread:                                ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %call227 to i32
  %141 = ptrtoint ptr %call.i345 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i345, align 4
  %143 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx226, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.19, ptr noundef %144, i32 noundef %140) #10
  br label %cleanup243

cleanup243:                                       ; preds = %cleanup237.thread, %for.cond211.cleanup243_crit_edge, %if.end210.cleanup243_crit_edge, %while.end194.cleanup243_crit_edge, %while.end194.1.cleanup243_crit_edge, %do.end156, %do.end134.cleanup243_crit_edge, %while.end.cleanup243_crit_edge, %while.end.3.cleanup243_crit_edge, %while.end.2.cleanup243_crit_edge, %while.end.1.cleanup243_crit_edge, %do.end88, %do.end66.cleanup243_crit_edge, %do.end47, %do.end31.cleanup243_crit_edge, %if.end11.cleanup243_crit_edge, %do.end65.i, %do.end56.i, %do.end15.i.i, %do.end7.i.i, %do.end.i.i, %if.then7.i, %do.end.i, %do.end
  %retval.8 = phi i32 [ -19, %do.end ], [ -12, %if.end11.cleanup243_crit_edge ], [ -5, %do.end47 ], [ -5, %do.end31.cleanup243_crit_edge ], [ -5, %do.end88 ], [ -5, %do.end66.cleanup243_crit_edge ], [ -5, %do.end156 ], [ -5, %do.end134.cleanup243_crit_edge ], [ %140, %cleanup237.thread ], [ -22, %do.end.i.i ], [ -22, %do.end7.i.i ], [ -22, %do.end15.i.i ], [ -22, %do.end.i ], [ -12, %if.then7.i ], [ -22, %do.end65.i ], [ -22, %do.end56.i ], [ 0, %if.end210.cleanup243_crit_edge ], [ %call200, %while.end194.cleanup243_crit_edge ], [ %call200.1, %while.end194.1.cleanup243_crit_edge ], [ %call121, %while.end.cleanup243_crit_edge ], [ %call121.1, %while.end.1.cleanup243_crit_edge ], [ %call121.2, %while.end.2.cleanup243_crit_edge ], [ %call121.3, %while.end.3.cleanup243_crit_edge ], [ 0, %for.cond211.cleanup243_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_ldo_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %call1.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb21.i
    i32 20, label %sw.bb20.i
    i32 4, label %entry.sw.bb2.i_crit_edge
    i32 5, label %entry.sw.bb2.i_crit_edge23
    i32 6, label %entry.sw.bb2.i_crit_edge24
    i32 7, label %entry.sw.bb2.i_crit_edge25
    i32 3, label %if.else.i
    i32 2, label %entry.if.end_crit_edge
    i32 9, label %if.else6.i
    i32 8, label %if.then5.i
    i32 12, label %entry.sw.bb13.i_crit_edge
    i32 13, label %entry.sw.bb13.i_crit_edge26
    i32 14, label %entry.sw.bb13.i_crit_edge27
    i32 15, label %entry.sw.bb13.i_crit_edge28
    i32 16, label %entry.sw.bb13.i_crit_edge29
    i32 17, label %entry.sw.bb13.i_crit_edge30
    i32 18, label %sw.bb16.i
    i32 19, label %sw.bb18.i
    i32 10, label %if.then10.i
    i32 11, label %if.else11.i
  ]

entry.sw.bb13.i_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.sw.bb2.i_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge23:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge23, %entry.sw.bb2.i_crit_edge24, %entry.sw.bb2.i_crit_edge25
  %add.i = add nuw nsw i32 %call.i, 26
  br label %if.end

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge26, %entry.sw.bb13.i_crit_edge27, %entry.sw.bb13.i_crit_edge28, %entry.sw.bb13.i_crit_edge29, %entry.sw.bb13.i_crit_edge30
  %add15.i = add nuw nsw i32 %call.i, 24
  br label %if.end

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck1_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 5
  %5 = ptrtoint ptr %buck1_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buck1_idx.i, align 4
  %add17.i = add i32 %6, 21
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck2_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 6
  %7 = ptrtoint ptr %buck2_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buck2_idx.i, align 4
  %add19.i = add i32 %8, 25
  br label %if.end

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.bb21.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb13.i, %if.else11.i, %if.then10.i, %if.else6.i, %if.then5.i, %sw.bb2.i, %if.else.i, %entry.if.end_crit_edge
  %reg.0.i = phi i32 [ 28, %sw.bb21.i ], [ 27, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add17.i, %sw.bb16.i ], [ %add15.i, %sw.bb13.i ], [ 35, %if.then10.i ], [ 35, %if.else11.i ], [ 34, %if.then5.i ], [ 34, %if.else6.i ], [ %add.i, %sw.bb2.i ], [ 29, %if.else.i ], [ 29, %entry.if.end_crit_edge ]
  %shift.0.i = phi i32 [ 0, %sw.bb21.i ], [ 0, %sw.bb20.i ], [ 0, %sw.bb18.i ], [ 0, %sw.bb16.i ], [ 0, %sw.bb13.i ], [ 5, %if.then10.i ], [ 0, %if.else11.i ], [ 4, %if.then5.i ], [ 0, %if.else6.i ], [ 0, %sw.bb2.i ], [ 0, %if.else.i ], [ 4, %entry.if.end_crit_edge ]
  %mask.0.i = phi i32 [ 255, %sw.bb21.i ], [ 255, %sw.bb20.i ], [ 255, %sw.bb18.i ], [ 255, %sw.bb16.i ], [ 255, %sw.bb13.i ], [ 7, %if.then10.i ], [ 31, %if.else11.i ], [ 15, %if.then5.i ], [ 15, %if.else6.i ], [ 255, %sw.bb2.i ], [ 15, %if.else.i ], [ 15, %entry.if.end_crit_edge ]
  %conv = trunc i32 %reg.0.i to i8
  %shl = shl i32 %selector, %shift.0.i
  %conv3 = trunc i32 %shl to i8
  %shl4 = shl nuw nsw i32 %mask.0.i, %shift.0.i
  %conv5 = trunc i32 %shl4 to i8
  %call6 = tail call i32 @max8998_update_reg(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv3, i8 noundef zeroext %conv5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !190
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %call1.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb21.i
    i32 20, label %sw.bb20.i
    i32 4, label %entry.sw.bb2.i_crit_edge
    i32 5, label %entry.sw.bb2.i_crit_edge30
    i32 6, label %entry.sw.bb2.i_crit_edge31
    i32 7, label %entry.sw.bb2.i_crit_edge32
    i32 3, label %if.else.i
    i32 2, label %entry.if.end_crit_edge
    i32 9, label %if.else6.i
    i32 8, label %if.then5.i
    i32 12, label %entry.sw.bb13.i_crit_edge
    i32 13, label %entry.sw.bb13.i_crit_edge33
    i32 14, label %entry.sw.bb13.i_crit_edge34
    i32 15, label %entry.sw.bb13.i_crit_edge35
    i32 16, label %entry.sw.bb13.i_crit_edge36
    i32 17, label %entry.sw.bb13.i_crit_edge37
    i32 18, label %sw.bb16.i
    i32 19, label %sw.bb18.i
    i32 10, label %if.then10.i
    i32 11, label %if.else11.i
  ]

entry.sw.bb13.i_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.sw.bb2.i_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge30:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge30, %entry.sw.bb2.i_crit_edge31, %entry.sw.bb2.i_crit_edge32
  %add.i = add nuw nsw i32 %call.i, 26
  br label %if.end

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge33, %entry.sw.bb13.i_crit_edge34, %entry.sw.bb13.i_crit_edge35, %entry.sw.bb13.i_crit_edge36, %entry.sw.bb13.i_crit_edge37
  %add15.i = add nuw nsw i32 %call.i, 24
  br label %if.end

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck1_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 5
  %6 = ptrtoint ptr %buck1_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buck1_idx.i, align 4
  %add17.i = add i32 %7, 21
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck2_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 6
  %8 = ptrtoint ptr %buck2_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buck2_idx.i, align 4
  %add19.i = add i32 %9, 25
  br label %if.end

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.bb21.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb13.i, %if.else11.i, %if.then10.i, %if.else6.i, %if.then5.i, %sw.bb2.i, %if.else.i, %entry.if.end_crit_edge
  %reg.0.i = phi i32 [ 28, %sw.bb21.i ], [ 27, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add17.i, %sw.bb16.i ], [ %add15.i, %sw.bb13.i ], [ 35, %if.then10.i ], [ 35, %if.else11.i ], [ 34, %if.then5.i ], [ 34, %if.else6.i ], [ %add.i, %sw.bb2.i ], [ 29, %if.else.i ], [ 29, %entry.if.end_crit_edge ]
  %shift.0.i = phi i32 [ 0, %sw.bb21.i ], [ 0, %sw.bb20.i ], [ 0, %sw.bb18.i ], [ 0, %sw.bb16.i ], [ 0, %sw.bb13.i ], [ 5, %if.then10.i ], [ 0, %if.else11.i ], [ 4, %if.then5.i ], [ 0, %if.else6.i ], [ 0, %sw.bb2.i ], [ 0, %if.else.i ], [ 4, %entry.if.end_crit_edge ]
  %mask.0.i = phi i32 [ 255, %sw.bb21.i ], [ 255, %sw.bb20.i ], [ 255, %sw.bb18.i ], [ 255, %sw.bb16.i ], [ 255, %sw.bb13.i ], [ 7, %if.then10.i ], [ 31, %if.else11.i ], [ 15, %if.then5.i ], [ 15, %if.else6.i ], [ 255, %sw.bb2.i ], [ 15, %if.else.i ], [ 15, %entry.if.end_crit_edge ]
  %conv = trunc i32 %reg.0.i to i8
  %call3 = call i32 @max8998_read_reg(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %conv7 = zext i8 %11 to i32
  %shr = lshr i32 %conv7, %shift.0.i
  %and = and i32 %shr, %mask.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_ldo_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %switch.tableidx = add i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 26
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_enable, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep19 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_enable.84, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load20 = load i32, ptr %switch.gep19, align 4
  %shl = shl nuw nsw i32 1, %switch.load20
  %conv3 = trunc i32 %shl to i8
  %call6 = tail call i32 @max8998_update_reg(ptr noundef %3, i8 noundef zeroext %switch.load, i8 noundef zeroext %conv3, i8 noundef zeroext %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_ldo_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %switch.tableidx = add i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 26
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_disable, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep17 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_disable.85, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load18 = load i32, ptr %switch.gep17, align 4
  %shl = shl nuw nsw i32 1, %switch.load18
  %conv3 = trunc i32 %shl to i8
  %call4 = tail call i32 @max8998_update_reg(ptr noundef %3, i8 noundef zeroext %switch.load, i8 noundef zeroext 0, i8 noundef zeroext %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_ldo_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !190
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %switch.tableidx = add i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 26
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_is_enabled, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep23 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_is_enabled.86, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load24 = load i32, ptr %switch.gep23, align 4
  %call3 = call i32 @max8998_read_reg(ptr noundef %3, i8 noundef zeroext %switch.load, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %switch.load24
  %and = and i32 %shl, %conv7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end6 ], [ %call3, %switch.lookup.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8998_get_voltage_register(ptr noundef %rdev, ptr nocapture noundef writeonly %_reg, ptr nocapture noundef writeonly %_shift, ptr nocapture noundef writeonly %_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb21
    i32 20, label %sw.bb20
    i32 4, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge33
    i32 6, label %entry.sw.bb2_crit_edge34
    i32 7, label %entry.sw.bb2_crit_edge35
    i32 3, label %if.else
    i32 2, label %entry.sw.epilog_crit_edge
    i32 9, label %if.else6
    i32 8, label %if.then5
    i32 12, label %entry.sw.bb13_crit_edge
    i32 13, label %entry.sw.bb13_crit_edge36
    i32 14, label %entry.sw.bb13_crit_edge37
    i32 15, label %entry.sw.bb13_crit_edge38
    i32 16, label %entry.sw.bb13_crit_edge39
    i32 17, label %entry.sw.bb13_crit_edge40
    i32 18, label %sw.bb16
    i32 19, label %sw.bb18
    i32 10, label %if.then10
    i32 11, label %if.else11
  ]

entry.sw.bb13_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge33, %entry.sw.bb2_crit_edge34, %entry.sw.bb2_crit_edge35
  %add = add nuw nsw i32 %call, 26
  br label %sw.epilog

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge36, %entry.sw.bb13_crit_edge37, %entry.sw.bb13_crit_edge38, %entry.sw.bb13_crit_edge39, %entry.sw.bb13_crit_edge40
  %add15 = add nuw nsw i32 %call, 24
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck1_idx = getelementptr inbounds %struct.max8998_data, ptr %call1, i32 0, i32 5
  %1 = ptrtoint ptr %buck1_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buck1_idx, align 4
  %add17 = add i32 %2, 21
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck2_idx = getelementptr inbounds %struct.max8998_data, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %buck2_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buck2_idx, align 4
  %add19 = add i32 %4, 25
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb13, %if.else11, %if.then10, %if.else6, %if.then5, %sw.bb2, %if.else, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 28, %sw.bb21 ], [ 27, %sw.bb20 ], [ %add19, %sw.bb18 ], [ %add17, %sw.bb16 ], [ %add15, %sw.bb13 ], [ 35, %if.then10 ], [ 35, %if.else11 ], [ 34, %if.then5 ], [ 34, %if.else6 ], [ %add, %sw.bb2 ], [ 29, %if.else ], [ 29, %entry.sw.epilog_crit_edge ]
  %shift.0 = phi i32 [ 0, %sw.bb21 ], [ 0, %sw.bb20 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 0, %sw.bb13 ], [ 5, %if.then10 ], [ 0, %if.else11 ], [ 4, %if.then5 ], [ 0, %if.else6 ], [ 0, %sw.bb2 ], [ 0, %if.else ], [ 4, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 255, %sw.bb21 ], [ 255, %sw.bb20 ], [ 255, %sw.bb18 ], [ 255, %sw.bb16 ], [ 255, %sw.bb13 ], [ 7, %if.then10 ], [ 31, %if.else11 ], [ 15, %if.then5 ], [ 15, %if.else6 ], [ 255, %sw.bb2 ], [ 15, %if.else ], [ 15, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reg.0, ptr %_reg, align 4
  %6 = ptrtoint ptr %_shift to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shift.0, ptr %_shift, align 4
  %7 = ptrtoint ptr %_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mask.0, ptr %_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_buck_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %pdata1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %i2c3 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c3, align 4
  %call4 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %call1.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb21.i
    i32 20, label %sw.bb20.i
    i32 4, label %entry.sw.bb2.i_crit_edge
    i32 5, label %entry.sw.bb2.i_crit_edge301
    i32 6, label %entry.sw.bb2.i_crit_edge302
    i32 7, label %entry.sw.bb2.i_crit_edge303
    i32 3, label %if.else.i
    i32 2, label %entry.if.end_crit_edge
    i32 9, label %if.else6.i
    i32 8, label %if.then5.i
    i32 12, label %entry.sw.bb13.i_crit_edge
    i32 13, label %entry.sw.bb13.i_crit_edge304
    i32 14, label %entry.sw.bb13.i_crit_edge305
    i32 15, label %entry.sw.bb13.i_crit_edge306
    i32 16, label %entry.sw.bb13.i_crit_edge307
    i32 17, label %entry.sw.bb13.i_crit_edge308
    i32 18, label %sw.bb16.i
    i32 19, label %sw.bb18.i
    i32 10, label %if.then10.i
    i32 11, label %if.else11.i
  ]

entry.sw.bb13.i_crit_edge308:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge307:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge306:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge305:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge304:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.sw.bb2.i_crit_edge303:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge302:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge301:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge301, %entry.sw.bb2.i_crit_edge302, %entry.sw.bb2.i_crit_edge303
  %add.i = add nuw nsw i32 %call.i, 26
  br label %if.end

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge304, %entry.sw.bb13.i_crit_edge305, %entry.sw.bb13.i_crit_edge306, %entry.sw.bb13.i_crit_edge307, %entry.sw.bb13.i_crit_edge308
  %add15.i = add nuw nsw i32 %call.i, 24
  br label %if.end

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck1_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 5
  %7 = ptrtoint ptr %buck1_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buck1_idx.i, align 4
  %add17.i = add i32 %8, 21
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buck2_idx.i = getelementptr inbounds %struct.max8998_data, ptr %call1.i, i32 0, i32 6
  %9 = ptrtoint ptr %buck2_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buck2_idx.i, align 4
  %add19.i = add i32 %10, 25
  br label %if.end

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.bb21.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb13.i, %if.else11.i, %if.then10.i, %if.else6.i, %if.then5.i, %sw.bb2.i, %if.else.i, %entry.if.end_crit_edge
  %reg.0.i = phi i32 [ 28, %sw.bb21.i ], [ 27, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add17.i, %sw.bb16.i ], [ %add15.i, %sw.bb13.i ], [ 35, %if.then10.i ], [ 35, %if.else11.i ], [ 34, %if.then5.i ], [ 34, %if.else6.i ], [ %add.i, %sw.bb2.i ], [ 29, %if.else.i ], [ 29, %entry.if.end_crit_edge ]
  %shift.0.i = phi i32 [ 0, %sw.bb21.i ], [ 0, %sw.bb20.i ], [ 0, %sw.bb18.i ], [ 0, %sw.bb16.i ], [ 0, %sw.bb13.i ], [ 5, %if.then10.i ], [ 0, %if.else11.i ], [ 4, %if.then5.i ], [ 0, %if.else6.i ], [ 0, %sw.bb2.i ], [ 0, %if.else.i ], [ 4, %entry.if.end_crit_edge ]
  %mask.0.i = phi i32 [ 255, %sw.bb21.i ], [ 255, %sw.bb20.i ], [ 255, %sw.bb18.i ], [ 255, %sw.bb16.i ], [ 255, %sw.bb13.i ], [ 7, %if.then10.i ], [ 31, %if.else11.i ], [ 15, %if.then5.i ], [ 15, %if.else6.i ], [ 255, %sw.bb2.i ], [ 15, %if.else.i ], [ 15, %entry.if.end_crit_edge ]
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %reg.0.i, ptr %reg, align 4
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shift.0.i, ptr %shift, align 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mask.0.i, ptr %mask, align 4
  %14 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call4, label %if.end.cleanup_crit_edge [
    i32 18, label %do.body
    i32 19, label %do.body102
    i32 20, label %if.end.sw.bb185_crit_edge
    i32 21, label %if.end.sw.bb185_crit_edge309
  ]

if.end.sw.bb185_crit_edge309:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb185

if.end.sw.bb185_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb185

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8998_set_voltage_buck_sel, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !191

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %buck1_vol = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %buck1_vol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buck1_vol, align 4
  %conv = zext i8 %18 to i32
  %arrayidx13 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %arrayidx16 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %22 to i32
  %arrayidx19 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug288, ptr noundef %16, ptr noundef nonnull @.str.79, i32 noundef %selector, i32 noundef %conv, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv20) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %buck1_set1 = getelementptr inbounds %struct.max8998_platform_data, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buck1_set1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %27 = icmp ult i32 %26, 2048
  br i1 %27, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %buck1_set2 = getelementptr inbounds %struct.max8998_platform_data, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buck1_set2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %29)
  %30 = icmp ult i32 %29, 2048
  br i1 %30, label %for.body.preheader, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.preheader:                               ; preds = %land.lhs.true
  %arrayidx29 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 0
  %31 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30, i32 %selector)
  %cmp31 = icmp eq i32 %conv30, %selector
  br i1 %cmp31, label %for.body.preheader.if.then33_crit_edge, label %for.inc

for.body.preheader.if.then33_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %for.inc.2.if.then33_crit_edge, %for.inc.1.if.then33_crit_edge, %for.inc.if.then33_crit_edge, %for.body.preheader.if.then33_crit_edge
  %j.0298.lcssa = phi i32 [ 0, %for.body.preheader.if.then33_crit_edge ], [ 1, %for.inc.if.then33_crit_edge ], [ 2, %for.inc.1.if.then33_crit_edge ], [ 3, %for.inc.2.if.then33_crit_edge ]
  %buck1_idx = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 5
  %33 = ptrtoint ptr %buck1_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %j.0298.lcssa, ptr %buck1_idx, align 4
  %34 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buck1_set1, align 4
  %36 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buck1_set2, align 4
  tail call fastcc void @buck1_gpio_set(i32 noundef %35, i32 noundef %37, i32 noundef %j.0298.lcssa)
  br label %do.body74

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx29.1 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx29.1, align 1
  %conv30.1 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.1, i32 %selector)
  %cmp31.1 = icmp eq i32 %conv30.1, %selector
  br i1 %cmp31.1, label %for.inc.if.then33_crit_edge, label %for.inc.1

for.inc.if.then33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

for.inc.1:                                        ; preds = %for.inc
  %arrayidx29.2 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx29.2, align 1
  %conv30.2 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.2, i32 %selector)
  %cmp31.2 = icmp eq i32 %conv30.2, %selector
  br i1 %cmp31.2, label %for.inc.1.if.then33_crit_edge, label %for.inc.2

for.inc.1.if.then33_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx29.3 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx29.3, align 1
  %conv30.3 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.3, i32 %selector)
  %cmp31.3 = icmp eq i32 %conv30.3, %selector
  br i1 %cmp31.3, label %for.inc.2.if.then33_crit_edge, label %for.inc.3

for.inc.2.if.then33_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

for.inc.3:                                        ; preds = %for.inc.2
  %buck_voltage_lock = getelementptr inbounds %struct.max8998_platform_data, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %buck_voltage_lock to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buck_voltage_lock, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool37.not = icmp eq i8 %45, 0
  br i1 %tobool37.not, label %if.end39, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %for.inc.3
  %46 = load i8, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  %47 = and i8 %46, 1
  %48 = or i8 %47, 2
  %add = zext i8 %48 to i32
  %buck1_idx41 = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 5
  %49 = ptrtoint ptr %buck1_idx41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %buck1_idx41, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8998_set_voltage_buck_sel, %do.end61)) #7
          to label %if.then56 [label %do.end61], !srcloc !191

if.then56:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %52 = ptrtoint ptr %buck1_idx41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buck1_idx41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug289, ptr noundef %51, ptr noundef nonnull @.str.80, i32 noundef %53) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %if.end39
  %conv62 = trunc i32 %selector to i8
  %54 = ptrtoint ptr %buck1_idx41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buck1_idx41, align 4
  %arrayidx65 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 3, i32 %55
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv62, ptr %arrayidx65, align 1
  %call66 = call fastcc i32 @max8998_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  %57 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg, align 4
  %conv67 = trunc i32 %58 to i8
  %call69 = tail call i32 @max8998_write_reg(ptr noundef %5, i8 noundef zeroext %conv67, i8 noundef zeroext %conv62) #7
  %59 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buck1_set1, align 4
  %61 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buck1_set2, align 4
  %63 = ptrtoint ptr %buck1_idx41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buck1_idx41, align 4
  tail call fastcc void @buck1_gpio_set(i32 noundef %60, i32 noundef %62, i32 noundef %64)
  %65 = load i8, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  %inc73 = add i8 %65, 1
  store i8 %inc73, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  br label %do.body74

do.body74:                                        ; preds = %do.end61, %if.then33
  %ret.0 = phi i32 [ 0, %if.then33 ], [ %call69, %do.end61 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8998_set_voltage_buck_sel, %cleanup)) #7
          to label %if.then88 [label %cleanup], !srcloc !191

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 2
  %68 = ptrtoint ptr %buck1_set1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buck1_set1, align 4
  %call.i280 = tail call ptr @gpio_to_desc(i32 noundef %69) #7
  %call1.i281 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i280) #7
  %70 = ptrtoint ptr %buck1_set2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buck1_set2, align 4
  %call.i282 = tail call ptr @gpio_to_desc(i32 noundef %71) #7
  %call1.i283 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i282) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug290, ptr noundef %67, ptr noundef nonnull @.str.81, ptr noundef %name, i32 noundef %call1.i281, i32 noundef %call1.i283) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg, align 4
  %conv97 = trunc i32 %73 to i8
  %conv98 = trunc i32 %selector to i8
  %call99 = tail call i32 @max8998_write_reg(ptr noundef %5, i8 noundef zeroext %conv97, i8 noundef zeroext %conv98) #7
  br label %cleanup

do.body102:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8998_set_voltage_buck_sel, %do.end125)) #7
          to label %if.then116 [label %do.end125], !srcloc !191

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call, align 4
  %buck2_vol = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 4
  %76 = ptrtoint ptr %buck2_vol to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %buck2_vol, align 4
  %conv119 = zext i8 %77 to i32
  %arrayidx121 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug291, ptr noundef %75, ptr noundef nonnull @.str.82, i32 noundef %selector, i32 noundef %conv119, i32 noundef %conv122) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then116, %do.body102
  %buck2_set3 = getelementptr inbounds %struct.max8998_platform_data, ptr %3, i32 0, i32 10
  %80 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buck2_set3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %81)
  %82 = icmp ult i32 %81, 2048
  br i1 %82, label %for.body131.preheader, label %if.else180

for.body131.preheader:                            ; preds = %do.end125
  %arrayidx133 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 4, i32 0
  %83 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv134, i32 %selector)
  %cmp135 = icmp eq i32 %conv134, %selector
  br i1 %cmp135, label %for.body131.preheader.if.then137_crit_edge, label %for.inc140

for.body131.preheader.if.then137_crit_edge:       ; preds = %for.body131.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

if.then137:                                       ; preds = %for.inc140.if.then137_crit_edge, %for.body131.preheader.if.then137_crit_edge
  %j.1297.lcssa = phi i32 [ 0, %for.body131.preheader.if.then137_crit_edge ], [ 1, %for.inc140.if.then137_crit_edge ]
  %buck2_idx = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 6
  %85 = ptrtoint ptr %buck2_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %j.1297.lcssa, ptr %buck2_idx, align 4
  br label %do.body157

for.inc140:                                       ; preds = %for.body131.preheader
  %arrayidx133.1 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx133.1, align 1
  %conv134.1 = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv134.1, i32 %selector)
  %cmp135.1 = icmp eq i32 %conv134.1, %selector
  br i1 %cmp135.1, label %for.inc140.if.then137_crit_edge, label %for.inc140.1

for.inc140.if.then137_crit_edge:                  ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

for.inc140.1:                                     ; preds = %for.inc140
  %buck_voltage_lock143 = getelementptr inbounds %struct.max8998_platform_data, ptr %3, i32 0, i32 4
  %88 = ptrtoint ptr %buck_voltage_lock143 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %buck_voltage_lock143, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool144.not = icmp eq i8 %89, 0
  br i1 %tobool144.not, label %if.end146, label %for.inc140.1.cleanup_crit_edge

for.inc140.1.cleanup_crit_edge:                   ; preds = %for.inc140.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end146:                                        ; preds = %for.inc140.1
  call void @__sanitizer_cov_trace_pc() #9
  %call147 = call fastcc i32 @max8998_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  %90 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg, align 4
  %conv148 = trunc i32 %91 to i8
  %conv149 = trunc i32 %selector to i8
  %call150 = tail call i32 @max8998_write_reg(ptr noundef %5, i8 noundef zeroext %conv148, i8 noundef zeroext %conv149) #7
  %buck2_idx153 = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 6
  %92 = ptrtoint ptr %buck2_idx153 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buck2_idx153, align 4
  %arrayidx154 = getelementptr %struct.max8998_data, ptr %call, i32 0, i32 4, i32 %93
  %94 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv149, ptr %arrayidx154, align 1
  %95 = load i32, ptr %buck2_idx153, align 4
  %and.i284 = and i32 %95, 1
  br label %do.body157

do.body157:                                       ; preds = %if.end146, %if.then137
  %j.1297.lcssa.sink = phi i32 [ %j.1297.lcssa, %if.then137 ], [ %and.i284, %if.end146 ]
  %ret.1 = phi i32 [ 0, %if.then137 ], [ %call150, %if.end146 ]
  %96 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.sink = load i32, ptr %buck2_set3, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %.sink) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %j.1297.lcssa.sink) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8998_set_voltage_buck_sel, %cleanup)) #7
          to label %if.then171 [label %cleanup], !srcloc !191

if.then171:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call, align 4
  %name173 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 2
  %99 = ptrtoint ptr %buck2_set3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buck2_set3, align 4
  %call.i286 = tail call ptr @gpio_to_desc(i32 noundef %100) #7
  %call1.i287 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i286) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug292, ptr noundef %98, ptr noundef nonnull @.str.83, ptr noundef %name173, i32 noundef %call1.i287) #7
  br label %cleanup

if.else180:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg, align 4
  %conv181 = trunc i32 %102 to i8
  %conv182 = trunc i32 %selector to i8
  %call183 = tail call i32 @max8998_write_reg(ptr noundef %5, i8 noundef zeroext %conv181, i8 noundef zeroext %conv182) #7
  br label %cleanup

sw.bb185:                                         ; preds = %if.end.sw.bb185_crit_edge, %if.end.sw.bb185_crit_edge309
  %103 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg, align 4
  %conv186 = trunc i32 %104 to i8
  %105 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %shift, align 4
  %shl = shl i32 %selector, %106
  %conv187 = trunc i32 %shl to i8
  %107 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mask, align 4
  %shl188 = shl i32 %108, %106
  %conv189 = trunc i32 %shl188 to i8
  %call190 = tail call i32 @max8998_update_reg(ptr noundef %5, i8 noundef zeroext %conv186, i8 noundef zeroext %conv187, i8 noundef zeroext %conv189) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb185, %if.else180, %if.then171, %do.body157, %for.inc140.1.cleanup_crit_edge, %if.else, %if.then88, %do.body74, %for.inc.3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc140.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call190, %sw.bb185 ], [ %ret.1, %if.then171 ], [ %call183, %if.else180 ], [ %ret.0, %if.then88 ], [ %call99, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %do.body74 ], [ %ret.1, %do.body157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_buck_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %val, align 1
  %5 = add i32 %call2, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %5)
  %6 = icmp ult i32 %5, -4
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @max8998_read_reg(ptr noundef %3, i8 noundef zeroext 20, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iodev, align 4
  %type = getelementptr inbounds %struct.max8998_dev, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %sub = sub i32 %new_selector, %old_selector
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uV_step, align 4
  %mul = mul i32 %17, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %18 = icmp ult i32 %mul, 1000
  br i1 %18, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %mul, 1000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %21 = and i8 %20, 15
  %narrow = add nuw nsw i8 %21, 1
  %add = zext i8 %narrow to i32
  %add17 = add nsw i32 %div, -1
  %sub18 = add nuw nsw i32 %add17, %add
  %div2235 = udiv i32 %sub18, %add
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div2235, %if.then14 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @buck1_gpio_set(i32 noundef %gpio1, i32 noundef %gpio2, i32 noundef %v) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %v, 1
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %gpio1) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %and) #7
  %shr3 = lshr i32 %v, 1
  %and1 = and i32 %shr3, 1
  %call.i4 = tail call ptr @gpio_to_desc(i32 noundef %gpio2) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4, i32 noundef %and1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %n_current_limits = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_current_limits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_table = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %curr_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %curr_table, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %sub = add i32 %7, -1
  %arrayidx = getelementptr i32, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp8 = icmp ugt i32 %11, %13
  br i1 %cmp8, label %for.cond.preheader, label %if.then3.for.body21_crit_edge

if.then3.for.body21_crit_edge:                    ; preds = %if.then3
  br label %for.body21

for.cond.preheader:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp1290 = icmp sgt i32 %sub, -1
  br i1 %cmp1290, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.091 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %sub, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %9, i32 %i.091
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %min_uA)
  %cmp14.not = icmp ult i32 %15, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %max_uA)
  %cmp16.not = icmp ugt i32 %15, %max_uA
  %or.cond = or i1 %cmp14.not, %cmp16.not
  br i1 %or.cond, label %for.inc, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.091, -1
  %cmp12 = icmp sgt i32 %i.091, 0
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body21:                                       ; preds = %for.inc29.for.body21_crit_edge, %if.then3.for.body21_crit_edge
  %i.189 = phi i32 [ %inc, %for.inc29.for.body21_crit_edge ], [ 0, %if.then3.for.body21_crit_edge ]
  %arrayidx22 = getelementptr i32, ptr %9, i32 %i.189
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %min_uA)
  %cmp23.not = icmp ult i32 %17, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %max_uA)
  %cmp26.not = icmp ugt i32 %17, %max_uA
  %or.cond78 = or i1 %cmp23.not, %cmp26.not
  br i1 %or.cond78, label %for.inc29, label %if.end32

for.inc29:                                        ; preds = %for.body21
  %inc = add nuw i32 %i.189, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body21_crit_edge

for.inc29.for.body21_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.189)
  %cmp33 = icmp slt i32 %i.189, 0
  br i1 %cmp33, label %if.end32.cleanup_crit_edge, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %sel.184 = phi i32 [ %i.189, %if.end32.if.end35_crit_edge ], [ %i.091, %for.body.if.end35_crit_edge ]
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 31
  %18 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csel_mask, align 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true), !range !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %iszero = icmp eq i32 %19, 0
  %sub37 = select i1 %iszero, i32 -1, i32 %20
  %shl = shl i32 %sel.184, %sub37
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 30
  %21 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %csel_reg, align 4
  %conv = trunc i32 %22 to i8
  %conv39 = trunc i32 %shl to i8
  %conv42 = trunc i32 %19 to i8
  %call43 = tail call i32 @max8998_update_reg(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv39, i8 noundef zeroext %conv42) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end32.cleanup_crit_edge, %for.inc29.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.inc29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %iodev = getelementptr inbounds %struct.max8998_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !190
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 30
  %7 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csel_reg, align 4
  %conv = trunc i32 %8 to i8
  %call2 = call i32 @max8998_read_reg(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 31
  %11 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %csel_mask, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = trunc i32 %12 to i8
  %conv6 = and i8 %14, %15
  %16 = call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %iszero = icmp eq i32 %12, 0
  %sub = select i1 %iszero, i32 -1, i32 %16
  %conv9 = zext i8 %conv6 to i32
  %shr = lshr i32 %conv9, %sub
  %curr_table = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 24
  %17 = ptrtoint ptr %curr_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curr_table, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %n_current_limits = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 9
  %19 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_current_limits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %20)
  %cmp15.not = icmp ult i32 %shr, %20
  br i1 %cmp15.not, label %if.end18, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i32, ptr %18, i32 %shr
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end18 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_ldo_is_enabled_inverted(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @max8998_ldo_is_enabled(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_max8998__293_816_max8998_pmic_init4, !1, !"__initcall__kmod_max8998__293_816_max8998_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8998.c", i32 816, i32 1}
!2 = !{ptr @__exitcall_max8998_pmic_cleanup, !3, !"__exitcall_max8998_pmic_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8998.c", i32 822, i32 1}
!4 = !{ptr @__UNIQUE_ID_description294, !5, !"__UNIQUE_ID_description294", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8998.c", i32 824, i32 1}
!6 = !{ptr @__UNIQUE_ID_author295, !7, !"__UNIQUE_ID_author295", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max8998.c", i32 825, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max8998.c", i32 826, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8998.c", i32 806, i32 11}
!13 = !{ptr @max8998_pmic_driver, !14, !"max8998_pmic_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8998.c", i32 804, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8998.c", i32 673, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max8998_pmic_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max8998_pmic_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max8998.c", i32 706, i32 4}
!25 = !{ptr @max8998_pmic_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8998_pmic_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max8998.c", i32 713, i32 4}
!29 = !{ptr @max8998_pmic_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max8998_pmic_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max8998.c", i32 719, i32 35}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/max8998.c", i32 724, i32 35}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/max8998.c", i32 749, i32 4}
!37 = !{ptr @max8998_pmic_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max8998_pmic_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max8998.c", i32 754, i32 35}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/max8998.c", i32 788, i32 4}
!43 = !{ptr @max8998_pmic_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max8998_pmic_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/max8998.c", i32 581, i32 48}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/max8998.c", i32 583, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @max8998_pmic_dt_parse_pdata._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @max8998_pmic_dt_parse_pdata._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max8998.c", i32 621, i32 32}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max8998.c", i32 625, i32 6}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max8998.c", i32 629, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @max8998_pmic_dt_parse_pdata._entry.26, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @max8998_pmic_dt_parse_pdata._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max8998.c", i32 633, i32 6}
!63 = !{ptr @max8998_pmic_dt_parse_pdata._entry.31, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max8998.c", i32 637, i32 3}
!65 = !{ptr @max8998_pmic_dt_parse_pdata._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max8998.c", i32 641, i32 6}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/max8998.c", i32 645, i32 3}
!70 = !{ptr @max8998_pmic_dt_parse_pdata._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @max8998_pmic_dt_parse_pdata._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/max8998.c", i32 650, i32 6}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/max8998.c", i32 654, i32 3}
!76 = !{ptr @max8998_pmic_dt_parse_pdata._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @max8998_pmic_dt_parse_pdata._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/max8998.c", i32 548, i32 36}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/max8998.c", i32 550, i32 3}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/max8998.c", i32 557, i32 3}
!87 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/max8998.c", i32 562, i32 36}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/max8998.c", i32 564, i32 3}
!93 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max8998_pmic_dt_parse_dvs_gpio._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/max8998.c", i32 513, i32 2}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/max8998.c", i32 514, i32 2}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/max8998.c", i32 515, i32 2}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/max8998.c", i32 516, i32 2}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/max8998.c", i32 517, i32 2}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/max8998.c", i32 518, i32 2}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/max8998.c", i32 519, i32 2}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/max8998.c", i32 520, i32 2}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/max8998.c", i32 521, i32 2}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/max8998.c", i32 522, i32 2}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/max8998.c", i32 523, i32 2}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/max8998.c", i32 524, i32 2}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/max8998.c", i32 525, i32 2}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/max8998.c", i32 526, i32 2}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/max8998.c", i32 527, i32 2}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/max8998.c", i32 528, i32 2}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/max8998.c", i32 529, i32 2}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/regulator/max8998.c", i32 530, i32 2}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/max8998.c", i32 531, i32 2}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/max8998.c", i32 532, i32 2}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/max8998.c", i32 533, i32 2}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/max8998.c", i32 534, i32 2}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/max8998.c", i32 535, i32 2}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/regulator/max8998.c", i32 536, i32 2}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/max8998.c", i32 537, i32 2}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/max8998.c", i32 538, i32 2}
!147 = !{ptr @regulators, !148, !"regulators", i1 false, i1 false}
!148 = !{!"../drivers/regulator/max8998.c", i32 512, i32 36}
!149 = !{ptr @max8998_ldo_ops, !150, !"max8998_ldo_ops", i1 false, i1 false}
!150 = !{!"../drivers/regulator/max8998.c", i32 442, i32 35}
!151 = !{ptr @max8998_buck_ops, !152, !"max8998_buck_ops", i1 false, i1 false}
!152 = !{!"../drivers/regulator/max8998.c", i32 452, i32 35}
!153 = !{ptr @max8998_set_voltage_buck_sel.buck1_last_val, !154, !"buck1_last_val", i1 false, i1 false}
!154 = !{!"../drivers/regulator/max8998.c", i32 249, i32 12}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/max8998.c", i32 257, i32 3}
!157 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug288, !156, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/max8998.c", i32 282, i32 4}
!162 = !{ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug289, !161, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/max8998.c", i32 293, i32 4}
!165 = !{ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug290, !164, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/max8998.c", i32 303, i32 3}
!168 = !{ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug291, !167, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/max8998.c", i32 327, i32 4}
!171 = !{ptr @max8998_set_voltage_buck_sel.__UNIQUE_ID_ddebug292, !170, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!172 = !{ptr @max8998_others_ops, !173, !"max8998_others_ops", i1 false, i1 false}
!173 = !{!"../drivers/regulator/max8998.c", i32 472, i32 35}
!174 = !{ptr @max8998_charger_ops, !175, !"max8998_charger_ops", i1 false, i1 false}
!175 = !{!"../drivers/regulator/max8998.c", i32 463, i32 35}
!176 = !{ptr @charger_current_table, !177, !"charger_current_table", i1 false, i1 false}
!177 = !{!"../drivers/regulator/max8998.c", i32 36, i32 27}
!178 = !{ptr @max8998_pmic_id, !179, !"max8998_pmic_id", i1 false, i1 false}
!179 = !{!"../drivers/regulator/max8998.c", i32 797, i32 40}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"auto-init"}
!191 = !{i64 2148973899, i64 2148973904, i64 2148973917, i64 2148973961, i64 2148973995, i64 2148974016}
!192 = !{i8 0, i8 2}
!193 = !{i32 0, i32 33}
