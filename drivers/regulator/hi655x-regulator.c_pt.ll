; ModuleID = '/llk/IR_all_yes/drivers/regulator/hi655x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/hi655x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hi655x_regulator = type { i32, i32, %struct.regulator_desc }
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
%struct.hi655x_pmic = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_hi655x_regulator__288_212_hi655x_regulator_driver_init6 = internal global ptr @hi655x_regulator_driver_init, section ".initcall6.init", align 4
@hi655x_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi655x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hi655x_regulator_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi655x_regulator_driver_exit = internal global ptr @hi655x_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"hi655x_regulator.author=Chen Feng <puck.chen@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"hi655x_regulator.description=Hisilicon Hi655x regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"hi655x_regulator.file=drivers/regulator/hi655x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"hi655x_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hi655x-regulator\00", [47 x i8] zeroinitializer }, align 32
@hi655x_regulator_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"hi655x-regulator\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hi655x_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no pmic in the regulator parent node\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hi655x_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/hi655x-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi655x_regulator_probe._entry_ptr = internal global ptr @hi655x_regulator_probe._entry, section ".printk_index", align 4
@regulators = internal constant { [10 x %struct.hi655x_regulator], [616 x i8] } { [10 x %struct.hi655x_regulator] [%struct.hi655x_regulator { i32 168, i32 172, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 2500000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 456, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 164, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 168, i32 172, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @hi655x_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo7_voltages, ptr null, i32 0, i32 0, i32 480, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 164, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 168, i32 172, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @hi655x_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo7_voltages, ptr null, i32 0, i32 0, i32 480, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 164, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 180, i32 184, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 504, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 180, i32 184, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 2500000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 508, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 180, i32 184, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 1600000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 512, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 176, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 192, i32 196, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 2500000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 520, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 188, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 192, i32 196, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 19, i8 0, i32 8, i32 0, ptr @hi655x_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo19_voltages, ptr null, i32 0, i32 0, i32 528, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 188, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 192, i32 196, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 21, i8 0, i32 8, i32 0, ptr @hi655x_ldo_linear_ops, i32 0, i32 0, ptr null, i32 1650000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 536, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 188, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }, %struct.hi655x_regulator { i32 192, i32 196, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 22, i8 0, i32 8, i32 0, ptr @hi655x_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo22_voltages, ptr null, i32 0, i32 0, i32 540, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 188, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null } }], [616 x i8] zeroinitializer }, align 32
@hi655x_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@hi655x_regulator_probe._entry_ptr.8 = internal global ptr @hi655x_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@hi655x_ldo_linear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @hi655x_disable, ptr @hi655x_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@hi655x_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @hi655x_disable, ptr @hi655x_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo7_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2850000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@ldo19_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 1900000, i32 1750000, i32 2800000, i32 2850000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO22\00", [26 x i8] zeroinitializer }, align 32
@ldo22_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 900000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1175000, i32 1185000, i32 1200000], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"hi655x_regulator_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 205, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 208, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"hi655x_regulator_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 199, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 178, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 150, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 191, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 151, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"hi655x_ldo_linear_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 98, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 153, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"hi655x_regulator_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 89, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"ldo7_voltages\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 31, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 154, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 155, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 157, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 159, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 161, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 163, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"ldo19_voltages\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 36, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 164, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 166, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"ldo22_voltages\00", align 1
@___asan_gen_.102 = private constant [40 x i8] c"../drivers/regulator/hi655x-regulator.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 41, i32 27 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hi655x_regulator_driver_exit, ptr @__initcall__kmod_hi655x_regulator__288_212_hi655x_regulator_driver_init6, ptr @hi655x_regulator_driver_exit, ptr @hi655x_regulator_probe._entry, ptr @hi655x_regulator_probe._entry.6, ptr @hi655x_regulator_probe._entry_ptr, ptr @hi655x_regulator_probe._entry_ptr.8, ptr @hi655x_regulator_driver, ptr @.str, ptr @hi655x_regulator_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @regulators, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hi655x_ldo_linear_ops, ptr @.str.11, ptr @hi655x_regulator_ops, ptr @ldo7_voltages, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ldo19_voltages, ptr @.str.18, ptr @.str.19, ptr @ldo22_voltages], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_regulator_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_ldo_linear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi655x_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo7_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo19_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo22_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi655x_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi655x_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi655x_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi655x_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi655x_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %config, align 4
  %regmap = getelementptr inbounds %struct.hi655x_pmic, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %9 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap5, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @regulators, ptr %driver_data, align 4
  %call8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.do.end13_crit_edge, label %for.cond

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond:                                         ; preds = %if.end
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 1), ptr %driver_data, align 4
  %call8.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 1, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.1 = icmp ugt ptr %call8.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.do.end13_crit_edge, label %for.cond.1

