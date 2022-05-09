; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps62360-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps62360-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.tps62360_chip = type { ptr, %struct.regulator_desc, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [4 x i32], [4 x i32], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.tps62360_regulator_platform_data = type { ptr, i8, i8, i32, i32 }

@__initcall__kmod_tps62360_regulator__288_522_tps62360_init4 = internal global ptr @tps62360_init, section ".initcall4.init", align 4
@tps62360_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tps62360_probe, ptr null, ptr null, ptr @tps62360_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps62360_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps62360_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps62360_cleanup = internal global ptr @tps62360_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [65 x i8] c"tps62360_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps62360_regulator.description=TPS6236x voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps62360_regulator.file=drivers/regulator/tps62360-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps62360_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps62360\00", [23 x i8] zeroinitializer }, align 32
@tps62360_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62361\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62362\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps62363\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tps62360_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps62360\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps62361\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tps62362\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps62363\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tps62360_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @tps62360_dcdc_set_voltage_sel, ptr null, ptr @tps62360_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps62360_set_mode, ptr @tps62360_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps62360_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps62360_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps62360-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr = internal global ptr @tps62360_probe._entry, section ".printk_index", align 4
@tps62360_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No device tree match or id table match found\0A\00", [50 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.8 = internal global ptr @tps62360_probe._entry.6, section ".printk_index", align 4
@tps62360_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): Platform data not found\0A\00", [33 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.11 = internal global ptr @tps62360_probe._entry.9, section ".printk_index", align 4
@tps62360_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps62360_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tps62360_regulator:409:(&tps62360_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@tps62360_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): regmap allocation failed with err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.15 = internal global ptr @tps62360_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsel0\00", [26 x i8] zeroinitializer }, align 32
@tps62360_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): Could not obtain vsel0 GPIO: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.19 = internal global ptr @tps62360_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsel1\00", [26 x i8] zeroinitializer }, align 32
@tps62360_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): Could not obtain vsel1 GPIO: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.23 = internal global ptr @tps62360_probe._entry.21, section ".printk_index", align 4
@tps62360_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): Init failed with err = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.26 = internal global ptr @tps62360_probe._entry.24, section ".printk_index", align 4
@tps62360_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): regulator register failed with err %s\0A\00", [51 x i8] zeroinitializer }, align 32
@tps62360_probe._entry_ptr.29 = internal global ptr @tps62360_probe._entry.27, section ".printk_index", align 4
@tps62360_dcdc_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): register %d update failed with err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tps62360_dcdc_set_voltage_sel\00", [34 x i8] zeroinitializer }, align 32
@tps62360_dcdc_set_voltage_sel._entry_ptr = internal global ptr @tps62360_dcdc_set_voltage_sel._entry, section ".printk_index", align 4
@tps62360_dcdc_get_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): register %d read failed with err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tps62360_dcdc_get_voltage_sel\00", [34 x i8] zeroinitializer }, align 32
@tps62360_dcdc_get_voltage_sel._entry_ptr = internal global ptr @tps62360_dcdc_get_voltage_sel._entry, section ".printk_index", align 4
@tps62360_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.34, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps62360_set_mode\00", [46 x i8] zeroinitializer }, align 32
@tps62360_set_mode._entry_ptr = internal global ptr @tps62360_set_mode._entry, section ".printk_index", align 4
@tps62360_set_mode._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.34, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps62360_set_mode._entry_ptr.36 = internal global ptr @tps62360_set_mode._entry.35, section ".printk_index", align 4
@tps62360_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.37, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps62360_get_mode\00", [46 x i8] zeroinitializer }, align 32
@tps62360_get_mode._entry_ptr = internal global ptr @tps62360_get_mode._entry, section ".printk_index", align 4
@of_get_tps62360_platform_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Not able to get OF regulator init data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_get_tps62360_platform_data\00", [34 x i8] zeroinitializer }, align 32
@of_get_tps62360_platform_data._entry_ptr = internal global ptr @of_get_tps62360_platform_data._entry, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,vsel0-state-high\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,vsel1-state-high\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,enable-pull-down\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,enable-vout-discharge\00", [39 x i8] zeroinitializer }, align 32
@tps62360_init_dcdc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): register %d write failed with err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps62360_init_dcdc\00", [45 x i8] zeroinitializer }, align 32
@tps62360_init_dcdc._entry_ptr = internal global ptr @tps62360_init_dcdc._entry, section ".printk_index", align 4
@tps62360_init_dcdc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.45, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps62360_init_dcdc._entry_ptr.47 = internal global ptr @tps62360_init_dcdc._entry.46, section ".printk_index", align 4
@tps62360_init_dcdc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.45, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps62360_init_dcdc._entry_ptr.49 = internal global ptr @tps62360_init_dcdc._entry.48, section ".printk_index", align 4
@tps62360_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.50, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps62360_shutdown\00", [46 x i8] zeroinitializer }, align 32
@tps62360_shutdown._entry_ptr = internal global ptr @tps62360_shutdown._entry, section ".printk_index", align 4
@switch.table.tps62360_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 770000, i32 500000, i32 770000, i32 500000], [16 x i8] zeroinitializer }, align 32
@switch.table.tps62360_probe.51 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 128, i32 64, i32 128], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"tps62360_i2c_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 508, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 510, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"tps62360_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 328, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"tps62360_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 498, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"tps62360_dcdc_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 235, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 368, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 378, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 383, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"tps62360_regmap_config\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 287, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 409, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 412, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 426, i32 58 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 428, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 436, i32 58 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 438, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 459, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 472, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 156, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 129, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 199, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 210, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 227, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 308, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 312, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 315, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 318, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 321, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 257, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 266, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 275, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [42 x i8] c"../drivers/regulator/tps62360-regulator.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 493, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"switch.table.tps62360_probe\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"switch.table.tps62360_probe.51\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps62360_cleanup, ptr @__initcall__kmod_tps62360_regulator__288_522_tps62360_init4, ptr @of_get_tps62360_platform_data._entry, ptr @of_get_tps62360_platform_data._entry_ptr, ptr @tps62360_cleanup, ptr @tps62360_dcdc_get_voltage_sel._entry, ptr @tps62360_dcdc_get_voltage_sel._entry_ptr, ptr @tps62360_dcdc_set_voltage_sel._entry, ptr @tps62360_dcdc_set_voltage_sel._entry_ptr, ptr @tps62360_get_mode._entry, ptr @tps62360_get_mode._entry_ptr, ptr @tps62360_init_dcdc._entry, ptr @tps62360_init_dcdc._entry.46, ptr @tps62360_init_dcdc._entry.48, ptr @tps62360_init_dcdc._entry_ptr, ptr @tps62360_init_dcdc._entry_ptr.47, ptr @tps62360_init_dcdc._entry_ptr.49, ptr @tps62360_probe._entry, ptr @tps62360_probe._entry.13, ptr @tps62360_probe._entry.17, ptr @tps62360_probe._entry.21, ptr @tps62360_probe._entry.24, ptr @tps62360_probe._entry.27, ptr @tps62360_probe._entry.6, ptr @tps62360_probe._entry.9, ptr @tps62360_probe._entry_ptr, ptr @tps62360_probe._entry_ptr.11, ptr @tps62360_probe._entry_ptr.15, ptr @tps62360_probe._entry_ptr.19, ptr @tps62360_probe._entry_ptr.23, ptr @tps62360_probe._entry_ptr.26, ptr @tps62360_probe._entry_ptr.29, ptr @tps62360_probe._entry_ptr.8, ptr @tps62360_set_mode._entry, ptr @tps62360_set_mode._entry.35, ptr @tps62360_set_mode._entry_ptr, ptr @tps62360_set_mode._entry_ptr.36, ptr @tps62360_shutdown._entry, ptr @tps62360_shutdown._entry_ptr, ptr @tps62360_i2c_driver, ptr @.str, ptr @tps62360_of_match, ptr @tps62360_id, ptr @tps62360_dcdc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @tps62360_probe._key, ptr @tps62360_regmap_config, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.50, ptr @switch.table.tps62360_probe, ptr @switch.table.tps62360_probe.51], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_dcdc_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_dcdc_get_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_set_mode._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_tps62360_platform_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_init_dcdc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_init_dcdc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_init_dcdc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps62360_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps62360_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps62360_probe.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps62360_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps62360_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tps62360_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %ramp_ctrl.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 304, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %desc = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %desc, align 4
  %id5 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %id5, align 4
  %ops = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tps62360_dcdc_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 13
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %uV_step = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 15
  %8 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %uV_step, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %call14 = tail call ptr @of_match_device(ptr noundef nonnull @tps62360_of_match, ptr noundef %dev) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call14, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  %tobool19.not = icmp eq ptr %2, null
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end40_crit_edge

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then20:                                        ; preds = %if.end18
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then20.do.end38_crit_edge, label %if.end.i

