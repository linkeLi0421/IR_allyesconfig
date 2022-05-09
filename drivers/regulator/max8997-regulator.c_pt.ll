; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8997-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8997-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.voltage_map_desc = type { i32, i32, i32 }
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_regulator_data = type { i32, ptr, ptr }
%struct.max8997_data = type { ptr, ptr, i32, i32, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [3 x i32], i32, i8, [34 x i8] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_max8997_regulator__290_1214_max8997_pmic_init4 = internal global ptr @max8997_pmic_init, section ".initcall4.init", align 4
@max8997_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8997_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_pmic_cleanup = internal global ptr @max8997_pmic_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"max8997_regulator.description=MAXIM 8997/8966 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [65 x i8] c"max8997_regulator.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"max8997_regulator.file=drivers/regulator/max8997-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [30 x i8] c"max8997_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997-pmic\00", [19 x i8] zeroinitializer }, align 32
@max8997_pmic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No platform init data supplied.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8997_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/max8997-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry_ptr = internal global ptr @max8997_pmic_probe._entry, section ".printk_index", align 4
@buck1245_voltage_map_desc = internal constant { %struct.voltage_map_desc, [20 x i8] } { %struct.voltage_map_desc { i32 650000, i32 2225000, i32 25000 }, [20 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO NOT VALID\0A\00", [16 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry_ptr.8 = internal global ptr @max8997_pmic_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MAX8997 SET1\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MAX8997 SET2\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MAX8997 SET3\00", [19 x i8] zeroinitializer }, align 32
@reg_voltage_map = internal constant { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck37_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr null, ptr @buck37_voltage_map_desc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @charger_current_map_desc, ptr @topoff_current_map_desc], [56 x i8] zeroinitializer }, align 32
@regulators = internal global { [34 x %struct.regulator_desc], [2072 x i8] } { [34 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.64, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.70, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.72, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.74, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.76, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.77, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.78, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 0, i32 0, ptr @max8997_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.79, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @max8997_safeout_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.80, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @max8997_fixedstate_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.81, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @max8997_charger_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.82, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 0, i32 0, ptr @max8997_charger_fixedstate_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [2072 x i8] zeroinitializer }, align 32
@safeoutvolt = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4850000, i32 4900000, i32 4950000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator init failed for %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_pmic_probe._entry_ptr.14 = internal global ptr @max8997_pmic_probe._entry.12, section ".printk_index", align 4
@max8997_pmic_dt_parse_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not find pmic sub-node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max8997_pmic_dt_parse_pdata\00", [36 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr = internal global ptr @max8997_pmic_dt_parse_pdata._entry, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find regulators sub-node\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.20 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.18, section ".printk_index", align 4
@max8997_pmic_dt_parse_pdata._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.3, i32 933, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"don't know how to configure regulator %pOFn\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.24 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max8997,pmic-buck1-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max8997,pmic-buck2-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max8997,pmic-buck5-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"max8997,pmic-buck125-default-dvs-idx\00", [59 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.3, i32 968, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid value for default dvs index, using 0 instead\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.32 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.29, section ".printk_index", align 4
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"max8997,pmic-ignore-gpiodvs-side-effect\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997,pmic-buck1-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck1 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.37 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997,pmic-buck2-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.3, i32 989, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck2 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.41 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997,pmic-buck5-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.16, ptr @.str.3, i32 996, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck5 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_pdata._entry_ptr.45 = internal global ptr @max8997_pmic_dt_parse_pdata._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997,pmic-buck125-dvs-gpios\00", [33 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_dvs_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 886, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpio[%d]: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max8997_pmic_dt_parse_dvs_gpio\00", [33 x i8] zeroinitializer }, align 32
@max8997_pmic_dt_parse_dvs_gpio._entry_ptr = internal global ptr @max8997_pmic_dt_parse_dvs_gpio._entry, section ".printk_index", align 4
@ldo_voltage_map_desc = internal constant { %struct.voltage_map_desc, [20 x i8] } { %struct.voltage_map_desc { i32 800000, i32 3950000, i32 50000 }, [20 x i8] zeroinitializer }, align 32
@buck37_voltage_map_desc = internal constant { %struct.voltage_map_desc, [20 x i8] } { %struct.voltage_map_desc { i32 750000, i32 3900000, i32 50000 }, [20 x i8] zeroinitializer }, align 32
@charger_current_map_desc = internal constant { %struct.voltage_map_desc, [20 x i8] } { %struct.voltage_map_desc { i32 200000, i32 950000, i32 50000 }, [20 x i8] zeroinitializer }, align 32
@topoff_current_map_desc = internal constant { %struct.voltage_map_desc, [20 x i8] } { %struct.voltage_map_desc { i32 50000, i32 200000, i32 10000 }, [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@max8997_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @max8997_list_voltage, ptr @max8997_set_voltage_ldobuck, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@max8997_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @max8997_list_voltage, ptr @max8997_set_voltage_buck, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_voltage_buck_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@max8997_fixedvolt_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @max8997_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EN32KHZ_AP\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EN32KHZ_CP\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENVICHG\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT1\00", [22 x i8] zeroinitializer }, align 32
@max8997_safeout_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @max8997_set_voltage_safeout_sel, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ESAFEOUT2\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CHARGER_CV\00", [21 x i8] zeroinitializer }, align 32
@max8997_fixedstate_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @max8997_list_voltage_charger_cv, ptr @max8997_set_voltage_charger_cv, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHARGER\00", [24 x i8] zeroinitializer }, align 32
@max8997_charger_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_current_limit, ptr @max8997_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CHARGER_TOPOFF\00", [17 x i8] zeroinitializer }, align 32
@max8997_charger_fixedstate_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_current_limit, ptr @max8997_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max8997_reg_disable_suspend.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.83, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 -75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8997_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max8997_reg_disable_suspend\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Conditional Power-Off for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_reg_disable_suspend.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.83, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 0, i8 -74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Full Power-Off for %s (%xh -> %xh)\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_set_voltage_buck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 676, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"MAX8997 GPIO-DVS Side Effect Warning: GPIO SET:  %d -> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max8997_set_voltage_buck\00", [39 x i8] zeroinitializer }, align 32
@max8997_set_voltage_buck._entry_ptr = internal global ptr @max8997_set_voltage_buck._entry, section ".printk_index", align 4
@switch.table.max8997_list_voltage_charger_cv = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 4200000, i32 4000000, i32 4020000, i32 4040000, i32 4060000, i32 4080000, i32 4100000, i32 4120000, i32 4140000, i32 4160000, i32 4180000, i32 4200000, i32 4220000, i32 4240000, i32 4260000, i32 4350000], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.89 = internal global [29 x i64] [i64 27, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25, i64 32, i64 33]
@__sancov_gen_cov_switch_values.90 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32]
@__sancov_gen_cov_switch_values.91 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32]
@__sancov_gen_cov_switch_values.92 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32]
@__sancov_gen_cov_switch_values.93 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 18]
@__sancov_gen_cov_switch_values.95 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25, i64 29, i64 30, i64 31, i64 32, i64 33]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 20, i64 23]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 20, i64 23]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 20, i64 22, i64 23]
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c"max8997_pmic_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1202, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1204, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"max8997_pmic_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1196, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1022, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"buck1245_voltage_map_desc\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 71, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1122, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1127, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1132, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1137, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"reg_voltage_map\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 88, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 837, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"safeoutvolt\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 42, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1187, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 904, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 908, i32 48 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 910, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 932, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 946, i32 31 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 949, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 952, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 962, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 968, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 973, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 980, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 982, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 987, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 989, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 994, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 996, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 884, i32 6 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 886, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"ldo_voltage_map_desc\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 67, i32 38 }
@___asan_gen_.252 = private unnamed_addr constant [24 x i8] c"buck37_voltage_map_desc\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 75, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"charger_current_map_desc\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 80, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"topoff_current_map_desc\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 84, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 838, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"max8997_ldo_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 735, i32 35 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 839, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 840, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 841, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 842, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 843, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 844, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 845, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 846, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 847, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 848, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 849, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 850, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 851, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 852, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 853, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 854, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 855, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 856, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 857, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"max8997_buck_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 745, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 858, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 859, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 860, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 861, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 862, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [22 x i8] c"max8997_fixedvolt_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 756, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 863, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 864, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 865, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 866, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 867, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"max8997_safeout_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 764, i32 35 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 868, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 869, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [23 x i8] c"max8997_fixedstate_ops\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 774, i32 35 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 870, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c"max8997_charger_ops\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 808, i32 35 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 871, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [31 x i8] c"max8997_charger_fixedstate_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 816, i32 35 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 724, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 729, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private constant [41 x i8] c"../drivers/regulator/max8997-regulator.c\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 674, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [45 x i8] c"switch.table.max8997_list_voltage_charger_cv\00", align 1
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_max8997_pmic_cleanup, ptr @__initcall__kmod_max8997_regulator__290_1214_max8997_pmic_init4, ptr @max8997_pmic_cleanup, ptr @max8997_pmic_dt_parse_dvs_gpio._entry, ptr @max8997_pmic_dt_parse_dvs_gpio._entry_ptr, ptr @max8997_pmic_dt_parse_pdata._entry, ptr @max8997_pmic_dt_parse_pdata._entry.18, ptr @max8997_pmic_dt_parse_pdata._entry.21, ptr @max8997_pmic_dt_parse_pdata._entry.29, ptr @max8997_pmic_dt_parse_pdata._entry.35, ptr @max8997_pmic_dt_parse_pdata._entry.39, ptr @max8997_pmic_dt_parse_pdata._entry.43, ptr @max8997_pmic_dt_parse_pdata._entry_ptr, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.20, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.24, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.32, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.37, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.41, ptr @max8997_pmic_dt_parse_pdata._entry_ptr.45, ptr @max8997_pmic_probe._entry, ptr @max8997_pmic_probe._entry.12, ptr @max8997_pmic_probe._entry.6, ptr @max8997_pmic_probe._entry_ptr, ptr @max8997_pmic_probe._entry_ptr.14, ptr @max8997_pmic_probe._entry_ptr.8, ptr @max8997_set_voltage_buck._entry, ptr @max8997_set_voltage_buck._entry_ptr, ptr @max8997_pmic_driver, ptr @.str, ptr @max8997_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @buck1245_voltage_map_desc, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @reg_voltage_map, ptr @regulators, ptr @safeoutvolt, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @ldo_voltage_map_desc, ptr @buck37_voltage_map_desc, ptr @charger_current_map_desc, ptr @topoff_current_map_desc, ptr @.str.49, ptr @max8997_ldo_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @max8997_buck_ops, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @max8997_fixedvolt_ops, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @max8997_safeout_ops, ptr @.str.79, ptr @.str.80, ptr @max8997_fixedstate_ops, ptr @.str.81, ptr @max8997_charger_ops, ptr @.str.82, ptr @max8997_charger_fixedstate_ops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @switch.table.max8997_list_voltage_charger_cv], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1245_voltage_map_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_voltage_map to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 8296, i32 10368, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safeoutvolt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_pdata._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_pmic_dt_parse_dvs_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_voltage_map_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck37_voltage_map_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_current_map_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topoff_current_map_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_fixedvolt_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_safeout_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_fixedstate_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_charger_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_charger_fixedstate_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_set_voltage_buck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8997_list_voltage_charger_cv to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_pmic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_pmic_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_pmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %pdata1 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %6 = call ptr @memset(ptr %config, i32 0, i32 24)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup277

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.end.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.17) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup277

if.end10.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end10.i.of_get_child_count.exit.i_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.of_get_child_count.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end10.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end10.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end10.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %num_regulators.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num.0.lcssa.i.i, ptr %num_regulators.i, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 12) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %of_get_child_count.exit.i.if.then16.i_crit_edge, label %devm_kcalloc.exit.i, !prof !215

of_get_child_count.exit.i.if.then16.i_crit_edge:  ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #6
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.if.then16.i_crit_edge, label %if.end17.i

devm_kcalloc.exit.i.if.then16.i_crit_edge:        ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.then16.i:                                      ; preds = %devm_kcalloc.exit.i.if.then16.i_crit_edge, %of_get_child_count.exit.i.if.then16.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  br label %cleanup277

if.end17.i:                                       ; preds = %devm_kcalloc.exit.i
  %regulators.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regulators.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i.i, ptr %regulators.i, align 4
  %call18.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef null) #6
  %cmp.not185.i = icmp eq ptr %call18.i, null
  br i1 %cmp.not185.i, label %if.end17.i.for.end37.i_crit_edge, label %if.end17.i.for.cond19.preheader.i_crit_edge

if.end17.i.for.cond19.preheader.i_crit_edge:      ; preds = %if.end17.i
  br label %for.cond19.preheader.i

if.end17.i.for.end37.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37.i

for.cond19.preheader.i:                           ; preds = %for.inc35.i.for.cond19.preheader.i_crit_edge, %if.end17.i.for.cond19.preheader.i_crit_edge
  %rdata.0189.i = phi ptr [ %rdata.1.i, %for.inc35.i.for.cond19.preheader.i_crit_edge ], [ %call5.i.i.i, %if.end17.i.for.cond19.preheader.i_crit_edge ]
  %reg_np.0186.i = phi ptr [ %call36.i, %for.inc35.i.for.cond19.preheader.i_crit_edge ], [ %call18.i, %if.end17.i.for.cond19.preheader.i_crit_edge ]
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.inc.i.for.body21.i_crit_edge, %for.cond19.preheader.i
  %i.0184.i = phi i32 [ 0, %for.cond19.preheader.i ], [ %inc.i, %for.inc.i.for.body21.i_crit_edge ]
  %arrayidx.i = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.0184.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call22.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %reg_np.0186.i, ptr noundef %17) #6
  br i1 %call22.i, label %if.end31.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body21.i
  %inc.i = add nuw nsw i32 %i.0184.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 34
  br i1 %exitcond.not.i, label %do.end29.i, label %for.inc.i.for.body21.i_crit_edge

