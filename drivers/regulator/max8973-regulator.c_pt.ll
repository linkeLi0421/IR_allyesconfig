; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8973-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8973-regulator.c"
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
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.max8973_regulator_platform_data = type { ptr, i32, i32, i8, i32, i32, i8 }
%struct.max8973_chip = type { ptr, %struct.regulator_desc, ptr, i8, i32, [2 x i32], [2 x i32], i32, i32, %struct.regulator_ops, i32, i32, i32, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max8973_regulator__288_830_max8973_init4 = internal global ptr @max8973_init, section ".initcall4.init", align 4
@max8973_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8973_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_max8973_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8973_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max8973_cleanup = internal global ptr @max8973_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"max8973_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"max8973_regulator.description=MAX8973 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"max8973_regulator.file=drivers/regulator/max8973-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [33 x i8] c"max8973_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8973\00", [24 x i8] zeroinitializer }, align 32
@of_max8973_match_tbl = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8973\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max8973_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8973\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max77621\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8973_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No Platform data\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8973_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/max8973-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr = internal global ptr @max8973_probe._entry, section ".printk_index", align 4
@max8973_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max8973_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"max8973_regulator:635:(&max8973_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@max8973_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regmap init failed, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.9 = internal global ptr @max8973_probe._entry.7, section ".printk_index", align 4
@max8973_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register CHIPID1 read failed, %d\00", [63 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.12 = internal global ptr @max8973_probe._entry.10, section ".printk_index", align 4
@max8973_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 661, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CHIP-ID OTP: 0x%02x ID_M: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.16 = internal global ptr @max8973_probe._entry.13, section ".printk_index", align 4
@max8973_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @max8973_dcdc_set_voltage_sel, ptr null, ptr @max8973_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8973_dcdc_set_mode, ptr @max8973_dcdc_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max8973_buck_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12000, i32 25000, i32 50000, i32 200000], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8973-dvs\00", [20 x i8] zeroinitializer }, align 32
@max8973_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"gpio_request for gpio %d failed, err = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.20 = internal global ptr @max8973_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"maxim,enable\00", [19 x i8] zeroinitializer }, align 32
@max8973_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Max8973 Init failed, err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.24 = internal global ptr @max8973_probe._entry.22, section ".printk_index", align 4
@max8973_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator register failed, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max8973_probe._entry_ptr.27 = internal global ptr @max8973_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,externally-enable\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"maxim,dvs-gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maxim,dvs-default-state\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maxim,enable-remote-sense\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"maxim,enable-falling-slew-rate\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"maxim,enable-active-discharge\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"maxim,enable-frequency-shift\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maxim,enable-bias-control\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maxim,enable-etr\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"maxim,enable-high-etr-sensitivity\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"junction-warn-millicelsius\00", [37 x i8] zeroinitializer }, align 32
@max8973_dcdc_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register %d update failed, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8973_dcdc_set_voltage_sel\00", [35 x i8] zeroinitializer }, align 32
@max8973_dcdc_set_voltage_sel._entry_ptr = internal global ptr @max8973_dcdc_set_voltage_sel._entry, section ".printk_index", align 4
@max8973_dcdc_get_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register %d read failed, err = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max8973_dcdc_get_voltage_sel\00", [35 x i8] zeroinitializer }, align 32
@max8973_dcdc_get_voltage_sel._entry_ptr = internal global ptr @max8973_dcdc_get_voltage_sel._entry, section ".printk_index", align 4
@max8973_dcdc_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.43, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8973_dcdc_set_mode\00", [42 x i8] zeroinitializer }, align 32
@max8973_dcdc_set_mode._entry_ptr = internal global ptr @max8973_dcdc_set_mode._entry, section ".printk_index", align 4
@max8973_dcdc_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register %d read failed, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8973_dcdc_get_mode\00", [42 x i8] zeroinitializer }, align 32
@max8973_dcdc_get_mode._entry_ptr = internal global ptr @max8973_dcdc_get_mode._entry, section ".printk_index", align 4
@max8973_set_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"register %d update failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max8973_set_current_limit\00", [38 x i8] zeroinitializer }, align 32
@max8973_set_current_limit._entry_ptr = internal global ptr @max8973_set_current_limit._entry, section ".printk_index", align 4
@max8973_get_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register %d read failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max8973_get_current_limit\00", [38 x i8] zeroinitializer }, align 32
@max8973_get_current_limit._entry_ptr = internal global ptr @max8973_get_current_limit._entry, section ".printk_index", align 4
@max8973_init_dcdc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"register %d read failed, err = %d\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8973_init_dcdc\00", [46 x i8] zeroinitializer }, align 32
@max8973_init_dcdc._entry_ptr = internal global ptr @max8973_init_dcdc._entry, section ".printk_index", align 4
@max8973_init_dcdc._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register %d write failed, err = %d\00", [61 x i8] zeroinitializer }, align 32
@max8973_init_dcdc._entry_ptr.54 = internal global ptr @max8973_init_dcdc._entry.52, section ".printk_index", align 4
@max8973_init_dcdc._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8973_init_dcdc._entry_ptr.56 = internal global ptr @max8973_init_dcdc._entry.55, section ".printk_index", align 4
@max8973_init_dcdc._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register %d update failed, err = %d\00", [60 x i8] zeroinitializer }, align 32
@max8973_init_dcdc._entry_ptr.59 = internal global ptr @max8973_init_dcdc._entry.57, section ".printk_index", align 4
@max77621_tz_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @max8973_thermal_read_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@max8973_thermal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register thermal sensor: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8973_thermal_init\00", [43 x i8] zeroinitializer }, align 32
@max8973_thermal_init._entry_ptr = internal global ptr @max8973_thermal_init._entry, section ".printk_index", align 4
@max8973_thermal_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request irq %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8973_thermal_init._entry_ptr.64 = internal global ptr @max8973_thermal_init._entry.62, section ".printk_index", align 4
@max8973_thermal_read_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read register CHIPID1, %d\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max8973_thermal_read_temp\00", [38 x i8] zeroinitializer }, align 32
@max8973_thermal_read_temp._entry_ptr = internal global ptr @max8973_thermal_read_temp._entry, section ".printk_index", align 4
@switch.table.max8973_init_dcdc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12000, i32 25000, i32 50000, i32 200000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"max8973_i2c_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 817, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 819, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"of_max8973_match_tbl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 595, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"max8973_id\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 810, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 624, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"max8973_regmap_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 524, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 635, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 638, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 656, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 660, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"max8973_dcdc_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 321, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"max8973_buck_ramp_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 317, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 694, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 696, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 744, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 782, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 802, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 546, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 547, i32 42 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 549, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 553, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 556, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 560, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 564, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 567, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 570, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 572, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 588, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 208, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 180, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 247, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 260, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 285, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 300, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 341, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 427, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 434, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 444, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [16 x i8] c"max77621_tz_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 481, i32 48 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 499, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 516, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [41 x i8] c"../drivers/regulator/max8973-regulator.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 458, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [31 x i8] c"switch.table.max8973_init_dcdc\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8973_cleanup, ptr @__initcall__kmod_max8973_regulator__288_830_max8973_init4, ptr @max8973_cleanup, ptr @max8973_dcdc_get_mode._entry, ptr @max8973_dcdc_get_mode._entry_ptr, ptr @max8973_dcdc_get_voltage_sel._entry, ptr @max8973_dcdc_get_voltage_sel._entry_ptr, ptr @max8973_dcdc_set_mode._entry, ptr @max8973_dcdc_set_mode._entry_ptr, ptr @max8973_dcdc_set_voltage_sel._entry, ptr @max8973_dcdc_set_voltage_sel._entry_ptr, ptr @max8973_get_current_limit._entry, ptr @max8973_get_current_limit._entry_ptr, ptr @max8973_init_dcdc._entry, ptr @max8973_init_dcdc._entry.52, ptr @max8973_init_dcdc._entry.55, ptr @max8973_init_dcdc._entry.57, ptr @max8973_init_dcdc._entry_ptr, ptr @max8973_init_dcdc._entry_ptr.54, ptr @max8973_init_dcdc._entry_ptr.56, ptr @max8973_init_dcdc._entry_ptr.59, ptr @max8973_probe._entry, ptr @max8973_probe._entry.10, ptr @max8973_probe._entry.13, ptr @max8973_probe._entry.18, ptr @max8973_probe._entry.22, ptr @max8973_probe._entry.25, ptr @max8973_probe._entry.7, ptr @max8973_probe._entry_ptr, ptr @max8973_probe._entry_ptr.12, ptr @max8973_probe._entry_ptr.16, ptr @max8973_probe._entry_ptr.20, ptr @max8973_probe._entry_ptr.24, ptr @max8973_probe._entry_ptr.27, ptr @max8973_probe._entry_ptr.9, ptr @max8973_set_current_limit._entry, ptr @max8973_set_current_limit._entry_ptr, ptr @max8973_thermal_init._entry, ptr @max8973_thermal_init._entry.62, ptr @max8973_thermal_init._entry_ptr, ptr @max8973_thermal_init._entry_ptr.64, ptr @max8973_thermal_read_temp._entry, ptr @max8973_thermal_read_temp._entry_ptr, ptr @max8973_i2c_driver, ptr @.str, ptr @of_max8973_match_tbl, ptr @max8973_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max8973_probe._key, ptr @max8973_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @max8973_dcdc_ops, ptr @max8973_buck_ramp_table, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.58, ptr @max77621_tz_ops, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @switch.table.max8973_init_dcdc], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_max8973_match_tbl to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_buck_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_dcdc_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_dcdc_get_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_dcdc_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_dcdc_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_set_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_get_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_init_dcdc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_init_dcdc._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_init_dcdc._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_init_dcdc._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77621_tz_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_thermal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_thermal_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8973_thermal_read_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8973_init_dcdc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8973_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8973_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max8973_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %pval.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  %chip_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #5
  %1 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %chip_id, align 4, !annotation !157
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #5
  %8 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pval.i, align 4, !annotation !157
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %call.i87.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i87.i, null
  %enable_ext_control.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %9 = ptrtoint ptr %enable_ext_control.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %enable_ext_control.i, align 4
  %call.i88.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %7, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef null) #5
  %dvs_gpio.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %dvs_gpio.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i88.i, ptr %dvs_gpio.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pval.i, align 4
  %dvs_def_state.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 6
  %13 = trunc i32 %12 to i8
  %14 = ptrtoint ptr %dvs_def_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %dvs_def_state.i, align 4
  %bf.shl.i = shl i8 %13, 7
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %dvs_def_state.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %call.i89.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.31, ptr noundef null) #5
  %tobool.i90.not.i = icmp eq ptr %call.i89.i, null
  br i1 %tobool.i90.not.i, label %if.end6.i.if.end9.i_crit_edge, label %if.then8.i