if.then20.do.end38_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.end.i:                                         ; preds = %if.then20
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call2.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %17, ptr noundef %desc) #5
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %call.i.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #8
  br label %do.end38

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef null) #5
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %vsel0_def_state.i = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %vsel0_def_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %vsel0_def_state.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %call11.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.41, ptr noundef null) #5
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %vsel1_def_state.i = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %vsel1_def_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %vsel1_def_state.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %call15.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef null) #5
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then17.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %en_internal_pulldn.i = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %en_internal_pulldn.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %en_internal_pulldn.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  %call19.i = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.43, ptr noundef null) #5
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end40_crit_edge, label %if.then21.i

if.end18.i.if.end40_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %en_discharge.i = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %en_discharge.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %en_discharge.i, align 4
  br label %if.end40

cleanup:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup145

if.else:                                          ; preds = %if.end
  %tobool25.not = icmp eq ptr %id, null
  br i1 %tobool25.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup145

if.end33:                                         ; preds = %if.else
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  %tobool34.not = icmp eq ptr %2, null
  br i1 %tobool34.not, label %if.end33.do.end38_crit_edge, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.end33.do.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end38:                                         ; preds = %if.end33.do.end38_crit_edge, %do.end.i, %if.then20.do.end38_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #8
  br label %cleanup145

