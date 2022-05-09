; ModuleID = '/llk/IR_all_yes/drivers/regulator/mcp16502.c_pt.bc'
source_filename = "../drivers/regulator/mcp16502.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_mcp16502__288_597_mcp16502_drv_init6 = internal global ptr @mcp16502_drv_init, section ".initcall6.init", align 4
@mcp16502_drv = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @mcp16502_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp16502_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp16502_pm_ops, ptr null, ptr null }, ptr @mcp16502_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mcp16502_drv_exit = internal global ptr @mcp16502_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [41 x i8] c"mcp16502.file=drivers/regulator/mcp16502\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [24 x i8] c"mcp16502.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"mcp16502.description=MCP16502 PMIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [66 x i8] c"mcp16502.author=Andrei Stefanescu andrei.stefanescu@microchip.com\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcp16502-regulator\00", [45 x i8] zeroinitializer }, align 32
@mcp16502_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp16502\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mcp16502_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp16502_suspend_noirq, ptr @mcp16502_resume_noirq, ptr @mcp16502_suspend_noirq, ptr @mcp16502_resume_noirq, ptr @mcp16502_suspend_noirq, ptr @mcp16502_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mcp16502_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mcp16502\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mcp16502_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp16502_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 101, ptr @mcp16502_yes_reg_table, ptr @mcp16502_yes_reg_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mcp16502:519:(&mcp16502_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp16502_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/regulator/mcp16502.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry_ptr = internal global ptr @mcp16502_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpm\00", [28 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get lpm pin: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry_ptr.10 = internal global ptr @mcp16502_probe._entry.8, section ".printk_index", align 4
@mcp16502_desc = internal constant { [6 x %struct.regulator_desc], [360 x i8] } { [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.15, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mcp16502_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b1l12_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 21, i32 12, ptr @mcp16502_ramp_b1l12, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.15, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @mcp16502_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b234_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 12, ptr @mcp16502_ramp_b234, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.15, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @mcp16502_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b234_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 48, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 12, ptr @mcp16502_ramp_b234, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.15, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @mcp16502_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b234_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 12, ptr @mcp16502_ramp_b234, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.15, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @mcp16502_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b1l12_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 12, ptr @mcp16502_ramp_b1l12, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.15, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @mcp16502_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, ptr @b1l12_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 96, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 101, i32 12, ptr @mcp16502_ramp_b1l12, i32 4, i32 0, i32 0, i32 0, ptr @mcp16502_of_map_mode }], [360 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 541, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register %s regulator %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@mcp16502_probe._entry_ptr.13 = internal global ptr @mcp16502_probe._entry.11, section ".printk_index", align 4
@mcp16502_yes_reg_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp16502_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp16502_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 101 }], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDD_IO\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@mcp16502_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mcp16502_set_mode, ptr @mcp16502_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @mcp16502_set_voltage_time_sel, ptr null, ptr @mcp16502_get_status, ptr null, ptr null, ptr null, ptr null, ptr @mcp16502_set_suspend_voltage, ptr @mcp16502_set_suspend_enable, ptr @mcp16502_set_suspend_disable, ptr @mcp16502_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@b1l12_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1200000, i32 13, i32 63, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@mcp16502_ramp_b1l12 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6250, i32 3125, i32 2083, i32 1563], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VDD_DDR\00", [24 x i8] zeroinitializer }, align 32
@b234_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 13, i32 63, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@mcp16502_ramp_b234 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3125, i32 1563, i32 1042, i32 781], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VDD_CORE\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VDD_OTHER\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@mcp16502_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @mcp16502_set_voltage_time_sel, ptr null, ptr @mcp16502_get_status, ptr null, ptr null, ptr null, ptr null, ptr @mcp16502_set_suspend_voltage, ptr @mcp16502_set_suspend_enable, ptr @mcp16502_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@mcp16502_set_voltage_time_sel.us_ramp = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\10\18 ", [28 x i8] zeroinitializer }, align 32
@pm_suspend_target_state = external dso_local local_unnamed_addr global i32, align 4
@mcp16502_suspend_get_target_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid suspend target: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mcp16502_suspend_get_target_reg\00", [32 x i8] zeroinitializer }, align 32
@mcp16502_suspend_get_target_reg._entry_ptr = internal global ptr @mcp16502_suspend_get_target_reg._entry, section ".printk_index", align 4
@mcp16502_set_suspend_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcp16502_set_suspend_mode\00", [38 x i8] zeroinitializer }, align 32
@mcp16502_set_suspend_mode._entry_ptr = internal global ptr @mcp16502_set_suspend_mode._entry, section ".printk_index", align 4
@mcp16502_gpio_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: %d invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcp16502_gpio_set_mode\00", [41 x i8] zeroinitializer }, align 32
@mcp16502_gpio_set_mode._entry_ptr = internal global ptr @mcp16502_gpio_set_mode._entry, section ".printk_index", align 4
@switch.table.mcp16502_set_voltage_time_sel = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @mcp16502_ramp_b1l12, ptr @mcp16502_ramp_b234, ptr @mcp16502_ramp_b234, ptr @mcp16502_ramp_b234, ptr @mcp16502_ramp_b1l12, ptr @mcp16502_ramp_b1l12], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"mcp16502_drv\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 585, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 588, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"mcp16502_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 455, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"mcp16502_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 574, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"mcp16502_i2c_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 579, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"mcp16502_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 494, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 519, i32 9 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 522, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 530, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 532, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"mcp16502_desc\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 469, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 539, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"mcp16502_yes_reg_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 489, i32 41 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"mcp16502_ranges\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 485, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 471, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"mcp16502_buck_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 410, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"b1l12_ranges\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 461, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"mcp16502_ramp_b1l12\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 93, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 473, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"b234_ranges\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 465, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"mcp16502_ramp_b234\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 98, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 475, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 477, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 479, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"mcp16502_ldo_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 436, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 481, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [8 x i8] c"us_ramp\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 291, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 339, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 376, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [32 x i8] c"../drivers/regulator/mcp16502.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 168, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [43 x i8] c"switch.table.mcp16502_set_voltage_time_sel\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_mcp16502_drv_exit, ptr @__initcall__kmod_mcp16502__288_597_mcp16502_drv_init6, ptr @mcp16502_drv_exit, ptr @mcp16502_gpio_set_mode._entry, ptr @mcp16502_gpio_set_mode._entry_ptr, ptr @mcp16502_probe._entry, ptr @mcp16502_probe._entry.11, ptr @mcp16502_probe._entry.8, ptr @mcp16502_probe._entry_ptr, ptr @mcp16502_probe._entry_ptr.10, ptr @mcp16502_probe._entry_ptr.13, ptr @mcp16502_set_suspend_mode._entry, ptr @mcp16502_set_suspend_mode._entry_ptr, ptr @mcp16502_suspend_get_target_reg._entry, ptr @mcp16502_suspend_get_target_reg._entry_ptr, ptr @mcp16502_drv, ptr @.str, ptr @mcp16502_ids, ptr @mcp16502_pm_ops, ptr @mcp16502_i2c_id, ptr @mcp16502_probe._key, ptr @mcp16502_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mcp16502_desc, ptr @.str.12, ptr @mcp16502_yes_reg_table, ptr @mcp16502_ranges, ptr @.str.14, ptr @.str.15, ptr @mcp16502_buck_ops, ptr @b1l12_ranges, ptr @mcp16502_ramp_b1l12, ptr @.str.16, ptr @b234_ranges, ptr @mcp16502_ramp_b234, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mcp16502_ldo_ops, ptr @.str.20, ptr @mcp16502_set_voltage_time_sel.us_ramp, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.mcp16502_set_voltage_time_sel], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_drv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_desc to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_yes_reg_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b1l12_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_ramp_b1l12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b234_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_ramp_b234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_set_voltage_time_sel.us_ramp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_suspend_get_target_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_set_suspend_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp16502_gpio_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp16502_set_voltage_time_sel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mcp16502_drv) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp16502_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mcp16502_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_probe(ptr noundef %client) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %config, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mcp16502_regmap_config, ptr noundef nonnull @mcp16502_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %3) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %regmap, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data, align 4
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i59 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end14, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end7
  %call20 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @mcp16502_desc, ptr noundef nonnull %config) #7
  %cmp.i60 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %for.body.preheader.do.end25_crit_edge, label %for.cond

