; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ltc4162-l-charger.c_pt.bc'
source_filename = "../drivers/power/supply/ltc4162-l-charger.c"
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
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ltc4162l_info = type { ptr, ptr, ptr, i32, i32, i8 }

@__initcall__kmod_ltc4162_l_charger__289_927_ltc4162l_driver_init6 = internal global ptr @ltc4162l_driver_init, section ".initcall6.init", align 4
@ltc4162l_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ltc4162l_probe, ptr null, ptr null, ptr null, ptr @ltc4162l_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc4162l_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc4162l_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc4162l_driver_exit = internal global ptr @ltc4162l_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [62 x i8] c"ltc4162_l_charger.file=drivers/power/supply/ltc4162-l-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [30 x i8] c"ltc4162_l_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [66 x i8] c"ltc4162_l_charger.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [55 x i8] c"ltc4162_l_charger.description=LTC4162-L charger driver\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc4162-l-charger\00", [46 x i8] zeroinitializer }, align 32
@ltc4162l_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc4162-l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ltc4162l_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc4162-l\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No support for SMBUS_WORD_DATA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ltc4162l_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/power/supply/ltc4162-l-charger.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry_ptr = internal global ptr @ltc4162l_probe._entry, section ".printk_index", align 4
@ltc4162l_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc4162l_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @ltc4162l_is_writeable_reg, ptr null, ptr @ltc4162l_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 75, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ltc4162_l_charger:843:(&ltc4162l_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize register map\0A\00", [61 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry_ptr.9 = internal global ptr @ltc4162l_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lltc,rsnsb-micro-ohms\00", [42 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Missing lltc,rsnsb-micro-ohms property\0A\00", [56 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry_ptr.13 = internal global ptr @ltc4162l_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lltc,rsnsi-micro-ohms\00", [42 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 861, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Missing lltc,rsnsi-micro-ohms property\0A\00", [56 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry_ptr.17 = internal global ptr @ltc4162l_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lltc,cell-count\00", [16 x i8] zeroinitializer }, align 32
@ltc4162l_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ltc4162l_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ltc4162l_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.38, i32 3, ptr null, i32 0, ptr @ltc4162l_properties, i32 13, ptr @ltc4162l_get_property, ptr @ltc4162l_set_property, ptr @ltc4162l_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register charger\0A\00", [36 x i8] zeroinitializer }, align 32
@ltc4162l_probe._entry_ptr.21 = internal global ptr @ltc4162l_probe._entry.19, section ".printk_index", align 4
@ltc4162l_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltc4162l_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltc4162l_sysfs_entries = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_charge_status, ptr @dev_attr_ibat, ptr @dev_attr_vbat, ptr @dev_attr_vbat_avg, ptr @dev_attr_force_telemetry, ptr @dev_attr_arm_ship_mode, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_charge_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @charge_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ibat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ibat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vbat = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vbat_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vbat_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vbat_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_force_telemetry = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @force_telemetry_show, ptr @force_telemetry_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_arm_ship_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arm_ship_mode_show, ptr @arm_ship_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charge_status\00", [18 x i8] zeroinitializer }, align 32
@ltc4162l_charge_status_name = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ilim_reg_active\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thermal_reg_active\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vin_uvcl_active\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iin_limit_active\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"constant_current\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"constant_voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"charger_off\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ibat\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbat_avg\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"force_telemetry\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arm_ship_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ltc4162-l\00", [22 x i8] zeroinitializer }, align 32
@ltc4162l_properties = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 1, i32 2, i32 4, i32 12, i32 17, i32 29, i32 30, i32 31, i32 32, i32 38, i32 52, i32 68], [44 x i8] zeroinitializer }, align 32
@ltc4162l_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read CHARGER_STATE\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltc4162l_get_status\00", [44 x i8] zeroinitializer }, align 32
@ltc4162l_get_status._entry_ptr = internal global ptr @ltc4162l_get_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 12, i64 17, i64 29, i64 30, i64 31, i64 32, i64 38, i64 52, i64 68]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 8, i64 64, i64 128]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 38, i64 68]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 38, i64 68]
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"ltc4162l_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 918, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 923, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"ltc4162l_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 912, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"ltc4162l_i2c_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 906, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 833, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"ltc4162l_regmap_config\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 804, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 843, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 845, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 849, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 852, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 858, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 861, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 867, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"ltc4162l_attr_groups\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 674, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"ltc4162l_desc\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 774, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 877, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"ltc4162l_attr_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 669, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"ltc4162l_sysfs_entries\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 659, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"dev_attr_charge_status\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"dev_attr_ibat\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"dev_attr_vbat\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"dev_attr_vbat_avg\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"dev_attr_force_telemetry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"dev_attr_arm_ship_mode\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 530, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"ltc4162l_charge_status_name\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 494, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 528, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 495, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 496, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 497, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 498, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 499, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 500, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 501, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 578, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 576, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 546, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 562, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 617, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 592, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 657, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 775, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"ltc4162l_properties\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 758, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [44 x i8] c"../drivers/power/supply/ltc4162-l-charger.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 136, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_ltc4162l_driver_exit, ptr @__initcall__kmod_ltc4162_l_charger__289_927_ltc4162l_driver_init6, ptr @ltc4162l_driver_exit, ptr @ltc4162l_get_status._entry, ptr @ltc4162l_get_status._entry_ptr, ptr @ltc4162l_probe._entry, ptr @ltc4162l_probe._entry.11, ptr @ltc4162l_probe._entry.15, ptr @ltc4162l_probe._entry.19, ptr @ltc4162l_probe._entry.7, ptr @ltc4162l_probe._entry_ptr, ptr @ltc4162l_probe._entry_ptr.13, ptr @ltc4162l_probe._entry_ptr.17, ptr @ltc4162l_probe._entry_ptr.21, ptr @ltc4162l_probe._entry_ptr.9, ptr @ltc4162l_driver, ptr @.str, ptr @ltc4162l_of_match, ptr @ltc4162l_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ltc4162l_probe._key, ptr @ltc4162l_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ltc4162l_attr_groups, ptr @ltc4162l_desc, ptr @.str.20, ptr @ltc4162l_attr_group, ptr @ltc4162l_sysfs_entries, ptr @dev_attr_charge_status, ptr @dev_attr_ibat, ptr @dev_attr_vbat, ptr @dev_attr_vbat_avg, ptr @dev_attr_force_telemetry, ptr @dev_attr_arm_ship_mode, ptr @.str.22, ptr @ltc4162l_charge_status_name, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @ltc4162l_properties, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_sysfs_entries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charge_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ibat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbat to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbat_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_force_telemetry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_arm_ship_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_charge_status_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_properties to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4162l_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4162l_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc4162l_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc4162l_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc4162l_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4162l_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ltc4162l_config = alloca %struct.power_supply_config, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ltc4162l_config) #8
  %2 = getelementptr inbounds i8, ptr %ltc4162l_config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !119
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 24, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc4162l_regmap_config, ptr noundef nonnull @ltc4162l_probe._key, ptr noundef nonnull @.str.6) #8
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i101 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %rsnsb = getelementptr inbounds %struct.ltc4162l_info, ptr %call.i, i32 0, i32 3
  %call.i102 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.10, ptr noundef %rsnsb, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool19.not = icmp eq i32 %call.i102, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %rsnsb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsnsb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %rsnsi = getelementptr inbounds %struct.ltc4162l_info, ptr %call.i, i32 0, i32 4
  %call.i103 = tail call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.14, ptr noundef %rsnsi, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool30.not = icmp eq i32 %call.i103, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %17 = ptrtoint ptr %rsnsi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsnsi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool37.not = icmp eq i32 %18, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call.i104 = call i32 @device_property_read_u32_array(ptr noundef %dev2, ptr noundef nonnull @.str.18, ptr noundef nonnull %value, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool41.not = icmp eq i32 %call.i104, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %conv = trunc i32 %20 to i8
  %cell_count = getelementptr inbounds %struct.ltc4162l_info, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %cell_count to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %cell_count, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %24 = ptrtoint ptr %ltc4162l_config to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %ltc4162l_config, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %ltc4162l_config, i32 0, i32 2
  %25 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %drv_data, align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %ltc4162l_config, i32 0, i32 3
  %26 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ltc4162l_attr_groups, ptr %attr_grp, align 4
  %call45 = call ptr @devm_power_supply_register(ptr noundef %dev2, ptr noundef nonnull @ltc4162l_desc, ptr noundef nonnull %ltc4162l_config) #8
  %charger = getelementptr inbounds %struct.ltc4162l_info, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call45, ptr %charger, align 4
  %cmp.i105 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20) #11
  %28 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %charger, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_write(ptr noundef %32, i32 noundef 13, i32 noundef 0) #8
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call58 = call i32 @regmap_write(ptr noundef %34, i32 noundef 14, i32 noundef 8191) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_write(ptr noundef %36, i32 noundef 15, i32 noundef 31) #8
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i106 = call i32 @regmap_write(ptr noundef %38, i32 noundef 54, i32 noundef 0) #8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 55, i32 noundef 0) #8
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 56, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end51, %if.end35.cleanup_crit_edge, %do.end34, %if.end24.cleanup_crit_edge, %do.end23, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end14 ], [ %call.i102, %do.end23 ], [ %call.i103, %do.end34 ], [ %30, %do.end51 ], [ 0, %if.end54 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ltc4162l_config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc4162l_alert(ptr nocapture noundef readonly %client, i32 noundef %type, i32 noundef %flag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 54, i32 noundef 0) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 55, i32 noundef 0) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 56, i32 noundef 0) #8
  %charger = getelementptr inbounds %struct.ltc4162l_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc4162l_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %reg)
  %cmp = icmp ult i32 %reg, 42
  %0 = add i32 %reg, -54
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %1 = icmp ult i32 %0, 3
  %retval.0 = or i1 %cmp, %1
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc4162l_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %reg)
  %cmp = icmp ugt i32 %reg, 41
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charge_status_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !119
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 53, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.inc, label %for.cond.preheader.if.then3_crit_edge