for.inc.i.for.body21.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

do.end29.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull %reg_np.0186.i) #9
  br label %for.inc35.i

if.end31.i:                                       ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %rdata.0189.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0184.i, ptr %rdata.0189.i, align 4
  %call34.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef nonnull %reg_np.0186.i, ptr noundef %arrayidx.i) #6
  %initdata.i = getelementptr inbounds %struct.max8997_regulator_data, ptr %rdata.0189.i, i32 0, i32 1
  %19 = ptrtoint ptr %initdata.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call34.i, ptr %initdata.i, align 4
  %reg_node.i = getelementptr inbounds %struct.max8997_regulator_data, ptr %rdata.0189.i, i32 0, i32 2
  %20 = ptrtoint ptr %reg_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg_np.0186.i, ptr %reg_node.i, align 4
  %incdec.ptr.i = getelementptr %struct.max8997_regulator_data, ptr %rdata.0189.i, i32 1
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %if.end31.i, %do.end29.i
  %rdata.1.i = phi ptr [ %rdata.0189.i, %do.end29.i ], [ %incdec.ptr.i, %if.end31.i ]
  %call36.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef nonnull %reg_np.0186.i) #6
  %cmp.not.i = icmp eq ptr %call36.i, null
  br i1 %cmp.not.i, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.cond19.preheader.i_crit_edge

for.inc35.i.for.cond19.preheader.i_crit_edge:     ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %if.end17.i.for.end37.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  %call38.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %for.end37.i.if.end41.i_crit_edge, label %if.then40.i

for.end37.i.if.end41.i_crit_edge:                 ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then40.i:                                      ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck1_gpiodvs.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %buck1_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %buck1_gpiodvs.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %for.end37.i.if.end41.i_crit_edge
  %call42.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef null) #6
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %if.end41.i.if.end45.i_crit_edge, label %if.then44.i

if.end41.i.if.end45.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck2_gpiodvs.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 9
  %22 = ptrtoint ptr %buck2_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %buck2_gpiodvs.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end45.i_crit_edge
  %call46.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef null) #6
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end49.i_crit_edge, label %if.then48.i

if.end45.i.if.end49.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck5_gpiodvs.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 11
  %23 = ptrtoint ptr %buck5_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %buck5_gpiodvs.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end49.i_crit_edge
  %buck1_gpiodvs50.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %buck1_gpiodvs50.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buck1_gpiodvs50.i, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool51.not.i = icmp eq i8 %25, 0
  br i1 %tobool51.not.i, label %lor.lhs.false.i, label %if.end49.i.if.then57.i_crit_edge

if.end49.i.if.then57.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %buck2_gpiodvs52.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %buck2_gpiodvs52.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buck2_gpiodvs52.i, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not.i = icmp eq i8 %27, 0
  br i1 %tobool53.not.i, label %lor.lhs.false54.i, label %lor.lhs.false.i.if.then57.i_crit_edge

lor.lhs.false.i.if.then57.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

lor.lhs.false54.i:                                ; preds = %lor.lhs.false.i
  %buck5_gpiodvs55.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %buck5_gpiodvs55.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buck5_gpiodvs55.i, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool56.not.i = icmp eq i8 %29, 0
  br i1 %tobool56.not.i, label %lor.lhs.false54.i.if.end80.i_crit_edge, label %lor.lhs.false54.i.if.then57.i_crit_edge

lor.lhs.false54.i.if.then57.i_crit_edge:          ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

lor.lhs.false54.i.if.end80.i_crit_edge:           ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

if.then57.i:                                      ; preds = %lor.lhs.false54.i.if.then57.i_crit_edge, %lor.lhs.false.i.if.then57.i_crit_edge, %if.end49.i.if.then57.i_crit_edge
  %call.i.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i.i)
  %30 = icmp ult i32 %call.i.i.i, 2048
  br i1 %30, label %if.end.i.i, label %if.then57.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.then57.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_pmic_dt_parse_dvs_gpio.exit.i

if.end.i.i:                                       ; preds = %if.then57.i
  %arrayidx.i.i = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 4, i32 0
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i.i.i, ptr %arrayidx.i.i, align 4
  %call.i.1.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.1.i.i)
  %32 = icmp ult i32 %call.i.1.i.i, 2048
  br i1 %32, label %if.end.1.i.i, label %if.end.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.end.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_pmic_dt_parse_dvs_gpio.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.1.i.i = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i.1.i.i, ptr %arrayidx.1.i.i, align 4
  %call.i.2.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.46, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.2.i.i)
  %34 = icmp ult i32 %call.i.2.i.i, 2048
  br i1 %34, label %if.end61.i, label %if.end.1.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.end.1.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_pmic_dt_parse_dvs_gpio.exit.i

max8997_pmic_dt_parse_dvs_gpio.exit.i:            ; preds = %if.end.1.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge, %if.end.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge, %if.then57.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge
  %i.010.lcssa.i.i = phi i32 [ 0, %if.then57.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ 1, %if.end.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ 2, %if.end.1.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ]
  %call.i.lcssa.i.i = phi i32 [ %call.i.i.i, %if.then57.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ %call.i.1.i.i, %if.end.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ %call.i.2.i.i, %if.end.1.i.i.max8997_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %i.010.lcssa.i.i, i32 noundef %call.i.lcssa.i.i) #9
  br label %cleanup277

if.end61.i:                                       ; preds = %if.end.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.2.i.i, ptr %arrayidx.2.i.i, align 4
  %buck125_default_idx.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 5
  %call.i.i173.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef %buck125_default_idx.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i173.i)
  %tobool63.not.i = icmp sgt i32 %call.i.i173.i, -1
  br i1 %tobool63.not.i, label %if.else.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %buck125_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %buck125_default_idx.i, align 4
  br label %if.end75.i

if.else.i:                                        ; preds = %if.end61.i
  %37 = ptrtoint ptr %buck125_default_idx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buck125_default_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %cmp67.i = icmp sgt i32 %38, 7
  br i1 %cmp67.i, label %if.then68.i, label %if.else.i.if.end75.i_crit_edge

if.else.i.if.end75.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

if.then68.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %buck125_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %buck125_default_idx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then68.i, %if.else.i.if.end75.i_crit_edge, %if.then64.i
  %call76.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.33, ptr noundef null) #6
  %tobool77.not.i = icmp eq ptr %call76.i, null
  br i1 %tobool77.not.i, label %if.end75.i.if.end80.i_crit_edge, label %if.then78.i

if.end75.i.if.end80.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

if.then78.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %ignore_gpiodvs_side_effect.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 3
  %40 = ptrtoint ptr %ignore_gpiodvs_side_effect.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %ignore_gpiodvs_side_effect.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then78.i, %if.end75.i.if.end80.i_crit_edge, %lor.lhs.false54.i.if.end80.i_crit_edge
  %dvs_voltage_nr.0.i = phi i32 [ 1, %lor.lhs.false54.i.if.end80.i_crit_edge ], [ 8, %if.then78.i ], [ 8, %if.end75.i.if.end80.i_crit_edge ]
  %buck1_voltage.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 6
  %call.i174.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.34, ptr noundef %buck1_voltage.i, i32 noundef %dvs_voltage_nr.0.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i174.i)
  %tobool82.not.i = icmp sgt i32 %call.i174.i, -1
  br i1 %tobool82.not.i, label %if.end88.i, label %do.end86.i

do.end86.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  br label %cleanup277

if.end88.i:                                       ; preds = %if.end80.i
  %buck2_voltage.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 8
  %call.i175.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.38, ptr noundef %buck2_voltage.i, i32 noundef %dvs_voltage_nr.0.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i175.i)
  %tobool91.not.i = icmp sgt i32 %call.i175.i, -1
  br i1 %tobool91.not.i, label %if.end97.i, label %do.end95.i

do.end95.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup277

if.end97.i:                                       ; preds = %if.end88.i
  %buck5_voltage.i = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 10
  %call.i176.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.42, ptr noundef %buck5_voltage.i, i32 noundef %dvs_voltage_nr.0.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i176.i)
  %tobool100.not.i = icmp sgt i32 %call.i176.i, -1
  br i1 %tobool100.not.i, label %if.end97.i.if.end10_crit_edge, label %do.end104.i

if.end97.i.if.end10_crit_edge:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end104.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  br label %cleanup277

if.end10:                                         ; preds = %if.end97.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup277_crit_edge, label %if.end15

if.end10.cleanup277_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

if.end15:                                         ; preds = %if.end10
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %call.i, align 4
  %iodev18 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %iodev18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %3, ptr %iodev18, align 4
  %num_regulators = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 2
  %43 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_regulators, align 4
  %num_regulators19 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %num_regulators19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %num_regulators19, align 4
  %driver_data.i.i445 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i445 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i445, align 4
  %i2c21 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %i2c21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c21, align 4
  %buck125_default_idx = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 5
  %49 = ptrtoint ptr %buck125_default_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buck125_default_idx, align 4
  %buck125_gpioindex = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %buck125_gpioindex, align 4
  %buck1_gpiodvs = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 7
  %52 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  %buck1_gpiodvs23 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %buck1_gpiodvs23 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %buck1_gpiodvs23, align 4
  %buck2_gpiodvs = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 9
  %55 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buck2_gpiodvs, align 4, !range !216
  %buck2_gpiodvs25 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %buck2_gpiodvs25 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %buck2_gpiodvs25, align 1
  %buck5_gpiodvs = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 11
  %58 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buck5_gpiodvs, align 4, !range !216
  %buck5_gpiodvs28 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %buck5_gpiodvs28 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %buck5_gpiodvs28, align 2
  %buck125_gpios = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 10
  %buck125_gpios30 = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 4
  %61 = call ptr @memcpy(ptr %buck125_gpios, ptr %buck125_gpios30, i32 12)
  %ignore_gpiodvs_side_effect = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 3
  %62 = ptrtoint ptr %ignore_gpiodvs_side_effect to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ignore_gpiodvs_side_effect, align 4, !range !216
  %ignore_gpiodvs_side_effect33 = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 12
  %64 = ptrtoint ptr %ignore_gpiodvs_side_effect33 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %ignore_gpiodvs_side_effect33, align 4
  %65 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool36.not = icmp eq i8 %65, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end15.lor.end.thread_crit_edge

if.end15.lor.end.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %if.end15
  %66 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %buck2_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool38.not = icmp eq i8 %67, 0
  br i1 %tobool38.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end:                                          ; preds = %lor.lhs.false
  %68 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buck5_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool40.not = icmp eq i8 %69, 0
  br i1 %tobool40.not, label %lor.end._crit_edge, label %lor.end.lor.end.thread_crit_edge

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %70

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %lor.lhs.false.lor.end.thread_crit_edge, %if.end15.lor.end.thread_crit_edge
  br label %70

70:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %71 = phi i32 [ 8, %lor.end.thread ], [ 1, %lor.end._crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end70.for.body_crit_edge, %70
  %max_buck5.0521 = phi i8 [ 0, %70 ], [ %95, %if.end70.for.body_crit_edge ]
  %max_buck2.0520 = phi i8 [ 0, %70 ], [ %94, %if.end70.for.body_crit_edge ]
  %max_buck1.0519 = phi i8 [ 0, %70 ], [ %93, %if.end70.for.body_crit_edge ]
  %i.0518 = phi i32 [ 0, %70 ], [ %inc, %if.end70.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 6, i32 %i.0518
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %74 = add i32 %73, -2225001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1600001, i32 %74)
  %75 = icmp ult i32 %74, -1600001
  br i1 %75, label %for.body.max8997_get_voltage_proper_val.exit.thread_crit_edge, label %if.end4.i

for.body.max8997_get_voltage_proper_val.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit.thread

if.end4.i:                                        ; preds = %for.body
  %add = add nuw nsw i32 %73, 25000
  %76 = tail call i32 @llvm.smax.i32(i32 %73, i32 650000) #6
  %sub11.i = add nsw i32 %76, -625001
  %div.i499 = udiv i32 %sub11.i, 25000
  %mul.i = mul nuw nsw i32 %div.i499, 25000
  %add15.i = add nuw nsw i32 %mul.i, 650000
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add)
  %cmp16.i = icmp ugt i32 %add15.i, %add
  br i1 %cmp16.i, label %if.end4.i.max8997_get_voltage_proper_val.exit.thread_crit_edge, label %if.end48

if.end4.i.max8997_get_voltage_proper_val.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit.thread

max8997_get_voltage_proper_val.exit.thread:       ; preds = %if.end4.i.max8997_get_voltage_proper_val.exit.thread_crit_edge, %for.body.max8997_get_voltage_proper_val.exit.thread_crit_edge
  %arrayidx44486 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 7, i32 %i.0518
  %77 = ptrtoint ptr %arrayidx44486 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -22, ptr %arrayidx44486, align 1
  br label %cleanup277

