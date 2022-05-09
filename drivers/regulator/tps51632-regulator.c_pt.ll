; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps51632-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps51632-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps51632_chip = type { ptr, %struct.regulator_desc, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.tps51632_regulator_platform_data = type { ptr, i8, i8, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_tps51632_regulator__288_378_tps51632_init4 = internal global ptr @tps51632_init, section ".initcall4.init", align 4
@tps51632_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tps51632_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps51632_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps51632_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps51632_cleanup = internal global ptr @tps51632_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [65 x i8] c"tps51632_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps51632_regulator.description=TPS51632 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps51632_regulator.file=drivers/regulator/tps51632-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps51632_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps51632\00", [23 x i8] zeroinitializer }, align 32
@tps51632_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps51632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tps51632_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps51632\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tps51632_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps51632_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps51632-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr = internal global ptr @tps51632_probe._entry, section ".printk_index", align 4
@tps51632_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps51632_dcdc_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps51632_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No Platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.8 = internal global ptr @tps51632_probe._entry.6, section ".printk_index", align 4
@tps51632_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid base_voltage_uV setting\0A\00", [63 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.11 = internal global ptr @tps51632_probe._entry.9, section ".printk_index", align 4
@tps51632_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid max_voltage_uV setting\0A\00", [32 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.14 = internal global ptr @tps51632_probe._entry.12, section ".printk_index", align 4
@tps51632_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps51632_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @is_write_reg, ptr @is_read_reg, ptr @is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tps51632_regulator:327:(&tps51632_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@tps51632_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regmap init failed, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.18 = internal global ptr @tps51632_probe._entry.16, section ".printk_index", align 4
@tps51632_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Init failed, err = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.21 = internal global ptr @tps51632_probe._entry.19, section ".printk_index", align 4
@tps51632_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@tps51632_probe._entry_ptr.24 = internal global ptr @tps51632_probe._entry.22, section ".printk_index", align 4
@tps51632_dcdc_set_ramp_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SLEW reg write failed, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tps51632_dcdc_set_ramp_delay\00", [35 x i8] zeroinitializer }, align 32
@tps51632_dcdc_set_ramp_delay._entry_ptr = internal global ptr @tps51632_dcdc_set_ramp_delay._entry, section ".printk_index", align 4
@of_get_tps51632_platform_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Not able to get OF regulator init data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_get_tps51632_platform_data\00", [34 x i8] zeroinitializer }, align 32
@of_get_tps51632_platform_data._entry_ptr = internal global ptr @of_get_tps51632_platform_data._entry, section ".printk_index", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,enable-pwm-dvfs\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,dvfs-step-20mV\00", [46 x i8] zeroinitializer }, align 32
@tps51632_init_dcdc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BASE reg write failed, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps51632_init_dcdc\00", [45 x i8] zeroinitializer }, align 32
@tps51632_init_dcdc._entry_ptr = internal global ptr @tps51632_init_dcdc._entry, section ".printk_index", align 4
@tps51632_init_dcdc._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VMAX read failed, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tps51632_init_dcdc._entry_ptr.35 = internal global ptr @tps51632_init_dcdc._entry.33, section ".printk_index", align 4
@tps51632_init_dcdc._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VMAX write failed, err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tps51632_init_dcdc._entry_ptr.38 = internal global ptr @tps51632_init_dcdc._entry.36, section ".printk_index", align 4
@tps51632_init_dcdc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DVFS reg write failed, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tps51632_init_dcdc._entry_ptr.41 = internal global ptr @tps51632_init_dcdc._entry.39, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"tps51632_i2c_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 365, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 367, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"tps51632_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 220, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"tps51632_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 358, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 277, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"tps51632_dcdc_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 111, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 302, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 309, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 316, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"tps51632_regmap_config\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 209, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 327, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 330, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 337, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 350, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 107, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 240, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 245, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 246, i32 52 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 133, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 150, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 158, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [42 x i8] c"../drivers/regulator/tps51632-regulator.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 168, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps51632_cleanup, ptr @__initcall__kmod_tps51632_regulator__288_378_tps51632_init4, ptr @of_get_tps51632_platform_data._entry, ptr @of_get_tps51632_platform_data._entry_ptr, ptr @tps51632_cleanup, ptr @tps51632_dcdc_set_ramp_delay._entry, ptr @tps51632_dcdc_set_ramp_delay._entry_ptr, ptr @tps51632_init_dcdc._entry, ptr @tps51632_init_dcdc._entry.33, ptr @tps51632_init_dcdc._entry.36, ptr @tps51632_init_dcdc._entry.39, ptr @tps51632_init_dcdc._entry_ptr, ptr @tps51632_init_dcdc._entry_ptr.35, ptr @tps51632_init_dcdc._entry_ptr.38, ptr @tps51632_init_dcdc._entry_ptr.41, ptr @tps51632_probe._entry, ptr @tps51632_probe._entry.12, ptr @tps51632_probe._entry.16, ptr @tps51632_probe._entry.19, ptr @tps51632_probe._entry.22, ptr @tps51632_probe._entry.6, ptr @tps51632_probe._entry.9, ptr @tps51632_probe._entry_ptr, ptr @tps51632_probe._entry_ptr.11, ptr @tps51632_probe._entry_ptr.14, ptr @tps51632_probe._entry_ptr.18, ptr @tps51632_probe._entry_ptr.21, ptr @tps51632_probe._entry_ptr.24, ptr @tps51632_probe._entry_ptr.8, ptr @tps51632_i2c_driver, ptr @.str, ptr @tps51632_of_match, ptr @tps51632_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tps51632_dcdc_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @tps51632_probe._key, ptr @tps51632_regmap_config, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_dcdc_set_ramp_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_tps51632_platform_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_init_dcdc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_init_dcdc._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_init_dcdc._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps51632_init_dcdc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps51632_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps51632_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps51632_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tps51632_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps51632_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %vmax.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_match_device(ptr noundef nonnull @tps51632_of_match, ptr noundef %dev) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup112

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup112_crit_edge, label %if.end10

if.end5.cleanup112_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.end10:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %desc = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %desc, align 4
  %id15 = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %id15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %id15, align 4
  %ramp_delay = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %ramp_delay, align 4
  %min_uV = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 14
  %7 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 500000, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 15
  %8 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %uV_step, align 4
  %linear_min_sel = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 16
  %9 = ptrtoint ptr %linear_min_sel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 25, ptr %linear_min_sel, align 4
  %n_voltages = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %n_voltages, align 4
  %ops = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tps51632_dcdc_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 13
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 8
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %land.lhs.true, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end10
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true.do.end39_crit_edge, label %if.then30

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.then30:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then30.do.end39_crit_edge, label %if.end.i

if.then30.do.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end.i:                                         ; preds = %if.then30
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call2.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %21, ptr noundef %desc) #6
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call2.i, ptr %call.i.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %do.end39

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i34.i = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.29, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i34.i, null
  %enable_pwm_dvfs.i = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %call.i.i, i32 0, i32 1
  %frombool.i = zext i1 %tobool.i.i to i8
  %23 = ptrtoint ptr %enable_pwm_dvfs.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %enable_pwm_dvfs.i, align 4
  %call.i35.i = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool.i36.i = icmp ne ptr %call.i35.i, null
  %dvfs_step_20mV.i = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %call.i.i, i32 0, i32 2
  %frombool9.i = zext i1 %tobool.i36.i to i8
  %24 = ptrtoint ptr %dvfs_step_20mV.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool9.i, ptr %dvfs_step_20mV.i, align 1
  %min_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call2.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not.i = icmp eq i32 %26, 0
  %..i = select i1 %tobool11.not.i, i32 500000, i32 %26
  %base_voltage_uV.i = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %call.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %base_voltage_uV.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %..i, ptr %base_voltage_uV.i, align 4
  %max_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call2.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not.i = icmp eq i32 %29, 0
  %cond18.i = select i1 %tobool14.not.i, i32 1520000, i32 %29
  %max_voltage_uV.i = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %call.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %max_voltage_uV.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond18.i, ptr %max_voltage_uV.i, align 4
  br label %if.end41

do.end39:                                         ; preds = %do.end.i, %if.then30.do.end39_crit_edge, %land.lhs.true.do.end39_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup112

if.end41:                                         ; preds = %if.end6.i, %if.end10.if.end41_crit_edge
  %pdata.0 = phi ptr [ %15, %if.end10.if.end41_crit_edge ], [ %call.i.i, %if.end6.i ]
  %enable_pwm_dvfs = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 1
  %31 = ptrtoint ptr %enable_pwm_dvfs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_pwm_dvfs, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %if.end41.if.end72_crit_edge, label %if.then43

if.end41.if.end72_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then43:                                        ; preds = %if.end41
  %base_voltage_uV = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 4
  %33 = ptrtoint ptr %base_voltage_uV to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_voltage_uV, align 4
  %35 = add i32 %34, -1520001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1020001, i32 %35)
  %36 = icmp ult i32 %35, -1020001
  br i1 %36, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup112