for.cond.do.end13_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.1:                                       ; preds = %for.cond
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 2), ptr %driver_data, align 4
  %call8.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 2, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.2 = icmp ugt ptr %call8.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.do.end13_crit_edge, label %for.cond.2

for.cond.1.do.end13_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.2:                                       ; preds = %for.cond.1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 3), ptr %driver_data, align 4
  %call8.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 3, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.3 = icmp ugt ptr %call8.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.do.end13_crit_edge, label %for.cond.3

for.cond.2.do.end13_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.3:                                       ; preds = %for.cond.2
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 4), ptr %driver_data, align 4
  %call8.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 4, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.4 = icmp ugt ptr %call8.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.do.end13_crit_edge, label %for.cond.4

for.cond.3.do.end13_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.4:                                       ; preds = %for.cond.3
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 5), ptr %driver_data, align 4
  %call8.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 5, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.5 = icmp ugt ptr %call8.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.do.end13_crit_edge, label %for.cond.5

for.cond.4.do.end13_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.5:                                       ; preds = %for.cond.4
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 6), ptr %driver_data, align 4
  %call8.6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 6, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.6 = icmp ugt ptr %call8.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.cond.5.do.end13_crit_edge, label %for.cond.6

for.cond.5.do.end13_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.6:                                       ; preds = %for.cond.5
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 7), ptr %driver_data, align 4
  %call8.7 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 7, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.7 = icmp ugt ptr %call8.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.cond.6.do.end13_crit_edge, label %for.cond.7

for.cond.6.do.end13_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.7:                                       ; preds = %for.cond.6
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 8), ptr %driver_data, align 4
  %call8.8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 8, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.8 = icmp ugt ptr %call8.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8, label %for.cond.7.do.end13_crit_edge, label %for.cond.8

for.cond.7.do.end13_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

