; ModuleID = '/llk/IR_all_yes/drivers/regulator/ab8500.c_pt.bc'
source_filename = "../drivers/regulator/ab8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ab8500_regulator_info = type { ptr, %struct.regulator_desc, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_shared_mode = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_ab8500__288_1753_ab8500_regulator_init4 = internal global ptr @ab8500_regulator_init, section ".initcall4.init", align 4
@ab8500_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ab8500_regulator_exit = internal global ptr @ab8500_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [37 x i8] c"ab8500.file=drivers/regulator/ab8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [22 x i8] c"ab8500.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"ab8500.author=Sundar Iyer <sundar.iyer@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [61 x i8] c"ab8500.author=Bengt Jonsson <bengt.g.jonsson@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"ab8500.author=Daniel Willerud <daniel.willerud@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [74 x i8] c"ab8500.description=Regulator Driver for ST-Ericsson AB8500 Mixed-Sig PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [39 x i8] c"ab8500.alias=platform:ab8500-regulator\00", section ".modinfo", align 1
@ab8500_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Failed to register ab8500 regulator: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_regulator_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/ab8500.c\00", [37 x i8] zeroinitializer }, align 32
@ab8500_regulator_init._entry_ptr = internal global ptr @ab8500_regulator_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500-regulator\00", [47 x i8] zeroinitializer }, align 32
@ab8500_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1710, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"null mfd parent\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ab8500_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_regulator_probe._entry_ptr = internal global ptr @ab8500_regulator_probe._entry, section ".printk_index", align 4
@abx500_regulator.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@abx500_regulator.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@abx500_regulator.4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ab8500_regulator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_regulator_probe._entry_ptr.10 = internal global ptr @ab8500_regulator_probe._entry.8, section ".printk_index", align 4
@ab8505_regulator_info = internal global { [13 x %struct.ab8500_regulator_info], [880 x i8] } { [13 x %struct.ab8500_regulator_info] [%struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 31, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 32, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux3_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 10, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 33, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 46, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 47, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux56_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 2000, i8 1, i8 85, i8 24, i8 16, i8 24, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 85, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux56_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 2000, i8 1, i8 86, i8 24, i8 16, i8 24, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 86, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 7, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vintcore_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 3, i8 -128, i8 68, i8 4, i8 68, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 -128, i8 56 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 10000, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 3, i8 -128, i8 -126, i8 2, i8 -126, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaudio_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 87, i8 112 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @ab8500_regulator_anamic_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo_anamic1_shared, i32 0, i8 3, i8 -125, i8 8, i8 8, i8 0, i8 0, i8 1, i8 84, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @ab8500_regulator_anamic_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo_anamic2_shared, i32 0, i8 3, i8 -125, i8 16, i8 16, i8 0, i8 0, i8 1, i8 84, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1800000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vana_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 4, i8 6, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 41, i8 7 }], [880 x i8] zeroinitializer }, align 32
@ab8505_regulator_match = internal global { [13 x %struct.of_regulator_match], [92 x i8] } { [13 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.53, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.54, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.55, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.56, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.57, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.58, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.59, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.60, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.65, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }], [92 x i8] zeroinitializer }, align 32
@ab8500_regulator_info = internal global { [10 x %struct.ab8500_regulator_info], [672 x i8] } { [10 x %struct.ab8500_regulator_info] [%struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.11, ptr @.str.66, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 31, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.12, ptr @.str.66, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 32, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.13, ptr @.str.66, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux3_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 450, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 10, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 33, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 7, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vintcore_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 750, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 3, i8 -128, i8 68, i8 68, i8 68, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 -128, i8 56 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 3, i8 -128, i8 -126, i8 2, i8 -126, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 140, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 8, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 16, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1800000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 420, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1200000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 140, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 4, i8 6, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }], [672 x i8] zeroinitializer }, align 32
@ab8500_regulator_match = internal global { [10 x %struct.of_regulator_match], [56 x i8] } { [10 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.53, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.54, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.55, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.59, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.69, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.70, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.65, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX1\00", [23 x i8] zeroinitializer }, align 32
@ab8500_regulator_volt_mode_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ab8500_regulator_set_voltage_sel, ptr null, ptr @ab8500_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo_vauxn_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1100000, i32 1200000, i32 1300000, i32 1400000, i32 1500000, i32 1800000, i32 1850000, i32 1900000, i32 2500000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX2\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX3\00", [23 x i8] zeroinitializer }, align 32
@ldo_vaux3_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2100000, i32 2500000, i32 2750000, i32 2790000, i32 2910000], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX4\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX5\00", [23 x i8] zeroinitializer }, align 32
@ldo_vaux56_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1050000, i32 1100000, i32 1200000, i32 1500000, i32 2200000, i32 2500000, i32 2790000], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX6\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LDO-INTCORE\00", [20 x i8] zeroinitializer }, align 32
@ldo_vintcore_voltages = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000], [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO-ADC\00", [24 x i8] zeroinitializer }, align 32
@ab8500_regulator_mode_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fixed_2000000_voltage = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2000000], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO-AUDIO\00", [22 x i8] zeroinitializer }, align 32
@ab8500_regulator_volt_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ab8500_regulator_set_voltage_sel, ptr null, ptr @ab8500_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo_vaudio_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2600000], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LDO-ANAMIC1\00", [20 x i8] zeroinitializer }, align 32
@ab8500_regulator_anamic_mode_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fixed_2050000_voltage = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2050000], [28 x i8] zeroinitializer }, align 32
@ldo_anamic1_shared = internal global { %struct.ab8500_shared_mode, [24 x i8] } { %struct.ab8500_shared_mode { ptr getelementptr (i8, ptr @ab8505_regulator_info, i64 2720), i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LDO-ANAMIC2\00", [20 x i8] zeroinitializer }, align 32
@ldo_anamic2_shared = internal global { %struct.ab8500_shared_mode, [24 x i8] } { %struct.ab8500_shared_mode { ptr getelementptr (i8, ptr @ab8505_regulator_info, i64 2448), i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-AUX8\00", [23 x i8] zeroinitializer }, align 32
@ab8500_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fixed_1800000_voltage = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1800000], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO-ANA\00", [24 x i8] zeroinitializer }, align 32
@ldo_vana_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000], [32 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 573, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator info null pointer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_regulator_set_voltage_sel\00", [63 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_voltage_sel._entry_ptr = internal global ptr @ab8500_regulator_set_voltage_sel._entry, section ".printk_index", align 4
@ab8500_regulator_set_voltage_sel._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't set voltage reg for regulator\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_voltage_sel._entry_ptr.28 = internal global ptr @ab8500_regulator_set_voltage_sel._entry.26, section ".printk_index", align 4
@ab8500_regulator_get_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.2, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ab8500_regulator_get_voltage_sel\00", [63 x i8] zeroinitializer }, align 32
@ab8500_regulator_get_voltage_sel._entry_ptr = internal global ptr @ab8500_regulator_get_voltage_sel._entry, section ".printk_index", align 4
@ab8500_regulator_get_voltage_sel._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 551, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't read voltage reg for regulator\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_regulator_get_voltage_sel._entry_ptr.32 = internal global ptr @ab8500_regulator_get_voltage_sel._entry.30, section ".printk_index", align 4
@ab8500_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.33, ptr @.str.2, i32 299, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ab8500_regulator_enable\00", [40 x i8] zeroinitializer }, align 32
@ab8500_regulator_enable._entry_ptr = internal global ptr @ab8500_regulator_enable._entry, section ".printk_index", align 4
@ab8500_regulator_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 308, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't set enable bits for regulator\0A\00", [56 x i8] zeroinitializer }, align 32
@ab8500_regulator_enable._entry_ptr.36 = internal global ptr @ab8500_regulator_enable._entry.34, section ".printk_index", align 4
@ab8500_regulator_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.37, ptr @.str.2, i32 326, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_regulator_disable\00", [39 x i8] zeroinitializer }, align 32
@ab8500_regulator_disable._entry_ptr = internal global ptr @ab8500_regulator_disable._entry, section ".printk_index", align 4
@ab8500_regulator_disable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 335, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't set disable bits for regulator\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_regulator_disable._entry_ptr.40 = internal global ptr @ab8500_regulator_disable._entry.38, section ".printk_index", align 4
@ab8500_regulator_is_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.41, ptr @.str.2, i32 354, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ab8500_regulator_is_enabled\00", [36 x i8] zeroinitializer }, align 32
@ab8500_regulator_is_enabled._entry_ptr = internal global ptr @ab8500_regulator_is_enabled._entry, section ".printk_index", align 4
@ab8500_regulator_is_enabled._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't read 0x%x register\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_regulator_is_enabled._entry_ptr.44 = internal global ptr @ab8500_regulator_is_enabled._entry.42, section ".printk_index", align 4
@ab8500_regulator_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.45, ptr @.str.2, i32 408, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_regulator_set_mode\00", [38 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_mode._entry_ptr = internal global ptr @ab8500_regulator_set_mode._entry, section ".printk_index", align 4
@shared_mode_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shared_mode_mutex, i64 52), ptr getelementptr (i8, ptr @shared_mode_mutex, i64 52) }, ptr @shared_mode_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_mode._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't set regulator mode\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_regulator_set_mode._entry_ptr.48 = internal global ptr @ab8500_regulator_set_mode._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"shared_mode_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shared_mode_mutex\00", [46 x i8] zeroinitializer }, align 32
@ab8500_regulator_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.51, ptr @.str.2, i32 497, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_regulator_get_mode\00", [38 x i8] zeroinitializer }, align 32
@ab8500_regulator_get_mode._entry_ptr = internal global ptr @ab8500_regulator_get_mode._entry, section ".printk_index", align 4
@ab8500_regulator_get_optimum_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.52, ptr @.str.2, i32 387, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_regulator_get_optimum_mode\00", [62 x i8] zeroinitializer }, align 32
@ab8500_regulator_get_optimum_mode._entry_ptr = internal global ptr @ab8500_regulator_get_optimum_mode._entry, section ".printk_index", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux1\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux2\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux3\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux4\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux5\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux6\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_ldo_intcore\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500_ldo_adc\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_ldo_audio\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_ldo_anamic1\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_ldo_anamic2\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_aux8\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ab8500_ldo_ana\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDO-TVOUT\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO-DMIC\00", [23 x i8] zeroinitializer }, align 32
@fixed_1200000_voltage = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1200000], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_ldo_tvout\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ab8500_ldo_dmic\00", [16 x i8] zeroinitializer }, align 32
@ab8500_regulator_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1695, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_regulator_register\00", [38 x i8] zeroinitializer }, align 32
@ab8500_regulator_register._entry_ptr = internal global ptr @ab8500_regulator_register._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"ab8500_regulator_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1736, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1749, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1739, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1710, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"abx500_regulator.0\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"abx500_regulator.1\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"abx500_regulator.4\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1720, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"ab8505_regulator_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 860, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"ab8505_regulator_match\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1619, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"ab8500_regulator_info\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 646, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"ab8500_regulator_match\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1606, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 869, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"ab8500_regulator_volt_mode_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 597, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"ldo_vauxn_voltages\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 200, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 890, i32 13 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 911, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"ldo_vaux3_voltages\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 219, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 932, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 955, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"ldo_vaux56_voltages\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 230, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 977, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 999, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"ldo_vintcore_voltages\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 241, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1026, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"ab8500_regulator_mode_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 618, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"fixed_2000000_voltage\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 259, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1045, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"ab8500_regulator_volt_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 609, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"ldo_vaudio_voltages\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 278, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1063, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [33 x i8] c"ab8500_regulator_anamic_mode_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 635, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"fixed_2050000_voltage\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 263, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"ldo_anamic1_shared\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1144, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1084, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"ldo_anamic2_shared\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1148, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1105, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"ab8500_regulator_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 628, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"fixed_1800000_voltage\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 255, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1123, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"ldo_vana_voltages\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 267, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 573, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 585, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 541, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 550, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 299, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 307, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 326, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 334, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 354, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 361, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 408, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"shared_mode_mutex\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 463, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 289, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 497, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 387, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1620, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1621, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1622, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1623, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1624, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1625, i32 12 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1626, i32 12 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1627, i32 12 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1628, i32 12 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1629, i32 12 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1630, i32 12 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1631, i32 12 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1632, i32 12 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 663, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 752, i32 13 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 819, i32 13 }
@___asan_gen_.358 = private unnamed_addr constant [22 x i8] c"fixed_1200000_voltage\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 251, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1611, i32 12 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1615, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [30 x i8] c"../drivers/regulator/ab8500.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1694, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_ab8500_regulator_exit, ptr @__initcall__kmod_ab8500__288_1753_ab8500_regulator_init4, ptr @ab8500_regulator_disable._entry, ptr @ab8500_regulator_disable._entry.38, ptr @ab8500_regulator_disable._entry_ptr, ptr @ab8500_regulator_disable._entry_ptr.40, ptr @ab8500_regulator_enable._entry, ptr @ab8500_regulator_enable._entry.34, ptr @ab8500_regulator_enable._entry_ptr, ptr @ab8500_regulator_enable._entry_ptr.36, ptr @ab8500_regulator_exit, ptr @ab8500_regulator_get_mode._entry, ptr @ab8500_regulator_get_mode._entry_ptr, ptr @ab8500_regulator_get_optimum_mode._entry, ptr @ab8500_regulator_get_optimum_mode._entry_ptr, ptr @ab8500_regulator_get_voltage_sel._entry, ptr @ab8500_regulator_get_voltage_sel._entry.30, ptr @ab8500_regulator_get_voltage_sel._entry_ptr, ptr @ab8500_regulator_get_voltage_sel._entry_ptr.32, ptr @ab8500_regulator_init._entry, ptr @ab8500_regulator_init._entry_ptr, ptr @ab8500_regulator_is_enabled._entry, ptr @ab8500_regulator_is_enabled._entry.42, ptr @ab8500_regulator_is_enabled._entry_ptr, ptr @ab8500_regulator_is_enabled._entry_ptr.44, ptr @ab8500_regulator_probe._entry, ptr @ab8500_regulator_probe._entry.8, ptr @ab8500_regulator_probe._entry_ptr, ptr @ab8500_regulator_probe._entry_ptr.10, ptr @ab8500_regulator_register._entry, ptr @ab8500_regulator_register._entry_ptr, ptr @ab8500_regulator_set_mode._entry, ptr @ab8500_regulator_set_mode._entry.46, ptr @ab8500_regulator_set_mode._entry_ptr, ptr @ab8500_regulator_set_mode._entry_ptr.48, ptr @ab8500_regulator_set_voltage_sel._entry, ptr @ab8500_regulator_set_voltage_sel._entry.26, ptr @ab8500_regulator_set_voltage_sel._entry_ptr, ptr @ab8500_regulator_set_voltage_sel._entry_ptr.28, ptr @ab8500_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @abx500_regulator.0, ptr @abx500_regulator.1, ptr @abx500_regulator.4, ptr @.str.9, ptr @ab8505_regulator_info, ptr @ab8505_regulator_match, ptr @ab8500_regulator_info, ptr @ab8500_regulator_match, ptr @.str.11, ptr @ab8500_regulator_volt_mode_ops, ptr @ldo_vauxn_voltages, ptr @.str.12, ptr @.str.13, ptr @ldo_vaux3_voltages, ptr @.str.14, ptr @.str.15, ptr @ldo_vaux56_voltages, ptr @.str.16, ptr @.str.17, ptr @ldo_vintcore_voltages, ptr @.str.18, ptr @ab8500_regulator_mode_ops, ptr @fixed_2000000_voltage, ptr @.str.19, ptr @ab8500_regulator_volt_ops, ptr @ldo_vaudio_voltages, ptr @.str.20, ptr @ab8500_regulator_anamic_mode_ops, ptr @fixed_2050000_voltage, ptr @ldo_anamic1_shared, ptr @.str.21, ptr @ldo_anamic2_shared, ptr @.str.22, ptr @ab8500_regulator_ops, ptr @fixed_1800000_voltage, ptr @.str.23, ptr @ldo_vana_voltages, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @shared_mode_mutex, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @fixed_1200000_voltage, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_regulator.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_regulator.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abx500_regulator.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_regulator_info to i32), i32 3536, i32 4416, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8505_regulator_match to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_info to i32), i32 2720, i32 3392, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_match to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_volt_mode_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vauxn_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vaux3_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vaux56_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vintcore_voltages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_mode_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_2000000_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_volt_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vaudio_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_anamic_mode_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_2050000_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_anamic1_shared to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_anamic2_shared to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_1800000_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vana_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_set_voltage_sel._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_get_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_get_voltage_sel._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_disable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_is_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_is_enabled._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_mode_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_set_mode._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_get_optimum_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_1200000_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_regulator_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_regulator_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %version.i.i = getelementptr inbounds %struct.ab8500, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 1
  %ab8500_regulator_info.ab8505_regulator_info.i = select i1 %cmp.i.not.i, ptr @ab8505_regulator_info, ptr @ab8500_regulator_info
  %ab8500_regulator_match.ab8505_regulator_match.i = select i1 %cmp.i.not.i, ptr @ab8505_regulator_match, ptr @ab8500_regulator_match
  %..i = select i1 %cmp.i.not.i, i32 13, i32 10
  store ptr %ab8500_regulator_info.ab8505_regulator_info.i, ptr @abx500_regulator.0, align 4
  store i32 %..i, ptr @abx500_regulator.1, align 4
  store ptr %ab8500_regulator_match.ab8505_regulator_match.i, ptr @abx500_regulator.4, align 4
  %call4 = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef %5, ptr noundef nonnull %ab8500_regulator_match.ab8505_regulator_match.i, i32 noundef %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call4) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = load ptr, ptr @abx500_regulator.4, align 4
  %9 = load i32, ptr @abx500_regulator.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1140 = icmp sgt i32 %9, 0
  br i1 %cmp1140, label %for.body.lr.ph, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %10 = getelementptr inbounds i8, ptr %config.i, i32 16
  %init_data5.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %driver_data.i37 = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  %of_node.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ab8500_regulator_register.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ab8500_regulator_register.exit.thread.for.body_crit_edge ]
  %init_data = getelementptr %struct.of_regulator_match, ptr %8, i32 %i.041, i32 2
  %11 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_data, align 4
  %of_node13 = getelementptr %struct.of_regulator_match, ptr %8, i32 %i.041, i32 3
  %13 = ptrtoint ptr %of_node13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node13, align 4
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %10, align 4
  %20 = load ptr, ptr @abx500_regulator.0, align 4
  %arrayidx.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %config.i, align 4
  %23 = ptrtoint ptr %init_data5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %init_data5.i, align 4
  %24 = ptrtoint ptr %driver_data.i37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %driver_data.i37, align 4
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %14, ptr %of_node.i, align 4
  %version.i.i.i = getelementptr inbounds %struct.ab8500, ptr %18, i32 0, i32 6
  %26 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.not.i.i, label %is_ab8500_1p1_or_earlier.exit.i, label %for.body.if.end11.i_crit_edge