for.cond.preheader.if.then3_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %for.inc.4.if.then3_crit_edge, %for.inc.3.if.then3_crit_edge, %for.inc.2.if.then3_crit_edge, %for.inc.1.if.then3_crit_edge, %for.inc.if.then3_crit_edge, %for.cond.preheader.if.then3_crit_edge
  %index.018.lcssa = phi i32 [ 0, %for.cond.preheader.if.then3_crit_edge ], [ 1, %for.inc.if.then3_crit_edge ], [ 2, %for.inc.1.if.then3_crit_edge ], [ 3, %for.inc.2.if.then3_crit_edge ], [ 4, %for.inc.3.if.then3_crit_edge ], [ 5, %for.inc.4.if.then3_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @ltc4162l_charge_status_name, i32 0, i32 %index.018.lcssa
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %and.1 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.1, label %for.inc.if.then3_crit_edge

for.inc.if.then3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.2, label %for.inc.1.if.then3_crit_edge

for.inc.1.if.then3_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.3, label %for.inc.2.if.then3_crit_edge

for.inc.2.if.then3_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %for.inc.4, label %for.inc.3.if.then3_crit_edge

for.inc.3.if.then3_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.4.if.then3_crit_edge

for.inc.4.if.then3_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %if.then3
  %result.0 = phi ptr [ %6, %if.then3 ], [ @.str.30, %for.inc.4.for.end_crit_edge ]
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef %result.0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %for.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibat_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %0 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i, align 4, !annotation !119
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 61, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %ltc4162l_get_ibat.exit

ltc4162l_get_ibat.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval.i, align 4
  %sext.i = shl i32 %4, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %rsnsb.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %rsnsb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rsnsb.i, align 4
  %conv1.i.frozen = freeze i32 %conv1.i
  %.frozen = freeze i32 %6
  %div.i = sdiv i32 %conv1.i.frozen, %.frozen
  %7 = mul i32 %div.i, %.frozen
  %rem3.i.decomposed = sub i32 %conv1.i.frozen, %7
  %mul.i = mul nsw i32 %div.i, 14660
  %mul4.i = mul nsw i32 %rem3.i.decomposed, 14660
  %div6.i = sdiv i32 %mul4.i, %6
  %add.i = add nsw i32 %div6.i, %mul.i
  %mul7.i = mul i32 %add.i, 100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %mul7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ltc4162l_get_ibat.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %ltc4162l_get_ibat.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbat_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %0 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i, align 4, !annotation !119
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 58, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ltc4162l_get_vbat.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval.i, align 4
  %mul.i = mul i32 %4, 1924
  store i32 %mul.i, ptr %regval.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !119
  %cell_count.i.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cell_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 67, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end4.i.i:                                      ; preds = %if.end.i.i
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.end_crit_edge, label %if.end7.i.i

if.end4.i.i.if.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %and.i.i to i8
  %12 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %cell_count.i.i, align 4
  br label %if.end

ltc4162l_get_vbat.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i, %if.end4.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.end7.i.i ], [ %7, %if.end.i.if.end_crit_edge ], [ 0, %if.end.i.i.if.end_crit_edge ], [ 0, %if.end4.i.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %conv.i = zext i8 %retval.0.i.i to i32
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i, align 4
  %mul2.i = mul i32 %14, %conv.i
  %div.i = udiv i32 %mul2.i, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %div.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ltc4162l_get_vbat.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %ltc4162l_get_vbat.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbat_avg_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %0 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i, align 4, !annotation !119
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 71, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ltc4162l_get_vbat.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval.i, align 4
  %mul.i = mul i32 %4, 1924
  store i32 %mul.i, ptr %regval.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !119
  %cell_count.i.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cell_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 67, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end4.i.i:                                      ; preds = %if.end.i.i
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.end_crit_edge, label %if.end7.i.i

if.end4.i.i.if.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %and.i.i to i8
  %12 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %cell_count.i.i, align 4
  br label %if.end

ltc4162l_get_vbat.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i, %if.end4.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.end7.i.i ], [ %7, %if.end.i.if.end_crit_edge ], [ 0, %if.end.i.i.if.end_crit_edge ], [ 0, %if.end4.i.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %conv.i = zext i8 %retval.0.i.i to i32
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i, align 4
  %mul2.i = mul i32 %14, %conv.i
  %div.i = udiv i32 %mul2.i, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %div.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ltc4162l_get_vbat.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %ltc4162l_get_vbat.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_telemetry_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !119
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  %and = lshr i32 %4, 2
  %and.lobit = and i32 %and, 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %and.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_telemetry_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !119
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 20, i32 noundef 4, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %call2.count = select i1 %cmp3, i32 %call.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ship_mode_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !119
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 25, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21325, i32 %4)
  %cmp = icmp eq i32 %4, 21325
  %cond = zext i1 %cmp to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_ship_mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !119
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 0, i32 21325
  %call2 = call i32 @regmap_write(ptr noundef %2, i32 noundef 25, i32 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp3, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4162l_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i158 = alloca i32, align 4
  %regval.i149 = alloca i32, align 4
  %regval.i140 = alloca i32, align 4
  %val.i.i116 = alloca i32, align 4
  %regval.i117 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %regval.i105 = alloca i32, align 4
  %regval.i89 = alloca i32, align 4
  %regval.i81 = alloca i32, align 4
  %regval.i75 = alloca i32, align 4
  %regval.i70 = alloca i32, align 4
  %regval.i65 = alloca i32, align 4
  %regval.i56 = alloca i32, align 4
  %regval.i50 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
    i32 12, label %sw.bb8
    i32 17, label %sw.bb10
    i32 29, label %sw.bb12
    i32 30, label %sw.bb14
    i32 31, label %sw.bb16
    i32 32, label %sw.bb18
    i32 38, label %sw.bb20
    i32 52, label %sw.bb22
    i32 68, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %1 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %regval.i, align 4, !annotation !119
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 52, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #11
  br label %ltc4162l_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regval.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %sw.default.i.i [
    i32 128, label %if.end.i.ltc4162l_state_decode.exit.i_crit_edge
    i32 64, label %if.end.i.ltc4162l_state_decode.exit.i_crit_edge168
    i32 8, label %sw.bb1.i.i
    i32 2, label %if.end.i.sw.bb2.i.i_crit_edge
    i32 1, label %if.end.i.sw.bb2.i.i_crit_edge169
  ]

if.end.i.sw.bb2.i.i_crit_edge169:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.sw.bb2.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.ltc4162l_state_decode.exit.i_crit_edge168: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_decode.exit.i

if.end.i.ltc4162l_state_decode.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_decode.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_decode.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i.sw.bb2.i.i_crit_edge, %if.end.i.sw.bb2.i.i_crit_edge169
  br label %ltc4162l_state_decode.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_decode.exit.i

ltc4162l_state_decode.exit.i:                     ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.ltc4162l_state_decode.exit.i_crit_edge, %if.end.i.ltc4162l_state_decode.exit.i_crit_edge168
  %retval.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 0, %sw.bb2.i.i ], [ 4, %sw.bb1.i.i ], [ 1, %if.end.i.ltc4162l_state_decode.exit.i_crit_edge ], [ 1, %if.end.i.ltc4162l_state_decode.exit.i_crit_edge168 ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %ltc4162l_get_status.exit

ltc4162l_get_status.exit:                         ; preds = %ltc4162l_state_decode.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i50) #8
  %10 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %regval.i50, align 4, !annotation !119
  %regmap.i51 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i51, align 4
  %call.i52 = call i32 @regmap_read(ptr noundef %12, i32 noundef 53, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i55, label %sw.bb2.ltc4162l_get_charge_type.exit_crit_edge

sw.bb2.ltc4162l_get_charge_type.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_charge_type.exit

if.end.i55:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 5
  %..i.i = select i1 %cmp.i.i, i32 3, i32 2
  %retval.0.i.i54 = select i1 %tobool.not.i.i, i32 1, i32 %..i.i
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i54, ptr %val, align 4
  br label %ltc4162l_get_charge_type.exit

ltc4162l_get_charge_type.exit:                    ; preds = %if.end.i55, %sw.bb2.ltc4162l_get_charge_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i50) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i56) #8
  %16 = ptrtoint ptr %regval.i56 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %regval.i56, align 4, !annotation !119
  %regmap.i57 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i57, align 4
  %call.i58 = call i32 @regmap_read(ptr noundef %18, i32 noundef 52, ptr noundef nonnull %regval.i56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i60, label %sw.bb4.ltc4162l_get_health.exit_crit_edge

sw.bb4.ltc4162l_get_health.exit_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_health.exit

if.end.i60:                                       ; preds = %sw.bb4
  %19 = ptrtoint ptr %regval.i56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval.i56, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %20, label %sw.default.i.i63 [
    i32 32, label %if.end.i60.ltc4162l_state_to_health.exit.i_crit_edge
    i32 16, label %sw.bb1.i.i61
    i32 4, label %sw.bb2.i.i62
    i32 2, label %sw.bb3.i.i
    i32 1, label %sw.bb4.i.i
  ]

if.end.i60.ltc4162l_state_to_health.exit.i_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

sw.bb1.i.i61:                                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

sw.bb2.i.i62:                                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

sw.default.i.i63:                                 ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_state_to_health.exit.i

ltc4162l_state_to_health.exit.i:                  ; preds = %sw.default.i.i63, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i62, %sw.bb1.i.i61, %if.end.i60.ltc4162l_state_to_health.exit.i_crit_edge
  %retval.0.i.i64 = phi i32 [ 1, %sw.default.i.i63 ], [ 3, %sw.bb4.i.i ], [ 5, %sw.bb3.i.i ], [ 7, %sw.bb2.i.i62 ], [ 8, %sw.bb1.i.i61 ], [ 2, %if.end.i60.ltc4162l_state_to_health.exit.i_crit_edge ]
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i64, ptr %val, align 4
  br label %ltc4162l_get_health.exit

ltc4162l_get_health.exit:                         ; preds = %ltc4162l_state_to_health.exit.i, %sw.bb4.ltc4162l_get_health.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i56) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i65) #8
  %23 = ptrtoint ptr %regval.i65 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %regval.i65, align 4, !annotation !119
  %regmap.i66 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i66, align 4
  %call.i67 = call i32 @regmap_read(ptr noundef %25, i32 noundef 57, ptr noundef nonnull %regval.i65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69, label %sw.bb6.ltc4162l_get_online.exit_crit_edge

sw.bb6.ltc4162l_get_online.exit_crit_edge:        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_online.exit

if.end.i69:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %regval.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regval.i65, align 4
  %and.i = lshr i32 %27, 2
  %and.lobit.i = and i32 %and.i, 1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.lobit.i, ptr %val, align 4
  br label %ltc4162l_get_online.exit

ltc4162l_get_online.exit:                         ; preds = %if.end.i69, %sw.bb6.ltc4162l_get_online.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i65) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i70) #8
  %29 = ptrtoint ptr %regval.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %regval.i70, align 4, !annotation !119
  %regmap.i71 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i71, align 4
  %call.i72 = call i32 @regmap_read(ptr noundef %31, i32 noundef 59, ptr noundef nonnull %regval.i70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i74, label %sw.bb8.ltc4162l_get_input_voltage.exit_crit_edge

sw.bb8.ltc4162l_get_input_voltage.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_input_voltage.exit

if.end.i74:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %regval.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regval.i70, align 4
  %mul.i = mul i32 %33, 1694
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %val, align 4
  br label %ltc4162l_get_input_voltage.exit

ltc4162l_get_input_voltage.exit:                  ; preds = %if.end.i74, %sw.bb8.ltc4162l_get_input_voltage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i70) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i75) #8
  %35 = ptrtoint ptr %regval.i75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %regval.i75, align 4, !annotation !119
  %regmap.i76 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i76, align 4
  %call.i77 = call i32 @regmap_read(ptr noundef %37, i32 noundef 62, ptr noundef nonnull %regval.i75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i80, label %sw.bb10.ltc4162l_get_input_current.exit_crit_edge

sw.bb10.ltc4162l_get_input_current.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_input_current.exit

if.end.i80:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %regval.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regval.i75, align 4
  %sext.i = shl i32 %39, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %mul.i79 = mul nsw i32 %conv1.i, 14660
  %rsnsi.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 4
  %40 = ptrtoint ptr %rsnsi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rsnsi.i, align 4
  %div.i = udiv i32 %mul.i79, %41
  %mul2.i = mul i32 %div.i, 100
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul2.i, ptr %val, align 4
  br label %ltc4162l_get_input_current.exit

ltc4162l_get_input_current.exit:                  ; preds = %if.end.i80, %sw.bb10.ltc4162l_get_input_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i75) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i81) #8
  %43 = ptrtoint ptr %regval.i81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %regval.i81, align 4, !annotation !119
  %regmap.i82 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %regmap.i82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i82, align 4
  %call.i83 = call i32 @regmap_read(ptr noundef %45, i32 noundef 68, ptr noundef nonnull %regval.i81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i88, label %sw.bb12.ltc4162l_get_icharge.exit_crit_edge

sw.bb12.ltc4162l_get_icharge.exit_crit_edge:      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_icharge.exit

if.end.i88:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %regval.i81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %regval.i81, align 4
  %and.i85 = and i32 %47, 63
  %inc.i = add nuw nsw i32 %and.i85, 1
  %rsnsb.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %48 = ptrtoint ptr %rsnsb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rsnsb.i, align 4
  %inc.i.frozen = freeze i32 %inc.i
  %.frozen = freeze i32 %49
  %div.i86 = udiv i32 %inc.i.frozen, %.frozen
  %50 = mul i32 %div.i86, %.frozen
  %rem2.i.decomposed = sub i32 %inc.i.frozen, %50
  %mul.i87 = mul nuw nsw i32 %div.i86, 100000
  %mul3.i = mul nuw nsw i32 %rem2.i.decomposed, 100000
  %div5.i = udiv i32 %mul3.i, %49
  %add.i = add nuw nsw i32 %div5.i, %mul.i87
  %mul6.i = mul i32 %add.i, 10000
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul6.i, ptr %val, align 4
  br label %ltc4162l_get_icharge.exit

ltc4162l_get_icharge.exit:                        ; preds = %if.end.i88, %sw.bb12.ltc4162l_get_icharge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i81) #8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i89) #8
  %52 = ptrtoint ptr %regval.i89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %regval.i89, align 4, !annotation !119
  %regmap.i90 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %regmap.i90 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i90, align 4
  %call.i91 = call i32 @regmap_read(ptr noundef %54, i32 noundef 26, ptr noundef nonnull %regval.i89) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i103, label %sw.bb14.ltc4162l_get_icharge.exit104_crit_edge