if.end6.i.if.end9.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %control_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %control_flags.i, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %control_flags.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end6.i.if.end9.i_crit_edge
  %call.i91.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef null) #5
  %tobool.i92.not.i = icmp eq ptr %call.i91.i, null
  br i1 %tobool.i92.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then11.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags12.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %control_flags12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_flags12.i, align 4
  %or13.i = or i32 %18, 2
  store i32 %or13.i, ptr %control_flags12.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end14.i_crit_edge
  %call.i93.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef null) #5
  %tobool.i94.not.i = icmp eq ptr %call.i93.i, null
  br i1 %tobool.i94.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then16.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags17.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %control_flags17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_flags17.i, align 4
  %or18.i = or i32 %20, 4
  store i32 %or18.i, ptr %control_flags17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end19.i_crit_edge
  %call.i95.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef null) #5
  %tobool.i96.not.i = icmp eq ptr %call.i95.i, null
  br i1 %tobool.i96.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then21.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags22.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %control_flags22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control_flags22.i, align 4
  %or23.i = or i32 %22, 32
  store i32 %or23.i, ptr %control_flags22.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end24.i_crit_edge
  %call.i97.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef null) #5
  %tobool.i98.not.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool.i98.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.then26.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags27.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %control_flags27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control_flags27.i, align 4
  %or28.i = or i32 %24, 8
  store i32 %or28.i, ptr %control_flags27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end29.i_crit_edge
  %call.i99.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef null) #5
  %tobool.i100.i = icmp ne ptr %call.i99.i, null
  %call.i101.i = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef null) #5
  %tobool.i102.i = icmp ne ptr %call.i101.i, null
  %spec.select.i = select i1 %tobool.i102.i, i1 true, i1 %tobool.i100.i
  br i1 %spec.select.i, label %if.then38.i, label %if.end29.i.if.end49.i_crit_edge