for.body.if.end11.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

is_ab8500_1p1_or_earlier.exit.i:                  ; preds = %for.body
  %chip_id.i.i = getelementptr inbounds %struct.ab8500, ptr %18, i32 0, i32 7
  %28 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %29)
  %cmp.i.i = icmp ugt i8 %29, 17
  br i1 %cmp.i.i, label %is_ab8500_1p1_or_earlier.exit.i.if.end11.i_crit_edge, label %if.then.i

is_ab8500_1p1_or_earlier.exit.i.if.end11.i_crit_edge: ; preds = %is_ab8500_1p1_or_earlier.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then.i:                                        ; preds = %is_ab8500_1p1_or_earlier.exit.i
  %id7.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041, i32 1, i32 6
  %30 = ptrtoint ptr %id7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  br i1 %cmp.i, label %if.then8.i, label %if.then.i.if.end11.i_crit_edge

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %n_voltages.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041, i32 1, i32 8
  %32 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %n_voltages.i, align 4
  %volt_table.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041, i32 1, i32 23
  %33 = ptrtoint ptr %volt_table.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ldo_vauxn_voltages, ptr %volt_table.i, align 4
  %voltage_mask.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041, i32 17
  %34 = ptrtoint ptr %voltage_mask.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %voltage_mask.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then.i.if.end11.i_crit_edge, %is_ab8500_1p1_or_earlier.exit.i.if.end11.i_crit_edge, %for.body.if.end11.i_crit_edge
  %desc13.i = getelementptr %struct.ab8500_regulator_info, ptr %20, i32 %i.041, i32 1
  %call14.i = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc13.i, ptr noundef nonnull %config.i) #6
  %cmp.i36.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %ab8500_regulator_register.exit, label %ab8500_regulator_register.exit.thread