sw.bb14.ltc4162l_get_icharge.exit104_crit_edge:   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_icharge.exit104

if.end.i103:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %regval.i89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %regval.i89, align 4
  %and.i93 = and i32 %56, 63
  %inc.i94 = add nuw nsw i32 %and.i93, 1
  %rsnsb.i95 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %rsnsb.i95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rsnsb.i95, align 4
  %inc.i94.frozen = freeze i32 %inc.i94
  %.frozen167 = freeze i32 %58
  %div.i96 = udiv i32 %inc.i94.frozen, %.frozen167
  %59 = mul i32 %div.i96, %.frozen167
  %rem2.i97.decomposed = sub i32 %inc.i94.frozen, %59
  %mul.i98 = mul nuw nsw i32 %div.i96, 100000
  %mul3.i99 = mul nuw nsw i32 %rem2.i97.decomposed, 100000
  %div5.i100 = udiv i32 %mul3.i99, %58
  %add.i101 = add nuw nsw i32 %div5.i100, %mul.i98
  %mul6.i102 = mul i32 %add.i101, 10000
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul6.i102, ptr %val, align 4
  br label %ltc4162l_get_icharge.exit104

ltc4162l_get_icharge.exit104:                     ; preds = %if.end.i103, %sw.bb14.ltc4162l_get_icharge.exit104_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i89) #8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i105) #8
  %61 = ptrtoint ptr %regval.i105 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %regval.i105, align 4, !annotation !119
  %regmap.i106 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %62 = ptrtoint ptr %regmap.i106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i106, align 4
  %call.i107 = call i32 @regmap_read(ptr noundef %63, i32 noundef 69, ptr noundef nonnull %regval.i105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i113, label %sw.bb16.ltc4162l_get_vcharge.exit_crit_edge

sw.bb16.ltc4162l_get_vcharge.exit_crit_edge:      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_vcharge.exit

if.end.i113:                                      ; preds = %sw.bb16
  %64 = ptrtoint ptr %regval.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %regval.i105, align 4
  %and.i109 = and i32 %65, 63
  store i32 %and.i109, ptr %regval.i105, align 4
  %mul.i110 = mul nuw nsw i32 %and.i109, 12500
  %add.i111 = add nuw nsw i32 %mul.i110, 3812500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %66 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %val.i.i, align 4, !annotation !119
  %cell_count.i.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 5
  %67 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cell_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i112 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i112, label %if.end.i.i, label %if.end.i113.ltc4162l_get_cell_count.exit.i_crit_edge

if.end.i113.ltc4162l_get_cell_count.exit.i_crit_edge: ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i

if.end.i.i:                                       ; preds = %if.end.i113
  %69 = ptrtoint ptr %regmap.i106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i106, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 67, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.ltc4162l_get_cell_count.exit.i_crit_edge

if.end.i.i.ltc4162l_get_cell_count.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %71 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %72, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.ltc4162l_get_cell_count.exit.i_crit_edge, label %if.end7.i.i

if.end4.i.i.ltc4162l_get_cell_count.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %and.i.i to i8
  %73 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i.i, ptr %cell_count.i.i, align 4
  br label %ltc4162l_get_cell_count.exit.i

ltc4162l_get_cell_count.exit.i:                   ; preds = %if.end7.i.i, %if.end4.i.i.ltc4162l_get_cell_count.exit.i_crit_edge, %if.end.i.i.ltc4162l_get_cell_count.exit.i_crit_edge, %if.end.i113.ltc4162l_get_cell_count.exit.i_crit_edge
  %retval.0.i.i114 = phi i8 [ %conv.i.i, %if.end7.i.i ], [ %68, %if.end.i113.ltc4162l_get_cell_count.exit.i_crit_edge ], [ 0, %if.end.i.i.ltc4162l_get_cell_count.exit.i_crit_edge ], [ 0, %if.end4.i.i.ltc4162l_get_cell_count.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %conv.i = zext i8 %retval.0.i.i114 to i32
  %mul2.i115 = mul nuw nsw i32 %add.i111, %conv.i
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul2.i115, ptr %val, align 4
  br label %ltc4162l_get_vcharge.exit

ltc4162l_get_vcharge.exit:                        ; preds = %ltc4162l_get_cell_count.exit.i, %sw.bb16.ltc4162l_get_vcharge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i105) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i117) #8
  %75 = ptrtoint ptr %regval.i117 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %regval.i117, align 4, !annotation !119
  %regmap.i118 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %76 = ptrtoint ptr %regmap.i118 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i118, align 4
  %call.i119 = call i32 @regmap_read(ptr noundef %77, i32 noundef 27, ptr noundef nonnull %regval.i117) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i126, label %sw.bb18.ltc4162l_get_vcharge.exit139_crit_edge