if.end40:                                         ; preds = %if.end33.if.end40_crit_edge, %if.then21.i, %if.end18.i.if.end40_crit_edge, %if.end18.if.end40_crit_edge
  %chip_id.1261 = phi i32 [ %24, %if.end33.if.end40_crit_edge ], [ %13, %if.end18.i.if.end40_crit_edge ], [ %13, %if.then21.i ], [ %13, %if.end18.if.end40_crit_edge ]
  %pdata.2260 = phi ptr [ %2, %if.end33.if.end40_crit_edge ], [ %call.i.i, %if.end18.i.if.end40_crit_edge ], [ %call.i.i, %if.then21.i ], [ %2, %if.end18.if.end40_crit_edge ]
  %en_discharge = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %pdata.2260, i32 0, i32 1
  %25 = ptrtoint ptr %en_discharge to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %en_discharge, align 4, !range !124
  %en_discharge42 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %en_discharge42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %en_discharge42, align 2
  %en_internal_pulldn = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %pdata.2260, i32 0, i32 2
  %28 = ptrtoint ptr %en_internal_pulldn to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %en_internal_pulldn, align 1, !range !124
  %en_internal_pulldn44 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %en_internal_pulldn44 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %en_internal_pulldn44, align 1
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %chip_id.1261)
  %32 = icmp ult i32 %chip_id.1261, 4
  br i1 %32, label %switch.lookup, label %if.end40.cleanup145_crit_edge

if.end40.cleanup145_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