ab8500_regulator_register.exit.thread:            ; preds = %if.end11.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %inc = add nuw nsw i32 %i.041, 1
  %35 = load i32, ptr @abx500_regulator.1, align 4
  %cmp11 = icmp slt i32 %inc, %35
  br i1 %cmp11, label %ab8500_regulator_register.exit.thread.for.body_crit_edge, label %ab8500_regulator_register.exit.thread.cleanup_crit_edge

ab8500_regulator_register.exit.thread.cleanup_crit_edge: ; preds = %ab8500_regulator_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ab8500_regulator_register.exit.thread.for.body_crit_edge: ; preds = %ab8500_regulator_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

ab8500_regulator_register.exit:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %desc13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc13.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %37) #9
  %38 = ptrtoint ptr %call14.i to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ab8500_regulator_register.exit, %ab8500_regulator_register.exit.thread.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ -22, %do.end ], [ %38, %ab8500_regulator_register.exit ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %ab8500_regulator_register.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %voltage_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %voltage_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %voltage_mask, align 1
  %2 = tail call i8 @llvm.cttz.i8(i8 %1, i1 true), !range !223
  %3 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %iszero = icmp eq i8 %1, 0
  %sub = select i1 %iszero, i32 -1, i32 %3
  %shl = shl i32 %selector, %sub
  %conv4 = trunc i32 %shl to i8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %voltage_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %voltage_bank to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %voltage_bank, align 1
  %voltage_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 16
  %8 = ptrtoint ptr %voltage_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %voltage_reg, align 4
  %call6 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, i8 noundef zeroext %1, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %entry.cleanup.sink.split_crit_edge ], [ @.str.27, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call6, %if.end.cleanup.sink.split_crit_edge ]
  %call13 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call13, ptr noundef nonnull %.str.27.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_voltage_sel(ptr noundef %rdev) #4 align 64 {