sw.bb18.ltc4162l_get_vcharge.exit139_crit_edge:   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_vcharge.exit139

if.end.i126:                                      ; preds = %sw.bb18
  %78 = ptrtoint ptr %regval.i117 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %regval.i117, align 4
  %and.i121 = and i32 %79, 63
  store i32 %and.i121, ptr %regval.i117, align 4
  %mul.i122 = mul nuw nsw i32 %and.i121, 12500
  %add.i123 = add nuw nsw i32 %mul.i122, 3812500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i116) #8
  %80 = ptrtoint ptr %val.i.i116 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i.i116, align 4, !annotation !119
  %cell_count.i.i124 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 5
  %81 = ptrtoint ptr %cell_count.i.i124 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cell_count.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i125 = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i129, label %if.end.i126.ltc4162l_get_cell_count.exit.i138_crit_edge

if.end.i126.ltc4162l_get_cell_count.exit.i138_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i138

if.end.i.i129:                                    ; preds = %if.end.i126
  %83 = ptrtoint ptr %regmap.i118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i118, align 4
  %call.i.i127 = call i32 @regmap_read(ptr noundef %84, i32 noundef 67, ptr noundef nonnull %val.i.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool2.not.i.i128 = icmp eq i32 %call.i.i127, 0
  br i1 %tobool2.not.i.i128, label %if.end4.i.i132, label %if.end.i.i129.ltc4162l_get_cell_count.exit.i138_crit_edge

if.end.i.i129.ltc4162l_get_cell_count.exit.i138_crit_edge: ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i138

if.end4.i.i132:                                   ; preds = %if.end.i.i129
  %85 = ptrtoint ptr %val.i.i116 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i.i116, align 4
  %and.i.i130 = and i32 %86, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130)
  %tobool5.not.i.i131 = icmp eq i32 %and.i.i130, 0
  br i1 %tobool5.not.i.i131, label %if.end4.i.i132.ltc4162l_get_cell_count.exit.i138_crit_edge, label %if.end7.i.i134