switch.lookup:                                    ; preds = %if.end40
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tps62360_probe, i32 0, i32 %chip_id.1261
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.shiftamt = shl i32 %chip_id.1261, 3
  %switch.downshift = lshr i32 2134867775, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.gep270 = getelementptr inbounds [4 x i32], ptr @switch.table.tps62360_probe.51, i32 0, i32 %chip_id.1261
  %34 = ptrtoint ptr %switch.gep270 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load271 = load i32, ptr %switch.gep270, align 4
  %min_uV52 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 14
  %35 = ptrtoint ptr %min_uV52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.load, ptr %min_uV52, align 4
  %voltage_reg_mask53 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %voltage_reg_mask53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %switch.masked, ptr %voltage_reg_mask53, align 4
  %n_voltages55 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 8
  %37 = ptrtoint ptr %n_voltages55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %switch.load271, ptr %n_voltages55, align 4
  %call56 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps62360_regmap_config, ptr noundef nonnull @tps62360_probe._key, ptr noundef nonnull @.str.12) #5
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call56, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end66

if.then59:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call56 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef %39) #8
  br label %cleanup145

if.end66:                                         ; preds = %switch.lookup
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vsel1_def_state = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %pdata.2260, i32 0, i32 4
  %41 = ptrtoint ptr %vsel1_def_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vsel1_def_state, align 4
  %and = shl i32 %42, 1
  %mul = and i32 %and, 2
  %vsel0_def_state = getelementptr inbounds %struct.tps62360_regulator_platform_data, ptr %pdata.2260, i32 0, i32 3
  %43 = ptrtoint ptr %vsel0_def_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vsel0_def_state, align 4
  %and67 = and i32 %44, 1
  %add = or i32 %mul, %and67
  %curr_vset_id = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %curr_vset_id, align 4
  %lru_index = getelementptr %struct.tps62360_chip, ptr %call.i, i32 0, i32 10
  %46 = ptrtoint ptr %lru_index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %lru_index, align 4
  %valid_gpios = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 9
  %47 = ptrtoint ptr %valid_gpios to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %valid_gpios, align 1
  %48 = load i32, ptr %vsel0_def_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool70.not = icmp eq i32 %48, 0
  %cond = select i1 %tobool70.not, i32 3, i32 7
  %call72 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %cond) #5
  %vsel0_gpio = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %vsel0_gpio to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call72, ptr %vsel0_gpio, align 4
  %cmp.i241 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %do.end78, label %if.end84

do.end78:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call72 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef %50) #8
  %51 = ptrtoint ptr %vsel0_gpio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vsel0_gpio, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %cleanup145

if.end84:                                         ; preds = %if.end66
  %54 = ptrtoint ptr %vsel1_def_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vsel1_def_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool86.not = icmp eq i32 %55, 0
  %cond87 = select i1 %tobool86.not, i32 3, i32 7
  %call89 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %cond87) #5
  %vsel1_gpio = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %vsel1_gpio to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call89, ptr %vsel1_gpio, align 4
  %cmp.i242 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end95, label %if.end101

do.end95:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %call89 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef %57) #8
  %58 = ptrtoint ptr %vsel1_gpio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vsel1_gpio, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %cleanup145

if.end101:                                        ; preds = %if.end84
  %61 = ptrtoint ptr %vsel0_gpio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vsel0_gpio, align 4
  %cmp.not = icmp eq ptr %62, null
  %cmp104.not = icmp eq ptr %call89, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp104.not
  br i1 %or.cond, label %if.end101.if.end116_crit_edge, label %if.then105