if.end48:                                         ; preds = %if.end4.i
  %conv = trunc i32 %div.i499 to i8
  %arrayidx44 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 7, i32 %i.0518
  %78 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv, ptr %arrayidx44, align 1
  %arrayidx49 = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 8, i32 %i.0518
  %79 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx49, align 4
  %81 = add i32 %80, -2225001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1600001, i32 %81)
  %82 = icmp ult i32 %81, -1600001
  br i1 %82, label %if.end48.max8997_get_voltage_proper_val.exit462.thread_crit_edge, label %if.end4.i460

if.end48.max8997_get_voltage_proper_val.exit462.thread_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit462.thread

if.end4.i460:                                     ; preds = %if.end48
  %add52 = add nuw nsw i32 %80, 25000
  %83 = tail call i32 @llvm.smax.i32(i32 %80, i32 650000) #6
  %sub11.i454 = add nsw i32 %83, -625001
  %div.i455500 = udiv i32 %sub11.i454, 25000
  %mul.i456 = mul nuw nsw i32 %div.i455500, 25000
  %add15.i457 = add nuw nsw i32 %mul.i456, 650000
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i457, i32 %add52)
  %cmp16.i458 = icmp ugt i32 %add15.i457, %add52
  br i1 %cmp16.i458, label %if.end4.i460.max8997_get_voltage_proper_val.exit462.thread_crit_edge, label %if.end59

if.end4.i460.max8997_get_voltage_proper_val.exit462.thread_crit_edge: ; preds = %if.end4.i460
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit462.thread

max8997_get_voltage_proper_val.exit462.thread:    ; preds = %if.end4.i460.max8997_get_voltage_proper_val.exit462.thread_crit_edge, %if.end48.max8997_get_voltage_proper_val.exit462.thread_crit_edge
  %arrayidx55491 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 8, i32 %i.0518
  %84 = ptrtoint ptr %arrayidx55491 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -22, ptr %arrayidx55491, align 1
  br label %cleanup277

if.end59:                                         ; preds = %if.end4.i460
  %conv54 = trunc i32 %div.i455500 to i8
  %arrayidx55 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 8, i32 %i.0518
  %85 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv54, ptr %arrayidx55, align 1
  %arrayidx60 = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 10, i32 %i.0518
  %86 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx60, align 4
  %88 = add i32 %87, -2225001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1600001, i32 %88)
  %89 = icmp ult i32 %88, -1600001
  br i1 %89, label %if.end59.max8997_get_voltage_proper_val.exit476.thread_crit_edge, label %if.end4.i474

if.end59.max8997_get_voltage_proper_val.exit476.thread_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit476.thread

if.end4.i474:                                     ; preds = %if.end59
  %add63 = add nuw nsw i32 %87, 25000
  %90 = tail call i32 @llvm.smax.i32(i32 %87, i32 650000) #6
  %sub11.i468 = add nsw i32 %90, -625001
  %div.i469501 = udiv i32 %sub11.i468, 25000
  %mul.i470 = mul nuw nsw i32 %div.i469501, 25000
  %add15.i471 = add nuw nsw i32 %mul.i470, 650000
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i471, i32 %add63)
  %cmp16.i472 = icmp ugt i32 %add15.i471, %add63
  br i1 %cmp16.i472, label %if.end4.i474.max8997_get_voltage_proper_val.exit476.thread_crit_edge, label %if.end70

if.end4.i474.max8997_get_voltage_proper_val.exit476.thread_crit_edge: ; preds = %if.end4.i474
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_proper_val.exit476.thread

max8997_get_voltage_proper_val.exit476.thread:    ; preds = %if.end4.i474.max8997_get_voltage_proper_val.exit476.thread_crit_edge, %if.end59.max8997_get_voltage_proper_val.exit476.thread_crit_edge
  %arrayidx66496 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 9, i32 %i.0518
  %91 = ptrtoint ptr %arrayidx66496 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -22, ptr %arrayidx66496, align 1
  br label %cleanup277

if.end70:                                         ; preds = %if.end4.i474
  %conv65 = trunc i32 %div.i469501 to i8
  %arrayidx66 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 9, i32 %i.0518
  %92 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv65, ptr %arrayidx66, align 1
  %93 = tail call i8 @llvm.umax.i8(i8 %max_buck1.0519, i8 %conv)
  %94 = tail call i8 @llvm.umax.i8(i8 %max_buck2.0520, i8 %conv54)
  %95 = tail call i8 @llvm.umax.i8(i8 %max_buck5.0521, i8 %conv65)
  %inc = add nuw nsw i32 %i.0518, 1
  %exitcond.not = icmp eq i32 %inc, %71
  br i1 %exitcond.not, label %if.end70.for.body104_crit_edge, label %if.end70.for.body_crit_edge

if.end70.for.body_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end70.for.body104_crit_edge:                   ; preds = %if.end70
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %if.end70.for.body104_crit_edge
  %i.1522 = phi i32 [ %inc115, %for.body104.for.body104_crit_edge ], [ 0, %if.end70.for.body104_crit_edge ]
  %96 = trunc i32 %i.1522 to i8
  %conv106 = add i8 %96, 25
  %call107 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv106, i8 noundef zeroext %93, i8 noundef zeroext 63) #6
  %conv109 = add i8 %96, 34
  %call110 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv109, i8 noundef zeroext %94, i8 noundef zeroext 63) #6
  %conv112 = add i8 %96, 47
  %call113 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv112, i8 noundef zeroext %95, i8 noundef zeroext 63) #6
  %inc115 = add nuw nsw i32 %i.1522, 1
  %exitcond536.not = icmp eq i32 %inc115, 8
  br i1 %exitcond536.not, label %for.body104.for.body120_crit_edge, label %for.body104.for.body104_crit_edge

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body104

for.body104.for.body120_crit_edge:                ; preds = %for.body104
  br label %for.body120

for.body120:                                      ; preds = %for.body120.for.body120_crit_edge, %for.body104.for.body120_crit_edge
  %i.2523 = phi i32 [ %inc137, %for.body120.for.body120_crit_edge ], [ 0, %for.body104.for.body120_crit_edge ]
  %97 = trunc i32 %i.2523 to i8
  %conv122 = add i8 %97, 25
  %arrayidx124 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 7, i32 %i.2523
  %98 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx124, align 1
  %call125 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv122, i8 noundef zeroext %99, i8 noundef zeroext 63) #6
  %conv127 = add i8 %97, 34
  %arrayidx129 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 8, i32 %i.2523
  %100 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx129, align 1
  %call130 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv127, i8 noundef zeroext %101, i8 noundef zeroext 63) #6
  %conv132 = add i8 %97, 47
  %arrayidx134 = getelementptr %struct.max8997_data, ptr %call.i, i32 0, i32 9, i32 %i.2523
  %102 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx134, align 1
  %call135 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext %conv132, i8 noundef zeroext %103, i8 noundef zeroext 63) #6
  %inc137 = add nuw nsw i32 %i.2523, 1
  %exitcond537.not = icmp eq i32 %inc137, %71
  br i1 %exitcond537.not, label %for.end138, label %for.body120.for.body120_crit_edge

for.body120.for.body120_crit_edge:                ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body120

for.end138:                                       ; preds = %for.body120
  %104 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool140.not = icmp eq i8 %105, 0
  br i1 %tobool140.not, label %lor.lhs.false142, label %for.end138.if.then150_crit_edge

for.end138.if.then150_crit_edge:                  ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false142:                                 ; preds = %for.end138
  %106 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %buck2_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool144.not = icmp eq i8 %107, 0
  br i1 %tobool144.not, label %lor.lhs.false146, label %lor.lhs.false142.if.then150_crit_edge

lor.lhs.false142.if.then150_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false146:                                 ; preds = %lor.lhs.false142
  %108 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %buck5_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool148.not = icmp eq i8 %109, 0
  br i1 %tobool148.not, label %lor.lhs.false146.if.end205_crit_edge, label %lor.lhs.false146.if.then150_crit_edge

lor.lhs.false146.if.then150_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false146.if.end205_crit_edge:             ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then150:                                       ; preds = %lor.lhs.false146.if.then150_crit_edge, %lor.lhs.false142.if.then150_crit_edge, %for.end138.if.then150_crit_edge
  %110 = ptrtoint ptr %buck125_gpios30 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buck125_gpios30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %111)
  %112 = icmp ult i32 %111, 2048
  br i1 %112, label %lor.lhs.false154, label %if.then150.do.end165_crit_edge

if.then150.do.end165_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

lor.lhs.false154:                                 ; preds = %if.then150
  %arrayidx156 = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %114)
  %115 = icmp ult i32 %114, 2048
  br i1 %115, label %lor.lhs.false158, label %lor.lhs.false154.do.end165_crit_edge

lor.lhs.false154.do.end165_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

lor.lhs.false158:                                 ; preds = %lor.lhs.false154
  %arrayidx160 = getelementptr %struct.max8997_platform_data, ptr %5, i32 0, i32 4, i32 2
  %116 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %117)
  %118 = icmp ult i32 %117, 2048
  br i1 %118, label %if.end167, label %lor.lhs.false158.do.end165_crit_edge

lor.lhs.false158.do.end165_crit_edge:             ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

do.end165:                                        ; preds = %lor.lhs.false158.do.end165_crit_edge, %lor.lhs.false154.do.end165_crit_edge, %if.then150.do.end165_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup277

if.end167:                                        ; preds = %lor.lhs.false158
  %call171 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %111, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end167.cleanup277_crit_edge

if.end167.cleanup277_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

if.end174:                                        ; preds = %if.end167
  %119 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx156, align 4
  %call178 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %120, ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.end174.cleanup277_crit_edge

if.end174.cleanup277_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

if.end181:                                        ; preds = %if.end174
  %121 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx160, align 4
  %call185 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %122, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end181.cleanup277_crit_edge

if.end181.cleanup277_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

if.end188:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %buck125_gpios30 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buck125_gpios30, align 4
  %125 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %buck125_gpioindex, align 4
  %shr443 = lshr i32 %126, 2
  %and = and i32 %shr443, 1
  %call.i477 = tail call ptr @gpio_to_desc(i32 noundef %124) #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i477, i32 noundef %and) #6
  %127 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx156, align 4
  %129 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %buck125_gpioindex, align 4
  %shr196444 = lshr i32 %130, 1
  %and197 = and i32 %shr196444, 1
  %call.i478 = tail call ptr @gpio_to_desc(i32 noundef %128) #6
  %call1.i479 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i478, i32 noundef %and197) #6
  %131 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx160, align 4
  %133 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %buck125_gpioindex, align 4
  %and203 = and i32 %134, 1
  %call.i480 = tail call ptr @gpio_to_desc(i32 noundef %132) #6
  %call1.i481 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i480, i32 noundef %and203) #6
  br label %if.end205

if.end205:                                        ; preds = %if.end188, %lor.lhs.false146.if.end205_crit_edge
  %135 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool207.not = icmp eq i8 %136, 0
  %conv210 = select i1 %tobool207.not, i8 0, i8 2
  %call211 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext 24, i8 noundef zeroext %conv210, i8 noundef zeroext 2) #6
  %137 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %buck2_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool213.not = icmp eq i8 %138, 0
  %conv216 = select i1 %tobool213.not, i8 0, i8 2
  %call217 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext 33, i8 noundef zeroext %conv216, i8 noundef zeroext 2) #6
  %139 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %buck5_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool219.not = icmp eq i8 %140, 0
  %conv222 = select i1 %tobool219.not, i8 0, i8 2
  %call223 = tail call i32 @max8997_update_reg(ptr noundef %48, i8 noundef zeroext 46, i8 noundef zeroext %conv222, i8 noundef zeroext 2) #6
  %ramp_delay = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 3
  %141 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 10, ptr %ramp_delay, align 4
  %call224 = tail call i32 @max8997_write_reg(ptr noundef %48, i8 noundef zeroext 21, i8 noundef zeroext -7) #6
  %142 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp227524 = icmp sgt i32 %143, 0
  br i1 %cmp227524, label %for.body229.lr.ph, label %if.end205.cleanup277_crit_edge

if.end205.cleanup277_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

for.body229.lr.ph:                                ; preds = %if.end205
  %regulators = getelementptr inbounds %struct.max8997_platform_data, ptr %5, i32 0, i32 1
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %of_node261 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body229

for.cond225:                                      ; preds = %if.end254
  %inc275 = add nuw nsw i32 %i.3525, 1
  %144 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_regulators, align 4
  %cmp227 = icmp slt i32 %inc275, %145
  br i1 %cmp227, label %for.cond225.for.body229_crit_edge, label %for.cond225.cleanup277_crit_edge

for.cond225.cleanup277_crit_edge:                 ; preds = %for.cond225
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup277

for.cond225.for.body229_crit_edge:                ; preds = %for.cond225
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body229

for.body229:                                      ; preds = %for.cond225.for.body229_crit_edge, %for.body229.lr.ph
  %i.3525 = phi i32 [ 0, %for.body229.lr.ph ], [ %inc275, %for.cond225.for.body229_crit_edge ]
  %146 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regulators, align 4
  %arrayidx230 = getelementptr %struct.max8997_regulator_data, ptr %147, i32 %i.3525
  %148 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx230, align 4
  %arrayidx232 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx232, align 4
  %tobool233.not = icmp eq ptr %151, null
  br i1 %tobool233.not, label %if.else, label %if.then234

