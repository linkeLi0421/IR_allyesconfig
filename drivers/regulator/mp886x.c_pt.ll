; ModuleID = '/llk/IR_all_yes/drivers/regulator/mp886x.c_pt.bc'
source_filename = "../drivers/regulator/mp886x.c"
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
%struct.mp886x_cfg_info = type { ptr, [8 x i32], [4 x i32], i8, i8 }
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
%struct.mp886x_device_info = type { ptr, %struct.regulator_desc, ptr, ptr, ptr, [2 x i32], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_mp886x__288_370_mp886x_regulator_driver_init6 = internal global ptr @mp886x_regulator_driver_init, section ".initcall6.init", align 4
@mp886x_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @mp886x_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mp886x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mp886x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mp886x_regulator_driver_exit = internal global ptr @mp886x_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"mp886x.author=Jisheng Zhang <jszhang@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [43 x i8] c"mp886x.description=MP886x regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"mp886x.file=drivers/regulator/mp886x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"mp886x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mp886x-regulator\00", [47 x i8] zeroinitializer }, align 32
@mp886x_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mps,mp8867\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mp8867_ci }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mps,mp8869\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mp8869_ci }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mp886x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mp886x\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform data not found!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mp886x_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/mp886x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry_ptr = internal global ptr @mp886x_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mps,fb-voltage-divider\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mp886x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mp886x:321:(&mp886x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate regmap!\0A\00", [36 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry_ptr.11 = internal global ptr @mp886x_i2c_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mps,switch-frequency-hz\00", [40 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register regulator!\0A\00", [33 x i8] zeroinitializer }, align 32
@mp886x_i2c_probe._entry_ptr.15 = internal global ptr @mp886x_i2c_probe._entry.13, section ".printk_index", align 4
@mp886x_set_switch_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid frequency %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mp886x_set_switch_freq\00", [41 x i8] zeroinitializer }, align 32
@mp886x_set_switch_freq._entry_ptr = internal global ptr @mp886x_set_switch_freq._entry, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mp886x-reg\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@mp8867_ci = internal constant { %struct.mp886x_cfg_info, [40 x i8] } { %struct.mp886x_cfg_info { ptr @mp8867_regulator_ops, [8 x i32] [i32 64000, i32 32000, i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 500], [4 x i32] [i32 500000, i32 750000, i32 1000000, i32 1500000], i8 1, i8 1 }, [40 x i8] zeroinitializer }, align 32
@mp8869_ci = internal constant { %struct.mp886x_cfg_info, [40 x i8] } { %struct.mp886x_cfg_info { ptr @mp8869_regulator_ops, [8 x i32] [i32 40000, i32 30000, i32 20000, i32 10000, i32 5000, i32 2500, i32 1250, i32 625], [4 x i32] [i32 500000, i32 750000, i32 1000000, i32 1250000], i8 2, i8 4 }, [40 x i8] zeroinitializer }, align 32
@mp8867_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @mp8867_set_voltage_sel, ptr null, ptr @mp8867_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mp886x_set_mode, ptr @mp886x_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mp8869_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @mp8869_set_voltage_sel, ptr null, ptr @mp8869_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mp886x_set_mode, ptr @mp886x_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"mp886x_regulator_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 362, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 364, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"mp886x_dt_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 343, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"mp886x_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 356, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 305, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 309, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 314, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"mp886x_regmap_config\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 284, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 321, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 323, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 334, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 339, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 60, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 260, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 261, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"mp8867_ci\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 232, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"mp8869_ci\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 153, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"mp8867_regulator_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 218, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"mp8869_regulator_ops\00", align 1
@___asan_gen_.105 = private constant [30 x i8] c"../drivers/regulator/mp886x.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 139, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mp886x_regulator_driver_exit, ptr @__initcall__kmod_mp886x__288_370_mp886x_regulator_driver_init6, ptr @mp886x_i2c_probe._entry, ptr @mp886x_i2c_probe._entry.13, ptr @mp886x_i2c_probe._entry.9, ptr @mp886x_i2c_probe._entry_ptr, ptr @mp886x_i2c_probe._entry_ptr.11, ptr @mp886x_i2c_probe._entry_ptr.15, ptr @mp886x_regulator_driver_exit, ptr @mp886x_set_switch_freq._entry, ptr @mp886x_set_switch_freq._entry_ptr, ptr @mp886x_regulator_driver, ptr @.str, ptr @mp886x_dt_ids, ptr @mp886x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mp886x_i2c_probe._key, ptr @mp886x_regmap_config, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mp8867_ci, ptr @mp8869_ci, ptr @mp8867_regulator_ops, ptr @mp8869_regulator_ops], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp886x_set_switch_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp8867_ci to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp8869_ci to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp8867_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp8869_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mp886x_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mp886x_regulator_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mp886x_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mp886x_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp886x_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #6
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %freq, align 4, !annotation !71
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 272, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1
  %call2 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %1, ptr noundef %desc) #6
  %regulator = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %regulator, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %r = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 5
  %call.i83 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %r, i32 noundef 2, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i83, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i83)
  %tobool8.not = icmp sgt i32 %call.i83, -1
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 7) #6
  %en_gpio = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %en_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %en_gpio, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %ci = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call18, ptr %ci, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %call.i, align 4
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mp886x_regmap_config, ptr noundef nonnull @mp886x_i2c_probe._key, ptr noundef nonnull @.str.8) #6
  %cmp.i84 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %11 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %config, align 4
  %16 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regulator, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %18 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %init_data, align 4
  %regmap31 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %19 = ptrtoint ptr %regmap31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %regmap31, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data, align 4
  %of_node32 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %21 = ptrtoint ptr %of_node32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %of_node32, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool34.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool34.not, label %if.then35, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %freq, align 4
  %24 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ci, align 4
  %arrayidx.i = getelementptr %struct.mp886x_cfg_info, ptr %25, i32 0, i32 2, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %23)
  %cmp2.i = icmp eq i32 %27, %23
  br i1 %cmp2.i, label %if.then35.if.then.i_crit_edge, label %for.inc.i