if.end101.if.end116_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %valid_gpios to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %valid_gpios, align 1
  %arrayidx109.1 = getelementptr %struct.tps62360_chip, ptr %call.i, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %arrayidx109.1, align 4
  %arrayidx109.2 = getelementptr %struct.tps62360_chip, ptr %call.i, i32 0, i32 10, i32 2
  %65 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %arrayidx109.2, align 4
  %arrayidx109.3 = getelementptr %struct.tps62360_chip, ptr %call.i, i32 0, i32 10, i32 3
  %66 = ptrtoint ptr %arrayidx109.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %arrayidx109.3, align 4
  %67 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %curr_vset_id, align 4
  %69 = ptrtoint ptr %lru_index to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %lru_index, align 4
  %arrayidx115 = getelementptr %struct.tps62360_chip, ptr %call.i, i32 0, i32 10, i32 %68
  %70 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then105, %if.end101.if.end116_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramp_ctrl.i) #5
  %71 = ptrtoint ptr %ramp_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %ramp_ctrl.i, align 4, !annotation !125
  %72 = ptrtoint ptr %en_internal_pulldn44 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %en_internal_pulldn44, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i244 = icmp eq i8 %73, 0
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %..i = select i1 %tobool.not.i244, i32 0, i32 224
  %call2.i245 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 4, i32 noundef %..i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i245)
  %cmp.i246 = icmp slt i32 %call2.i245, 0
  br i1 %cmp.i246, label %do.end.i247, label %if.end4.i

do.end.i247:                                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef %call2.i245) #8
  br label %do.end122

if.end4.i:                                        ; preds = %if.end116
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call.i.i248 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i248)
  %cmp7.i = icmp slt i32 %call.i.i248, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.45, i32 noundef 6, i32 noundef %call.i.i248) #8
  br label %do.end122

if.end13.i:                                       ; preds = %if.end4.i
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call15.i249 = call i32 @regmap_read(ptr noundef %83, i32 noundef 6, ptr noundef nonnull %ramp_ctrl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i249)
  %cmp16.i = icmp slt i32 %call15.i249, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end124

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.45, i32 noundef 6, i32 noundef %call15.i249) #8
  br label %do.end122

do.end122:                                        ; preds = %do.end20.i, %do.end11.i, %do.end.i247
  %retval.0.i250.ph = phi i32 [ %call15.i249, %do.end20.i ], [ %call.i.i248, %do.end11.i ], [ %call2.i245, %do.end.i247 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramp_ctrl.i) #5
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i250.ph) #8
  br label %cleanup145

if.end124:                                        ; preds = %if.end13.i
  %88 = ptrtoint ptr %ramp_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ramp_ctrl.i, align 4
  %shr.i = lshr i32 %89, 5
  %and.i = and i32 %shr.i, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %sub.i = add nuw nsw i32 %shl.i, 31999
  %div1.i = lshr i32 %sub.i, %and.i
  %ramp_delay.i = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 1, i32 18
  %90 = ptrtoint ptr %ramp_delay.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div1.i, ptr %ramp_delay.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramp_ctrl.i) #5
  %91 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev, ptr %config, align 4
  %92 = ptrtoint ptr %pdata.2260 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdata.2260, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %94 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %init_data, align 4
  %driver_data127 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %95 = ptrtoint ptr %driver_data127 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data127, align 4
  %96 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %of_node, align 8
  %of_node130 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %98 = ptrtoint ptr %of_node130 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %of_node130, align 4
  %call133 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i251 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end138, label %if.end143

do.end138:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, ptr noundef %id) #8
  %101 = ptrtoint ptr %call133 to i32
  br label %cleanup145

if.end143:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %rdev144 = getelementptr inbounds %struct.tps62360_chip, ptr %call.i, i32 0, i32 2
  %102 = ptrtoint ptr %rdev144 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call133, ptr %rdev144, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %if.end143, %do.end138, %do.end122, %do.end95, %do.end78, %if.then59, %if.end40.cleanup145_crit_edge, %do.end38, %do.end30, %cleanup, %entry.cleanup145_crit_edge
  %retval.1 = phi i32 [ %39, %if.then59 ], [ %53, %do.end78 ], [ %60, %do.end95 ], [ %retval.0.i250.ph, %do.end122 ], [ %101, %do.end138 ], [ 0, %if.end143 ], [ -5, %do.end38 ], [ -19, %cleanup ], [ -19, %do.end30 ], [ -12, %entry.cleanup145_crit_edge ], [ -19, %if.end40.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps62360_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %en_discharge = getelementptr inbounds %struct.tps62360_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %en_discharge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %en_discharge, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 6, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.50, i32 noundef 6, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_dcdc_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %curr_vset_id = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_vset_id, align 4
  %valid_gpios = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %valid_gpios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_gpios, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.then

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 10, i32 0
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 11, i32 %7
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %selector)
  %cmp4.i = icmp eq i32 %9, %selector
  br i1 %cmp4.i, label %if.then.if.end11_crit_edge, label %for.inc.i

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