if.end29.i.if.end49.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %control_flags41.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %control_flags41.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %control_flags41.i, align 4
  %..i = select i1 %tobool.i102.i, i32 65536, i32 131072
  %or42.i = or i32 %26, %..i
  store i32 %or42.i, ptr %control_flags41.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then38.i, %if.end29.i.if.end49.i_crit_edge
  %junction_temp_warning.i = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %junction_temp_warning.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 140000, ptr %junction_temp_warning.i, align 4
  %call.i.i103.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.38, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i103.i)
  %tobool51.not.i = icmp sgt i32 %call.i.i103.i, -1
  br i1 %tobool51.not.i, label %land.lhs.true.i, label %if.end49.i.if.end.thread379_crit_edge

if.end49.i.if.end.thread379_crit_edge:            ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread379

land.lhs.true.i:                                  ; preds = %if.end49.i
  %28 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120001, i32 %29)
  %cmp.i = icmp ult i32 %29, 120001
  br i1 %cmp.i, label %if.then52.i, label %land.lhs.true.i.if.end.thread379_crit_edge

land.lhs.true.i.if.end.thread379_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread379

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %junction_temp_warning.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 120000, ptr %junction_temp_warning.i, align 4
  br label %if.end.thread379

if.end.thread379:                                 ; preds = %if.then52.i, %land.lhs.true.i.if.end.thread379_crit_edge, %if.end49.i.if.end.thread379_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #5
  br label %if.end8

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #5
  br label %do.end

do.end:                                           ; preds = %if.end, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup223

if.end8:                                          ; preds = %if.end.thread379, %entry.if.end8_crit_edge
  %pdata.0378 = phi ptr [ %call.i.i, %if.end.thread379 ], [ %3, %entry.if.end8_crit_edge ]
  %dvs_gpio = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata.0378, i32 0, i32 5
  %31 = ptrtoint ptr %dvs_gpio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dvs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %32)
  %cmp = icmp eq i32 %32, -517
  br i1 %cmp, label %if.end8.cleanup223_crit_edge, label %if.end10

if.end8.cleanup223_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup223

if.end10:                                         ; preds = %if.end8
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end10.cleanup223_crit_edge, label %if.end15

if.end10.cleanup223_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup223

if.end15:                                         ; preds = %if.end10
  %call16 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max8973_regmap_config, ptr noundef nonnull @max8973_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i366 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %call16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %34) #8
  br label %cleanup223

if.end26:                                         ; preds = %if.end15
  %of_node28 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %35 = ptrtoint ptr %of_node28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node28, align 8
  %tobool29.not = icmp eq ptr %36, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call32 = call ptr @of_match_device(ptr noundef nonnull @of_max8973_match_tbl, ptr noundef %dev) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then30.cleanup223_crit_edge, label %if.end35

if.then30.cleanup223_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup223

if.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call32, i32 0, i32 3
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %if.end38

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %40 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %driver_data, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end35
  %.sink = phi i32 [ %39, %if.end35 ], [ %41, %if.else ]
  %id36 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %id36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %id36, align 4
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call40 = call i32 @regmap_read(ptr noundef %44, i32 noundef 4, ptr noundef nonnull %chip_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %do.end50

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call40) #8
  br label %cleanup223

