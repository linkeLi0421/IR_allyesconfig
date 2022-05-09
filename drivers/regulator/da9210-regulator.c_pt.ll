; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9210-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9210-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.da9210 = type { ptr, ptr }

@__initcall__kmod_da9210_regulator__288_230_da9210_regulator_driver_init6 = internal global ptr @da9210_regulator_driver_init, section ".initcall6.init", align 4
@da9210_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @da9210_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9210_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9210_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9210_regulator_driver_exit = internal global ptr @da9210_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"da9210_regulator.author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"da9210_regulator.description=Regulator device driver for Dialog DA9210\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9210_regulator.file=drivers/regulator/da9210-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"da9210_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9210\00", [25 x i8] zeroinitializer }, align 32
@da9210_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@da9210_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9210_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9210-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr = internal global ptr @da9210_i2c_probe._entry, section ".printk_index", align 4
@da9210_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9210_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"da9210_regulator:153:(&da9210_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.9 = internal global ptr @da9210_i2c_probe._entry.7, section ".printk_index", align 4
@da9210_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 16, ptr @da9210_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9210_buck_limits, i32 0, i32 0, i32 216, i32 127, i32 0, i32 208, i32 15, i32 0, i32 0, i32 93, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to write to mask reg: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.12 = internal global ptr @da9210_i2c_probe._entry.10, section ".printk_index", align 4
@da9210_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register DA9210 regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.15 = internal global ptr @da9210_i2c_probe._entry.13, section ".printk_index", align 4
@da9210_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request IRQ%u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.18 = internal global ptr @da9210_i2c_probe._entry.16, section ".printk_index", align 4
@da9210_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to update mask reg: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.21 = internal global ptr @da9210_i2c_probe._entry.19, section ".printk_index", align 4
@da9210_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9210_i2c_probe._entry_ptr.25 = internal global ptr @da9210_i2c_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9210\00", [25 x i8] zeroinitializer }, align 32
@da9210_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@da9210_buck_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1600000, i32 1800000, i32 2000000, i32 2200000, i32 2400000, i32 2600000, i32 2800000, i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000, i32 4200000, i32 4400000, i32 4600000], [32 x i8] zeroinitializer }, align 32
@da9210_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C error : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9210_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@da9210_irq_handler._entry_ptr = internal global ptr @da9210_irq_handler._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"da9210_regulator_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 221, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 223, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"da9210_dt_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 124, i32 49 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"da9210_i2c_id\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 214, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 144, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"da9210_regmap_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 24, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 153, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 156, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"da9210_reg\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 51, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 173, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 179, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 191, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 201, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 206, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 52, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"da9210_buck_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 29, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"da9210_buck_limits\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 46, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [40 x i8] c"../drivers/regulator/da9210-regulator.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 116, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9210_regulator_driver_exit, ptr @__initcall__kmod_da9210_regulator__288_230_da9210_regulator_driver_init6, ptr @da9210_i2c_probe._entry, ptr @da9210_i2c_probe._entry.10, ptr @da9210_i2c_probe._entry.13, ptr @da9210_i2c_probe._entry.16, ptr @da9210_i2c_probe._entry.19, ptr @da9210_i2c_probe._entry.22, ptr @da9210_i2c_probe._entry.7, ptr @da9210_i2c_probe._entry_ptr, ptr @da9210_i2c_probe._entry_ptr.12, ptr @da9210_i2c_probe._entry_ptr.15, ptr @da9210_i2c_probe._entry_ptr.18, ptr @da9210_i2c_probe._entry_ptr.21, ptr @da9210_i2c_probe._entry_ptr.25, ptr @da9210_i2c_probe._entry_ptr.9, ptr @da9210_irq_handler._entry, ptr @da9210_irq_handler._entry_ptr, ptr @da9210_regulator_driver_exit, ptr @da9210_regulator_driver, ptr @.str, ptr @da9210_dt_ids, ptr @da9210_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da9210_i2c_probe._key, ptr @da9210_regmap_config, ptr @.str.6, ptr @.str.8, ptr @da9210_reg, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @da9210_buck_ops, ptr @da9210_buck_limits, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_buck_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9210_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9210_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9210_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @da9210_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9210_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp ne ptr %5, null
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @da9210_dt_ids, ptr noundef %dev1) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da9210_regmap_config, ptr noundef nonnull @da9210_i2c_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.da9210, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %7) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %config, align 4
  br i1 %tobool3.not, label %cond.false, label %if.end25.cond.end_crit_edge

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call30 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %10, ptr noundef nonnull @da9210_reg) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end25.cond.end_crit_edge
  %cond = phi ptr [ %call30, %cond.false ], [ %1, %if.end25.cond.end_crit_edge ]
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %11 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cond, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data, align 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %regmap32 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %15 = ptrtoint ptr %regmap32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %regmap32, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %of_node34 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %18 = ptrtoint ptr %of_node34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node34, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 84, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end41, label %cond.end.do.end46_crit_edge

cond.end.do.end46_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

if.end41:                                         ; preds = %cond.end
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 85, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end48, label %if.end41.do.end46_crit_edge

if.end41.do.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end46:                                         ; preds = %if.end41.do.end46_crit_edge, %cond.end.do.end46_crit_edge
  %error.0143 = phi i32 [ %call40, %if.end41.do.end46_crit_edge ], [ %call36, %cond.end.do.end46_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %error.0143) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %call50 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @da9210_reg, ptr noundef nonnull %config) #5
  %cmp.i139 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %21 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call50, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool60.not = icmp eq i32 %24, 0
  br i1 %tobool60.not, label %do.end83, label %if.then61