if.then234:                                       ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #8
  %max = getelementptr inbounds %struct.voltage_map_desc, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max, align 4
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %151, align 4
  %sub = sub i32 %153, %155
  %step = getelementptr inbounds %struct.voltage_map_desc, ptr %151, i32 0, i32 2
  %156 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %step, align 4
  %div = sdiv i32 %sub, %157
  %add235 = add i32 %div, 1
  %n_voltages = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %149, i32 8
  %158 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add235, ptr %n_voltages, align 4
  br label %if.end254

if.else:                                          ; preds = %for.body229
  %159 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values)
  switch i32 %149, label %if.else.if.end254_crit_edge [
    i32 29, label %if.else.if.then242_crit_edge
    i32 30, label %if.else.if.then242_crit_edge578
    i32 31, label %if.then249
  ]

if.else.if.then242_crit_edge578:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

if.else.if.then242_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then242

if.else.if.end254_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then242:                                       ; preds = %if.else.if.then242_crit_edge, %if.else.if.then242_crit_edge578
  %volt_table = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %149, i32 23
  %160 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @safeoutvolt, ptr %volt_table, align 4
  %n_voltages245 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %149, i32 8
  %161 = ptrtoint ptr %n_voltages245 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 4, ptr %n_voltages245, align 4
  br label %if.end254

if.then249:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store i32 16, ptr getelementptr inbounds ([34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 31, i32 8), align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then249, %if.then242, %if.else.if.end254_crit_edge, %if.then234
  %162 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %call.i, align 4
  %164 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %config, align 4
  %165 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regulators, align 4
  %initdata = getelementptr %struct.max8997_regulator_data, ptr %166, i32 %i.3525, i32 1
  %167 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %initdata, align 4
  %169 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %init_data, align 4
  %170 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call.i, ptr %driver_data, align 4
  %171 = load ptr, ptr %regulators, align 4
  %reg_node = getelementptr %struct.max8997_regulator_data, ptr %171, i32 %i.3525, i32 2
  %172 = ptrtoint ptr %reg_node to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reg_node, align 4
  %174 = ptrtoint ptr %of_node261 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %of_node261, align 4
  %arrayidx263 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %149
  %call264 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx263, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.cond225

cleanup.thread:                                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.13, i32 noundef %149) #9
  %177 = ptrtoint ptr %call264 to i32
  br label %cleanup277

cleanup277:                                       ; preds = %cleanup.thread, %for.cond225.cleanup277_crit_edge, %if.end205.cleanup277_crit_edge, %if.end181.cleanup277_crit_edge, %if.end174.cleanup277_crit_edge, %if.end167.cleanup277_crit_edge, %do.end165, %max8997_get_voltage_proper_val.exit476.thread, %max8997_get_voltage_proper_val.exit462.thread, %max8997_get_voltage_proper_val.exit.thread, %if.end10.cleanup277_crit_edge, %do.end104.i, %do.end95.i, %do.end86.i, %max8997_pmic_dt_parse_dvs_gpio.exit.i, %if.then16.i, %do.end8.i, %do.end
  %retval.2 = phi i32 [ -22, %do.end165 ], [ -19, %do.end ], [ -12, %if.end10.cleanup277_crit_edge ], [ %call171, %if.end167.cleanup277_crit_edge ], [ %call178, %if.end174.cleanup277_crit_edge ], [ %call185, %if.end181.cleanup277_crit_edge ], [ -22, %max8997_get_voltage_proper_val.exit.thread ], [ -22, %max8997_get_voltage_proper_val.exit462.thread ], [ -22, %max8997_get_voltage_proper_val.exit476.thread ], [ %177, %cleanup.thread ], [ -22, %max8997_pmic_dt_parse_dvs_gpio.exit.i ], [ -22, %do.end8.i ], [ -12, %if.then16.i ], [ -22, %do.end104.i ], [ -22, %do.end95.i ], [ -22, %do.end86.i ], [ 0, %if.end205.cleanup277_crit_edge ], [ 0, %for.cond225.cleanup277_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call)
  %cmp1 = icmp ugt i32 %call, 33
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %step = getelementptr inbounds %struct.voltage_map_desc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %mul = mul i32 %5, %selector
  %add = add i32 %mul, %3
  %max = getelementptr inbounds %struct.voltage_map_desc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp5 = icmp sgt i32 %add, %7
  %.add = select i1 %cmp5, i32 -22, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %.add, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_ldobuck(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef writeonly %selector) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #6
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %shift, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask, align 4, !annotation !217
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call2, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge31
    i32 2, label %entry.sw.epilog_crit_edge32
    i32 3, label %entry.sw.epilog_crit_edge33
    i32 4, label %entry.sw.epilog_crit_edge34
    i32 5, label %entry.sw.epilog_crit_edge35
    i32 6, label %entry.sw.epilog_crit_edge36
    i32 7, label %entry.sw.epilog_crit_edge37
    i32 8, label %entry.sw.epilog_crit_edge38
    i32 9, label %entry.sw.epilog_crit_edge39
    i32 10, label %entry.sw.epilog_crit_edge40
    i32 11, label %entry.sw.epilog_crit_edge41
    i32 12, label %entry.sw.epilog_crit_edge42
    i32 13, label %entry.sw.epilog_crit_edge43
    i32 14, label %entry.sw.epilog_crit_edge44
    i32 15, label %entry.sw.epilog_crit_edge45
    i32 16, label %entry.sw.epilog_crit_edge46
    i32 17, label %entry.sw.epilog_crit_edge47
    i32 18, label %entry.sw.epilog_crit_edge48
    i32 19, label %entry.sw.epilog_crit_edge49
    i32 20, label %entry.sw.epilog_crit_edge50
    i32 21, label %entry.sw.epilog_crit_edge51
    i32 22, label %entry.sw.epilog_crit_edge52
    i32 23, label %entry.sw.epilog_crit_edge53
    i32 33, label %entry.sw.epilog_crit_edge54
    i32 25, label %entry.sw.epilog_crit_edge55
    i32 32, label %entry.sw.epilog_crit_edge56
  ]

entry.sw.epilog_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33, %entry.sw.epilog_crit_edge34, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36, %entry.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge38, %entry.sw.epilog_crit_edge39, %entry.sw.epilog_crit_edge40, %entry.sw.epilog_crit_edge41, %entry.sw.epilog_crit_edge42, %entry.sw.epilog_crit_edge43, %entry.sw.epilog_crit_edge44, %entry.sw.epilog_crit_edge45, %entry.sw.epilog_crit_edge46, %entry.sw.epilog_crit_edge47, %entry.sw.epilog_crit_edge48, %entry.sw.epilog_crit_edge49, %entry.sw.epilog_crit_edge50, %entry.sw.epilog_crit_edge51, %entry.sw.epilog_crit_edge52, %entry.sw.epilog_crit_edge53, %entry.sw.epilog_crit_edge54, %entry.sw.epilog_crit_edge55, %entry.sw.epilog_crit_edge56
  %arrayidx = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %call2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %max_uV)
  %cmp1.i = icmp sgt i32 %11, %max_uV
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max.i = getelementptr inbounds %struct.voltage_map_desc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %min_uV)
  %cmp2.i = icmp slt i32 %13, %min_uV
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %14 = tail call i32 @llvm.smax.i32(i32 %11, i32 %min_uV) #6
  %step.i = getelementptr inbounds %struct.voltage_map_desc, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %step.i, align 4
  %sub.i = xor i32 %11, -1
  %add.i = add i32 %14, %sub.i
  %sub11.i = add i32 %add.i, %16
  %div.i = sdiv i32 %sub11.i, %16
  %mul.i = mul i32 %div.i, %16
  %add15.i = add i32 %mul.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %max_uV)
  %cmp16.i = icmp sgt i32 %add15.i, %max_uV
  br i1 %cmp16.i, label %if.end4.i.cleanup_crit_edge, label %max8997_get_voltage_proper_val.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max8997_get_voltage_proper_val.exit:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp = icmp slt i32 %div.i, 0
  br i1 %cmp, label %max8997_get_voltage_proper_val.exit.cleanup_crit_edge, label %if.end

max8997_get_voltage_proper_val.exit.cleanup_crit_edge: ; preds = %max8997_get_voltage_proper_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %max8997_get_voltage_proper_val.exit
  %call6 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %conv = trunc i32 %18 to i8
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift, align 4
  %shl = shl i32 %div.i, %20
  %conv9 = trunc i32 %shl to i8
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %shl10 = shl i32 %22, %20
  %conv11 = trunc i32 %shl10 to i8
  %call12 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv9, i8 noundef zeroext %conv11) #6
  %23 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i, ptr %selector, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %max8997_get_voltage_proper_val.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ %div.i, %max8997_get_voltage_proper_val.exit.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #6
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %shift, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val, align 1, !annotation !217
  %call2 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %conv = trunc i32 %9 to i8
  %call3 = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %conv7 = zext i8 %13 to i32
  %shr = lshr i32 %conv7, %11
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and = and i32 %shr, %15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end6 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_reg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge21
    i32 2, label %entry.sw.bb.i_crit_edge22
    i32 3, label %entry.sw.bb.i_crit_edge23
    i32 4, label %entry.sw.bb.i_crit_edge24
    i32 5, label %entry.sw.bb.i_crit_edge25
    i32 6, label %entry.sw.bb.i_crit_edge26
    i32 7, label %entry.sw.bb.i_crit_edge27
    i32 8, label %entry.sw.bb.i_crit_edge28
    i32 9, label %entry.sw.bb.i_crit_edge29
    i32 10, label %entry.sw.bb.i_crit_edge30
    i32 11, label %entry.sw.bb.i_crit_edge31
    i32 12, label %entry.sw.bb.i_crit_edge32
    i32 13, label %entry.sw.bb.i_crit_edge33
    i32 14, label %entry.sw.bb.i_crit_edge34
    i32 15, label %entry.sw.bb.i_crit_edge35
    i32 16, label %entry.sw.bb.i_crit_edge36
    i32 17, label %entry.sw.bb.i_crit_edge37
    i32 18, label %entry.sw.bb.i_crit_edge38
    i32 19, label %entry.if.end_crit_edge
    i32 20, label %sw.bb2.i
    i32 21, label %sw.bb3.i
    i32 22, label %sw.bb4.i
    i32 23, label %sw.bb5.i
    i32 24, label %sw.bb6.i
    i32 25, label %sw.bb7.i
    i32 26, label %entry.sw.bb8.i_crit_edge
    i32 27, label %entry.sw.bb8.i_crit_edge39
    i32 28, label %sw.bb12.i
    i32 29, label %entry.sw.bb13.i_crit_edge
    i32 30, label %entry.sw.bb13.i_crit_edge40
    i32 32, label %sw.bb18.i
  ]

entry.sw.bb13.i_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb8.i_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.sw.bb8.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.sw.bb.i_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge21, %entry.sw.bb.i_crit_edge22, %entry.sw.bb.i_crit_edge23, %entry.sw.bb.i_crit_edge24, %entry.sw.bb.i_crit_edge25, %entry.sw.bb.i_crit_edge26, %entry.sw.bb.i_crit_edge27, %entry.sw.bb.i_crit_edge28, %entry.sw.bb.i_crit_edge29, %entry.sw.bb.i_crit_edge30, %entry.sw.bb.i_crit_edge31, %entry.sw.bb.i_crit_edge32, %entry.sw.bb.i_crit_edge33, %entry.sw.bb.i_crit_edge34, %entry.sw.bb.i_crit_edge35, %entry.sw.bb.i_crit_edge36, %entry.sw.bb.i_crit_edge37, %entry.sw.bb.i_crit_edge38
  %5 = trunc i32 %call.i to i8
  %phi.cast = add nuw nsw i8 %5, 59
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb8.i:                                         ; preds = %entry.sw.bb8.i_crit_edge, %entry.sw.bb8.i_crit_edge39
  %sub9.i = add nsw i32 %call.i, -26
  %shl.i = shl nuw nsw i32 1, %sub9.i
  br label %if.end

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge40
  %sub14.i = add nsw i32 %call.i, -29
  %shl15.i = shl nuw nsw i32 64, %sub14.i
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb18.i, %sw.bb13.i, %sw.bb12.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.if.end_crit_edge
  %reg.0 = phi i8 [ 81, %sw.bb18.i ], [ 90, %sw.bb13.i ], [ 80, %sw.bb12.i ], [ 19, %sw.bb8.i ], [ 57, %sw.bb7.i ], [ 55, %sw.bb6.i ], [ 46, %sw.bb5.i ], [ 44, %sw.bb4.i ], [ 42, %sw.bb3.i ], [ 33, %sw.bb2.i ], [ %phi.cast, %sw.bb.i ], [ 24, %entry.if.end_crit_edge ]
  %.sink57.i = phi i32 [ 64, %sw.bb18.i ], [ %shl15.i, %sw.bb13.i ], [ 128, %sw.bb12.i ], [ %shl.i, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 192, %sw.bb.i ], [ 1, %entry.if.end_crit_edge ]
  %conv3 = trunc i32 %.sink57.i to i8
  %call5 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv3, i8 noundef zeroext %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_reg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge21
    i32 2, label %entry.sw.bb.i_crit_edge22
    i32 3, label %entry.sw.bb.i_crit_edge23
    i32 4, label %entry.sw.bb.i_crit_edge24
    i32 5, label %entry.sw.bb.i_crit_edge25
    i32 6, label %entry.sw.bb.i_crit_edge26
    i32 7, label %entry.sw.bb.i_crit_edge27
    i32 8, label %entry.sw.bb.i_crit_edge28
    i32 9, label %entry.sw.bb.i_crit_edge29
    i32 10, label %entry.sw.bb.i_crit_edge30
    i32 11, label %entry.sw.bb.i_crit_edge31
    i32 12, label %entry.sw.bb.i_crit_edge32
    i32 13, label %entry.sw.bb.i_crit_edge33
    i32 14, label %entry.sw.bb.i_crit_edge34
    i32 15, label %entry.sw.bb.i_crit_edge35
    i32 16, label %entry.sw.bb.i_crit_edge36
    i32 17, label %entry.sw.bb.i_crit_edge37
    i32 18, label %entry.sw.bb.i_crit_edge38
    i32 19, label %entry.if.end_crit_edge
    i32 20, label %sw.bb2.i
    i32 21, label %sw.bb3.i
    i32 22, label %sw.bb4.i
    i32 23, label %sw.bb5.i
    i32 24, label %sw.bb6.i
    i32 25, label %sw.bb7.i
    i32 26, label %entry.sw.bb8.i_crit_edge
    i32 27, label %entry.sw.bb8.i_crit_edge39
    i32 28, label %sw.bb12.i
    i32 29, label %entry.sw.bb13.i_crit_edge
    i32 30, label %entry.sw.bb13.i_crit_edge40
    i32 32, label %sw.bb18.i
  ]