do.end50:                                         ; preds = %if.end38
  %45 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_id, align 4
  %shr = lshr i32 %46, 4
  %and = and i32 %shr, 15
  %shr52 = lshr i32 %46, 1
  %and53 = and i32 %shr52, 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %and, i32 noundef %and53) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9
  %48 = call ptr @memcpy(ptr %ops, ptr @max8973_dcdc_ops, i32 144)
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %call.i, align 4
  %desc = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %id, ptr %desc, align 4
  %id58 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 6
  %51 = ptrtoint ptr %id58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %id58, align 4
  %ops61 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 10
  %52 = ptrtoint ptr %ops61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ops, ptr %ops61, align 4
  %type = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 12
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 13
  %54 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %owner, align 4
  %min_uV = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 14
  %55 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 606250, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 15
  %56 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 6250, ptr %uV_step, align 4
  %n_voltages = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 128, ptr %n_voltages, align 4
  %ramp_reg = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 53
  %58 = ptrtoint ptr %ramp_reg to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %ramp_reg, align 4
  %ramp_mask = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 54
  %59 = ptrtoint ptr %ramp_mask to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %ramp_mask, align 4
  %ramp_delay_table = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 55
  %60 = ptrtoint ptr %ramp_delay_table to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @max8973_buck_ramp_table, ptr %ramp_delay_table, align 4
  %n_ramp_values = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 56
  %61 = ptrtoint ptr %n_ramp_values to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %n_ramp_values, align 4
  %62 = ptrtoint ptr %dvs_gpio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dvs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool72.not = icmp eq i32 %63, 0
  %spec.select = select i1 %tobool72.not, i32 -22, i32 %63
  %dvs_gpio74 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 4
  %64 = ptrtoint ptr %dvs_gpio74 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select, ptr %dvs_gpio74, align 4
  %enable_ext_control = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata.0378, i32 0, i32 3
  %65 = ptrtoint ptr %enable_ext_control to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enable_ext_control, align 4, !range !158
  %enable_external_control = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %enable_external_control to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %enable_external_control, align 4
  %dvs_def_state = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata.0378, i32 0, i32 6
  %68 = ptrtoint ptr %dvs_def_state to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %dvs_def_state, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %curr_gpio_val = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %curr_gpio_val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %bf.cast, ptr %curr_gpio_val, align 4
  %bf.load77 = load i8, ptr %dvs_def_state, align 4
  %bf.lshr78 = lshr i8 %bf.load77, 7
  %bf.cast79 = zext i8 %bf.lshr78 to i32
  %curr_vout_reg = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 7
  %70 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %bf.cast79, ptr %curr_vout_reg, align 4
  %junction_temp_warning = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata.0378, i32 0, i32 2
  %71 = ptrtoint ptr %junction_temp_warning to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %junction_temp_warning, align 4
  %junction_temp_warning80 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %junction_temp_warning80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %junction_temp_warning80, align 4
  %lru_index = getelementptr %struct.max8973_chip, ptr %call.i, i32 0, i32 5
  %74 = ptrtoint ptr %lru_index to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %bf.cast79, ptr %lru_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %spec.select)
  %75 = icmp ult i32 %spec.select, 2048
  br i1 %75, label %if.then84, label %if.else115

if.then84:                                        ; preds = %do.end50
  %76 = ptrtoint ptr %dvs_def_state to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load86 = load i8, ptr %dvs_def_state, align 4
  %77 = lshr i8 %bf.load86, 6
  %78 = and i8 %77, 2
  %79 = zext i8 %78 to i32
  %call93 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %spec.select, i32 noundef %79, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.body.preheader, label %cleanup111.thread

for.body.preheader:                               ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx104.1 = getelementptr %struct.max8973_chip, ptr %call.i, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %arrayidx104.1, align 4
  %81 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %curr_vout_reg, align 4
  %83 = ptrtoint ptr %lru_index to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %lru_index, align 4
  %arrayidx110 = getelementptr %struct.max8973_chip, ptr %call.i, i32 0, i32 5, i32 %82
  %84 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx110, align 4
  br label %if.end121

cleanup111.thread:                                ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %dvs_gpio74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dvs_gpio74, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %86, i32 noundef %call93) #8
  br label %cleanup223

if.else115:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  %set_voltage_sel = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 3
  %87 = ptrtoint ptr %set_voltage_sel to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @regulator_set_voltage_sel_regmap, ptr %set_voltage_sel, align 4
  %get_voltage_sel = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 5
  %88 = ptrtoint ptr %get_voltage_sel to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @regulator_get_voltage_sel_regmap, ptr %get_voltage_sel, align 4
  %vsel_reg = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 27
  %89 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %bf.cast79, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 28
  %90 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 127, ptr %vsel_mask, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else115, %for.body.preheader
  br i1 %tobool.not, label %if.then123, label %if.end129thread-pre-split

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %of_node28 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %of_node28, align 8
  %call128 = call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %92, ptr noundef %desc) #5
  %93 = ptrtoint ptr %pdata.0378 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call128, ptr %pdata.0378, align 4
  br label %if.end129

if.end129thread-pre-split:                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %pdata.0378 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load ptr, ptr %pdata.0378, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end129thread-pre-split, %if.then123
  %95 = phi ptr [ %.pr, %if.end129thread-pre-split ], [ %call128, %if.then123 ]
  %id131 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 10
  %96 = ptrtoint ptr %id131 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id131, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %97, label %if.end129.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb165
  ]

if.end129.sw.epilog_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end129
  %99 = ptrtoint ptr %enable_ext_control to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %enable_ext_control, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool133.not = icmp eq i8 %100, 0
  br i1 %tobool133.not, label %if.then134, label %if.end140

if.then134:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %enable_reg = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 34
  %101 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 35
  %102 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 128, ptr %enable_mask, align 4
  %enable = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 14
  %103 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @regulator_enable_regmap, ptr %enable, align 4
  %disable = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 15
  %104 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @regulator_disable_regmap, ptr %disable, align 4
  %is_enabled = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 16
  %105 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @regulator_is_enabled_regmap, ptr %is_enabled, align 4
  br label %sw.epilog

if.end140:                                        ; preds = %sw.bb
  %tobool141.not = icmp eq ptr %95, null
  br i1 %tobool141.not, label %if.end140.if.else153_crit_edge, label %land.lhs.true142

if.end140.if.else153_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else153

land.lhs.true142:                                 ; preds = %if.end140
  %always_on = getelementptr inbounds %struct.regulator_init_data, ptr %95, i32 0, i32 1, i32 28
  %106 = ptrtoint ptr %always_on to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load143 = load i16, ptr %always_on, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load143)
  %107 = icmp ult i16 %bf.load143, 16384
  br i1 %107, label %land.lhs.true142.if.else153_crit_edge, label %land.lhs.true142.if.end154_crit_edge