entry:
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %regval, align 1, !annotation !224
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltage_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %voltage_mask to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %voltage_mask, align 1
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %voltage_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %voltage_bank to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %voltage_bank, align 1
  %voltage_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %voltage_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %voltage_reg, align 4
  %call2 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext %6, i8 noundef zeroext %8, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call ptr @rdev_get_dev(ptr noundef %rdev) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call9, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = call i8 @llvm.cttz.i8(i8 %2, i1 true), !range !223
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %iszero = icmp eq i8 %2, 0
  %sub = select i1 %iszero, i32 -1, i32 %10
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regval, align 1
  %13 = ptrtoint ptr %voltage_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %voltage_mask, align 1
  %and25 = and i8 %14, %12
  %and = zext i8 %and25 to i32
  %shr = lshr i32 %and, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %do.end8 ], [ %shr, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_enable(ptr noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update_reg, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update_mask, align 2
  %update_val = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %update_val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %update_val, align 1
  %call2 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.35.sink = phi ptr [ @.str.24, %entry.cleanup.sink.split_crit_edge ], [ @.str.35, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %call8 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call8, ptr noundef nonnull %.str.35.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_disable(ptr noundef %rdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update_reg, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %update_mask, align 2
  %call2 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.24, %entry.cleanup.sink.split_crit_edge ], [ @.str.39, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %call8 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call8, ptr noundef nonnull %.str.39.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_is_enabled(ptr noundef %rdev) #4 align 64 {
entry:
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %regval, align 1, !annotation !224
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %update_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %update_bank to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %update_bank, align 4
  %update_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %update_reg, align 1
  %call2 = call i32 @abx500_get_register_interruptible(ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call ptr @rdev_get_dev(ptr noundef %rdev) #6
  %7 = ptrtoint ptr %update_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_reg, align 1
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call8, ptr noundef nonnull @.str.43, i32 noundef %conv) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regval, align 1
  %update_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %update_mask, align 2
  %and24 = and i8 %12, %10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and24)
  %tobool.not = icmp ne i8 %and24, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %do.end7 ], [ %., %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.24) #9
  br label %cleanup66

if.end:                                           ; preds = %entry
  %mode_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 10
  %mode_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 11
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 4
  %update_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 5
  %update_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %update_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %update_mask, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %bank.0.in = phi ptr [ %mode_bank, %if.then2 ], [ %update_bank, %if.else ]
  %reg.0.in = phi ptr [ %mode_reg, %if.then2 ], [ %update_reg, %if.else ]
  %mask.0 = phi i8 [ %1, %if.then2 ], [ %3, %if.else ]
  %4 = ptrtoint ptr %reg.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %reg.0 = load i8, ptr %reg.0.in, align 1
  %5 = ptrtoint ptr %bank.0.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %bank.0 = load i8, ptr %bank.0.in, align 2
  %shared_mode = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %shared_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared_mode, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @shared_mode_mutex, i32 noundef 0) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end7.out_unlock_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb17
  ]