if.end4.i.i132.ltc4162l_get_cell_count.exit.i138_crit_edge: ; preds = %if.end4.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.i138

if.end7.i.i134:                                   ; preds = %if.end4.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i133 = trunc i32 %and.i.i130 to i8
  %87 = ptrtoint ptr %cell_count.i.i124 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.i.i133, ptr %cell_count.i.i124, align 4
  br label %ltc4162l_get_cell_count.exit.i138

ltc4162l_get_cell_count.exit.i138:                ; preds = %if.end7.i.i134, %if.end4.i.i132.ltc4162l_get_cell_count.exit.i138_crit_edge, %if.end.i.i129.ltc4162l_get_cell_count.exit.i138_crit_edge, %if.end.i126.ltc4162l_get_cell_count.exit.i138_crit_edge
  %retval.0.i.i135 = phi i8 [ %conv.i.i133, %if.end7.i.i134 ], [ %82, %if.end.i126.ltc4162l_get_cell_count.exit.i138_crit_edge ], [ 0, %if.end.i.i129.ltc4162l_get_cell_count.exit.i138_crit_edge ], [ 0, %if.end4.i.i132.ltc4162l_get_cell_count.exit.i138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i116) #8
  %conv.i136 = zext i8 %retval.0.i.i135 to i32
  %mul2.i137 = mul nuw nsw i32 %add.i123, %conv.i136
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul2.i137, ptr %val, align 4
  br label %ltc4162l_get_vcharge.exit139