for.inc.i:                                        ; preds = %if.then
  %arrayidx2.1.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.1.i, align 4
  %arrayidx3.1.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 11, i32 %11
  %12 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %selector)
  %cmp4.1.i = icmp eq i32 %13, %selector
  br i1 %cmp4.1.i, label %for.inc.i.find_voltage_set_register.exit.thread41_crit_edge, label %for.inc.1.i

for.inc.i.find_voltage_set_register.exit.thread41_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_voltage_set_register.exit.thread41

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx2.2.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.2.i, align 4
  %arrayidx3.2.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 11, i32 %15
  %16 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %selector)
  %cmp4.2.i = icmp eq i32 %17, %selector
  br i1 %cmp4.2.i, label %for.inc.1.i.find_voltage_set_register.exit.thread41_crit_edge, label %find_voltage_set_register.exit

for.inc.1.i.find_voltage_set_register.exit.thread41_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_voltage_set_register.exit.thread41

find_voltage_set_register.exit.thread41:          ; preds = %for.inc.1.i.find_voltage_set_register.exit.thread41_crit_edge, %for.inc.i.find_voltage_set_register.exit.thread41_crit_edge
  %new_vset_reg.0.ph.i.ph = phi i32 [ %11, %for.inc.i.find_voltage_set_register.exit.thread41_crit_edge ], [ %15, %for.inc.1.i.find_voltage_set_register.exit.thread41_crit_edge ]
  %found_index.0.ph.i.ph = phi i32 [ 4, %for.inc.i.find_voltage_set_register.exit.thread41_crit_edge ], [ 8, %for.inc.1.i.find_voltage_set_register.exit.thread41_crit_edge ]
  %18 = call ptr @memmove(ptr %arrayidx2.1.i, ptr %arrayidx2.i, i32 %found_index.0.ph.i.ph)
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new_vset_reg.0.ph.i.ph, ptr %arrayidx2.i, align 4
  br label %if.end11

find_voltage_set_register.exit:                   ; preds = %for.inc.1.i
  %arrayidx3.3.i = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 11, i32 %5
  %20 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %selector)
  %cmp4.3.i = icmp eq i32 %21, %selector
  %22 = call ptr @memmove(ptr %arrayidx2.1.i, ptr %arrayidx2.i, i32 12)
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %5, ptr %arrayidx2.i, align 4
  br i1 %cmp4.3.i, label %find_voltage_set_register.exit.if.end11_crit_edge, label %find_voltage_set_register.exit.if.then3_crit_edge

find_voltage_set_register.exit.if.then3_crit_edge: ; preds = %find_voltage_set_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