if.end7.out_unlock_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

sw.bb:                                            ; preds = %if.end7
  %9 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mode_val_normal = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 14
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %update_val_normal = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 9
  br label %lor.lhs.false

sw.bb17:                                          ; preds = %if.end7
  %11 = ptrtoint ptr %shared_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared_mode, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %sw.bb17.if.end30_crit_edge, label %if.then20

sw.bb17.if.end30_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then20:                                        ; preds = %sw.bb17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %shared_mode23 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %shared_mode23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shared_mode23, align 4
  %lp_mode_req24 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %lp_mode_req24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lp_mode_req24, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %cleanup, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

cleanup:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %lp_mode_req28 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %lp_mode_req28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %lp_mode_req28, align 4
  br label %out_unlock

if.end30:                                         ; preds = %if.then20.if.end30_crit_edge, %sw.bb17.if.end30_crit_edge
  %20 = xor i1 %tobool19.not, true
  %21 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %mode_val_idle = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 13
  br label %sw.epilog

if.else34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %update_val_idle = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 8
  br label %lor.lhs.false

sw.epilog:                                        ; preds = %if.then33, %if.then14
  %val.0.in = phi ptr [ %mode_val_idle, %if.then33 ], [ %mode_val_normal, %if.then14 ]
  %lp_mode_req.3.off0 = phi i1 [ %20, %if.then33 ], [ false, %if.then14 ]
  %23 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load1_noabort(i32 %23)
  %val.0 = load i8, ptr %val.0.in, align 1
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.else34, %if.else15
  %val.0.in.ph = phi ptr [ %update_val_normal, %if.else15 ], [ %update_val_idle, %if.else34 ]
  %lp_mode_req.3.off0.ph = phi i1 [ false, %if.else15 ], [ %20, %if.else34 ]
  %24 = ptrtoint ptr %val.0.in.ph to i32
  call void @__asan_load1_noabort(i32 %24)
  %val.0110 = load i8, ptr %val.0.in.ph, align 1
  %call38 = tail call i32 @ab8500_regulator_is_enabled(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %sw.epilog
  %val.0115 = phi i8 [ %val.0110, %lor.lhs.false.if.then40_crit_edge ], [ %val.0, %sw.epilog ]
  %lp_mode_req.3.off0112 = phi i1 [ %lp_mode_req.3.off0.ph, %lor.lhs.false.if.then40_crit_edge ], [ %lp_mode_req.3.off0, %sw.epilog ]
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call41 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %26, i8 noundef zeroext %bank.0, i8 noundef zeroext %reg.0, i8 noundef zeroext %mask.0, i8 noundef zeroext %val.0115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call48, ptr noundef nonnull @.str.47) #9
  br label %out_unlock