ltc4162l_get_vcharge.exit139:                     ; preds = %ltc4162l_get_cell_count.exit.i138, %sw.bb18.ltc4162l_get_vcharge.exit139_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i117) #8
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i140) #8
  %89 = ptrtoint ptr %regval.i140 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %regval.i140, align 4, !annotation !119
  %regmap.i141 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %90 = ptrtoint ptr %regmap.i141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i141, align 4
  %call.i142 = call i32 @regmap_read(ptr noundef %91, i32 noundef 70, ptr noundef nonnull %regval.i140) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end.i148, label %sw.bb20.ltc4162l_get_iin_limit_dac.exit_crit_edge

sw.bb20.ltc4162l_get_iin_limit_dac.exit_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_iin_limit_dac.exit

if.end.i148:                                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %regval.i140 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %regval.i140, align 4
  %and.i144 = and i32 %93, 63
  %94 = mul nuw nsw i32 %and.i144, 5000000
  %mul.i145 = add nuw nsw i32 %94, 5000000
  %rsnsi.i146 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 4
  %95 = ptrtoint ptr %rsnsi.i146 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rsnsi.i146, align 4
  %div.i147 = udiv i32 %mul.i145, %96
  %mul1.i = mul i32 %div.i147, 100
  %97 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul1.i, ptr %val, align 4
  br label %ltc4162l_get_iin_limit_dac.exit

ltc4162l_get_iin_limit_dac.exit:                  ; preds = %if.end.i148, %sw.bb20.ltc4162l_get_iin_limit_dac.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i140) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i149) #8
  %98 = ptrtoint ptr %regval.i149 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %regval.i149, align 4, !annotation !119
  %regmap.i150 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %99 = ptrtoint ptr %regmap.i150 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i150, align 4
  %call.i151 = call i32 @regmap_read(ptr noundef %100, i32 noundef 63, ptr noundef nonnull %regval.i149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i157, label %sw.bb22.ltc4162l_get_die_temp.exit_crit_edge

sw.bb22.ltc4162l_get_die_temp.exit_crit_edge:     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_die_temp.exit

if.end.i157:                                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %regval.i149 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %regval.i149, align 4
  %sext.i153 = shl i32 %102, 16
  %conv1.i154 = ashr exact i32 %sext.i153, 16
  %mul.i155 = mul nsw i32 %conv1.i154, 215
  %div.i156 = sdiv i32 %mul.i155, 100
  %sub.i = add nsw i32 %div.i156, -26440
  %103 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.i, ptr %val, align 4
  br label %ltc4162l_get_die_temp.exit

ltc4162l_get_die_temp.exit:                       ; preds = %if.end.i157, %sw.bb22.ltc4162l_get_die_temp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i149) #8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i158) #8
  %104 = ptrtoint ptr %regval.i158 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %regval.i158, align 4, !annotation !119
  %regmap.i159 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %105 = ptrtoint ptr %regmap.i159 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i159, align 4
  %call.i160 = call i32 @regmap_read(ptr noundef %106, i32 noundef 41, ptr noundef nonnull %regval.i158) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end.i163, label %sw.bb24.ltc4162l_get_term_current.exit_crit_edge