for.cond.8:                                       ; preds = %for.cond.7
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 9), ptr %driver_data, align 4
  %call8.9 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 9, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.9 = icmp ugt ptr %call8.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.9, label %for.cond.8.do.end13_crit_edge, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.8.do.end13_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.end13:                                         ; preds = %for.cond.8.do.end13_crit_edge, %for.cond.7.do.end13_crit_edge, %for.cond.6.do.end13_crit_edge, %for.cond.5.do.end13_crit_edge, %for.cond.4.do.end13_crit_edge, %for.cond.3.do.end13_crit_edge, %for.cond.2.do.end13_crit_edge, %for.cond.1.do.end13_crit_edge, %for.cond.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %rdesc.lcssa = phi ptr [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 0, i32 2), %if.end.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 1, i32 2), %for.cond.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 2, i32 2), %for.cond.1.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 3, i32 2), %for.cond.2.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 4, i32 2), %for.cond.3.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 5, i32 2), %for.cond.4.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 6, i32 2), %for.cond.5.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 7, i32 2), %for.cond.6.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 8, i32 2), %for.cond.7.do.end13_crit_edge ], [ getelementptr inbounds ([10 x %struct.hi655x_regulator], ptr @regulators, i32 0, i32 9, i32 2), %for.cond.8.do.end13_crit_edge ]
  %call8.lcssa = phi ptr [ %call8, %if.end.do.end13_crit_edge ], [ %call8.1, %for.cond.do.end13_crit_edge ], [ %call8.2, %for.cond.1.do.end13_crit_edge ], [ %call8.3, %for.cond.2.do.end13_crit_edge ], [ %call8.4, %for.cond.3.do.end13_crit_edge ], [ %call8.5, %for.cond.4.do.end13_crit_edge ], [ %call8.6, %for.cond.5.do.end13_crit_edge ], [ %call8.7, %for.cond.6.do.end13_crit_edge ], [ %call8.8, %for.cond.7.do.end13_crit_edge ], [ %call8.9, %for.cond.8.do.end13_crit_edge ]
  %20 = ptrtoint ptr %rdesc.lcssa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdesc.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %21) #8
  %22 = ptrtoint ptr %call8.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %for.cond.8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %22, %do.end13 ], [ -19, %do.end ], [ 0, %for.cond.8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
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
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi655x_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %7) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi655x_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %status_reg = getelementptr inbounds %struct.hi655x_regulator, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %value) #5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_mask, align 4
  %and = and i32 %10, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_hi655x_regulator__288_212_hi655x_regulator_driver_init6, !1, !"__initcall__kmod_hi655x_regulator__288_212_hi655x_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/hi655x-regulator.c", i32 212, i32 1}
!2 = !{ptr @__exitcall_hi655x_regulator_driver_exit, !1, !"__exitcall_hi655x_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/hi655x-regulator.c", i32 214, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/hi655x-regulator.c", i32 215, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/hi655x-regulator.c", i32 216, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/hi655x-regulator.c", i32 208, i32 11}
!12 = !{ptr @hi655x_regulator_driver, !13, !"hi655x_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/hi655x-regulator.c", i32 205, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/hi655x-regulator.c", i32 178, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hi655x_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hi655x_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/hi655x-regulator.c", i32 191, i32 4}
!24 = !{ptr @hi655x_regulator_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hi655x_regulator_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/hi655x-regulator.c", i32 151, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/hi655x-regulator.c", i32 153, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/hi655x-regulator.c", i32 154, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/hi655x-regulator.c", i32 155, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/hi655x-regulator.c", i32 157, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/hi655x-regulator.c", i32 159, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/hi655x-regulator.c", i32 161, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/hi655x-regulator.c", i32 163, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/hi655x-regulator.c", i32 164, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/hi655x-regulator.c", i32 166, i32 2}
!47 = !{ptr @regulators, !48, !"regulators", i1 false, i1 false}
!48 = !{!"../drivers/regulator/hi655x-regulator.c", i32 150, i32 38}
!49 = !{ptr @hi655x_ldo_linear_ops, !50, !"hi655x_ldo_linear_ops", i1 false, i1 false}
!50 = !{!"../drivers/regulator/hi655x-regulator.c", i32 98, i32 35}
!51 = !{ptr @hi655x_regulator_ops, !52, !"hi655x_regulator_ops", i1 false, i1 false}
!52 = !{!"../drivers/regulator/hi655x-regulator.c", i32 89, i32 35}
!53 = !{ptr @ldo7_voltages, !54, !"ldo7_voltages", i1 false, i1 false}
!54 = !{!"../drivers/regulator/hi655x-regulator.c", i32 31, i32 27}
!55 = !{ptr @ldo19_voltages, !56, !"ldo19_voltages", i1 false, i1 false}
!56 = !{!"../drivers/regulator/hi655x-regulator.c", i32 36, i32 27}
!57 = !{ptr @ldo22_voltages, !58, !"ldo22_voltages", i1 false, i1 false}
!58 = !{!"../drivers/regulator/hi655x-regulator.c", i32 41, i32 27}
!59 = !{ptr @hi655x_regulator_table, !60, !"hi655x_regulator_table", i1 false, i1 false}
!60 = !{!"../drivers/regulator/hi655x-regulator.c", i32 199, i32 40}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