for.body.preheader.do.end25_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %8) #10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call20.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 1), ptr noundef nonnull %config) #7
  %cmp.i60.1 = icmp ugt ptr %call20.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.1, label %for.cond.do.end25_crit_edge, label %for.cond.1

for.cond.do.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.1:                                       ; preds = %for.cond
  %call20.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 2), ptr noundef nonnull %config) #7
  %cmp.i60.2 = icmp ugt ptr %call20.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.2, label %for.cond.1.do.end25_crit_edge, label %for.cond.2

for.cond.1.do.end25_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.2:                                       ; preds = %for.cond.1
  %call20.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 3), ptr noundef nonnull %config) #7
  %cmp.i60.3 = icmp ugt ptr %call20.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.3, label %for.cond.2.do.end25_crit_edge, label %for.cond.3

for.cond.2.do.end25_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.3:                                       ; preds = %for.cond.2
  %call20.4 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 4), ptr noundef nonnull %config) #7
  %cmp.i60.4 = icmp ugt ptr %call20.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.4, label %for.cond.3.do.end25_crit_edge, label %for.cond.4

for.cond.3.do.end25_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.4:                                       ; preds = %for.cond.3
  %call20.5 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 5), ptr noundef nonnull %config) #7
  %cmp.i60.5 = icmp ugt ptr %call20.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.5, label %for.cond.4.do.end25_crit_edge, label %for.cond.5