entry.sw.bb13.i_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb8.i_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.sw.bb8.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.sw.bb.i_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge21, %entry.sw.bb.i_crit_edge22, %entry.sw.bb.i_crit_edge23, %entry.sw.bb.i_crit_edge24, %entry.sw.bb.i_crit_edge25, %entry.sw.bb.i_crit_edge26, %entry.sw.bb.i_crit_edge27, %entry.sw.bb.i_crit_edge28, %entry.sw.bb.i_crit_edge29, %entry.sw.bb.i_crit_edge30, %entry.sw.bb.i_crit_edge31, %entry.sw.bb.i_crit_edge32, %entry.sw.bb.i_crit_edge33, %entry.sw.bb.i_crit_edge34, %entry.sw.bb.i_crit_edge35, %entry.sw.bb.i_crit_edge36, %entry.sw.bb.i_crit_edge37, %entry.sw.bb.i_crit_edge38
  %5 = trunc i32 %call.i to i8
  %phi.cast = add nuw nsw i8 %5, 59
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb8.i:                                         ; preds = %entry.sw.bb8.i_crit_edge, %entry.sw.bb8.i_crit_edge39
  %sub9.i = add nsw i32 %call.i, -26
  %shl.i = shl nuw nsw i32 1, %sub9.i
  br label %if.end

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge40
  %sub14.i = add nsw i32 %call.i, -29
  %shl15.i = shl nuw nsw i32 64, %sub14.i
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb18.i, %sw.bb13.i, %sw.bb12.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.if.end_crit_edge
  %reg.0 = phi i8 [ 81, %sw.bb18.i ], [ 90, %sw.bb13.i ], [ 80, %sw.bb12.i ], [ 19, %sw.bb8.i ], [ 57, %sw.bb7.i ], [ 55, %sw.bb6.i ], [ 46, %sw.bb5.i ], [ 44, %sw.bb4.i ], [ 42, %sw.bb3.i ], [ 33, %sw.bb2.i ], [ %phi.cast, %sw.bb.i ], [ 24, %entry.if.end_crit_edge ]
  %.sink57.i = phi i32 [ 64, %sw.bb18.i ], [ %shl15.i, %sw.bb13.i ], [ 128, %sw.bb12.i ], [ %shl.i, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 192, %sw.bb.i ], [ 1, %entry.if.end_crit_edge ]
  %6 = trunc i32 %.sink57.i to i8
  %conv3 = xor i8 %6, -1
  %call5 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv3, i8 noundef zeroext %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !217
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge27
    i32 2, label %entry.sw.bb.i_crit_edge28
    i32 3, label %entry.sw.bb.i_crit_edge29
    i32 4, label %entry.sw.bb.i_crit_edge30
    i32 5, label %entry.sw.bb.i_crit_edge31
    i32 6, label %entry.sw.bb.i_crit_edge32
    i32 7, label %entry.sw.bb.i_crit_edge33
    i32 8, label %entry.sw.bb.i_crit_edge34
    i32 9, label %entry.sw.bb.i_crit_edge35
    i32 10, label %entry.sw.bb.i_crit_edge36
    i32 11, label %entry.sw.bb.i_crit_edge37
    i32 12, label %entry.sw.bb.i_crit_edge38
    i32 13, label %entry.sw.bb.i_crit_edge39
    i32 14, label %entry.sw.bb.i_crit_edge40
    i32 15, label %entry.sw.bb.i_crit_edge41
    i32 16, label %entry.sw.bb.i_crit_edge42
    i32 17, label %entry.sw.bb.i_crit_edge43
    i32 18, label %entry.sw.bb.i_crit_edge44
    i32 19, label %entry.if.end_crit_edge
    i32 20, label %sw.bb2.i
    i32 21, label %sw.bb3.i
    i32 22, label %sw.bb4.i
    i32 23, label %sw.bb5.i
    i32 24, label %sw.bb6.i
    i32 25, label %sw.bb7.i
    i32 26, label %entry.sw.bb8.i_crit_edge
    i32 27, label %entry.sw.bb8.i_crit_edge45
    i32 28, label %sw.bb12.i
    i32 29, label %entry.sw.bb13.i_crit_edge
    i32 30, label %entry.sw.bb13.i_crit_edge46
    i32 32, label %sw.bb18.i
  ]

entry.sw.bb13.i_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb8.i_crit_edge45:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.sw.bb8.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.sw.bb.i_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge27, %entry.sw.bb.i_crit_edge28, %entry.sw.bb.i_crit_edge29, %entry.sw.bb.i_crit_edge30, %entry.sw.bb.i_crit_edge31, %entry.sw.bb.i_crit_edge32, %entry.sw.bb.i_crit_edge33, %entry.sw.bb.i_crit_edge34, %entry.sw.bb.i_crit_edge35, %entry.sw.bb.i_crit_edge36, %entry.sw.bb.i_crit_edge37, %entry.sw.bb.i_crit_edge38, %entry.sw.bb.i_crit_edge39, %entry.sw.bb.i_crit_edge40, %entry.sw.bb.i_crit_edge41, %entry.sw.bb.i_crit_edge42, %entry.sw.bb.i_crit_edge43, %entry.sw.bb.i_crit_edge44
  %6 = trunc i32 %call.i to i8
  %phi.cast = add nuw nsw i8 %6, 59
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb8.i:                                         ; preds = %entry.sw.bb8.i_crit_edge, %entry.sw.bb8.i_crit_edge45
  %sub9.i = add nsw i32 %call.i, -26
  %shl.i = shl nuw nsw i32 1, %sub9.i
  br label %if.end

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge46
  %sub14.i = add nsw i32 %call.i, -29
  %shl15.i = shl nuw nsw i32 64, %sub14.i
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb18.i, %sw.bb13.i, %sw.bb12.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.if.end_crit_edge
  %reg.0 = phi i8 [ 81, %sw.bb18.i ], [ 90, %sw.bb13.i ], [ 80, %sw.bb12.i ], [ 19, %sw.bb8.i ], [ 57, %sw.bb7.i ], [ 55, %sw.bb6.i ], [ 46, %sw.bb5.i ], [ 44, %sw.bb4.i ], [ 42, %sw.bb3.i ], [ 33, %sw.bb2.i ], [ %phi.cast, %sw.bb.i ], [ 24, %entry.if.end_crit_edge ]
  %.sink57.i = phi i32 [ 64, %sw.bb18.i ], [ %shl15.i, %sw.bb13.i ], [ 128, %sw.bb12.i ], [ %shl.i, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 192, %sw.bb.i ], [ 1, %entry.if.end_crit_edge ]
  %call3 = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext %reg.0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %conv7 = zext i8 %8 to i32
  %and = and i32 %.sink57.i, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %.sink57.i)
  %cmp = icmp eq i32 %and, %.sink57.i
  %conv8 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_reg_disable_suspend(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge93
    i32 2, label %entry.sw.bb.i_crit_edge94
    i32 3, label %entry.sw.bb.i_crit_edge95
    i32 4, label %entry.sw.bb.i_crit_edge96
    i32 5, label %entry.sw.bb.i_crit_edge97
    i32 6, label %entry.sw.bb.i_crit_edge98
    i32 7, label %entry.sw.bb.i_crit_edge99
    i32 8, label %entry.sw.bb.i_crit_edge100
    i32 9, label %entry.sw.bb.i_crit_edge101
    i32 10, label %entry.sw.bb.i_crit_edge102
    i32 11, label %entry.sw.bb.i_crit_edge103
    i32 12, label %entry.sw.bb.i_crit_edge104
    i32 13, label %entry.sw.bb.i_crit_edge105
    i32 14, label %entry.sw.bb.i_crit_edge106
    i32 15, label %entry.sw.bb.i_crit_edge107
    i32 16, label %entry.sw.bb.i_crit_edge108
    i32 17, label %entry.sw.bb.i_crit_edge109
    i32 18, label %entry.sw.bb.i_crit_edge110
    i32 19, label %entry.if.end_crit_edge
    i32 20, label %sw.bb2.i
    i32 21, label %sw.bb3.i
    i32 22, label %sw.bb4.i
    i32 23, label %sw.bb5.i
    i32 24, label %sw.bb6.i
    i32 25, label %sw.bb7.i
    i32 26, label %entry.sw.bb8.i_crit_edge
    i32 27, label %entry.sw.bb8.i_crit_edge111
    i32 28, label %sw.bb12.i
    i32 29, label %entry.sw.bb13.i_crit_edge
    i32 30, label %entry.sw.bb13.i_crit_edge112
    i32 32, label %sw.bb18.i
  ]

entry.sw.bb13.i_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

entry.sw.bb8.i_crit_edge111:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.sw.bb8.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.sw.bb.i_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge102:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge93:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge93, %entry.sw.bb.i_crit_edge94, %entry.sw.bb.i_crit_edge95, %entry.sw.bb.i_crit_edge96, %entry.sw.bb.i_crit_edge97, %entry.sw.bb.i_crit_edge98, %entry.sw.bb.i_crit_edge99, %entry.sw.bb.i_crit_edge100, %entry.sw.bb.i_crit_edge101, %entry.sw.bb.i_crit_edge102, %entry.sw.bb.i_crit_edge103, %entry.sw.bb.i_crit_edge104, %entry.sw.bb.i_crit_edge105, %entry.sw.bb.i_crit_edge106, %entry.sw.bb.i_crit_edge107, %entry.sw.bb.i_crit_edge108, %entry.sw.bb.i_crit_edge109, %entry.sw.bb.i_crit_edge110
  %5 = trunc i32 %call.i to i8
  %phi.cast = add nuw nsw i8 %5, 59
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb8.i:                                         ; preds = %entry.sw.bb8.i_crit_edge, %entry.sw.bb8.i_crit_edge111
  %sub9.i = add nsw i32 %call.i, -26
  %shl.i = shl nuw nsw i32 1, %sub9.i
  br label %if.end

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge112
  %sub14.i = add nsw i32 %call.i, -29
  %shl15.i = shl nuw nsw i32 64, %sub14.i
  br label %if.end

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb18.i, %sw.bb13.i, %sw.bb12.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.if.end_crit_edge
  %reg.0 = phi i8 [ 81, %sw.bb18.i ], [ 90, %sw.bb13.i ], [ 80, %sw.bb12.i ], [ 19, %sw.bb8.i ], [ 57, %sw.bb7.i ], [ 55, %sw.bb6.i ], [ 46, %sw.bb5.i ], [ 44, %sw.bb4.i ], [ 42, %sw.bb3.i ], [ 33, %sw.bb2.i ], [ %phi.cast, %sw.bb.i ], [ 24, %entry.if.end_crit_edge ]
  %.sink57.i = phi i32 [ 64, %sw.bb18.i ], [ %shl15.i, %sw.bb13.i ], [ 128, %sw.bb12.i ], [ %shl.i, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 192, %sw.bb.i ], [ 1, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.max8997_data, ptr %call, i32 0, i32 13, i32 %call2
  %call4 = tail call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext %reg.0, ptr noundef %arrayidx) #6
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call2, label %do.body23 [
    i32 0, label %if.end.do.body_crit_edge
    i32 9, label %if.end.do.body_crit_edge113
    i32 18, label %if.end.do.body_crit_edge114
  ]

if.end.do.body_crit_edge114:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge113:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge113, %if.end.do.body_crit_edge114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_reg_disable_suspend, %do.end)) #6
          to label %if.then17 [label %do.end], !srcloc !218

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %10) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %conv20 = trunc i32 %.sink57.i to i8
  %call21 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext 64, i8 noundef zeroext %conv20) #6
  br label %cleanup