if.then61:                                        ; preds = %if.end58
  %call64 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %24, ptr noundef null, ptr noundef nonnull @da9210_irq_handler, i32 noundef 8328, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end72, label %do.end69

do.end69:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %26, i32 noundef %call64) #8
  br label %cleanup

if.end72:                                         ; preds = %if.then61
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i140 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 85, i32 noundef 31, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp = icmp slt i32 %call.i140, 0
  br i1 %cmp, label %do.end78, label %if.end72.if.end85_crit_edge

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i140) #8
  br label %cleanup

do.end83:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %if.end72.if.end85_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end78, %do.end69, %do.end55, %do.end46, %if.then18, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then18 ], [ %error.0143, %do.end46 ], [ %21, %do.end55 ], [ %call64, %do.end69 ], [ %call.i140, %do.end78 ], [ 0, %if.end85 ], [ -19, %do.end ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9210_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !78
  %regmap = getelementptr inbounds %struct.da9210, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 83, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call2 = call i32 @regulator_notifier_call_chain(ptr noundef %6, i32 noundef 2, ptr noundef null) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %handled.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.end.if.end3_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and4 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end10_crit_edge, label %if.then6

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call8 = call i32 @regulator_notifier_call_chain(ptr noundef %10, i32 noundef 1, ptr noundef null) #5
  %or9 = or i32 %handled.0, 2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3.if.end10_crit_edge
  %handled.1 = phi i32 [ %or9, %if.then6 ], [ %handled.0, %if.end3.if.end10_crit_edge ]
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and11 = and i32 %12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %call15 = call i32 @regulator_notifier_call_chain(ptr noundef %14, i32 noundef 16, ptr noundef null) #5
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and16 = and i32 %16, 12
  %or17 = or i32 %and16, %handled.1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  %handled.2 = phi i32 [ %or17, %if.then13 ], [ %handled.1, %if.end10.if.end18_crit_edge ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end25, label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %call23 = call i32 @regulator_notifier_call_chain(ptr noundef %20, i32 noundef 4, ptr noundef null) #5
  %or24 = or i32 %handled.2, 16
  br label %if.then27

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool26.not = icmp eq i32 %handled.2, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end25.if.then27_crit_edge

if.end25.if.then27_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end25.if.then27_crit_edge, %if.end25.thread
  %handled.356 = phi i32 [ %or24, %if.end25.thread ], [ %handled.2, %if.end25.if.then27_crit_edge ]
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call29 = call i32 @regmap_write(ptr noundef %22, i32 noundef 83, i32 noundef %handled.356) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then27.do.end_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.do.end_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.then27.do.end_crit_edge, %entry.do.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call29, %if.then27.do.end_crit_edge ]
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call35 = call ptr @regmap_get_device(ptr noundef %24) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call35, ptr noundef nonnull @.str.27, i32 noundef %error.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then27.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end25.cleanup_crit_edge ], [ 1, %if.then27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_da9210_regulator__288_230_da9210_regulator_driver_init6, !1, !"__initcall__kmod_da9210_regulator__288_230_da9210_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9210-regulator.c", i32 230, i32 1}
!2 = !{ptr @__exitcall_da9210_regulator_driver_exit, !1, !"__exitcall_da9210_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/da9210-regulator.c", i32 232, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/da9210-regulator.c", i32 233, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/da9210-regulator.c", i32 234, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/da9210-regulator.c", i32 223, i32 11}
!12 = !{ptr @da9210_regulator_driver, !13, !"da9210_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/da9210-regulator.c", i32 221, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/da9210-regulator.c", i32 144, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da9210_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da9210_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @da9210_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/regulator/da9210-regulator.c", i32 153, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9210-regulator.c", i32 156, i32 3}
!27 = !{ptr @da9210_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9210_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9210-regulator.c", i32 173, i32 3}
!31 = !{ptr @da9210_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9210_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/da9210-regulator.c", i32 179, i32 3}
!35 = !{ptr @da9210_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @da9210_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/da9210-regulator.c", i32 191, i32 4}
!39 = !{ptr @da9210_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @da9210_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/da9210-regulator.c", i32 201, i32 4}
!43 = !{ptr @da9210_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @da9210_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/da9210-regulator.c", i32 206, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @da9210_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9210_i2c_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @da9210_regmap_config, !51, !"da9210_regmap_config", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9210-regulator.c", i32 24, i32 35}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/da9210-regulator.c", i32 52, i32 10}
!54 = !{ptr @da9210_reg, !55, !"da9210_reg", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9210-regulator.c", i32 51, i32 36}
!56 = !{ptr @da9210_buck_ops, !57, !"da9210_buck_ops", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9210-regulator.c", i32 29, i32 35}
!58 = !{ptr @da9210_buck_limits, !59, !"da9210_buck_limits", i1 false, i1 false}
!59 = !{!"../drivers/regulator/da9210-regulator.c", i32 46, i32 27}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/da9210-regulator.c", i32 116, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @da9210_irq_handler._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @da9210_irq_handler._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @da9210_dt_ids, !66, !"da9210_dt_ids", i1 false, i1 false}
!66 = !{!"../drivers/regulator/da9210-regulator.c", i32 124, i32 49}
!67 = !{ptr @da9210_i2c_id, !68, !"da9210_i2c_id", i1 false, i1 false}
!68 = !{!"../drivers/regulator/da9210-regulator.c", i32 214, i32 35}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