sw.bb24.ltc4162l_get_term_current.exit_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_term_current.exit

if.end.i163:                                      ; preds = %sw.bb24
  %107 = ptrtoint ptr %regval.i158 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %regval.i158, align 4
  %and.i162 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool1.not.i = icmp eq i32 %and.i162, 0
  br i1 %tobool1.not.i, label %if.end.i163.cleanup.sink.split.i_crit_edge, label %if.end3.i

if.end.i163.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %if.end.i163
  %109 = ptrtoint ptr %regmap.i159 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i159, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %110, i32 noundef 28, ptr noundef nonnull %regval.i158) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.ltc4162l_get_term_current.exit_crit_edge

if.end3.i.ltc4162l_get_term_current.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_term_current.exit

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %regval.i158 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %regval.i158, align 4
  %mul.i164 = mul i32 %112, 14660
  %rsnsb.i165 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %113 = ptrtoint ptr %rsnsb.i165 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rsnsb.i165, align 4
  %div.i166 = udiv i32 %mul.i164, %114
  %mul9.i = mul i32 %div.i166, 100
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end8.i, %if.end.i163.cleanup.sink.split.i_crit_edge
  %mul9.sink.i = phi i32 [ %mul9.i, %if.end8.i ], [ 0, %if.end.i163.cleanup.sink.split.i_crit_edge ]
  %115 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul9.sink.i, ptr %val, align 4
  br label %ltc4162l_get_term_current.exit

ltc4162l_get_term_current.exit:                   ; preds = %cleanup.sink.split.i, %if.end3.i.ltc4162l_get_term_current.exit_crit_edge, %sw.bb24.ltc4162l_get_term_current.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i160, %sw.bb24.ltc4162l_get_term_current.exit_crit_edge ], [ %call5.i, %if.end3.i.ltc4162l_get_term_current.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i158) #8
  br label %cleanup

cleanup:                                          ; preds = %ltc4162l_get_term_current.exit, %ltc4162l_get_die_temp.exit, %ltc4162l_get_iin_limit_dac.exit, %ltc4162l_get_vcharge.exit139, %ltc4162l_get_vcharge.exit, %ltc4162l_get_icharge.exit104, %ltc4162l_get_icharge.exit, %ltc4162l_get_input_current.exit, %ltc4162l_get_input_voltage.exit, %ltc4162l_get_online.exit, %ltc4162l_get_health.exit, %ltc4162l_get_charge_type.exit, %ltc4162l_get_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ltc4162l_get_term_current.exit ], [ %call.i151, %ltc4162l_get_die_temp.exit ], [ %call.i142, %ltc4162l_get_iin_limit_dac.exit ], [ %call.i119, %ltc4162l_get_vcharge.exit139 ], [ %call.i107, %ltc4162l_get_vcharge.exit ], [ %call.i91, %ltc4162l_get_icharge.exit104 ], [ %call.i83, %ltc4162l_get_icharge.exit ], [ %call.i77, %ltc4162l_get_input_current.exit ], [ %call.i72, %ltc4162l_get_input_voltage.exit ], [ %call.i67, %ltc4162l_get_online.exit ], [ %call.i58, %ltc4162l_get_health.exit ], [ %call.i52, %ltc4162l_get_charge_type.exit ], [ %call.i, %ltc4162l_get_status.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4162l_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 30, label %sw.bb
    i32 32, label %sw.bb2
    i32 38, label %sw.bb4
    i32 68, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %.frozen = freeze i32 %2
  %div.i = udiv i32 %.frozen, 100000
  %3 = mul i32 %div.i, 100000
  %rem1.i.decomposed = sub i32 %.frozen, %3
  %rsnsb.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %rsnsb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsnsb.i, align 4
  %mul.i = mul i32 %5, %div.i
  %mul3.i = mul i32 %5, %rem1.i.decomposed
  %div4.i = udiv i32 %mul3.i, 100000
  %add.i = add i32 %div4.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %add.i)
  %6 = icmp ult i32 %add.i, 10000
  %div5.i = udiv i32 %add.i, 10000
  %dec.i = add nsw i32 %div5.i, -1
  %value.addr.0.i = select i1 %6, i32 0, i32 %dec.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %value.addr.0.i)
  %cmp.i = icmp ugt i32 %value.addr.0.i, 31
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end7.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 26, i32 noundef %value.addr.0.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i, align 4, !annotation !119
  %cell_count.i.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cell_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb2.if.end.i_crit_edge

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb2
  %regmap.i.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 67, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge

if.end.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge, label %if.end7.i.i

if.end4.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ltc4162l_get_cell_count.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %and.i.i to i8
  %18 = ptrtoint ptr %cell_count.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i, ptr %cell_count.i.i, align 4
  br label %if.end.i

ltc4162l_get_cell_count.exit.thread.i:            ; preds = %if.end4.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge, %if.end.i.i.ltc4162l_get_cell_count.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end7.i.i, %sw.bb2.if.end.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.end7.i.i ], [ %13, %sw.bb2.if.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  %conv.i = zext i8 %retval.0.i.i to i32
  %div.i14 = udiv i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3812500, i32 %div.i14)
  %cmp.i15 = icmp ult i32 %div.i14, 3812500
  br i1 %cmp.i15, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %sub.i = add i32 %div.i14, -3812500
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %sub.i, 399999
  br i1 %cmp5.i, label %if.end3.i.cleanup_crit_edge, label %if.end8.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %div4.i16 = udiv i32 %sub.i, 12500
  %regmap.i17 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i17, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 27, i32 noundef %div4.i16) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %.frozen40 = freeze i32 %22
  %div.i19 = udiv i32 %.frozen40, 50000
  %23 = mul i32 %div.i19, 50000
  %rem1.i20.decomposed = sub i32 %.frozen40, %23
  %rsnsi.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %rsnsi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rsnsi.i, align 4
  %mul.i21 = mul i32 %25, %div.i19
  %mul3.i22 = mul i32 %25, %rem1.i20.decomposed
  %div4.i23 = udiv i32 %mul3.i22, 50000
  %add.i24 = add i32 %div4.i23, %mul.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %add.i24)
  %26 = icmp ult i32 %add.i24, 10000
  %div5.i25 = udiv i32 %add.i24, 10000
  %dec.i26 = add nsw i32 %div5.i25, -1
  %27 = tail call i32 @llvm.umin.i32(i32 %dec.i26, i32 63) #8
  %28 = select i1 %26, i32 0, i32 %27
  %regmap.i27 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i27, align 4
  %call.i28 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 21, i32 noundef %28) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i38