if.end51:                                         ; preds = %if.then43
  %max_voltage_uV = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 3
  %37 = ptrtoint ptr %max_voltage_uV to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_voltage_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool52.not = icmp ne i32 %38, 0
  %39 = add i32 %38, -1520001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1020001, i32 %39)
  %40 = icmp ult i32 %39, -1020001
  %or.cond = and i1 %tobool52.not, %40
  br i1 %or.cond, label %do.end62, label %if.end51.if.end72_crit_edge

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup112

if.end72:                                         ; preds = %if.end51.if.end72_crit_edge, %if.end41.if.end72_crit_edge
  %.sink = phi i32 [ 1, %if.end51.if.end72_crit_edge ], [ 0, %if.end41.if.end72_crit_edge ]
  %vsel_reg71 = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 27
  %41 = ptrtoint ptr %vsel_reg71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %vsel_reg71, align 4
  %vsel_mask = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 1, i32 28
  %42 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 127, ptr %vsel_mask, align 4
  %call74 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps51632_regmap_config, ptr noundef nonnull @tps51632_probe._key, ptr noundef nonnull @.str.15) #6
  %regmap = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call74, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then77, label %if.end84

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %call74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %44) #9
  br label %cleanup112

if.end84:                                         ; preds = %if.end72
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %46 = ptrtoint ptr %enable_pwm_dvfs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enable_pwm_dvfs, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i179 = icmp eq i8 %47, 0
  br i1 %tobool.not.i179, label %if.end84.skip_pwm_config.i_crit_edge, label %if.end.i183