find_voltage_set_register.exit.if.end11_crit_edge: ; preds = %find_voltage_set_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3:                                         ; preds = %find_voltage_set_register.exit.if.then3_crit_edge, %entry.if.then3_crit_edge
  %new_vset_id.0 = phi i32 [ %1, %entry.if.then3_crit_edge ], [ %5, %find_voltage_set_register.exit.if.then3_crit_edge ]
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %voltage_reg_mask = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %voltage_reg_mask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %voltage_reg_mask, align 4
  %conv = zext i8 %27 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %new_vset_id.0, i32 noundef %conv, i32 noundef %selector, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %new_vset_id.0, i32 noundef %call.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %new_vset_id.0, ptr %curr_vset_id, align 4
  %arrayidx = getelementptr %struct.tps62360_chip, ptr %call, i32 0, i32 11, i32 %new_vset_id.0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %selector, ptr %arrayidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %find_voltage_set_register.exit.if.end11_crit_edge, %find_voltage_set_register.exit.thread41, %if.then.if.end11_crit_edge
  %new_vset_id.1 = phi i32 [ %new_vset_id.0, %if.end9 ], [ %5, %find_voltage_set_register.exit.if.end11_crit_edge ], [ %new_vset_reg.0.ph.i.ph, %find_voltage_set_register.exit.thread41 ], [ %7, %if.then.if.end11_crit_edge ]
  %32 = ptrtoint ptr %valid_gpios to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid_gpios, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not = icmp eq i8 %33, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %vsel0_gpio = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 4
  %34 = ptrtoint ptr %vsel0_gpio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vsel0_gpio, align 4
  %and = and i32 %new_vset_id.1, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %35, i32 noundef %and) #5
  %vsel1_gpio = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 5
  %36 = ptrtoint ptr %vsel1_gpio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsel1_gpio, align 4
  %shr34 = lshr i32 %new_vset_id.1, 1
  %and15 = and i32 %shr34, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef %and15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then14 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_dcdc_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %curr_vset_id = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_vset_id, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %7 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_vset_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %8, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %voltage_reg_mask = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %voltage_reg_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %voltage_reg_mask, align 4
  %conv = zext i8 %12 to i32
  %and = and i32 %10, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %and, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb1 ], [ 128, %entry.sw.epilog_crit_edge ]
  %valid_gpios = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %valid_gpios to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valid_gpios, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 128, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp11 = icmp slt i32 %call.i38, 0
  br i1 %cmp11, label %for.cond.preheader.do.end15_crit_edge, label %for.inc

for.cond.preheader.do.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.then:                                          ; preds = %sw.epilog
  %curr_vset_id = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_vset_id, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 128, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_vset_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34, i32 noundef %10, i32 noundef %call.i) #8
  br label %cleanup

do.end15:                                         ; preds = %for.inc.2.do.end15_crit_edge, %for.inc.1.do.end15_crit_edge, %for.inc.do.end15_crit_edge, %for.cond.preheader.do.end15_crit_edge
  %i.041.lcssa = phi i32 [ 0, %for.cond.preheader.do.end15_crit_edge ], [ 1, %for.inc.do.end15_crit_edge ], [ 2, %for.inc.1.do.end15_crit_edge ], [ 3, %for.inc.2.do.end15_crit_edge ]
  %call.i38.lcssa = phi i32 [ %call.i38, %for.cond.preheader.do.end15_crit_edge ], [ %call.i38.1, %for.inc.do.end15_crit_edge ], [ %call.i38.2, %for.inc.1.do.end15_crit_edge ], [ %call.i38.3, %for.inc.2.do.end15_crit_edge ]
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34, i32 noundef %i.041.lcssa, i32 noundef %call.i38.lcssa) #8
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i38.1 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1, i32 noundef 128, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.1)
  %cmp11.1 = icmp slt i32 %call.i38.1, 0
  br i1 %cmp11.1, label %for.inc.do.end15_crit_edge, label %for.inc.1

for.inc.do.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

for.inc.1:                                        ; preds = %for.inc
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i38.2 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 2, i32 noundef 128, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.2)
  %cmp11.2 = icmp slt i32 %call.i38.2, 0
  br i1 %cmp11.2, label %for.inc.1.do.end15_crit_edge, label %for.inc.2

for.inc.1.do.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

for.inc.2:                                        ; preds = %for.inc.1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i38.3 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3, i32 noundef 128, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.3)
  %cmp11.3 = icmp slt i32 %call.i38.3, 0
  br i1 %cmp11.3, label %for.inc.2.do.end15_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2.do.end15_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %do.end15, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i38.lcssa, %do.end15 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i38.3, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps62360_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !125
  %regmap = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %curr_vset_id = getelementptr inbounds %struct.tps62360_chip, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_vset_id, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %7 = ptrtoint ptr %curr_vset_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_vset_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37, i32 noundef %8, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %cond, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_tps62360_regulator__288_522_tps62360_init4, !1, !"__initcall__kmod_tps62360_regulator__288_522_tps62360_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps62360-regulator.c", i32 522, i32 1}