land.lhs.true142.if.end154_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

land.lhs.true142.if.else153_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else153

if.else153:                                       ; preds = %land.lhs.true142.if.else153_crit_edge, %if.end140.if.else153_crit_edge
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %land.lhs.true142.if.end154_crit_edge
  %gflags.0 = phi i32 [ 19, %if.else153 ], [ 23, %land.lhs.true142.if.end154_crit_edge ]
  %call156 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %gflags.0) #5
  %cmp.i367 = icmp ugt ptr %call156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %call156 to i32
  br label %cleanup223

if.end160:                                        ; preds = %if.end154
  %tobool161.not = icmp eq ptr %call156, null
  br i1 %tobool161.not, label %if.end160.sw.epilog_crit_edge, label %if.then162

if.end160.sw.epilog_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %109 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call156, ptr %ena_gpiod, align 4
  %110 = ptrtoint ptr %enable_external_control to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %enable_external_control, align 4
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end129
  %call167 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 7) #5
  %cmp.i368 = icmp ugt ptr %call167, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i368, label %if.then169, label %if.end171

if.then169:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %call167 to i32
  br label %cleanup223

if.end171:                                        ; preds = %sw.bb165
  %tobool172.not = icmp eq ptr %call167, null
  br i1 %tobool172.not, label %if.end171.if.end175_crit_edge, label %if.then173

if.end171.if.end175_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

if.then173:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %enable_external_control to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %enable_external_control, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %if.end171.if.end175_crit_edge
  %enable_reg177 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 34
  %113 = ptrtoint ptr %enable_reg177 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %enable_reg177, align 4
  %enable_mask179 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 1, i32 35
  %114 = ptrtoint ptr %enable_mask179 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 128, ptr %enable_mask179, align 4
  %enable181 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 14
  %115 = ptrtoint ptr %enable181 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @regulator_enable_regmap, ptr %enable181, align 4
  %disable183 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 15
  %116 = ptrtoint ptr %disable183 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @regulator_disable_regmap, ptr %disable183, align 4
  %is_enabled185 = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 16
  %117 = ptrtoint ptr %is_enabled185 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @regulator_is_enabled_regmap, ptr %is_enabled185, align 4
  %set_current_limit = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 6
  %118 = ptrtoint ptr %set_current_limit to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @max8973_set_current_limit, ptr %set_current_limit, align 4
  %get_current_limit = getelementptr inbounds %struct.max8973_chip, ptr %call.i, i32 0, i32 9, i32 7
  %119 = ptrtoint ptr %get_current_limit to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @max8973_get_current_limit, ptr %get_current_limit, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end175, %if.then162, %if.end160.sw.epilog_crit_edge, %if.then134, %if.end129.sw.epilog_crit_edge
  %call188 = call fastcc i32 @max8973_init_dcdc(ptr noundef nonnull %call.i, ptr noundef nonnull %pdata.0378)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %do.end193, label %if.end195

do.end193:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.23, i32 noundef %call188) #8
  br label %cleanup223

if.end195:                                        ; preds = %sw.epilog
  %122 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %dev, ptr %config, align 4
  %123 = ptrtoint ptr %pdata.0378 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdata.0378, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %125 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %init_data, align 4
  %driver_data199 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %126 = ptrtoint ptr %driver_data199 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i, ptr %driver_data199, align 4
  %127 = ptrtoint ptr %of_node28 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %of_node28, align 8
  %of_node202 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %129 = ptrtoint ptr %of_node202 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %of_node202, align 4
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %regmap204 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %132 = ptrtoint ptr %regmap204 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %regmap204, align 4
  %ena_gpiod205 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %133 = ptrtoint ptr %ena_gpiod205 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ena_gpiod205, align 4
  %tobool206.not = icmp eq ptr %134, null
  br i1 %tobool206.not, label %if.end195.if.end210_crit_edge, label %if.then207

if.end195.if.end210_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

if.then207:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  call void @devm_gpiod_unhinge(ptr noundef %dev, ptr noundef nonnull %134) #5
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %if.end195.if.end210_crit_edge
  %call213 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i369 = icmp ugt ptr %call213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i369, label %if.then215, label %if.end221

if.then215:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %call213 to i32
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.26, i32 noundef %135) #8
  br label %cleanup223

if.end221:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @max8973_thermal_init(ptr noundef nonnull %call.i)
  br label %cleanup223