for.cond.4.do.end25_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #7
  br label %cleanup

do.end25:                                         ; preds = %for.cond.4.do.end25_crit_edge, %for.cond.3.do.end25_crit_edge, %for.cond.2.do.end25_crit_edge, %for.cond.1.do.end25_crit_edge, %for.cond.do.end25_crit_edge, %for.body.preheader.do.end25_crit_edge
  %arrayidx.lcssa = phi ptr [ @mcp16502_desc, %for.body.preheader.do.end25_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 1), %for.cond.do.end25_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 2), %for.cond.1.do.end25_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 3), %for.cond.2.do.end25_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 4), %for.cond.3.do.end25_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @mcp16502_desc, i32 0, i32 5), %for.cond.4.do.end25_crit_edge ]
  %call20.lcssa = phi ptr [ %call20, %for.body.preheader.do.end25_crit_edge ], [ %call20.1, %for.cond.do.end25_crit_edge ], [ %call20.2, %for.cond.1.do.end25_crit_edge ], [ %call20.3, %for.cond.2.do.end25_crit_edge ], [ %call20.4, %for.cond.3.do.end25_crit_edge ], [ %call20.5, %for.cond.4.do.end25_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.lcssa, align 4
  %16 = ptrtoint ptr %call20.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %15, i32 noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %for.cond.5, %do.end14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %11, %do.end14 ], [ %16, %do.end25 ], [ 0, %for.cond.5 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp16502_of_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 4
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp4 = icmp eq i32 %mode, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 2, i32 %switch.select
  ret i32 %switch.select5
}

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
define internal i32 @mcp16502_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call8.i.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i = shl i32 %call8.i.i, 4
  %add11.i.i = add i32 %add9.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp.i = icmp slt i32 %add11.i.i, 0
  br i1 %cmp.i, label %entry._mcp16502_set_mode.exit_crit_edge, label %if.end.i

entry._mcp16502_set_mode.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mcp16502_set_mode.exit