if.end84.skip_pwm_config.i_crit_edge:             ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_pwm_config.i

if.end.i183:                                      ; preds = %if.end84
  %base_voltage_uV.i180 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 4
  %48 = ptrtoint ptr %base_voltage_uV.i180 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_voltage_uV.i180, align 4
  %sub2.i = add i32 %49, -490001
  %div.i = sdiv i32 %sub2.i, 10000
  %add3.i = add nsw i32 %div.i, 25
  %call.i181 = tail call i32 @regmap_write(ptr noundef %call74, i32 noundef 1, i32 noundef %add3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp.i182 = icmp slt i32 %call.i181, 0
  br i1 %cmp.i182, label %do.end.i184, label %if.end6.i187

do.end.i184:                                      ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.31, i32 noundef %call.i181) #9
  br label %do.end90

if.end6.i187:                                     ; preds = %if.end.i183
  %dvfs_step_20mV.i185 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 2
  %52 = ptrtoint ptr %dvfs_step_20mV.i185 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dvfs_step_20mV.i185, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool7.not.i = icmp eq i8 %53, 0
  %spec.select.i = select i1 %tobool7.not.i, i8 1, i8 3
  %max_voltage_uV.i186 = getelementptr inbounds %struct.tps51632_regulator_platform_data, ptr %pdata.0, i32 0, i32 3
  %54 = ptrtoint ptr %max_voltage_uV.i186 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_voltage_uV.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool13.not.i = icmp eq i32 %55, 0
  br i1 %tobool13.not.i, label %if.end6.i187.skip_pwm_config.i_crit_edge, label %if.then14.i