cleanup223:                                       ; preds = %if.end221, %if.then215, %do.end193, %if.then169, %if.then158, %cleanup111.thread, %do.end45, %if.then30.cleanup223_crit_edge, %if.then19, %if.end10.cleanup223_crit_edge, %if.end8.cleanup223_crit_edge, %do.end
  %retval.3 = phi i32 [ %34, %if.then19 ], [ %call40, %do.end45 ], [ %call188, %do.end193 ], [ %135, %if.then215 ], [ 0, %if.end221 ], [ %111, %if.then169 ], [ %108, %if.then158 ], [ -5, %do.end ], [ -517, %if.end8.cleanup223_crit_edge ], [ -12, %if.end10.cleanup223_crit_edge ], [ -61, %if.then30.cleanup223_crit_edge ], [ %call93, %cleanup111.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_set_current_limit(ptr noundef %rdev, i32 noundef %min_ua, i32 noundef %max_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000001, i32 %max_ua)
  %cmp = icmp slt i32 %max_ua, 9000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000001, i32 %max_ua)
  %cmp1 = icmp slt i32 %max_ua, 12000001
  %. = select i1 %cmp1, i32 4, i32 12
  %val.0 = select i1 %cmp, i32 0, i32 %.
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 12, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef 3, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %control2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control2) #5
  %0 = ptrtoint ptr %control2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control2, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %control2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.48, i32 noundef 3, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %control2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control2, align 4
  %and = and i32 %6, 12
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and, label %sw.epilog [
    i32 12, label %if.end.cleanup_crit_edge
    i32 4, label %sw.bb2
    i32 0, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 9000000, %sw.epilog ], [ 9000000, %sw.bb3 ], [ 12000000, %sw.bb2 ], [ 15000000, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control2) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8973_init_dcdc(ptr nocapture noundef %max, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef 2, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %7 = trunc i32 %6 to i8
  %conv = and i8 %7, 3
  %conv1 = zext i8 %conv to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.max8973_init_dcdc, i32 0, i32 %conv1
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ramp_delay10 = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %ramp_delay10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %ramp_delay10, align 4
  %control_flags = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata, i32 0, i32 1
  %10 = ptrtoint ptr %control_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control_flags, align 4
  %12 = trunc i32 %11 to i8
  %13 = shl i8 %12, 7
  %14 = or i8 %13, %conv
  %and17 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %15 = or i8 %14, 32
  %control1.1 = select i1 %tobool18.not, i8 %15, i8 %14
  %16 = shl i8 %12, 2
  %17 = and i8 %16, 16
  %18 = or i8 %control1.1, %17
  %and33 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %.sink = select i1 %tobool34.not, i32 240, i32 20
  %19 = trunc i32 %and33 to i8
  %20 = or i8 %18, %19
  %21 = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 1, i32 57
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 4
  %23 = ptrtoint ptr %control_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control_flags, align 4
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 3
  %27 = and i8 %26, 4
  %28 = or i8 %27, %20
  %junction_temp_warning = getelementptr inbounds %struct.max8973_regulator_platform_data, ptr %pdata, i32 0, i32 2
  %29 = ptrtoint ptr %junction_temp_warning to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %junction_temp_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %30)
  %cmp51 = icmp eq i32 %30, 120000
  br i1 %cmp51, label %land.lhs.true, label %if.end.if.end59_crit_edge

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 10
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp53 = icmp eq i32 %32, 1
  %spec.select201 = select i1 %cmp53, i8 -128, i8 0
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true, %if.end.if.end59_crit_edge
  %control2.0 = phi i8 [ 0, %if.end.if.end59_crit_edge ], [ %spec.select201, %land.lhs.true ]
  %and61 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %33 = or i8 %control2.0, 32
  %spec.select202 = select i1 %tobool62.not, i8 %33, i8 %control2.0
  %and69 = lshr i32 %24, 16
  %34 = and i32 %and69, 3
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %34, label %if.end67.unreachabledefault [
    i32 0, label %sw.bb70
    i32 1, label %if.end59.sw.epilog86_crit_edge
    i32 2, label %sw.bb78
    i32 3, label %sw.bb82
  ]

if.end59.sw.epilog86_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog86

sw.bb70:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %36 = or i8 %spec.select202, 12
  br label %sw.epilog86

sw.bb78:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %37 = or i8 %spec.select202, 4
  br label %sw.epilog86

sw.bb82:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %38 = or i8 %spec.select202, 8
  br label %sw.epilog86

if.end67.unreachabledefault:                      ; preds = %if.end59
  unreachable

sw.epilog86:                                      ; preds = %sw.bb82, %sw.bb78, %sw.bb70, %if.end59.sw.epilog86_crit_edge
  %control2.2 = phi i8 [ %38, %sw.bb82 ], [ %37, %sw.bb78 ], [ %36, %sw.bb70 ], [ %spec.select202, %if.end59.sw.epilog86_crit_edge ]
  %and88 = lshr i32 %24, 20
  %39 = and i32 %and88, 3
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %39, label %sw.epilog86.unreachabledefault [
    i32 0, label %sw.bb89
    i32 1, label %sw.epilog86.sw.epilog105_crit_edge
    i32 2, label %sw.bb97
    i32 3, label %sw.bb101
  ]

sw.epilog86.sw.epilog105_crit_edge:               ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog105

sw.bb89:                                          ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #7
  %41 = or i8 %control2.2, 1
  br label %sw.epilog105

sw.bb97:                                          ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #7
  %42 = or i8 %control2.2, 2
  br label %sw.epilog105

sw.bb101:                                         ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #7
  %43 = or i8 %control2.2, 3
  br label %sw.epilog105

sw.epilog86.unreachabledefault:                   ; preds = %sw.epilog86
  unreachable

sw.epilog105:                                     ; preds = %sw.bb101, %sw.bb97, %sw.bb89, %sw.epilog86.sw.epilog105_crit_edge
  %control2.3 = phi i8 [ %43, %sw.bb101 ], [ %42, %sw.bb97 ], [ %41, %sw.bb89 ], [ %control2.2, %sw.epilog86.sw.epilog105_crit_edge ]
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %conv107 = zext i8 %28 to i32
  %call108 = call i32 @regmap_write(ptr noundef %45, i32 noundef 2, i32 noundef %conv107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %do.end114, label %if.end116

do.end114:                                        ; preds = %sw.epilog105
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %max, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.53, i32 noundef 2, i32 noundef %call108) #8
  br label %cleanup

if.end116:                                        ; preds = %sw.epilog105
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %conv118 = zext i8 %control2.3 to i32
  %call119 = call i32 @regmap_write(ptr noundef %49, i32 noundef 3, i32 noundef %conv118) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %do.end125, label %if.end127

do.end125:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %max, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.53, i32 noundef 3, i32 noundef %call119) #8
  br label %cleanup