if.then.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i29 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  br label %cleanup.sink.split.i

if.end.i38:                                       ; preds = %sw.bb6
  %.frozen41 = freeze i32 %32
  %div.i30 = udiv i32 %.frozen41, 14660
  %33 = mul i32 %div.i30, 14660
  %rem1.i31.decomposed = sub i32 %.frozen41, %33
  %rsnsb.i32 = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 3
  %34 = ptrtoint ptr %rsnsb.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rsnsb.i32, align 4
  %mul.i33 = mul i32 %35, %div.i30
  %mul3.i34 = mul i32 %35, %rem1.i31.decomposed
  %div4.i35 = udiv i32 %mul3.i34, 14660
  %add.i36 = add i32 %div4.i35, %mul.i33
  %div5.i37 = udiv i32 %add.i36, 100
  %regmap6.i = getelementptr inbounds %struct.ltc4162l_info, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %regmap6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap6.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 28, i32 noundef %div5.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i38.cleanup.sink.split.i_crit_edge, label %if.end.i38.cleanup_crit_edge

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i38.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i38.cleanup.sink.split.i_crit_edge, %if.then.i
  %regmap6.sink.i = phi ptr [ %regmap.i29, %if.then.i ], [ %regmap6.i, %if.end.i38.cleanup.sink.split.i_crit_edge ]
  %.sink23.i = phi i32 [ 0, %if.then.i ], [ 4, %if.end.i38.cleanup.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %regmap6.sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap6.sink.i, align 4
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 41, i32 noundef 4, i32 noundef %.sink23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i38.cleanup_crit_edge, %sw.bb4, %if.end8.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %ltc4162l_get_cell_count.exit.thread.i, %if.end7.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %sw.bb4 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end7.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call9.i, %if.end8.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -16, %ltc4162l_get_cell_count.exit.thread.i ], [ %call7.i, %if.end.i38.cleanup_crit_edge ], [ %call.i22.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ltc4162l_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %psp, label %sw.default [
    i32 30, label %entry.return_crit_edge
    i32 32, label %entry.return_crit_edge1
    i32 38, label %entry.return_crit_edge2
    i32 68, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !94, !95, !97, !99, !101, !103, !104, !105, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_ltc4162_l_charger__289_927_ltc4162l_driver_init6, !1, !"__initcall__kmod_ltc4162_l_charger__289_927_ltc4162l_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 927, i32 1}
!2 = !{ptr @__exitcall_ltc4162l_driver_exit, !1, !"__exitcall_ltc4162l_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 929, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 930, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 931, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 923, i32 12}
!12 = !{ptr @ltc4162l_driver, !13, !"ltc4162l_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 918, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 833, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ltc4162l_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ltc4162l_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ltc4162l_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 843, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 845, i32 3}
!27 = !{ptr @ltc4162l_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ltc4162l_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 849, i32 38}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 852, i32 3}
!33 = !{ptr @ltc4162l_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ltc4162l_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 858, i32 38}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 861, i32 3}
!39 = !{ptr @ltc4162l_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ltc4162l_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 867, i32 37}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 877, i32 3}
!45 = !{ptr @ltc4162l_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ltc4162l_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ltc4162l_regmap_config, !48, !"ltc4162l_regmap_config", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 804, i32 35}
!49 = !{ptr @ltc4162l_attr_groups, !50, !"ltc4162l_attr_groups", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 674, i32 38}
!51 = !{ptr @ltc4162l_attr_group, !52, !"ltc4162l_attr_group", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 669, i32 37}
!53 = !{ptr @ltc4162l_sysfs_entries, !54, !"ltc4162l_sysfs_entries", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 659, i32 26}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 530, i32 8}
!57 = !{ptr @dev_attr_charge_status, !56, !"dev_attr_charge_status", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 528, i32 22}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 495, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 496, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 497, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 498, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 499, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 500, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 501, i32 2}
!74 = !{ptr @ltc4162l_charge_status_name, !75, !"ltc4162l_charge_status_name", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 494, i32 27}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 578, i32 8}
!78 = !{ptr @dev_attr_ibat, !77, !"dev_attr_ibat", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 576, i32 22}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 546, i32 8}
!83 = !{ptr @dev_attr_vbat, !82, !"dev_attr_vbat", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 562, i32 8}
!86 = !{ptr @dev_attr_vbat_avg, !85, !"dev_attr_vbat_avg", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 617, i32 8}
!89 = !{ptr @dev_attr_force_telemetry, !88, !"dev_attr_force_telemetry", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 592, i32 22}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 657, i32 8}
!94 = !{ptr @dev_attr_arm_ship_mode, !93, !"dev_attr_arm_ship_mode", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 775, i32 11}
!97 = !{ptr @ltc4162l_desc, !98, !"ltc4162l_desc", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 774, i32 39}
!99 = !{ptr @ltc4162l_properties, !100, !"ltc4162l_properties", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 758, i32 35}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 136, i32 3}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ltc4162l_get_status._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ltc4162l_get_status._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ltc4162l_of_match, !107, !"ltc4162l_of_match", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 912, i32 34}
!108 = !{ptr @ltc4162l_i2c_id_table, !109, !"ltc4162l_i2c_id_table", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/ltc4162-l-charger.c", i32 906, i32 35}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