if.end50:                                         ; preds = %if.then40.if.end50_crit_edge, %lor.lhs.false.if.end50_crit_edge
  %val.0116 = phi i8 [ %val.0115, %if.then40.if.end50_crit_edge ], [ %val.0110, %lor.lhs.false.if.end50_crit_edge ]
  %lp_mode_req.3.off0113 = phi i1 [ %lp_mode_req.3.off0112, %if.then40.if.end50_crit_edge ], [ %lp_mode_req.3.off0.ph, %lor.lhs.false.if.end50_crit_edge ]
  %ret.0 = phi i32 [ %call41, %if.then40.if.end50_crit_edge ], [ 0, %lor.lhs.false.if.end50_crit_edge ]
  %27 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %update_val = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %update_val to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %val.0116, ptr %update_val, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %30 = ptrtoint ptr %shared_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared_mode, align 4
  %tobool56.not = icmp eq ptr %31, null
  br i1 %tobool56.not, label %if.end54.cleanup66_crit_edge, label %if.then57

if.end54.cleanup66_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %lp_mode_req60 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %31, i32 0, i32 1
  %frombool = zext i1 %lp_mode_req.3.off0113 to i8
  %32 = ptrtoint ptr %lp_mode_req60 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %lp_mode_req60, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then57, %do.end47, %cleanup, %if.end7.out_unlock_crit_edge
  %ret.1.ph = phi i32 [ -22, %if.end7.out_unlock_crit_edge ], [ %ret.0, %if.then57 ], [ %call41, %do.end47 ], [ 0, %cleanup ]
  %33 = ptrtoint ptr %shared_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %shared_mode, align 4
  %tobool63.not = icmp eq ptr %.pr, null
  br i1 %tobool63.not, label %out_unlock.cleanup66_crit_edge, label %if.then64

out_unlock.cleanup66_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.then64:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @shared_mode_mutex) #6
  br label %cleanup66

cleanup66:                                        ; preds = %if.then64, %out_unlock.cleanup66_crit_edge, %if.end54.cleanup66_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1.ph, %if.then64 ], [ %ret.1.ph, %out_unlock.cleanup66_crit_edge ], [ %ret.0, %if.end54.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_mode(ptr noundef %rdev) #4 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !224
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_mode = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %shared_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared_mode, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lp_mode_req = getelementptr inbounds %struct.ab8500_shared_mode, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %lp_mode_req to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lp_mode_req, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %. = select i1 %tobool4.not, i32 2, i32 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mode_mask = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %mode_bank = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %mode_bank to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode_bank, align 2
  %mode_reg = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 11
  %11 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode_reg, align 1
  %call9 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef nonnull %val) #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode_mask, align 4
  %and46 = and i8 %16, %14
  store i8 %and46, ptr %val, align 1
  %mode_val_normal = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 14
  %mode_val_idle = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 13
  br label %if.end14

if.else13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %update_val = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %update_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %update_val, align 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %val, align 1
  %update_val_normal = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 9
  %update_val_idle = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 8
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then8
  %val_normal.0.in = phi ptr [ %mode_val_normal, %if.then8 ], [ %update_val_normal, %if.else13 ]
  %val_idle.0.in = phi ptr [ %mode_val_idle, %if.then8 ], [ %update_val_idle, %if.else13 ]
  %20 = ptrtoint ptr %val_normal.0.in to i32
  call void @__asan_load1_noabort(i32 %20)
  %val_normal.0 = load i8, ptr %val_normal.0.in, align 1
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %val_normal.0)
  %cmp17 = icmp eq i8 %22, %val_normal.0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.else20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val_idle.0.in to i32
  call void @__asan_load1_noabort(i32 %23)
  %val_idle.0 = load i8, ptr %val_idle.0.in, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %val_idle.0)
  %cmp23 = icmp eq i8 %22, %val_idle.0
  %.47 = select i1 %cmp23, i32 4, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.end14.cleanup_crit_edge, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %if.then2 ], [ 2, %if.end14.cleanup_crit_edge ], [ %.47, %if.else20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_optimum_mode(ptr noundef %rdev, i32 noundef %input_uV, i32 noundef %output_uV, i32 noundef %load_uA) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %load_lp_uA = getelementptr inbounds %struct.ab8500_regulator_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %load_lp_uA to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_lp_uA, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %load_uA)
  %cmp2.not = icmp slt i32 %1, %load_uA
  %. = select i1 %cmp2.not, i32 2, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_ab8500__288_1753_ab8500_regulator_init4, !1, !"__initcall__kmod_ab8500__288_1753_ab8500_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ab8500.c", i32 1753, i32 1}
