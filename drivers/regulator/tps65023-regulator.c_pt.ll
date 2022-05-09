; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps65023-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65023-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tps_driver_data = type { ptr, i8 }
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
%struct.tps_pmic = type { [5 x ptr], ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_tps65023_regulator__288_355_tps_65023_init4 = internal global ptr @tps_65023_init, section ".initcall4.init", align 4
@tps_65023_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tps_65023_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65023_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps_65023_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps_65023_cleanup = internal global ptr @tps_65023_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [44 x i8] c"tps65023_regulator.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps65023_regulator.description=TPS65023 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps65023_regulator.file=drivers/regulator/tps65023-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps65023_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps65023\00", [23 x i8] zeroinitializer }, align 32
@tps65023_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65020_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65021_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65023_drv_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tps_65023_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps65023\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tps65023_drv_data to i32) }, %struct.i2c_device_id { [20 x i8] c"tps65021\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tps65021_drv_data to i32) }, %struct.i2c_device_id { [20 x i8] c"tps65020\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tps65020_drv_data to i32) }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tps_65023_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps65023_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tps65023_regulator:283:(&tps65023_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@tps_65023_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tps_65023_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps65023-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps_65023_probe._entry_ptr = internal global ptr @tps_65023_probe._entry, section ".printk_index", align 4
@tps_65023_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@tps_65023_probe._entry_ptr.9 = internal global ptr @tps_65023_probe._entry.7, section ".printk_index", align 4
@tps65020_drv_data = internal global { %struct.tps_driver_data, [24 x i8] } { %struct.tps_driver_data { ptr @tps65020_regulators, i8 2 }, [24 x i8] zeroinitializer }, align 32
@tps65021_drv_data = internal global { %struct.tps_driver_data, [24 x i8] } { %struct.tps_driver_data { ptr @tps65021_regulators, i8 2 }, [24 x i8] zeroinitializer }, align 32
@tps65023_drv_data = internal global { %struct.tps_driver_data, [24 x i8] } { %struct.tps_driver_data { ptr @tps65023_regulators, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tps65020_regulators = internal constant { [5 x %struct.regulator_desc], [316 x i8] } { [5 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_3300000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_1800000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @VCORE_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 31, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65020_LDO_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65020_LDO_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [316 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC1\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@tps65023_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65023_dcdc_set_voltage_sel, ptr null, ptr @tps65023_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@DCDC_FIXED_3300000_VSEL_table = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3300000], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC2\00", [25 x i8] zeroinitializer }, align 32
@DCDC_FIXED_1800000_VSEL_table = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1800000], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC3\00", [25 x i8] zeroinitializer }, align 32
@VCORE_VSEL_table = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1525000, i32 1550000, i32 1600000], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@tps65023_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@TPS65020_LDO_VSEL_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1000000, i32 1050000, i32 1100000, i32 1300000, i32 1800000, i32 2500000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@tps65021_regulators = internal constant { [5 x %struct.regulator_desc], [316 x i8] } { [5 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_3300000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_1800000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @VCORE_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 31, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65023_LDO1_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65023_LDO2_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [316 x i8] zeroinitializer }, align 32
@TPS65023_LDO1_VSEL_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1000000, i32 1100000, i32 1300000, i32 1800000, i32 2200000, i32 2600000, i32 2800000, i32 3150000], [32 x i8] zeroinitializer }, align 32
@TPS65023_LDO2_VSEL_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1050000, i32 1200000, i32 1300000, i32 1800000, i32 2500000, i32 2800000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@tps65023_regulators = internal constant { [5 x %struct.regulator_desc], [316 x i8] } { [5 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.11, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @VCORE_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 31, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.11, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_3300000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.11, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @tps65023_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @DCDC_FIXED_1800000_VSEL_table, ptr null, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 3, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.11, ptr null, i32 3, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65023_LDO1_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.11, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @tps65023_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @TPS65023_LDO2_VSEL_table, ptr null, i32 0, i32 0, i32 8, i32 112, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [316 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"tps_65023_i2c_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 342, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 344, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"tps65023_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 319, i32 49 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"tps_65023_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"tps65023_regmap_config\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 224, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 283, i32 16 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 286, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 304, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"tps65020_drv_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 253, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"tps65021_drv_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 258, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"tps65023_drv_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 263, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"tps65020_regulators\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 229, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 230, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"tps65023_dcdc_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 203, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"DCDC_FIXED_3300000_VSEL_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 137, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 231, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"DCDC_FIXED_1800000_VSEL_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 141, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 232, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"VCORE_VSEL_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 126, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 233, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"tps65023_ldo_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 214, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"TPS65020_LDO_VSEL_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 146, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 234, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"tps65021_regulators\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 237, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"TPS65023_LDO1_VSEL_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 153, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"TPS65023_LDO2_VSEL_table\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 158, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"tps65023_regulators\00", align 1
@___asan_gen_.119 = private constant [42 x i8] c"../drivers/regulator/tps65023-regulator.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 245, i32 36 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps_65023_cleanup, ptr @__initcall__kmod_tps65023_regulator__288_355_tps_65023_init4, ptr @tps_65023_cleanup, ptr @tps_65023_probe._entry, ptr @tps_65023_probe._entry.7, ptr @tps_65023_probe._entry_ptr, ptr @tps_65023_probe._entry_ptr.9, ptr @tps_65023_i2c_driver, ptr @.str, ptr @tps65023_of_match, ptr @tps_65023_id, ptr @tps_65023_probe._key, ptr @tps65023_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tps65020_drv_data, ptr @tps65021_drv_data, ptr @tps65023_drv_data, ptr @tps65020_regulators, ptr @.str.10, ptr @.str.11, ptr @tps65023_dcdc_ops, ptr @DCDC_FIXED_3300000_VSEL_table, ptr @.str.12, ptr @DCDC_FIXED_1800000_VSEL_table, ptr @.str.13, ptr @VCORE_VSEL_table, ptr @.str.14, ptr @tps65023_ldo_ops, ptr @TPS65020_LDO_VSEL_table, ptr @.str.15, ptr @tps65021_regulators, ptr @TPS65023_LDO1_VSEL_table, ptr @TPS65023_LDO2_VSEL_table, ptr @tps65023_regulators], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps_65023_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps_65023_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps_65023_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps_65023_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps_65023_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65020_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65021_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_drv_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65020_regulators to i32), i32 1220, i32 1536, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DCDC_FIXED_3300000_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DCDC_FIXED_1800000_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VCORE_VSEL_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TPS65020_LDO_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65021_regulators to i32), i32 1220, i32 1536, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TPS65023_LDO1_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TPS65023_LDO2_VSEL_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65023_regulators to i32), i32 1220, i32 1536, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps_65023_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps_65023_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps_65023_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tps_65023_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps_65023_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  %driver_data3 = getelementptr inbounds %struct.tps_pmic, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %driver_data3, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps65023_regmap_config, ptr noundef nonnull @tps_65023_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.tps_pmic, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %9) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %config, align 4
  %driver_data14 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %11 = ptrtoint ptr %driver_data14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data14, align 4
  %regmap16 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %regmap16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %regmap16, align 4
  %tobool17.not = icmp eq ptr %1, null
  %init_data19 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  br i1 %tobool17.not, label %if.end11.if.end20_crit_edge, label %if.then18

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %init_data19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %init_data19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11.if.end20_crit_edge
  %14 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data3, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call24 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %17, ptr noundef nonnull %config) #5
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %call.i, align 4
  %cmp.i72 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.end20.do.end32_crit_edge, label %for.inc

if.end20.do.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

do.end32:                                         ; preds = %if.end20.4.do.end32_crit_edge, %if.end20.3.do.end32_crit_edge, %if.end20.2.do.end32_crit_edge, %if.end20.1.do.end32_crit_edge, %if.end20.do.end32_crit_edge
  %i.074.lcssa = phi i32 [ 0, %if.end20.do.end32_crit_edge ], [ 1, %if.end20.1.do.end32_crit_edge ], [ 2, %if.end20.2.do.end32_crit_edge ], [ 3, %if.end20.3.do.end32_crit_edge ], [ 4, %if.end20.4.do.end32_crit_edge ]
  %arrayidx25.le = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 %i.074.lcssa
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %id) #8
  %19 = ptrtoint ptr %arrayidx25.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25.le, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end20
  br i1 %tobool17.not, label %for.inc.if.end20.1_crit_edge, label %if.then18.1

for.inc.if.end20.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.1

if.then18.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.regulator_init_data, ptr %1, i32 1
  %22 = ptrtoint ptr %init_data19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.1, ptr %init_data19, align 4
  br label %if.end20.1

if.end20.1:                                       ; preds = %if.then18.1, %for.inc.if.end20.1_crit_edge
  %23 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data3, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx23.1 = getelementptr %struct.regulator_desc, ptr %26, i32 1
  %call24.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx23.1, ptr noundef nonnull %config) #5
  %arrayidx25.1 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call24.1, ptr %arrayidx25.1, align 4
  %cmp.i72.1 = icmp ugt ptr %call24.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.1, label %if.end20.1.do.end32_crit_edge, label %for.inc.1

if.end20.1.do.end32_crit_edge:                    ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.inc.1:                                        ; preds = %if.end20.1
  br i1 %tobool17.not, label %for.inc.1.if.end20.2_crit_edge, label %if.then18.2

for.inc.1.if.end20.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.2

if.then18.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr %struct.regulator_init_data, ptr %1, i32 2
  %28 = ptrtoint ptr %init_data19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.2, ptr %init_data19, align 4
  br label %if.end20.2

if.end20.2:                                       ; preds = %if.then18.2, %for.inc.1.if.end20.2_crit_edge
  %29 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data3, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %arrayidx23.2 = getelementptr %struct.regulator_desc, ptr %32, i32 2
  %call24.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx23.2, ptr noundef nonnull %config) #5
  %arrayidx25.2 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call24.2, ptr %arrayidx25.2, align 4
  %cmp.i72.2 = icmp ugt ptr %call24.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.2, label %if.end20.2.do.end32_crit_edge, label %for.inc.2

if.end20.2.do.end32_crit_edge:                    ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.inc.2:                                        ; preds = %if.end20.2
  br i1 %tobool17.not, label %for.inc.2.if.end20.3_crit_edge, label %if.then18.3

for.inc.2.if.end20.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.3

if.then18.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr %struct.regulator_init_data, ptr %1, i32 3
  %34 = ptrtoint ptr %init_data19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.3, ptr %init_data19, align 4
  br label %if.end20.3

if.end20.3:                                       ; preds = %if.then18.3, %for.inc.2.if.end20.3_crit_edge
  %35 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data3, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %arrayidx23.3 = getelementptr %struct.regulator_desc, ptr %38, i32 3
  %call24.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx23.3, ptr noundef nonnull %config) #5
  %arrayidx25.3 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call24.3, ptr %arrayidx25.3, align 4
  %cmp.i72.3 = icmp ugt ptr %call24.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.3, label %if.end20.3.do.end32_crit_edge, label %for.inc.3