if.end6.i187.skip_pwm_config.i_crit_edge:         ; preds = %if.end6.i187
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_pwm_config.i

if.then14.i:                                      ; preds = %if.end6.i187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmax.i) #6
  %56 = ptrtoint ptr %vmax.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %vmax.i, align 4, !annotation !99
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %58, i32 noundef 4, ptr noundef nonnull %vmax.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end22.i, label %if.end24.i

do.end22.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.34, i32 noundef %call16.i) #9
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.then14.i
  %61 = ptrtoint ptr %vmax.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vmax.i, align 4
  %and.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end24.i.cleanup.thread.i_crit_edge

if.end24.i.cleanup.thread.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.then26.i:                                      ; preds = %if.end24.i
  %63 = ptrtoint ptr %max_voltage_uV.i186 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_voltage_uV.i186, align 4
  %sub30.i = add i32 %64, -490001
  %div31.i = sdiv i32 %sub30.i, 10000
  %add32.i = add nsw i32 %div31.i, 25
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call34.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 4, i32 noundef %add32.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %do.end40.i, label %if.then26.i.cleanup.thread.i_crit_edge

if.then26.i.cleanup.thread.i_crit_edge:           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

do.end40.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.37, i32 noundef %call34.i) #9
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then26.i.cleanup.thread.i_crit_edge, %if.end24.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmax.i) #6
  br label %skip_pwm_config.i

cleanup.i:                                        ; preds = %do.end40.i, %do.end22.i
  %retval.0.i188 = phi i32 [ %call16.i, %do.end22.i ], [ %call34.i, %do.end40.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmax.i) #6
  br label %do.end90

skip_pwm_config.i:                                ; preds = %cleanup.thread.i, %if.end6.i187.skip_pwm_config.i_crit_edge, %if.end84.skip_pwm_config.i_crit_edge
  %control.1.i = phi i8 [ %spec.select.i, %if.end6.i187.skip_pwm_config.i_crit_edge ], [ 0, %if.end84.skip_pwm_config.i_crit_edge ], [ %spec.select.i, %cleanup.thread.i ]
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %conv46.i = zext i8 %control.1.i to i32
  %call47.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 5, i32 noundef %conv46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %do.end53.i, label %if.end92

do.end53.i:                                       ; preds = %skip_pwm_config.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.40, i32 noundef %call47.i) #9
  br label %do.end90

do.end90:                                         ; preds = %do.end53.i, %cleanup.i, %do.end.i184
  %retval.1.i.ph = phi i32 [ %call47.i, %do.end53.i ], [ %retval.0.i188, %cleanup.i ], [ %call.i181, %do.end.i184 ]
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.20, i32 noundef %retval.1.i.ph) #9
  br label %cleanup112

if.end92:                                         ; preds = %skip_pwm_config.i
  %75 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %config, align 4
  %76 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata.0, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %78 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %79 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data, align 4
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %regmap96 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %82 = ptrtoint ptr %regmap96 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %regmap96, align 4
  %83 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node, align 8
  %of_node99 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %85 = ptrtoint ptr %of_node99 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %of_node99, align 4
  %call102 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %cmp.i189 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %do.end107, label %if.end110

do.end107:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.23) #9
  %88 = ptrtoint ptr %call102 to i32
  br label %cleanup112