do.body23:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_reg_disable_suspend, %do.end47)) #6
          to label %if.then37 [label %do.end47], !srcloc !218

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv43 = zext i8 %16 to i32
  %and = and i32 %.sink57.i, %conv43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug289, ptr noundef %dev38, ptr noundef nonnull @.str.86, ptr noundef %14, i32 noundef %and, i32 noundef 0) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then37, %do.body23
  %17 = trunc i32 %.sink57.i to i8
  %conv50 = xor i8 %17, -1
  %call52 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv50, i8 noundef zeroext %17) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end ], [ %call52, %do.end47 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr nocapture noundef writeonly %_reg, ptr nocapture noundef writeonly %_shift, ptr nocapture noundef writeonly %_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge38
    i32 2, label %entry.sw.bb_crit_edge39
    i32 3, label %entry.sw.bb_crit_edge40
    i32 4, label %entry.sw.bb_crit_edge41
    i32 5, label %entry.sw.bb_crit_edge42
    i32 6, label %entry.sw.bb_crit_edge43
    i32 7, label %entry.sw.bb_crit_edge44
    i32 8, label %entry.sw.bb_crit_edge45
    i32 9, label %entry.sw.bb_crit_edge46
    i32 10, label %entry.sw.bb_crit_edge47
    i32 11, label %entry.sw.bb_crit_edge48
    i32 12, label %entry.sw.bb_crit_edge49
    i32 13, label %entry.sw.bb_crit_edge50
    i32 14, label %entry.sw.bb_crit_edge51
    i32 15, label %entry.sw.bb_crit_edge52
    i32 16, label %entry.sw.bb_crit_edge53
    i32 17, label %entry.sw.bb_crit_edge54
    i32 18, label %entry.sw.bb_crit_edge55
    i32 19, label %sw.bb2
    i32 20, label %sw.bb4
    i32 21, label %entry.sw.epilog_crit_edge
    i32 22, label %sw.bb11
    i32 23, label %sw.bb12
    i32 25, label %sw.bb18
    i32 29, label %entry.sw.bb19_crit_edge
    i32 30, label %entry.sw.bb19_crit_edge56
    i32 31, label %sw.bb20
    i32 32, label %sw.bb21
    i32 33, label %sw.bb22
  ]

entry.sw.bb19_crit_edge56:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge53:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge51:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45, %entry.sw.bb_crit_edge46, %entry.sw.bb_crit_edge47, %entry.sw.bb_crit_edge48, %entry.sw.bb_crit_edge49, %entry.sw.bb_crit_edge50, %entry.sw.bb_crit_edge51, %entry.sw.bb_crit_edge52, %entry.sw.bb_crit_edge53, %entry.sw.bb_crit_edge54, %entry.sw.bb_crit_edge55
  %add = add nuw nsw i32 %call1, 59
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %buck1_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %buck125_gpioindex = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buck125_gpioindex, align 4
  %add3 = add i32 %4, 25
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %buck2_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buck2_gpiodvs, align 1, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then6

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %buck125_gpioindex7 = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %buck125_gpioindex7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buck125_gpioindex7, align 4
  %add8 = add i32 %8, 34
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %buck5_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buck5_gpiodvs, align 2, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then14

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %buck125_gpioindex15 = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 11
  %11 = ptrtoint ptr %buck125_gpioindex15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buck125_gpioindex15, align 4
  %add16 = add i32 %12, 47
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge56
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call1)
  %cmp = icmp eq i32 %call1, 30
  %cond = select i1 %cmp, i32 2, i32 0
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %if.then14, %sw.bb12.sw.epilog_crit_edge, %sw.bb11, %if.then6, %sw.bb4.sw.epilog_crit_edge, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 84, %sw.bb22 ], [ 83, %sw.bb21 ], [ 82, %sw.bb20 ], [ 90, %sw.bb19 ], [ 58, %sw.bb18 ], [ %add16, %if.then14 ], [ 47, %sw.bb12.sw.epilog_crit_edge ], [ 45, %sw.bb11 ], [ %add8, %if.then6 ], [ 34, %sw.bb4.sw.epilog_crit_edge ], [ %add3, %if.then ], [ 25, %sw.bb2.sw.epilog_crit_edge ], [ %add, %sw.bb ], [ 43, %entry.sw.epilog_crit_edge ]
  %shift.0 = phi i32 [ 0, %sw.bb22 ], [ 0, %sw.bb21 ], [ 0, %sw.bb20 ], [ %cond, %sw.bb19 ], [ 0, %sw.bb18 ], [ 0, %if.then14 ], [ 0, %sw.bb12.sw.epilog_crit_edge ], [ 0, %sw.bb11 ], [ 0, %if.then6 ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 15, %sw.bb22 ], [ 15, %sw.bb21 ], [ 15, %sw.bb20 ], [ 3, %sw.bb19 ], [ 63, %sw.bb18 ], [ 63, %if.then14 ], [ 63, %sw.bb12.sw.epilog_crit_edge ], [ 63, %sw.bb11 ], [ 63, %if.then6 ], [ 63, %sw.bb4.sw.epilog_crit_edge ], [ 63, %if.then ], [ 63, %sw.bb2.sw.epilog_crit_edge ], [ 63, %sw.bb ], [ 63, %entry.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %reg.0, ptr %_reg, align 4
  %14 = ptrtoint ptr %_shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shift.0, ptr %_shift, align 4
  %15 = ptrtoint ptr %_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mask.0, ptr %_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_buck(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef writeonly %selector) #2 align 64 {
entry:
  %buckx_val.i = alloca [3 x ptr], align 4
  %side_effect.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = add i32 %call1, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call1, label %if.end.if.then14_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb5
    i32 23, label %sw.epilog
  ]

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

sw.bb:                                            ; preds = %if.end
  %buck1_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.not = icmp eq i8 %4, 0
  br i1 %tobool.not.not, label %sw.bb.if.then14_crit_edge, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb.if.then14_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

sw.bb5:                                           ; preds = %if.end
  %buck2_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buck2_gpiodvs, align 1, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.not = icmp eq i8 %6, 0
  br i1 %tobool6.not.not, label %sw.bb5.if.then14_crit_edge, label %sw.bb5.if.end16_crit_edge

sw.bb5.if.end16_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb5.if.then14_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

sw.epilog:                                        ; preds = %if.end
  %buck5_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buck5_gpiodvs, align 2, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not.not = icmp eq i8 %8, 0
  br i1 %tobool10.not.not, label %sw.epilog.if.then14_crit_edge, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.epilog.if.then14_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %sw.epilog.if.then14_crit_edge, %sw.bb5.if.then14_crit_edge, %sw.bb.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %call15 = tail call i32 @max8997_set_voltage_ldobuck(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr noundef %selector)
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog.if.end16_crit_edge, %sw.bb5.if.end16_crit_edge, %sw.bb.if.end16_crit_edge
  %arrayidx = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %call1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %if.end.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %max_uV)
  %cmp1.i = icmp sgt i32 %12, %max_uV
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max.i = getelementptr inbounds %struct.voltage_map_desc, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %min_uV)
  %cmp2.i = icmp slt i32 %14, %min_uV
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %15 = tail call i32 @llvm.smax.i32(i32 %12, i32 %min_uV) #6
  %step.i = getelementptr inbounds %struct.voltage_map_desc, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %step.i, align 4
  %sub.i = xor i32 %12, -1
  %add.i = add i32 %15, %sub.i
  %sub11.i = add i32 %add.i, %17
  %div.i = sdiv i32 %sub11.i, %17
  %mul.i = mul i32 %div.i, %17
  %add15.i = add i32 %mul.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %max_uV)
  %cmp16.i = icmp sgt i32 %add15.i, %max_uV
  br i1 %cmp16.i, label %if.end4.i.cleanup_crit_edge, label %max8997_get_voltage_proper_val.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max8997_get_voltage_proper_val.exit:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp18 = icmp slt i32 %div.i, 0
  br i1 %cmp18, label %max8997_get_voltage_proper_val.exit.cleanup_crit_edge, label %do.body.preheader

max8997_get_voltage_proper_val.exit.cleanup_crit_edge: ; preds = %max8997_get_voltage_proper_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %max8997_get_voltage_proper_val.exit
  %18 = getelementptr inbounds [3 x ptr], ptr %buckx_val.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x ptr], ptr %buckx_val.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %do.body.preheader
  %new_val.0 = phi i32 [ %inc, %if.end25.do.body_crit_edge ], [ %div.i, %do.body.preheader ]
  %tmp_val.0 = phi i32 [ %tmp_val.1, %if.end25.do.body_crit_edge ], [ -1, %do.body.preheader ]
  %tmp_idx.0 = phi i32 [ %tmp_idx.1, %if.end25.do.body_crit_edge ], [ -1, %do.body.preheader ]
  %tmp_dmg.0 = phi i32 [ %70, %if.end25.do.body_crit_edge ], [ 2147483647, %do.body.preheader ]
  %conv = trunc i32 %new_val.0 to i8
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buckx_val.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %side_effect.i) #6
  %20 = call ptr @memset(ptr %side_effect.i, i32 255, i32 32)
  %21 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call1.i, label %do.body.max8997_assess_side_effect.exit.thread_crit_edge [
    i32 19, label %do.body.sw.epilog.i_crit_edge
    i32 20, label %sw.bb2.i
    i32 23, label %sw.bb3.i
  ]

do.body.sw.epilog.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.body.max8997_assess_side_effect.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_assess_side_effect.exit.thread

sw.bb2.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %do.body.sw.epilog.i_crit_edge
  %cmp26.i = phi i1 [ true, %do.body.sw.epilog.i_crit_edge ], [ false, %sw.bb3.i ], [ false, %sw.bb2.i ]
  %cmp26.1.i = phi i1 [ false, %do.body.sw.epilog.i_crit_edge ], [ false, %sw.bb3.i ], [ true, %sw.bb2.i ]
  %cmp26.2.i = phi i1 [ false, %do.body.sw.epilog.i_crit_edge ], [ true, %sw.bb3.i ], [ false, %sw.bb2.i ]
  %rid.0.i = phi i32 [ 0, %do.body.sw.epilog.i_crit_edge ], [ 2, %sw.bb3.i ], [ 1, %sw.bb2.i ]
  %buck1_vol.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %buckx_val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buck1_vol.i, ptr %buckx_val.i, align 4
  %buck2_vol.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buck2_vol.i, ptr %18, align 4
  %buck5_vol.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buck5_vol.i, ptr %19, align 4
  %buck1_gpiodvs.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %buck1_gpiodvs.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buck1_gpiodvs.i, align 4, !range !216
  %buck2_gpiodvs.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %buck2_gpiodvs.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buck2_gpiodvs.i, align 1, !range !216
  %buck5_gpiodvs.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %buck5_gpiodvs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buck5_gpiodvs.i, align 2, !range !216
  %arrayidx15.i = getelementptr [3 x ptr], ptr %buckx_val.i, i32 0, i32 %rid.0.i
  %31 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx15.i, align 4
  %buck125_gpioindex.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp33.i = icmp eq i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp33.1.i = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp33.2.i = icmp eq i8 %30, 0
  %brmerge.i = select i1 %cmp26.i, i1 true, i1 %cmp33.i
  %brmerge128.i = select i1 %cmp26.1.i, i1 true, i1 %cmp33.1.i
  %brmerge129.i = select i1 %cmp26.2.i, i1 true, i1 %cmp33.2.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc68.i.for.body.i_crit_edge, %sw.epilog.i
  %new_idx.0 = phi i32 [ -1, %sw.epilog.i ], [ %new_idx.1, %for.inc68.i.for.body.i_crit_edge ]
  %i.0124.i = phi i32 [ 0, %sw.epilog.i ], [ %inc69.i, %for.inc68.i.for.body.i_crit_edge ]
  %min_side_effect.0123.i = phi i32 [ 2147483647, %sw.epilog.i ], [ %min_side_effect.2.ph.i, %for.inc68.i.for.body.i_crit_edge ]
  %arrayidx16.i = getelementptr i8, ptr %32, i32 %i.0124.i
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %conv)
  %cmp18.not.i = icmp eq i8 %34, %conv
  %arrayidx21.i = getelementptr [8 x i32], ptr %side_effect.i, i32 0, i32 %i.0124.i
  br i1 %cmp18.not.i, label %if.end.i90, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx21.i, align 4
  br label %for.inc68.i

if.end.i90:                                       ; preds = %for.body.i
  %36 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx21.i, align 4
  br i1 %brmerge.i, label %if.end.i90.cleanup.i_crit_edge, label %if.end36.i

if.end.i90.cleanup.i_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end36.i:                                       ; preds = %if.end.i90
  %arrayidx38.i = getelementptr i8, ptr %buck1_vol.i, i32 %i.0124.i
  %37 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %buck125_gpioindex.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buck125_gpioindex.i, align 4
  %arrayidx41.i = getelementptr i8, ptr %buck1_vol.i, i32 %40
  %41 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %42 to i32
  %sub.i91 = sub nsw i32 %conv39.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i91)
  %cmp43.i = icmp sgt i32 %sub.i91, 0
  br i1 %cmp43.i, label %if.end36.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end36.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i91)
  %cmp47.i = icmp slt i32 %sub.i91, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then49.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub51.i = sub nsw i32 0, %sub.i91
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then49.i, %if.end36.i.cleanup.sink.split.i_crit_edge
  %add.sink.i = phi i32 [ %sub51.i, %if.then49.i ], [ %sub.i91, %if.end36.i.cleanup.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.sink.i, ptr %arrayidx21.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.else.i.cleanup.i_crit_edge, %if.end.i90.cleanup.i_crit_edge
  br i1 %brmerge128.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end36.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1.i

if.end36.1.i:                                     ; preds = %cleanup.i
  %arrayidx38.1.i = getelementptr i8, ptr %buck2_vol.i, i32 %i.0124.i
  %44 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx38.1.i, align 1
  %conv39.1.i = zext i8 %45 to i32
  %46 = ptrtoint ptr %buck125_gpioindex.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buck125_gpioindex.i, align 4
  %arrayidx41.1.i = getelementptr i8, ptr %buck2_vol.i, i32 %47
  %48 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx41.1.i, align 1
  %conv42.1.i = zext i8 %49 to i32
  %sub.1.i = sub nsw i32 %conv39.1.i, %conv42.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.i)
  %cmp43.1.i = icmp sgt i32 %sub.1.i, 0
  br i1 %cmp43.1.i, label %if.then45.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1.i)
  %cmp47.1.i = icmp slt i32 %sub.1.i, 0
  br i1 %cmp47.1.i, label %if.then49.1.i, label %if.else.1.i.cleanup.1.i_crit_edge