if.end20.3.do.end32_crit_edge:                    ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.inc.3:                                        ; preds = %if.end20.3
  br i1 %tobool17.not, label %for.inc.3.if.end20.4_crit_edge, label %if.then18.4

for.inc.3.if.end20.4_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.4

if.then18.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr %struct.regulator_init_data, ptr %1, i32 4
  %40 = ptrtoint ptr %init_data19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx.4, ptr %init_data19, align 4
  br label %if.end20.4

if.end20.4:                                       ; preds = %if.then18.4, %for.inc.3.if.end20.4_crit_edge
  %41 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data3, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %arrayidx23.4 = getelementptr %struct.regulator_desc, ptr %44, i32 4
  %call24.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx23.4, ptr noundef nonnull %config) #5
  %arrayidx25.4 = getelementptr [5 x ptr], ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call24.4, ptr %arrayidx25.4, align 4
  %cmp.i72.4 = icmp ugt ptr %call24.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72.4, label %if.end20.4.do.end32_crit_edge, label %for.inc.4

if.end20.4.do.end32_crit_edge:                    ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.inc.4:                                        ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call.i73 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 5, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %do.end32, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then7 ], [ %21, %do.end32 ], [ 0, %for.inc.4 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65023_dcdc_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  %driver_data = getelementptr inbounds %struct.tps_pmic, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %core_regulator = getelementptr inbounds %struct.tps_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core_regulator to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %core_regulator, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv)
  %cmp.not = icmp eq i32 %call1, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %dev, i32 noundef %selector) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65023_dcdc_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %0 = icmp ugt i32 %call1, 2
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.tps_pmic, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data, align 4
  %core_regulator = getelementptr inbounds %struct.tps_driver_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %core_regulator to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %core_regulator, align 4
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv)
  %cmp3.not = icmp eq i32 %call1, %conv
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_tps65023_regulator__288_355_tps_65023_init4, !1, !"__initcall__kmod_tps65023_regulator__288_355_tps_65023_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps65023-regulator.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_tps_65023_cleanup, !3, !"__exitcall_tps_65023_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps65023-regulator.c", i32 361, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps65023-regulator.c", i32 363, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps65023-regulator.c", i32 364, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps65023-regulator.c", i32 365, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps65023-regulator.c", i32 344, i32 11}
!13 = !{ptr @tps_65023_i2c_driver, !14, !"tps_65023_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps65023-regulator.c", i32 342, i32 26}
!15 = !{ptr @tps_65023_probe._key, !16, !"_key", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps65023-regulator.c", i32 283, i32 16}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/tps65023-regulator.c", i32 286, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tps_65023_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tps_65023_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/tps65023-regulator.c", i32 304, i32 4}
!28 = !{ptr @tps_65023_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tps_65023_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tps65023_regmap_config, !31, !"tps65023_regmap_config", i1 false, i1 false}
!31 = !{!"../drivers/regulator/tps65023-regulator.c", i32 224, i32 35}
!32 = !{ptr @tps65023_of_match, !33, !"tps65023_of_match", i1 false, i1 false}
!33 = !{!"../drivers/regulator/tps65023-regulator.c", i32 319, i32 49}
!34 = !{ptr @tps65020_drv_data, !35, !"tps65020_drv_data", i1 false, i1 false}
!35 = !{!"../drivers/regulator/tps65023-regulator.c", i32 253, i32 31}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/tps65023-regulator.c", i32 230, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/tps65023-regulator.c", i32 231, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/tps65023-regulator.c", i32 232, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/tps65023-regulator.c", i32 233, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/tps65023-regulator.c", i32 234, i32 2}
!47 = !{ptr @tps65020_regulators, !48, !"tps65020_regulators", i1 false, i1 false}
!48 = !{!"../drivers/regulator/tps65023-regulator.c", i32 229, i32 36}
!49 = !{ptr @tps65023_dcdc_ops, !50, !"tps65023_dcdc_ops", i1 false, i1 false}
!50 = !{!"../drivers/regulator/tps65023-regulator.c", i32 203, i32 35}
!51 = !{ptr @DCDC_FIXED_3300000_VSEL_table, !52, !"DCDC_FIXED_3300000_VSEL_table", i1 false, i1 false}
!52 = !{!"../drivers/regulator/tps65023-regulator.c", i32 137, i32 27}
!53 = !{ptr @DCDC_FIXED_1800000_VSEL_table, !54, !"DCDC_FIXED_1800000_VSEL_table", i1 false, i1 false}
!54 = !{!"../drivers/regulator/tps65023-regulator.c", i32 141, i32 27}
!55 = !{ptr @VCORE_VSEL_table, !56, !"VCORE_VSEL_table", i1 false, i1 false}
!56 = !{!"../drivers/regulator/tps65023-regulator.c", i32 126, i32 27}
!57 = !{ptr @tps65023_ldo_ops, !58, !"tps65023_ldo_ops", i1 false, i1 false}
!58 = !{!"../drivers/regulator/tps65023-regulator.c", i32 214, i32 35}
!59 = !{ptr @TPS65020_LDO_VSEL_table, !60, !"TPS65020_LDO_VSEL_table", i1 false, i1 false}
!60 = !{!"../drivers/regulator/tps65023-regulator.c", i32 146, i32 27}
!61 = !{ptr @tps65021_drv_data, !62, !"tps65021_drv_data", i1 false, i1 false}
!62 = !{!"../drivers/regulator/tps65023-regulator.c", i32 258, i32 31}
!63 = !{ptr @tps65021_regulators, !64, !"tps65021_regulators", i1 false, i1 false}
!64 = !{!"../drivers/regulator/tps65023-regulator.c", i32 237, i32 36}
!65 = !{ptr @TPS65023_LDO1_VSEL_table, !66, !"TPS65023_LDO1_VSEL_table", i1 false, i1 false}
!66 = !{!"../drivers/regulator/tps65023-regulator.c", i32 153, i32 27}
!67 = !{ptr @TPS65023_LDO2_VSEL_table, !68, !"TPS65023_LDO2_VSEL_table", i1 false, i1 false}
!68 = !{!"../drivers/regulator/tps65023-regulator.c", i32 158, i32 27}
!69 = !{ptr @tps65023_drv_data, !70, !"tps65023_drv_data", i1 false, i1 false}
!70 = !{!"../drivers/regulator/tps65023-regulator.c", i32 263, i32 31}
!71 = !{ptr @tps65023_regulators, !72, !"tps65023_regulators", i1 false, i1 false}
!72 = !{!"../drivers/regulator/tps65023-regulator.c", i32 245, i32 36}
!73 = !{ptr @tps_65023_id, !74, !"tps_65023_id", i1 false, i1 false}
!74 = !{!"../drivers/regulator/tps65023-regulator.c", i32 327, i32 35}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