if.then35.if.then.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.then35.if.then.i_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %if.then35.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ]
  %fs_reg.i = getelementptr inbounds %struct.mp886x_cfg_info, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %fs_reg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fs_reg.i, align 4
  %conv.i = zext i8 %29 to i32
  %fs_shift.i = getelementptr inbounds %struct.mp886x_cfg_info, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %fs_shift.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fs_shift.i, align 1
  %conv3.i = zext i8 %31 to i32
  %shl.i = shl i32 3, %conv3.i
  %shl6.i = shl i32 %i.017.lcssa.i, %conv3.i
  %call.i.i85 = call i32 @regmap_update_bits_base(ptr noundef %call20, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef %shl6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end36

for.inc.i:                                        ; preds = %if.then35
  %arrayidx.1.i = getelementptr %struct.mp886x_cfg_info, ptr %25, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %23)
  %cmp2.1.i = icmp eq i32 %33, %23
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mp886x_cfg_info, ptr %25, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %23)
  %cmp2.2.i = icmp eq i32 %35, %23
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mp886x_cfg_info, ptr %25, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %23)
  %cmp2.3.i = icmp eq i32 %37, %23
  br i1 %cmp2.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef %23) #9
  br label %if.end36

if.end36:                                         ; preds = %for.inc.3.i, %if.then.i, %if.end27.if.end36_crit_edge
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.18, ptr %desc, align 4
  %supply_name.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %supply_name.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.19, ptr %supply_name.i, align 4
  %42 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ci, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %ops.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 10
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 12
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type.i, align 4
  %n_voltages.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 8
  %48 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %n_voltages.i, align 4
  %enable_reg.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 34
  %49 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 35
  %50 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %enable_mask.i, align 4
  %min_uV.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 14
  %51 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 600000, ptr %min_uV.i, align 4
  %uV_step.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 15
  %52 = ptrtoint ptr %uV_step.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 10000, ptr %uV_step.i, align 4
  %vsel_reg.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 27
  %53 = ptrtoint ptr %vsel_reg.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %vsel_reg.i, align 4
  %vsel_mask.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 28
  %54 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 63, ptr %vsel_mask.i, align 4
  %ramp_reg.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 53
  %55 = ptrtoint ptr %ramp_reg.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %ramp_reg.i, align 4
  %ramp_mask.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 54
  %56 = ptrtoint ptr %ramp_mask.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 56, ptr %ramp_mask.i, align 4
  %slew_rates.i = getelementptr inbounds %struct.mp886x_cfg_info, ptr %43, i32 0, i32 1
  %ramp_delay_table.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 55
  %57 = ptrtoint ptr %ramp_delay_table.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %slew_rates.i, ptr %ramp_delay_table.i, align 4
  %n_ramp_values.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 56
  %58 = ptrtoint ptr %n_ramp_values.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %n_ramp_values.i, align 4
  %owner.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 1, i32 13
  %59 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %owner.i, align 4
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call.i86 = call ptr @devm_regulator_register(ptr noundef %61, ptr noundef %desc, ptr noundef nonnull %config) #6
  %cmp.i.i = icmp ugt ptr %call.i86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mp886x_regulator_register.exit, label %mp886x_regulator_register.exit.thread