if.end127:                                        ; preds = %if.end116
  %enable_external_control = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 3
  %52 = ptrtoint ptr %enable_external_control to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_external_control, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool128.not = icmp eq i8 %53, 0
  br i1 %tobool128.not, label %if.end127.cleanup_crit_edge, label %land.lhs.true130

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true130:                                 ; preds = %if.end127
  %id131 = getelementptr inbounds %struct.max8973_chip, ptr %max, i32 0, i32 10
  %54 = ptrtoint ptr %id131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp132 = icmp eq i32 %55, 0
  br i1 %cmp132, label %if.then134, label %land.lhs.true130.cleanup_crit_edge

land.lhs.true130.cleanup_crit_edge:               ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then134:                                       ; preds = %land.lhs.true130
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp137 = icmp slt i32 %call.i, 0
  br i1 %cmp137, label %do.end142, label %if.then134.cleanup_crit_edge

if.then134.cleanup_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end142:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %max, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.58, i32 noundef 0, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %if.then134.cleanup_crit_edge, %land.lhs.true130.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end125, %do.end114, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call108, %do.end114 ], [ %call119, %do.end125 ], [ %call.i, %do.end142 ], [ %call.i, %if.then134.cleanup_crit_edge ], [ %call119, %land.lhs.true130.cleanup_crit_edge ], [ %call119, %if.end127.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max8973_thermal_init(ptr noundef %mchip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.max8973_chip, ptr %mchip, i32 0, i32 10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mchip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mchip, align 4
  %call = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 0, ptr noundef %mchip, ptr noundef nonnull @max77621_tz_ops) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  %5 = ptrtoint ptr %mchip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mchip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.60, i32 noundef %4) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.max8973_chip, ptr %mchip, i32 0, i32 12
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp slt i32 %8, 1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call10 = tail call ptr @irq_get_irq_data(i32 noundef %8) #5
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call10, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 15
  %phi.bo = or i32 %and.i, 8320
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %irq_flags.0 = phi i32 [ %phi.bo, %if.then11 ], [ 8320, %if.end8.if.end13_crit_edge ]
  %13 = ptrtoint ptr %mchip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mchip, align 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.end13.dev_name.exit_crit_edge ]
  %call18 = tail call i32 @devm_request_threaded_irq(ptr noundef %14, i32 noundef %16, ptr noundef null, ptr noundef nonnull @max8973_thermal_irq, i32 noundef %irq_flags.0, ptr noundef %retval.0.i, ptr noundef %mchip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mchip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mchip, align 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.63, i32 noundef %24, i32 noundef %call18) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %dev_name.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_set_voltage_sel(ptr noundef %rdev, i32 noundef %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %curr_vout_reg = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_vout_reg, align 4
  %curr_gpio_val = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %curr_gpio_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_gpio_val, align 4
  %dvs_gpio = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dvs_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dvs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then:                                          ; preds = %entry
  %lru_index.i = getelementptr %struct.max8973_chip, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %lru_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lru_index.i, align 4
  %arrayidx3.i = getelementptr %struct.max8973_chip, ptr %call, i32 0, i32 6, i32 %8
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %vsel)
  %cmp4.i = icmp eq i32 %10, %vsel
  br i1 %cmp4.i, label %if.then.if.end8_crit_edge, label %find_voltage_set_register.exit

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

find_voltage_set_register.exit:                   ; preds = %if.then
  %arrayidx.i = getelementptr %struct.max8973_chip, ptr %call, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.1.i = getelementptr %struct.max8973_chip, ptr %call, i32 0, i32 6, i32 %12
  %13 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %vsel)
  %cmp4.1.i = icmp eq i32 %14, %vsel
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %lru_index.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %lru_index.i, align 4
  br i1 %cmp4.1.i, label %find_voltage_set_register.exit.if.end8_crit_edge, label %find_voltage_set_register.exit.if.then3_crit_edge

find_voltage_set_register.exit.if.then3_crit_edge: ; preds = %find_voltage_set_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