if.else.1.i.cleanup.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1.i

if.then49.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx21.i, align 4
  %sub51.1.i = sub i32 %51, %sub.1.i
  br label %cleanup.1.sink.split.i

if.then45.1.i:                                    ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21.i, align 4
  %add.1.i = add i32 %53, %sub.1.i
  br label %cleanup.1.sink.split.i

cleanup.1.sink.split.i:                           ; preds = %if.then45.1.i, %if.then49.1.i
  %add.1.sink.i = phi i32 [ %add.1.i, %if.then45.1.i ], [ %sub51.1.i, %if.then49.1.i ]
  %54 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.1.sink.i, ptr %arrayidx21.i, align 4
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %cleanup.1.sink.split.i, %if.else.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  br i1 %brmerge129.i, label %cleanup.1.i.cleanup.2thread-pre-split.i_crit_edge, label %if.end36.2.i

cleanup.1.i.cleanup.2thread-pre-split.i_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2thread-pre-split.i

if.end36.2.i:                                     ; preds = %cleanup.1.i
  %arrayidx38.2.i = getelementptr i8, ptr %buck5_vol.i, i32 %i.0124.i
  %55 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx38.2.i, align 1
  %conv39.2.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %buck125_gpioindex.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buck125_gpioindex.i, align 4
  %arrayidx41.2.i = getelementptr i8, ptr %buck5_vol.i, i32 %58
  %59 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx41.2.i, align 1
  %conv42.2.i = zext i8 %60 to i32
  %sub.2.i = sub nsw i32 %conv39.2.i, %conv42.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2.i)
  %cmp43.2.i = icmp sgt i32 %sub.2.i, 0
  br i1 %cmp43.2.i, label %if.then45.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %if.end36.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2.i)
  %cmp47.2.i = icmp slt i32 %sub.2.i, 0
  br i1 %cmp47.2.i, label %if.then49.2.i, label %if.else.2.i.cleanup.2thread-pre-split.i_crit_edge

if.else.2.i.cleanup.2thread-pre-split.i_crit_edge: ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2thread-pre-split.i

if.then49.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx21.i, align 4
  %sub51.2.i = sub i32 %62, %sub.2.i
  store i32 %sub51.2.i, ptr %arrayidx21.i, align 4
  br label %cleanup.2.i

if.then45.2.i:                                    ; preds = %if.end36.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx21.i, align 4
  %add.2.i = add i32 %64, %sub.2.i
  store i32 %add.2.i, ptr %arrayidx21.i, align 4
  br label %cleanup.2.i

cleanup.2thread-pre-split.i:                      ; preds = %if.else.2.i.cleanup.2thread-pre-split.i_crit_edge, %cleanup.1.i.cleanup.2thread-pre-split.i_crit_edge
  %65 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.i = load i32, ptr %arrayidx21.i, align 4
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %cleanup.2thread-pre-split.i, %if.then45.2.i, %if.then49.2.i
  %66 = phi i32 [ %.pr.i, %cleanup.2thread-pre-split.i ], [ %add.2.i, %if.then45.2.i ], [ %sub51.2.i, %if.then49.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp55.i = icmp eq i32 %66, 0
  br i1 %cmp55.i, label %max8997_assess_side_effect.exit.thread103, label %if.end58.i

max8997_assess_side_effect.exit.thread103:        ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %side_effect.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buckx_val.i) #6
  br label %out

if.end58.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %min_side_effect.0123.i)
  %cmp60.i = icmp slt i32 %66, %min_side_effect.0123.i
  %spec.select107 = select i1 %cmp60.i, i32 %i.0124.i, i32 %new_idx.0
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 %min_side_effect.0123.i)
  br label %for.inc68.i

for.inc68.i:                                      ; preds = %if.end58.i, %if.then.i
  %new_idx.1 = phi i32 [ %new_idx.0, %if.then.i ], [ %spec.select107, %if.end58.i ]
  %min_side_effect.2.ph.i = phi i32 [ %min_side_effect.0123.i, %if.then.i ], [ %67, %if.end58.i ]
  %inc69.i = add nuw nsw i32 %i.0124.i, 1
  %exitcond.not.i = icmp eq i32 %inc69.i, 8
  br i1 %exitcond.not.i, label %for.end70.i, label %for.inc68.i.for.body.i_crit_edge

for.inc68.i.for.body.i_crit_edge:                 ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end70.i:                                      ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_idx.1)
  %cmp71.i = icmp eq i32 %new_idx.1, -1
  br i1 %cmp71.i, label %for.end70.i.max8997_assess_side_effect.exit.thread_crit_edge, label %max8997_assess_side_effect.exit

for.end70.i.max8997_assess_side_effect.exit.thread_crit_edge: ; preds = %for.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_assess_side_effect.exit.thread

max8997_assess_side_effect.exit.thread:           ; preds = %for.end70.i.max8997_assess_side_effect.exit.thread_crit_edge, %do.body.max8997_assess_side_effect.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %side_effect.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buckx_val.i) #6
  br label %if.end25

max8997_assess_side_effect.exit:                  ; preds = %for.end70.i
  %arrayidx75.i = getelementptr [8 x i32], ptr %side_effect.i, i32 0, i32 %new_idx.1
  %68 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx75.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %side_effect.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buckx_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp22 = icmp eq i32 %69, 0
  br i1 %cmp22, label %max8997_assess_side_effect.exit.out_crit_edge, label %max8997_assess_side_effect.exit.if.end25_crit_edge

max8997_assess_side_effect.exit.if.end25_crit_edge: ; preds = %max8997_assess_side_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

max8997_assess_side_effect.exit.out_crit_edge:    ; preds = %max8997_assess_side_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end25:                                         ; preds = %max8997_assess_side_effect.exit.if.end25_crit_edge, %max8997_assess_side_effect.exit.thread
  %retval.2.i102 = phi i32 [ -22, %max8997_assess_side_effect.exit.thread ], [ %69, %max8997_assess_side_effect.exit.if.end25_crit_edge ]
  %new_idx.2101 = phi i32 [ -1, %max8997_assess_side_effect.exit.thread ], [ %new_idx.1, %max8997_assess_side_effect.exit.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_dmg.0, i32 %retval.2.i102)
  %cmp26 = icmp sgt i32 %tmp_dmg.0, %retval.2.i102
  %tmp_val.1 = select i1 %cmp26, i32 %new_val.0, i32 %tmp_val.0
  %tmp_idx.1 = select i1 %cmp26, i32 %new_idx.2101, i32 %tmp_idx.0
  %70 = tail call i32 @llvm.smin.i32(i32 %tmp_dmg.0, i32 %retval.2.i102)
  %inc = add i32 %new_val.0, 1
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %10, align 4
  %73 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %step.i, align 4
  %mul = mul i32 %74, %inc
  %add = add i32 %mul, %72
  %75 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max.i, align 4
  %cmp30.not = icmp sgt i32 %add, %76
  br i1 %cmp30.not, label %do.end, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %if.end25
  %ignore_gpiodvs_side_effect = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 12
  %77 = ptrtoint ptr %ignore_gpiodvs_side_effect to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ignore_gpiodvs_side_effect, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp34 = icmp eq i8 %78, 0
  br i1 %cmp34, label %do.end.cleanup_crit_edge, label %do.end40

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %buck125_gpioindex = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 11
  %79 = ptrtoint ptr %buck125_gpioindex to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buck125_gpioindex, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %80, i32 noundef %tmp_idx.1) #9
  br label %out