!2 = !{ptr @__exitcall_ab8500_regulator_exit, !3, !"__exitcall_ab8500_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/ab8500.c", i32 1759, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/ab8500.c", i32 1761, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/ab8500.c", i32 1762, i32 1}
!9 = !{ptr @__UNIQUE_ID_author292, !10, !"__UNIQUE_ID_author292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/ab8500.c", i32 1763, i32 1}
!11 = !{ptr @__UNIQUE_ID_author293, !12, !"__UNIQUE_ID_author293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/ab8500.c", i32 1764, i32 1}
!13 = !{ptr @__UNIQUE_ID_description294, !14, !"__UNIQUE_ID_description294", i1 false, i1 false}
!14 = !{!"../drivers/regulator/ab8500.c", i32 1765, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias295, !16, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!16 = !{!"../drivers/regulator/ab8500.c", i32 1766, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/ab8500.c", i32 1749, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ab8500_regulator_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ab8500_regulator_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/ab8500.c", i32 1739, i32 13}
!25 = !{ptr @ab8500_regulator_driver, !26, !"ab8500_regulator_driver", i1 false, i1 false}
!26 = !{!"../drivers/regulator/ab8500.c", i32 1736, i32 31}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/ab8500.c", i32 1710, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ab8500_regulator_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @ab8500_regulator_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/ab8500.c", i32 1720, i32 3}
!36 = !{ptr @ab8500_regulator_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ab8500_regulator_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/ab8500.c", i32 869, i32 13}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/ab8500.c", i32 890, i32 13}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/ab8500.c", i32 911, i32 13}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/ab8500.c", i32 932, i32 13}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ab8500.c", i32 955, i32 13}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/ab8500.c", i32 977, i32 13}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/ab8500.c", i32 999, i32 13}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/ab8500.c", i32 1026, i32 13}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/ab8500.c", i32 1045, i32 13}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/ab8500.c", i32 1063, i32 13}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/ab8500.c", i32 1084, i32 13}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/ab8500.c", i32 1105, i32 13}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/ab8500.c", i32 1123, i32 13}
!64 = !{ptr @ab8505_regulator_info, !65, !"ab8505_regulator_info", i1 false, i1 false}
!65 = !{!"../drivers/regulator/ab8500.c", i32 860, i32 3}
!66 = !{ptr @ab8500_regulator_volt_mode_ops, !67, !"ab8500_regulator_volt_mode_ops", i1 false, i1 false}
!67 = !{!"../drivers/regulator/ab8500.c", i32 597, i32 35}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/ab8500.c", i32 573, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ab8500_regulator_set_voltage_sel._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ab8500_regulator_set_voltage_sel._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/ab8500.c", i32 585, i32 3}
!75 = !{ptr @ab8500_regulator_set_voltage_sel._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ab8500_regulator_set_voltage_sel._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/ab8500.c", i32 541, i32 3}
!79 = !{ptr @ab8500_regulator_get_voltage_sel._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ab8500_regulator_get_voltage_sel._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/ab8500.c", i32 550, i32 3}
!83 = !{ptr @ab8500_regulator_get_voltage_sel._entry.30, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ab8500_regulator_get_voltage_sel._entry_ptr.32, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/ab8500.c", i32 299, i32 3}
!87 = !{ptr @ab8500_regulator_enable._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ab8500_regulator_enable._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/ab8500.c", i32 307, i32 3}
!91 = !{ptr @ab8500_regulator_enable._entry.34, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ab8500_regulator_enable._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/ab8500.c", i32 326, i32 3}
!95 = !{ptr @ab8500_regulator_disable._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ab8500_regulator_disable._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/ab8500.c", i32 334, i32 3}
!99 = !{ptr @ab8500_regulator_disable._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ab8500_regulator_disable._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/ab8500.c", i32 354, i32 3}
!103 = !{ptr @ab8500_regulator_is_enabled._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ab8500_regulator_is_enabled._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/ab8500.c", i32 361, i32 3}
!107 = !{ptr @ab8500_regulator_is_enabled._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ab8500_regulator_is_enabled._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/ab8500.c", i32 408, i32 3}
!111 = !{ptr @ab8500_regulator_set_mode._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ab8500_regulator_set_mode._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/ab8500.c", i32 463, i32 4}
!115 = !{ptr @ab8500_regulator_set_mode._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ab8500_regulator_set_mode._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/ab8500.c", i32 289, i32 8}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @shared_mode_mutex, !118, !"shared_mode_mutex", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/ab8500.c", i32 497, i32 3}
!123 = !{ptr @ab8500_regulator_get_mode._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ab8500_regulator_get_mode._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/ab8500.c", i32 387, i32 3}
!127 = !{ptr @ab8500_regulator_get_optimum_mode._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ab8500_regulator_get_optimum_mode._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @ldo_vauxn_voltages, !130, !"ldo_vauxn_voltages", i1 false, i1 false}
!130 = !{!"../drivers/regulator/ab8500.c", i32 200, i32 27}
!131 = !{ptr @ldo_vaux3_voltages, !132, !"ldo_vaux3_voltages", i1 false, i1 false}
!132 = !{!"../drivers/regulator/ab8500.c", i32 219, i32 27}
!133 = !{ptr @ldo_vaux56_voltages, !134, !"ldo_vaux56_voltages", i1 false, i1 false}
!134 = !{!"../drivers/regulator/ab8500.c", i32 230, i32 27}
!135 = !{ptr @ldo_vintcore_voltages, !136, !"ldo_vintcore_voltages", i1 false, i1 false}
!136 = !{!"../drivers/regulator/ab8500.c", i32 241, i32 27}
!137 = !{ptr @ab8500_regulator_mode_ops, !138, !"ab8500_regulator_mode_ops", i1 false, i1 false}
!138 = !{!"../drivers/regulator/ab8500.c", i32 618, i32 35}
!139 = !{ptr @fixed_2000000_voltage, !140, !"fixed_2000000_voltage", i1 false, i1 false}
!140 = !{!"../drivers/regulator/ab8500.c", i32 259, i32 27}
!141 = !{ptr @ab8500_regulator_volt_ops, !142, !"ab8500_regulator_volt_ops", i1 false, i1 false}
!142 = !{!"../drivers/regulator/ab8500.c", i32 609, i32 35}
!143 = !{ptr @ldo_vaudio_voltages, !144, !"ldo_vaudio_voltages", i1 false, i1 false}
!144 = !{!"../drivers/regulator/ab8500.c", i32 278, i32 27}
!145 = !{ptr @ab8500_regulator_anamic_mode_ops, !146, !"ab8500_regulator_anamic_mode_ops", i1 false, i1 false}
!146 = !{!"../drivers/regulator/ab8500.c", i32 635, i32 35}
!147 = !{ptr @fixed_2050000_voltage, !148, !"fixed_2050000_voltage", i1 false, i1 false}
!148 = !{!"../drivers/regulator/ab8500.c", i32 263, i32 27}
!149 = !{ptr @ldo_anamic1_shared, !150, !"ldo_anamic1_shared", i1 false, i1 false}
!150 = !{!"../drivers/regulator/ab8500.c", i32 1144, i32 34}
!151 = !{ptr @ldo_anamic2_shared, !152, !"ldo_anamic2_shared", i1 false, i1 false}
!152 = !{!"../drivers/regulator/ab8500.c", i32 1148, i32 34}
!153 = !{ptr @ab8500_regulator_ops, !154, !"ab8500_regulator_ops", i1 false, i1 false}
!154 = !{!"../drivers/regulator/ab8500.c", i32 628, i32 35}
!155 = !{ptr @fixed_1800000_voltage, !156, !"fixed_1800000_voltage", i1 false, i1 false}
!156 = !{!"../drivers/regulator/ab8500.c", i32 255, i32 27}
!157 = !{ptr @ldo_vana_voltages, !158, !"ldo_vana_voltages", i1 false, i1 false}
!158 = !{!"../drivers/regulator/ab8500.c", i32 267, i32 27}
!159 = distinct !{null, !160, !"ab8505_reg_init", i1 false, i1 false}
!160 = !{!"../drivers/regulator/ab8500.c", i32 1337, i32 31}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/ab8500.c", i32 1620, i32 12}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/ab8500.c", i32 1621, i32 12}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/ab8500.c", i32 1622, i32 12}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/regulator/ab8500.c", i32 1623, i32 12}
!169 = !{ptr @.str.57, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/ab8500.c", i32 1624, i32 12}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/regulator/ab8500.c", i32 1625, i32 12}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/regulator/ab8500.c", i32 1626, i32 12}
!175 = !{ptr @.str.60, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/regulator/ab8500.c", i32 1627, i32 12}
!177 = !{ptr @.str.61, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/regulator/ab8500.c", i32 1628, i32 12}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/regulator/ab8500.c", i32 1629, i32 12}
!181 = !{ptr @.str.63, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/regulator/ab8500.c", i32 1630, i32 12}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/regulator/ab8500.c", i32 1631, i32 12}
!185 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/regulator/ab8500.c", i32 1632, i32 12}
!187 = !{ptr @ab8505_regulator_match, !188, !"ab8505_regulator_match", i1 false, i1 false}
!188 = !{!"../drivers/regulator/ab8500.c", i32 1619, i32 34}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/regulator/ab8500.c", i32 663, i32 22}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/regulator/ab8500.c", i32 752, i32 13}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/regulator/ab8500.c", i32 819, i32 13}
!195 = !{ptr @ab8500_regulator_info, !196, !"ab8500_regulator_info", i1 false, i1 false}
!196 = !{!"../drivers/regulator/ab8500.c", i32 646, i32 3}
!197 = !{ptr @fixed_1200000_voltage, !198, !"fixed_1200000_voltage", i1 false, i1 false}
!198 = !{!"../drivers/regulator/ab8500.c", i32 251, i32 27}
!199 = distinct !{null, !200, !"ab8500_reg_init", i1 false, i1 false}
!200 = !{!"../drivers/regulator/ab8500.c", i32 1166, i32 31}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/regulator/ab8500.c", i32 1611, i32 12}
!203 = !{ptr @.str.70, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/regulator/ab8500.c", i32 1615, i32 12}
!205 = !{ptr @ab8500_regulator_match, !206, !"ab8500_regulator_match", i1 false, i1 false}
!206 = !{!"../drivers/regulator/ab8500.c", i32 1606, i32 34}
!207 = distinct !{null, !208, !"abx500_regulator", i1 false, i1 false}
!208 = !{!"../drivers/regulator/ab8500.c", i32 1642, i32 3}
!209 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/regulator/ab8500.c", i32 1694, i32 3}
!211 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ab8500_regulator_register._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @ab8500_regulator_register._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i8 0, i8 9}
!224 = !{!"auto-init"}
!225 = !{i8 0, i8 2}