find_voltage_set_register.exit.if.end8_crit_edge: ; preds = %find_voltage_set_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %find_voltage_set_register.exit.if.then3_crit_edge, %entry.if.then3_crit_edge
  %vout_reg.0 = phi i32 [ %12, %find_voltage_set_register.exit.if.then3_crit_edge ], [ %1, %entry.if.then3_crit_edge ]
  %gpio_val.0 = phi i32 [ %12, %find_voltage_set_register.exit.if.then3_crit_edge ], [ %3, %entry.if.then3_crit_edge ]
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %vout_reg.0, i32 noundef 127, i32 noundef %vsel, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef %vout_reg.0, i32 noundef %call.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %vout_reg.0, ptr %curr_vout_reg, align 4
  %arrayidx = getelementptr %struct.max8973_chip, ptr %call, i32 0, i32 6, i32 %gpio_val.0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %vsel, ptr %arrayidx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %find_voltage_set_register.exit.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %gpio_val.1 = phi i32 [ %12, %find_voltage_set_register.exit.if.end8_crit_edge ], [ %gpio_val.0, %if.end6 ], [ %8, %if.then.if.end8_crit_edge ]
  %23 = ptrtoint ptr %dvs_gpio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dvs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %24)
  %25 = icmp ult i32 %24, 2048
  br i1 %25, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %gpio_val.1, 1
  %call.i33 = tail call ptr @gpio_to_desc(i32 noundef %24) #5
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i33, i32 noundef %and) #5
  %26 = ptrtoint ptr %curr_gpio_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %gpio_val.1, ptr %curr_gpio_val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %curr_vout_reg = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_vout_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %7 = ptrtoint ptr %curr_vout_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_vout_reg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.41, i32 noundef %8, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and = and i32 %10, 127
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %and, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
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
  %pwm.0 = phi i32 [ 0, %sw.bb1 ], [ 64, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 2, i32 noundef 64, i32 noundef %pwm.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_dcdc_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %and = and i32 %6, 64
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
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_thermal_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tz_device = getelementptr inbounds %struct.max8973_chip, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %tz_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz_device, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8973_thermal_read_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.max8973_chip, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.65, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %junction_temp_warning = getelementptr inbounds %struct.max8973_chip, ptr %data, i32 0, i32 11
  %7 = ptrtoint ptr %junction_temp_warning to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %junction_temp_warning, align 4
  %add = add i32 %8, 1000
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %storemerge = phi i32 [ %add, %if.then1 ], [ 100000, %if.end.if.end2_crit_edge ]
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_max8973_regulator__288_830_max8973_init4, !1, !"__initcall__kmod_max8973_regulator__288_830_max8973_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8973-regulator.c", i32 830, i32 1}
!2 = !{ptr @__exitcall_max8973_cleanup, !3, !"__exitcall_max8973_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8973-regulator.c", i32 836, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8973-regulator.c", i32 838, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max8973-regulator.c", i32 839, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max8973-regulator.c", i32 840, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8973-regulator.c", i32 819, i32 11}
!13 = !{ptr @max8973_i2c_driver, !14, !"max8973_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8973-regulator.c", i32 817, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8973-regulator.c", i32 624, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max8973_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max8973_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @max8973_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max8973-regulator.c", i32 635, i32 16}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/max8973-regulator.c", i32 638, i32 3}
!28 = !{ptr @max8973_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @max8973_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/max8973-regulator.c", i32 656, i32 3}
!32 = !{ptr @max8973_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max8973_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/max8973-regulator.c", i32 660, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @max8973_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @max8973_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max8973-regulator.c", i32 694, i32 17}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/max8973-regulator.c", i32 696, i32 4}
!43 = !{ptr @max8973_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max8973_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/max8973-regulator.c", i32 744, i32 7}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/max8973-regulator.c", i32 782, i32 3}
!49 = !{ptr @max8973_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @max8973_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/max8973-regulator.c", i32 802, i32 3}
!53 = !{ptr @max8973_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @max8973_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/max8973-regulator.c", i32 546, i32 7}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max8973-regulator.c", i32 547, i32 42}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/max8973-regulator.c", i32 549, i32 33}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max8973-regulator.c", i32 553, i32 32}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max8973-regulator.c", i32 556, i32 32}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/max8973-regulator.c", i32 560, i32 32}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/max8973-regulator.c", i32 564, i32 32}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max8973-regulator.c", i32 567, i32 32}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/max8973-regulator.c", i32 570, i32 41}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/max8973-regulator.c", i32 572, i32 5}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/max8973-regulator.c", i32 588, i32 33}
!77 = !{ptr @max8973_regmap_config, !78, !"max8973_regmap_config", i1 false, i1 false}
!78 = !{!"../drivers/regulator/max8973-regulator.c", i32 524, i32 35}
!79 = !{ptr @max8973_dcdc_ops, !80, !"max8973_dcdc_ops", i1 false, i1 false}
!80 = !{!"../drivers/regulator/max8973-regulator.c", i32 321, i32 35}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/max8973-regulator.c", i32 208, i32 4}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max8973_dcdc_set_voltage_sel._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @max8973_dcdc_set_voltage_sel._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/max8973-regulator.c", i32 180, i32 3}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @max8973_dcdc_get_voltage_sel._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @max8973_dcdc_get_voltage_sel._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/max8973-regulator.c", i32 247, i32 3}
!93 = !{ptr @max8973_dcdc_set_mode._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max8973_dcdc_set_mode._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/max8973-regulator.c", i32 260, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @max8973_dcdc_get_mode._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @max8973_dcdc_get_mode._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @max8973_buck_ramp_table, !101, !"max8973_buck_ramp_table", i1 false, i1 false}
!101 = !{!"../drivers/regulator/max8973-regulator.c", i32 317, i32 27}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/max8973-regulator.c", i32 285, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @max8973_set_current_limit._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @max8973_set_current_limit._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/max8973-regulator.c", i32 300, i32 3}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @max8973_get_current_limit._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @max8973_get_current_limit._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/max8973-regulator.c", i32 341, i32 3}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @max8973_init_dcdc._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @max8973_init_dcdc._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/max8973-regulator.c", i32 427, i32 3}
!119 = !{ptr @max8973_init_dcdc._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @max8973_init_dcdc._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @max8973_init_dcdc._entry.55, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/regulator/max8973-regulator.c", i32 434, i32 3}
!123 = !{ptr @max8973_init_dcdc._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/max8973-regulator.c", i32 444, i32 4}
!126 = !{ptr @max8973_init_dcdc._entry.57, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @max8973_init_dcdc._entry_ptr.59, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/max8973-regulator.c", i32 499, i32 3}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @max8973_thermal_init._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @max8973_thermal_init._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/max8973-regulator.c", i32 516, i32 3}
!135 = !{ptr @max8973_thermal_init._entry.62, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @max8973_thermal_init._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @max77621_tz_ops, !138, !"max77621_tz_ops", i1 false, i1 false}
!138 = !{!"../drivers/regulator/max8973-regulator.c", i32 481, i32 48}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/max8973-regulator.c", i32 458, i32 3}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @max8973_thermal_read_temp._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @max8973_thermal_read_temp._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @of_max8973_match_tbl, !145, !"of_max8973_match_tbl", i1 false, i1 false}
!145 = !{!"../drivers/regulator/max8973-regulator.c", i32 595, i32 34}
!146 = !{ptr @max8973_id, !147, !"max8973_id", i1 false, i1 false}
!147 = !{!"../drivers/regulator/max8973-regulator.c", i32 810, i32 35}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i8 0, i8 2}