if.end.i:                                         ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.i._mcp16502_set_mode.exit_crit_edge [
    i32 2, label %if.end.i.sw.epilog.i_crit_edge
    i32 4, label %sw.bb1.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i._mcp16502_set_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mcp16502_set_mode.exit

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb1.i ], [ 64, %if.end.i.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add11.i.i, i32 noundef 64, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %_mcp16502_set_mode.exit

_mcp16502_set_mode.exit:                          ; preds = %sw.epilog.i, %if.end.i._mcp16502_set_mode.exit_crit_edge, %entry._mcp16502_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %sw.epilog.i ], [ %add11.i.i, %entry._mcp16502_set_mode.exit_crit_edge ], [ -22, %if.end.i._mcp16502_set_mode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  %call8.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i = shl i32 %call8.i, 4
  %add11.i = add i32 %add9.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %cmp = icmp slt i32 %add11.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add11.i, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch.not = icmp eq i32 %and, 0
  %. = select i1 %switch.not, i32 4, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add11.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_sel, i32 noundef %new_sel) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = shl i32 %call, 4
  %add1 = add i32 %add, 21
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add1, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %3 = icmp ult i32 %call, 6
  br i1 %3, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %linear_ranges = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %linear_ranges, align 4
  %step = getelementptr inbounds %struct.linear_range, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step, align 4
  %mul639 = sub i32 %new_sel, %old_sel
  %sub = mul i32 %9, %mul639
  %10 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = lshr i32 %12, 2
  %shr = and i32 %and, 3
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.mcp16502_set_voltage_time_sel, i32 0, i32 %call
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx16 = getelementptr [4 x i8], ptr @mcp16502_set_voltage_time_sel.us_ramp, i32 0, i32 %shr
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %mul18 = mul i32 %10, %conv17
  %arrayidx20 = getelementptr [4 x i32], ptr %switch.load, i32 0, i32 %shr
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %div41 = lshr i32 %17, 1
  %add12 = add i32 %mul18, %div41
  %div13 = udiv i32 %add12, %17
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %div13, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add = add i32 %call, 5
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and4 = and i32 %4, 1
  %spec.select = select i1 %tobool2.not, i32 %and4, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_target_state to i32))
  %0 = load i32, ptr @pm_suspend_target_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %0, label %mcp16502_suspend_get_target_reg.exit.thread [
    i32 2, label %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
    i32 0, label %entry.sw.bb1.i_crit_edge
    i32 3, label %entry.sw.bb1.i_crit_edge19
  ]

entry.sw.bb1.i_crit_edge19:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.mcp16502_suspend_get_target_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcp16502_suspend_get_target_reg.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge19
  br label %mcp16502_suspend_get_target_reg.exit

mcp16502_suspend_get_target_reg.exit:             ; preds = %sw.bb1.i, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
  %.sink = phi i32 [ 18, %sw.bb1.i ], [ 17, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge ]
  %call8.i.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i = shl i32 %call8.i.i, 4
  %add11.i.i = add i32 %add9.i.i, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge, label %if.end

mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge: ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mcp16502_suspend_get_target_reg.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp15, i32 %call, i32 -22
  br label %cleanup

if.end:                                           ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp2 = icmp slt i32 %add11.i.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add11.i.i, i32 noundef 63, i32 noundef %call, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %mcp16502_suspend_get_target_reg.exit.thread, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ %call, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge ], [ %add11.i.i, %if.end.cleanup_crit_edge ], [ %spec.select, %mcp16502_suspend_get_target_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_set_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_target_state to i32))
  %0 = load i32, ptr @pm_suspend_target_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %0, label %mcp16502_suspend_get_target_reg.exit.thread [
    i32 2, label %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
    i32 0, label %entry.sw.bb1.i_crit_edge
    i32 3, label %entry.sw.bb1.i_crit_edge7
  ]

entry.sw.bb1.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.mcp16502_suspend_get_target_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcp16502_suspend_get_target_reg.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge7
  br label %mcp16502_suspend_get_target_reg.exit

mcp16502_suspend_get_target_reg.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %0) #10
  br label %cleanup

mcp16502_suspend_get_target_reg.exit:             ; preds = %sw.bb1.i, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
  %.sink = phi i32 [ 18, %sw.bb1.i ], [ 17, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge ]
  %call8.i.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i = shl i32 %call8.i.i, 4
  %add11.i.i = add i32 %add9.i.i, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp = icmp slt i32 %add11.i.i, 0
  br i1 %cmp, label %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge, label %if.end

mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge: ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add11.i.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge, %mcp16502_suspend_get_target_reg.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %add11.i.i, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge ], [ -22, %mcp16502_suspend_get_target_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_target_state to i32))
  %0 = load i32, ptr @pm_suspend_target_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %0, label %mcp16502_suspend_get_target_reg.exit.thread [
    i32 2, label %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
    i32 0, label %entry.sw.bb1.i_crit_edge
    i32 3, label %entry.sw.bb1.i_crit_edge7
  ]

entry.sw.bb1.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.mcp16502_suspend_get_target_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcp16502_suspend_get_target_reg.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge7
  br label %mcp16502_suspend_get_target_reg.exit

mcp16502_suspend_get_target_reg.exit.thread:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %0) #10
  br label %cleanup

mcp16502_suspend_get_target_reg.exit:             ; preds = %sw.bb1.i, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge
  %.sink = phi i32 [ 18, %sw.bb1.i ], [ 17, %entry.mcp16502_suspend_get_target_reg.exit_crit_edge ]
  %call8.i.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i = shl i32 %call8.i.i, 4
  %add11.i.i = add i32 %add9.i.i, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp = icmp slt i32 %add11.i.i, 0
  br i1 %cmp, label %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge, label %if.end

mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge: ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mcp16502_suspend_get_target_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add11.i.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge, %mcp16502_suspend_get_target_reg.exit.thread
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %add11.i.i, %mcp16502_suspend_get_target_reg.exit.cleanup_crit_edge ], [ -22, %mcp16502_suspend_get_target_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_target_state to i32))
  %0 = load i32, ptr @pm_suspend_target_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %0, label %do.end [
    i32 2, label %sw.bb
    i32 0, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %call8.i.i = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i = shl i32 %call8.i.i, 4
  %add11.i.i = add i32 %add9.i.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp.i = icmp slt i32 %add11.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %mode, label %if.end.i.return_crit_edge [
    i32 2, label %if.end.i.sw.epilog.i_crit_edge
    i32 4, label %sw.bb1.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb1.i ], [ 64, %if.end.i.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add11.i.i, i32 noundef 64, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18
  %call8.i.i6 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %add9.i.i7 = shl i32 %call8.i.i6, 4
  %add11.i.i8 = add i32 %add9.i.i7, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i8)
  %cmp.i9 = icmp slt i32 %add11.i.i8, 0
  br i1 %cmp.i9, label %sw.bb1.return_crit_edge, label %if.end.i10

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i10:                                       ; preds = %sw.bb1
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mode, label %if.end.i10.return_crit_edge [
    i32 2, label %if.end.i10.sw.epilog.i15_crit_edge
    i32 4, label %sw.bb1.i11
  ]

if.end.i10.sw.epilog.i15_crit_edge:               ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i15

if.end.i10.return_crit_edge:                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i11:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i15

sw.epilog.i15:                                    ; preds = %sw.bb1.i11, %if.end.i10.sw.epilog.i15_crit_edge
  %val.0.i12 = phi i32 [ 0, %sw.bb1.i11 ], [ 64, %if.end.i10.sw.epilog.i15_crit_edge ]
  %regmap.i13 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %6 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i13, align 4
  %call.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add11.i.i8, i32 noundef 64, i32 noundef %val.0.i12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %0) #10
  br label %return