out:                                              ; preds = %do.end40, %max8997_assess_side_effect.exit.out_crit_edge, %max8997_assess_side_effect.exit.thread103
  %new_idx.3 = phi i32 [ %tmp_idx.1, %do.end40 ], [ %i.0124.i, %max8997_assess_side_effect.exit.thread103 ], [ %new_idx.1, %max8997_assess_side_effect.exit.out_crit_edge ]
  %new_val.1 = phi i32 [ %tmp_val.1, %do.end40 ], [ %new_val.0, %max8997_assess_side_effect.exit.thread103 ], [ %new_val.0, %max8997_assess_side_effect.exit.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_idx.3)
  %cmp41 = icmp slt i32 %new_idx.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_val.1)
  %cmp44 = icmp slt i32 %new_val.1, 0
  %or.cond89 = select i1 %cmp41, i1 true, i1 %cmp44
  br i1 %or.cond89, label %out.cleanup_crit_edge, label %if.end47

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %buck125_gpioindex48 = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 11
  %81 = ptrtoint ptr %buck125_gpioindex48 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %new_idx.3, ptr %buck125_gpioindex48, align 4
  %and.i = and i32 %new_idx.3, 1
  %shr15.i = lshr i32 %new_idx.3, 1
  %and2.i = and i32 %shr15.i, 1
  %shr416.i = lshr i32 %new_idx.3, 2
  %and5.i = and i32 %shr416.i, 1
  %buck125_gpios.i = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 10
  %82 = ptrtoint ptr %buck125_gpios.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buck125_gpios.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %83) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %and5.i) #6
  %arrayidx7.i = getelementptr %struct.max8997_data, ptr %call, i32 0, i32 10, i32 1
  %84 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx7.i, align 4
  %call.i17.i = tail call ptr @gpio_to_desc(i32 noundef %85) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i17.i, i32 noundef %and2.i) #6
  %arrayidx9.i = getelementptr %struct.max8997_data, ptr %call, i32 0, i32 10, i32 2
  %86 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx9.i, align 4
  %call.i18.i = tail call ptr @gpio_to_desc(i32 noundef %87) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i18.i, i32 noundef %and.i) #6
  %88 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %new_val.1, ptr %selector, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %out.cleanup_crit_edge, %do.end.cleanup_crit_edge, %max8997_get_voltage_proper_val.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call15, %if.then14 ], [ -22, %entry.cleanup_crit_edge ], [ %div.i, %max8997_get_voltage_proper_val.exit.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %out.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_buck_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %arrayidx = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_selector, i32 %old_selector)
  %cmp.not = icmp ugt i32 %new_selector, %old_selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb4
    i32 23, label %sw.bb8
    i32 22, label %if.end.sw.bb12_crit_edge
  ]

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %buck1_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %buck1_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buck1_gpiodvs, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.bb12_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.bb12_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.bb4:                                           ; preds = %if.end
  %buck2_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buck2_gpiodvs, align 1, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %sw.bb4.sw.bb12_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.sw.bb12_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.bb8:                                           ; preds = %if.end
  %buck5_gpiodvs = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %buck5_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buck5_gpiodvs, align 2, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %sw.bb8.sw.bb12_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.sw.bb12_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb8.sw.bb12_crit_edge, %sw.bb4.sw.bb12_crit_edge, %sw.bb.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge
  %step = getelementptr inbounds %struct.voltage_map_desc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %sub = sub i32 %new_selector, %old_selector
  %mul = mul i32 %10, %sub
  %ramp_delay = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ramp_delay, align 4
  %mul13 = mul i32 %12, 1000
  %add = add i32 %mul, -1
  %sub14 = add i32 %add, %mul13
  %div = udiv i32 %sub14, %mul13
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb8.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %sw.bb12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_safeout_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #6
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %shift, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask, align 4, !annotation !217
  %call2.off = add i32 %call2, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.off)
  %switch = icmp ult i32 %call2.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %shl = shl i32 %selector, %10
  %conv7 = trunc i32 %shl to i8
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %shl8 = shl i32 %12, %10
  %conv9 = trunc i32 %shl8 to i8
  %call10 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %conv, i8 noundef zeroext %conv7, i8 noundef zeroext %conv9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_list_voltage_charger_cv(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call)
  %cmp.not = icmp eq i32 %call, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %selector)
  %0 = icmp ult i32 %selector, 16
  %or.cond = and i1 %cmp.not, %0
  br i1 %or.cond, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.max8997_list_voltage_charger_cv, i32 0, i32 %selector
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_charger_cv(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef writeonly %selector) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev = getelementptr inbounds %struct.max8997_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #6
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %shift, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask, align 4, !annotation !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 31
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg, ptr noundef nonnull %shift, ptr noundef nonnull %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %max_uV)
  %cmp6 = icmp slt i32 %max_uV, 4000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4350000, i32 %min_uV)
  %cmp7 = icmp sgt i32 %min_uV, 4350000
  %or.cond = or i1 %cmp7, %cmp6
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000001, i32 %min_uV)
  %cmp10 = icmp slt i32 %min_uV, 4000001
  br i1 %cmp10, label %if.end9.if.end32_crit_edge, label %if.else

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4200001, i32 %min_uV)
  %cmp12 = icmp ult i32 %min_uV, 4200001
  call void @__sanitizer_cov_trace_const_cmp4(i32 4199999, i32 %max_uV)
  %cmp13 = icmp ugt i32 %max_uV, 4199999
  %or.cond61 = and i1 %cmp12, %cmp13
  br i1 %or.cond61, label %if.else.if.end32_crit_edge, label %if.else15

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else15:                                        ; preds = %if.else
  %sub = add nsw i32 %min_uV, -4000001
  %div62 = udiv i32 %sub, 20000
  %sub16 = add nsw i32 %max_uV, -4000000
  %div1763 = udiv i32 %sub16, 20000
  call void @__sanitizer_cov_trace_cmp4(i32 %div62, i32 %div1763)
  %cmp19.not = icmp ult i32 %div62, %div1763
  br i1 %cmp19.not, label %if.end21, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.else15
  %add = add nuw nsw i32 %div62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %sub)
  %cmp22 = icmp ult i32 %sub, 260000
  br i1 %cmp22, label %if.end21.if.end32_crit_edge, label %if.else24

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 279999, i32 %sub16)
  %cmp25 = icmp ugt i32 %sub16, 279999
  br i1 %cmp25, label %if.else24.if.end32_crit_edge, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else24.if.end32_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.else24.if.end32_crit_edge, %if.end21.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  %val.0 = phi i32 [ 1, %if.end9.if.end32_crit_edge ], [ 0, %if.else.if.end32_crit_edge ], [ 15, %if.else24.if.end32_crit_edge ], [ %add, %if.end21.if.end32_crit_edge ]
  %7 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val.0, ptr %selector, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %conv34 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %shl = shl i32 %val.0, %11
  %conv36 = trunc i32 %shl to i8
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %conv37 = trunc i32 %13 to i8
  %call38 = tail call i32 @max8997_update_reg(ptr noundef %3, i8 noundef zeroext %conv34, i8 noundef zeroext %conv36, i8 noundef zeroext %conv37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.else24.cleanup_crit_edge, %if.else15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.else15.cleanup_crit_edge ], [ -22, %if.else24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %switch = icmp eq i32 %0, 32
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 @max8997_set_voltage_ldobuck(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA, ptr noundef nonnull %dummy)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %shift.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %switch = icmp eq i32 %0, 32
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %iodev.i = getelementptr inbounds %struct.max8997_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %iodev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iodev.i, align 4
  %i2c1.i = getelementptr inbounds %struct.max8997_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift.i) #6
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %shift.i, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %mask.i, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  %call2.i = call fastcc i32 @max8997_get_voltage_register(ptr noundef %rdev, ptr noundef nonnull %reg.i, ptr noundef nonnull %shift.i, ptr noundef nonnull %mask.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.max8997_get_voltage_sel.exit_crit_edge

if.end.max8997_get_voltage_sel.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_sel.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %conv.i = trunc i32 %10 to i8
  %call3.i = call i32 @max8997_read_reg(ptr noundef %4, i8 noundef zeroext %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %max8997_get_voltage_sel.exit.thread, label %if.end.i.max8997_get_voltage_sel.exit_crit_edge

if.end.i.max8997_get_voltage_sel.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_get_voltage_sel.exit

max8997_get_voltage_sel.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift.i, align 4
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %14 to i32
  %shr.i = lshr i32 %conv7.i, %12
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %if.end5

max8997_get_voltage_sel.exit:                     ; preds = %if.end.i.max8997_get_voltage_sel.exit_crit_edge, %if.end.max8997_get_voltage_sel.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.max8997_get_voltage_sel.exit_crit_edge ], [ %call3.i, %if.end.i.max8997_get_voltage_sel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %max8997_get_voltage_sel.exit.cleanup_crit_edge, label %max8997_get_voltage_sel.exit.if.end5_crit_edge

max8997_get_voltage_sel.exit.if.end5_crit_edge:   ; preds = %max8997_get_voltage_sel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

max8997_get_voltage_sel.exit.cleanup_crit_edge:   ; preds = %max8997_get_voltage_sel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %max8997_get_voltage_sel.exit.if.end5_crit_edge, %max8997_get_voltage_sel.exit.thread
  %retval.0.i18 = phi i32 [ %and.i, %max8997_get_voltage_sel.exit.thread ], [ %retval.0.i, %max8997_get_voltage_sel.exit.if.end5_crit_edge ]
  %call.i13 = call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call.i13)
  %cmp1.i = icmp ugt i32 %call.i13, 33
  br i1 %cmp1.i, label %if.end5.cleanup_crit_edge, label %if.end.i14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i14:                                       ; preds = %if.end5
  %arrayidx.i = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %call.i13
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %18, null
  br i1 %cmp2.i, label %if.end.i14.cleanup_crit_edge, label %if.end4.i

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %step.i = getelementptr inbounds %struct.voltage_map_desc, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %step.i, align 4
  %mul.i = mul i32 %22, %retval.0.i18
  %add.i = add i32 %mul.i, %20
  %max.i = getelementptr inbounds %struct.voltage_map_desc, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp5.i = icmp sgt i32 %add.i, %24
  %.add.i = select i1 %cmp5.i, i32 -22, i32 %add.i
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %max8997_get_voltage_sel.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %max8997_get_voltage_sel.exit.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end.i14.cleanup_crit_edge ], [ %.add.i, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !187, !189, !190, !191, !192, !194, !196, !198, !200, !202, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_max8997_regulator__290_1214_max8997_pmic_init4, !1, !"__initcall__kmod_max8997_regulator__290_1214_max8997_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8997-regulator.c", i32 1214, i32 1}
!2 = !{ptr @__exitcall_max8997_pmic_cleanup, !3, !"__exitcall_max8997_pmic_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8997-regulator.c", i32 1220, i32 1}
!4 = !{ptr @__UNIQUE_ID_description291, !5, !"__UNIQUE_ID_description291", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8997-regulator.c", i32 1222, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max8997-regulator.c", i32 1223, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max8997-regulator.c", i32 1224, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8997-regulator.c", i32 1204, i32 11}
!13 = !{ptr @max8997_pmic_driver, !14, !"max8997_pmic_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8997-regulator.c", i32 1202, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8997-regulator.c", i32 1022, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max8997_pmic_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max8997_pmic_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max8997-regulator.c", i32 1122, i32 4}
!25 = !{ptr @max8997_pmic_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8997_pmic_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max8997-regulator.c", i32 1127, i32 6}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/max8997-regulator.c", i32 1132, i32 6}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max8997-regulator.c", i32 1137, i32 5}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/max8997-regulator.c", i32 1187, i32 4}
!35 = !{ptr @max8997_pmic_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max8997_pmic_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/max8997-regulator.c", i32 904, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @max8997_pmic_dt_parse_pdata._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max8997-regulator.c", i32 908, i32 48}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max8997-regulator.c", i32 910, i32 3}
!46 = !{ptr @max8997_pmic_dt_parse_pdata._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max8997-regulator.c", i32 932, i32 4}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @max8997_pmic_dt_parse_pdata._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/max8997-regulator.c", i32 946, i32 31}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/max8997-regulator.c", i32 949, i32 31}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max8997-regulator.c", i32 952, i32 31}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/max8997-regulator.c", i32 962, i32 5}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max8997-regulator.c", i32 968, i32 5}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @max8997_pmic_dt_parse_pdata._entry.29, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/max8997-regulator.c", i32 973, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/max8997-regulator.c", i32 980, i32 5}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/max8997-regulator.c", i32 982, i32 3}
!72 = !{ptr @max8997_pmic_dt_parse_pdata._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/max8997-regulator.c", i32 987, i32 5}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/max8997-regulator.c", i32 989, i32 3}
!78 = !{ptr @max8997_pmic_dt_parse_pdata._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/max8997-regulator.c", i32 994, i32 5}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/max8997-regulator.c", i32 996, i32 3}
!84 = !{ptr @max8997_pmic_dt_parse_pdata._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @max8997_pmic_dt_parse_pdata._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/max8997-regulator.c", i32 884, i32 6}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/max8997-regulator.c", i32 886, i32 4}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @max8997_pmic_dt_parse_dvs_gpio._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @max8997_pmic_dt_parse_dvs_gpio._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @buck1245_voltage_map_desc, !94, !"buck1245_voltage_map_desc", i1 false, i1 false}
!94 = !{!"../drivers/regulator/max8997-regulator.c", i32 71, i32 38}
!95 = !{ptr @reg_voltage_map, !96, !"reg_voltage_map", i1 false, i1 false}
!96 = !{!"../drivers/regulator/max8997-regulator.c", i32 88, i32 39}
!97 = !{ptr @ldo_voltage_map_desc, !98, !"ldo_voltage_map_desc", i1 false, i1 false}
!98 = !{!"../drivers/regulator/max8997-regulator.c", i32 67, i32 38}
!99 = !{ptr @buck37_voltage_map_desc, !100, !"buck37_voltage_map_desc", i1 false, i1 false}
!100 = !{!"../drivers/regulator/max8997-regulator.c", i32 75, i32 38}
!101 = !{ptr @charger_current_map_desc, !102, !"charger_current_map_desc", i1 false, i1 false}
!102 = !{!"../drivers/regulator/max8997-regulator.c", i32 80, i32 38}
!103 = !{ptr @topoff_current_map_desc, !104, !"topoff_current_map_desc", i1 false, i1 false}
!104 = !{!"../drivers/regulator/max8997-regulator.c", i32 84, i32 38}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/max8997-regulator.c", i32 838, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/max8997-regulator.c", i32 839, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/max8997-regulator.c", i32 840, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/max8997-regulator.c", i32 841, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/max8997-regulator.c", i32 842, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/regulator/max8997-regulator.c", i32 843, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/max8997-regulator.c", i32 844, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/max8997-regulator.c", i32 845, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/max8997-regulator.c", i32 846, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/max8997-regulator.c", i32 847, i32 2}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/max8997-regulator.c", i32 848, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/max8997-regulator.c", i32 849, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/regulator/max8997-regulator.c", i32 850, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/max8997-regulator.c", i32 851, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/max8997-regulator.c", i32 852, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/max8997-regulator.c", i32 853, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/max8997-regulator.c", i32 854, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/max8997-regulator.c", i32 855, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/regulator/max8997-regulator.c", i32 856, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/max8997-regulator.c", i32 857, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/max8997-regulator.c", i32 858, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/max8997-regulator.c", i32 859, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/max8997-regulator.c", i32 860, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/regulator/max8997-regulator.c", i32 861, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/regulator/max8997-regulator.c", i32 862, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/max8997-regulator.c", i32 863, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/max8997-regulator.c", i32 864, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/max8997-regulator.c", i32 865, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/max8997-regulator.c", i32 866, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/max8997-regulator.c", i32 867, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/max8997-regulator.c", i32 868, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/regulator/max8997-regulator.c", i32 869, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/max8997-regulator.c", i32 870, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/regulator/max8997-regulator.c", i32 871, i32 2}
!173 = !{ptr @regulators, !174, !"regulators", i1 false, i1 false}
!174 = !{!"../drivers/regulator/max8997-regulator.c", i32 837, i32 30}
!175 = !{ptr @max8997_ldo_ops, !176, !"max8997_ldo_ops", i1 false, i1 false}
!176 = !{!"../drivers/regulator/max8997-regulator.c", i32 735, i32 35}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/regulator/max8997-regulator.c", i32 724, i32 3}
!179 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug288, !178, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/max8997-regulator.c", i32 729, i32 2}
!184 = !{ptr @max8997_reg_disable_suspend.__UNIQUE_ID_ddebug289, !183, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!185 = !{ptr @max8997_buck_ops, !186, !"max8997_buck_ops", i1 false, i1 false}
!186 = !{!"../drivers/regulator/max8997-regulator.c", i32 745, i32 35}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/regulator/max8997-regulator.c", i32 674, i32 2}
!189 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @max8997_set_voltage_buck._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @max8997_set_voltage_buck._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @max8997_fixedvolt_ops, !193, !"max8997_fixedvolt_ops", i1 false, i1 false}
!193 = !{!"../drivers/regulator/max8997-regulator.c", i32 756, i32 35}
!194 = !{ptr @max8997_safeout_ops, !195, !"max8997_safeout_ops", i1 false, i1 false}
!195 = !{!"../drivers/regulator/max8997-regulator.c", i32 764, i32 35}
!196 = !{ptr @max8997_fixedstate_ops, !197, !"max8997_fixedstate_ops", i1 false, i1 false}
!197 = !{!"../drivers/regulator/max8997-regulator.c", i32 774, i32 35}
!198 = !{ptr @max8997_charger_ops, !199, !"max8997_charger_ops", i1 false, i1 false}
!199 = !{!"../drivers/regulator/max8997-regulator.c", i32 808, i32 35}
!200 = !{ptr @max8997_charger_fixedstate_ops, !201, !"max8997_charger_fixedstate_ops", i1 false, i1 false}
!201 = !{!"../drivers/regulator/max8997-regulator.c", i32 816, i32 35}
!202 = !{ptr @safeoutvolt, !203, !"safeoutvolt", i1 false, i1 false}
!203 = !{!"../drivers/regulator/max8997-regulator.c", i32 42, i32 27}
!204 = !{ptr @max8997_pmic_id, !205, !"max8997_pmic_id", i1 false, i1 false}
!205 = !{!"../drivers/regulator/max8997-regulator.c", i32 1196, i32 40}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i8 0, i8 2}
!217 = !{!"auto-init"}
!218 = !{i64 2148176936, i64 2148176941, i64 2148176954, i64 2148176998, i64 2148177032, i64 2148177053}