!2 = !{ptr @__exitcall_tps62360_cleanup, !3, !"__exitcall_tps62360_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps62360-regulator.c", i32 528, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps62360-regulator.c", i32 530, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps62360-regulator.c", i32 531, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps62360-regulator.c", i32 532, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps62360-regulator.c", i32 510, i32 11}
!13 = !{ptr @tps62360_i2c_driver, !14, !"tps62360_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps62360-regulator.c", i32 508, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps62360-regulator.c", i32 368, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tps62360_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tps62360_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/tps62360-regulator.c", i32 378, i32 3}
!25 = !{ptr @tps62360_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tps62360_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/tps62360-regulator.c", i32 383, i32 3}
!29 = !{ptr @tps62360_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tps62360_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tps62360_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/regulator/tps62360-regulator.c", i32 409, i32 16}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/tps62360-regulator.c", i32 412, i32 3}
!36 = !{ptr @tps62360_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tps62360_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/tps62360-regulator.c", i32 426, i32 58}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/tps62360-regulator.c", i32 428, i32 3}
!42 = !{ptr @tps62360_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tps62360_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/tps62360-regulator.c", i32 436, i32 58}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/tps62360-regulator.c", i32 438, i32 3}
!48 = !{ptr @tps62360_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @tps62360_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps62360-regulator.c", i32 459, i32 3}
!52 = !{ptr @tps62360_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tps62360_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/tps62360-regulator.c", i32 472, i32 3}
!56 = !{ptr @tps62360_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps62360_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @tps62360_dcdc_ops, !59, !"tps62360_dcdc_ops", i1 false, i1 false}
!59 = !{!"../drivers/regulator/tps62360-regulator.c", i32 235, i32 35}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/tps62360-regulator.c", i32 156, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tps62360_dcdc_set_voltage_sel._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tps62360_dcdc_set_voltage_sel._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/tps62360-regulator.c", i32 129, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @tps62360_dcdc_get_voltage_sel._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @tps62360_dcdc_get_voltage_sel._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/tps62360-regulator.c", i32 199, i32 4}
!72 = !{ptr @tps62360_set_mode._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tps62360_set_mode._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @tps62360_set_mode._entry.35, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/regulator/tps62360-regulator.c", i32 210, i32 4}
!76 = !{ptr @tps62360_set_mode._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/tps62360-regulator.c", i32 227, i32 3}
!79 = !{ptr @tps62360_get_mode._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tps62360_get_mode._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/tps62360-regulator.c", i32 308, i32 3}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @of_get_tps62360_platform_data._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_get_tps62360_platform_data._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/tps62360-regulator.c", i32 312, i32 27}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/tps62360-regulator.c", i32 315, i32 27}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/tps62360-regulator.c", i32 318, i32 27}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/tps62360-regulator.c", i32 321, i32 27}
!94 = !{ptr @tps62360_regmap_config, !95, !"tps62360_regmap_config", i1 false, i1 false}
!95 = !{!"../drivers/regulator/tps62360-regulator.c", i32 287, i32 35}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/tps62360-regulator.c", i32 257, i32 3}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @tps62360_init_dcdc._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @tps62360_init_dcdc._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @tps62360_init_dcdc._entry.46, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/regulator/tps62360-regulator.c", i32 266, i32 3}
!103 = !{ptr @tps62360_init_dcdc._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @tps62360_init_dcdc._entry.48, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/regulator/tps62360-regulator.c", i32 275, i32 3}
!106 = !{ptr @tps62360_init_dcdc._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/tps62360-regulator.c", i32 493, i32 3}
!109 = !{ptr @tps62360_shutdown._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tps62360_shutdown._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @tps62360_of_match, !112, !"tps62360_of_match", i1 false, i1 false}
!112 = !{!"../drivers/regulator/tps62360-regulator.c", i32 328, i32 34}
!113 = !{ptr @tps62360_id, !114, !"tps62360_id", i1 false, i1 false}
!114 = !{!"../drivers/regulator/tps62360-regulator.c", i32 498, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{!"auto-init"}