mp886x_regulator_register.exit.thread:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  %get_voltage_sel.i = getelementptr inbounds %struct.regulator_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %get_voltage_sel.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_voltage_sel.i, align 4
  %call6.i = call i32 %65(ptr noundef %call.i86) #6
  %sel.i = getelementptr inbounds %struct.mp886x_device_info, ptr %call.i, i32 0, i32 6
  %66 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call6.i, ptr %sel.i, align 4
  br label %cleanup

mp886x_regulator_register.exit:                   ; preds = %if.end36
  %67 = ptrtoint ptr %call.i86 to i32
  %cmp = icmp slt ptr %call.i86, null
  br i1 %cmp, label %do.end41, label %mp886x_regulator_register.exit.cleanup_crit_edge

mp886x_regulator_register.exit.cleanup_crit_edge: ; preds = %mp886x_regulator_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %mp886x_regulator_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %mp886x_regulator_register.exit.cleanup_crit_edge, %mp886x_regulator_register.exit.thread, %do.end25, %if.then14, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then14 ], [ %11, %do.end25 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %6, %if.end6.cleanup_crit_edge ], [ %67, %do.end41 ], [ %67, %mp886x_regulator_register.exit.cleanup_crit_edge ], [ 0, %mp886x_regulator_register.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp8867_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %mp8869_set_voltage_sel.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mp8869_set_voltage_sel.exit:                      ; preds = %entry
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask.i, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #6, !range !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero.i = icmp eq i32 %5, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %6
  %shl.i = shl i32 %sel, %sub.i
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %vsel_reg.i = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %9 = ptrtoint ptr %vsel_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_reg.i, align 4
  %or.i = or i32 %5, 128
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %or.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp = icmp slt i32 %call.i12.i, 0
  br i1 %cmp, label %mp8869_set_voltage_sel.exit.cleanup_crit_edge, label %if.end

mp8869_set_voltage_sel.exit.cleanup_crit_edge:    ; preds = %mp8869_set_voltage_sel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mp8869_set_voltage_sel.exit
  %sel2 = getelementptr inbounds %struct.mp886x_device_info, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %sel2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sel2, align 4
  %sub = sub i32 %12, %sel
  %13 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp5 = icmp slt i32 %13, 6
  br i1 %cmp5, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i12.i, %if.end.if.end8_crit_edge ]
  %16 = ptrtoint ptr %sel2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sel, ptr %sel2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mp8869_set_voltage_sel.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ %call.i12.i, %mp8869_set_voltage_sel.exit.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp8867_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !71
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_mask, align 4
  %and4 = and i32 %12, %8
  %13 = call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %iszero = icmp eq i32 %12, 0
  %sub = select i1 %iszero, i32 -1, i32 %13
  %shr = lshr i32 %and4, %sub
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %val, align 4
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 @regulator_list_voltage_linear(ptr noundef %rdev, i32 noundef %shr) #6
  %r = getelementptr inbounds %struct.mp886x_device_info, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r, align 4
  %arrayidx11 = getelementptr %struct.mp886x_device_info, ptr %call, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx11, align 4
  %mul.i = mul i32 %16, %call9
  %div.i = udiv i32 %mul.i, %18
  %add.i = add i32 %div.i, %call9
  %call13 = call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %add.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then8 ], [ %call1, %entry.cleanup_crit_edge ], [ %shr, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp886x_set_mode(ptr nocapture noundef readonly %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 1, label %entry.return.sink.split_crit_edge
    i32 2, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink6 = phi i32 [ 0, %sw.bb1 ], [ %mode, %entry.return.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef %.sink6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp886x_get_mode(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !71
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp8869_set_voltage_sel(ptr nocapture noundef readonly %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero = icmp eq i32 %5, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %shl = shl i32 %sel, %sub
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %9 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_reg, align 4
  %or = or i32 %5, 128
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %or, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp8869_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !71
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  br i1 %tobool2.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %min_uV = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_uV, align 4
  %r = getelementptr inbounds %struct.mp886x_device_info, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  %arrayidx7 = getelementptr %struct.mp886x_device_info, ptr %call, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %mul.i = mul i32 %14, %12
  %div.i = udiv i32 %mul.i, %16
  %add.i = add i32 %div.i, %12
  %call9 = call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %add.i) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 28
  %17 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vsel_mask, align 4
  %and12 = and i32 %18, %8
  %19 = call i32 @llvm.cttz.i32(i32 %18, i1 true), !range !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %iszero = icmp eq i32 %18, 0
  %sub = select i1 %iszero, i32 -1, i32 %19
  %shr = lshr i32 %and12, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then4 ], [ %shr, %if.end10 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_mp886x__288_370_mp886x_regulator_driver_init6, !1, !"__initcall__kmod_mp886x__288_370_mp886x_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mp886x.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_mp886x_regulator_driver_exit, !1, !"__exitcall_mp886x_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/mp886x.c", i32 372, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/mp886x.c", i32 373, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mp886x.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mp886x.c", i32 364, i32 11}
!12 = !{ptr @mp886x_regulator_driver, !13, !"mp886x_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mp886x.c", i32 362, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mp886x.c", i32 305, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mp886x_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mp886x_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/mp886x.c", i32 309, i32 39}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/mp886x.c", i32 314, i32 36}
!26 = !{ptr @mp886x_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/regulator/mp886x.c", i32 321, i32 11}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/mp886x.c", i32 323, i32 3}
!31 = !{ptr @mp886x_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mp886x_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/mp886x.c", i32 334, i32 32}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/mp886x.c", i32 339, i32 3}
!37 = !{ptr @mp886x_i2c_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mp886x_i2c_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mp886x_regmap_config, !40, !"mp886x_regmap_config", i1 false, i1 false}
!40 = !{!"../drivers/regulator/mp886x.c", i32 284, i32 35}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/mp886x.c", i32 60, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mp886x_set_switch_freq._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mp886x_set_switch_freq._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/mp886x.c", i32 260, i32 16}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/mp886x.c", i32 261, i32 23}
!50 = !{ptr @mp886x_dt_ids, !51, !"mp886x_dt_ids", i1 false, i1 false}
!51 = !{!"../drivers/regulator/mp886x.c", i32 343, i32 34}
!52 = !{ptr @mp8867_ci, !53, !"mp8867_ci", i1 false, i1 false}
!53 = !{!"../drivers/regulator/mp886x.c", i32 232, i32 37}
!54 = !{ptr @mp8867_regulator_ops, !55, !"mp8867_regulator_ops", i1 false, i1 false}
!55 = !{!"../drivers/regulator/mp886x.c", i32 218, i32 35}
!56 = !{ptr @mp8869_ci, !57, !"mp8869_ci", i1 false, i1 false}
!57 = !{!"../drivers/regulator/mp886x.c", i32 153, i32 37}
!58 = !{ptr @mp8869_regulator_ops, !59, !"mp8869_regulator_ops", i1 false, i1 false}
!59 = !{!"../drivers/regulator/mp886x.c", i32 139, i32 35}
!60 = !{ptr @mp886x_id, !61, !"mp886x_id", i1 false, i1 false}
!61 = !{!"../drivers/regulator/mp886x.c", i32 356, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i32 0, i32 33}