return:                                           ; preds = %do.end, %sw.epilog.i15, %if.end.i10.return_crit_edge, %sw.bb1.return_crit_edge, %sw.epilog.i, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %sw.epilog.i ], [ %add11.i.i, %sw.bb.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ %call.i.i14, %sw.epilog.i15 ], [ %add11.i.i8, %sw.bb1.return_crit_edge ], [ -22, %if.end.i10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp16502_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_mcp16502__288_597_mcp16502_drv_init6, !1, !"__initcall__kmod_mcp16502__288_597_mcp16502_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mcp16502.c", i32 597, i32 1}
!2 = !{ptr @__exitcall_mcp16502_drv_exit, !1, !"__exitcall_mcp16502_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/mcp16502.c", i32 599, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/mcp16502.c", i32 600, i32 1}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/mcp16502.c", i32 601, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mcp16502.c", i32 588, i32 11}
!12 = !{ptr @mcp16502_drv, !13, !"mcp16502_drv", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mcp16502.c", i32 585, i32 26}
!14 = !{ptr @mcp16502_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mcp16502.c", i32 519, i32 9}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/mcp16502.c", i32 522, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mcp16502_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcp16502_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/mcp16502.c", i32 530, i32 42}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/mcp16502.c", i32 532, i32 3}
!29 = !{ptr @mcp16502_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mcp16502_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/mcp16502.c", i32 539, i32 4}
!33 = !{ptr @mcp16502_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mcp16502_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mcp16502_regmap_config, !36, !"mcp16502_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/regulator/mcp16502.c", i32 494, i32 35}
!37 = !{ptr @mcp16502_yes_reg_table, !38, !"mcp16502_yes_reg_table", i1 false, i1 false}
!38 = !{!"../drivers/regulator/mcp16502.c", i32 489, i32 41}
!39 = !{ptr @mcp16502_ranges, !40, !"mcp16502_ranges", i1 false, i1 false}
!40 = !{!"../drivers/regulator/mcp16502.c", i32 485, i32 34}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/mcp16502.c", i32 471, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/mcp16502.c", i32 473, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/mcp16502.c", i32 475, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/mcp16502.c", i32 477, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/mcp16502.c", i32 479, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/mcp16502.c", i32 481, i32 2}
!54 = !{ptr @mcp16502_desc, !55, !"mcp16502_desc", i1 false, i1 false}
!55 = !{!"../drivers/regulator/mcp16502.c", i32 469, i32 36}
!56 = !{ptr @mcp16502_buck_ops, !57, !"mcp16502_buck_ops", i1 false, i1 false}
!57 = !{!"../drivers/regulator/mcp16502.c", i32 410, i32 35}
!58 = !{ptr @mcp16502_set_voltage_time_sel.us_ramp, !59, !"us_ramp", i1 false, i1 false}
!59 = !{!"../drivers/regulator/mcp16502.c", i32 291, i32 18}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/mcp16502.c", i32 339, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mcp16502_suspend_get_target_reg._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mcp16502_suspend_get_target_reg._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/mcp16502.c", i32 376, i32 3}
!67 = !{ptr @mcp16502_set_suspend_mode._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mcp16502_set_suspend_mode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @b1l12_ranges, !70, !"b1l12_ranges", i1 false, i1 false}
!70 = !{!"../drivers/regulator/mcp16502.c", i32 461, i32 34}
!71 = !{ptr @mcp16502_ramp_b1l12, !72, !"mcp16502_ramp_b1l12", i1 false, i1 false}
!72 = !{!"../drivers/regulator/mcp16502.c", i32 93, i32 27}
!73 = !{ptr @b234_ranges, !74, !"b234_ranges", i1 false, i1 false}
!74 = !{!"../drivers/regulator/mcp16502.c", i32 465, i32 34}
!75 = !{ptr @mcp16502_ramp_b234, !76, !"mcp16502_ramp_b234", i1 false, i1 false}
!76 = !{!"../drivers/regulator/mcp16502.c", i32 98, i32 27}
!77 = !{ptr @mcp16502_ldo_ops, !78, !"mcp16502_ldo_ops", i1 false, i1 false}
!78 = !{!"../drivers/regulator/mcp16502.c", i32 436, i32 35}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/mcp16502.c", i32 168, i32 3}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mcp16502_gpio_set_mode._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mcp16502_gpio_set_mode._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mcp16502_ids, !85, !"mcp16502_ids", i1 false, i1 false}
!85 = !{!"../drivers/regulator/mcp16502.c", i32 455, i32 34}
!86 = !{ptr @mcp16502_pm_ops, !87, !"mcp16502_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/regulator/mcp16502.c", i32 574, i32 32}
!88 = !{ptr @mcp16502_i2c_id, !89, !"mcp16502_i2c_id", i1 false, i1 false}
!89 = !{!"../drivers/regulator/mcp16502.c", i32 579, i32 35}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