if.end110:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %rdev111 = getelementptr inbounds %struct.tps51632_chip, ptr %call.i, i32 0, i32 2
  %89 = ptrtoint ptr %rdev111 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call102, ptr %rdev111, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %if.end110, %do.end107, %do.end90, %if.then77, %do.end62, %do.end49, %do.end39, %if.end5.cleanup112_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end49 ], [ -22, %do.end62 ], [ %44, %if.then77 ], [ %retval.1.i.ph, %do.end90 ], [ %88, %do.end107 ], [ 0, %if.end110 ], [ -22, %do.end39 ], [ -19, %do.end ], [ -12, %if.end5.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.1
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
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps51632_dcdc_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %cmp = icmp eq i32 %ramp_delay, 0
  %sub = add i32 %ramp_delay, 5999
  %div = sdiv i32 %sub, 6000
  %sub1 = add nsw i32 %div, -1
  %regmap = getelementptr inbounds %struct.tps51632_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %sub1.op = shl nuw i32 1, %sub1
  %shl = select i1 %cmp, i32 1, i32 %sub1.op
  %call2 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 7, i32 noundef %shl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call2) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_write_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %reg)
  %0 = icmp ult i32 %reg, 8
  %switch.cast = trunc i32 %reg to i8
  %switch.downshift = lshr i8 -13, %switch.cast
  %1 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.masked = icmp ne i8 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_read_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %switch = icmp ne i32 %0, 8
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 19
  %switch.cast = trunc i32 %switch.tableidx to i19
  %switch.downshift = lshr i19 -262141, %switch.cast
  %1 = and i19 %switch.downshift, 1
  %switch.masked = icmp ne i19 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_tps51632_regulator__288_378_tps51632_init4, !1, !"__initcall__kmod_tps51632_regulator__288_378_tps51632_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps51632-regulator.c", i32 378, i32 1}
!2 = !{ptr @__exitcall_tps51632_cleanup, !3, !"__exitcall_tps51632_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps51632-regulator.c", i32 384, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps51632-regulator.c", i32 386, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps51632-regulator.c", i32 387, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps51632-regulator.c", i32 388, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps51632-regulator.c", i32 367, i32 11}
!13 = !{ptr @tps51632_i2c_driver, !14, !"tps51632_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps51632-regulator.c", i32 365, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps51632-regulator.c", i32 277, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tps51632_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @tps51632_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/tps51632-regulator.c", i32 302, i32 3}
!25 = !{ptr @tps51632_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tps51632_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/tps51632-regulator.c", i32 309, i32 4}
!29 = !{ptr @tps51632_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tps51632_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/tps51632-regulator.c", i32 316, i32 4}
!33 = !{ptr @tps51632_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tps51632_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tps51632_probe._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/regulator/tps51632-regulator.c", i32 327, i32 16}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/tps51632-regulator.c", i32 330, i32 3}
!40 = !{ptr @tps51632_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tps51632_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/tps51632-regulator.c", i32 337, i32 3}
!44 = !{ptr @tps51632_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tps51632_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/tps51632-regulator.c", i32 350, i32 3}
!48 = !{ptr @tps51632_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @tps51632_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tps51632_dcdc_ops, !51, !"tps51632_dcdc_ops", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps51632-regulator.c", i32 111, i32 35}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/tps51632-regulator.c", i32 107, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tps51632_dcdc_set_ramp_delay._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tps51632_dcdc_set_ramp_delay._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/tps51632-regulator.c", i32 240, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @of_get_tps51632_platform_data._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @of_get_tps51632_platform_data._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/tps51632-regulator.c", i32 245, i32 30}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps51632-regulator.c", i32 246, i32 52}
!66 = !{ptr @tps51632_regmap_config, !67, !"tps51632_regmap_config", i1 false, i1 false}
!67 = !{!"../drivers/regulator/tps51632-regulator.c", i32 209, i32 35}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/tps51632-regulator.c", i32 133, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tps51632_init_dcdc._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tps51632_init_dcdc._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/tps51632-regulator.c", i32 150, i32 4}
!75 = !{ptr @tps51632_init_dcdc._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tps51632_init_dcdc._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/tps51632-regulator.c", i32 158, i32 5}
!79 = !{ptr @tps51632_init_dcdc._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tps51632_init_dcdc._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/tps51632-regulator.c", i32 168, i32 3}
!83 = !{ptr @tps51632_init_dcdc._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tps51632_init_dcdc._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @tps51632_of_match, !86, !"tps51632_of_match", i1 false, i1 false}
!86 = !{!"../drivers/regulator/tps51632-regulator.c", i32 220, i32 34}
!87 = !{ptr @tps51632_id, !88, !"tps51632_id", i1 false, i1 false}
!88 = !{!"../drivers/regulator/tps51632-regulator.c", i32 358, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
!99 = !{!"auto-init"}
