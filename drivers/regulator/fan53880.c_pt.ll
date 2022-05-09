; ModuleID = '/llk/IR_all_yes/drivers/regulator/fan53880.c_pt.bc'
source_filename = "../drivers/regulator/fan53880.c"
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
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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

@__initcall__kmod_fan53880__288_182_fan53880_regulator_driver_init6 = internal global ptr @fan53880_regulator_driver_init, section ".initcall6.init", align 4
@fan53880_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @fan53880_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fan53880_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fan53880_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fan53880_regulator_driver_exit = internal global ptr @fan53880_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"fan53880.description=FAN53880 PMIC voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"fan53880.author=Christoph Fritz <chf.fritz@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"fan53880.file=drivers/regulator/fan53880\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"fan53880.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan53880\00", [23 x i8] zeroinitializer }, align 32
@fan53880_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,fan53880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fan53880_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fan53880\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fan53880_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fan53880:125:(&fan53880_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create regmap: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fan53880_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/regulator/fan53880.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry_ptr = internal global ptr @fan53880_i2c_probe._entry, section ".printk_index", align 4
@fan53880_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read PRODUCT_ID: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry_ptr.9 = internal global ptr @fan53880_i2c_probe._entry.7, section ".printk_index", align 4
@fan53880_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported device id: 0x%x.\0A\00", [34 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry_ptr.12 = internal global ptr @fan53880_i2c_probe._entry.10, section ".printk_index", align 4
@fan53880_regulators = internal constant { [6 x %struct.regulator_desc], [360 x i8] } { [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.16, ptr @.str.17, ptr @.str.16, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 116, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 4, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr @.str.17, ptr @.str.19, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 116, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.20, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 5, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 116, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.23, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 6, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.24, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 116, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.26, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 7, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 150, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.28, ptr @.str.27, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 248, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.29, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 2, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 480, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr @.str.28, ptr @.str.30, i8 0, ptr @.str.18, ptr null, i32 0, i8 0, i32 113, i32 0, ptr @fan53880_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.31, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 3, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 255, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 580, i32 0, i32 0, ptr null }], [360 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fan53880_i2c_probe._entry_ptr.15 = internal global ptr @fan53880_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN12\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@fan53880_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 2800000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 800000, i32 15, i32 115, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 2800000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 800000, i32 15, i32 115, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN3\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 800000, i32 15, i32 115, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN4\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 800000, i32 15, i32 115, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUCK\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVIN\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1100000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 600000, i32 31, i32 247, i32 12500 }], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOST\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 5000000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 3000000, i32 4, i32 112, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"fan53880_regulator_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 174, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 176, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"fan53880_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 161, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"fan53880_i2c_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 168, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"fan53880_regmap\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 111, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 125, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 128, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 134, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 138, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"fan53880_regulators\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 64, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 151, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 65, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"fan53880_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 32, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 66, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 67, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 68, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 70, i32 15 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 86, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [32 x i8] c"../drivers/regulator/fan53880.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 90, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_fan53880_regulator_driver_exit, ptr @__initcall__kmod_fan53880__288_182_fan53880_regulator_driver_init6, ptr @fan53880_i2c_probe._entry, ptr @fan53880_i2c_probe._entry.10, ptr @fan53880_i2c_probe._entry.13, ptr @fan53880_i2c_probe._entry.7, ptr @fan53880_i2c_probe._entry_ptr, ptr @fan53880_i2c_probe._entry_ptr.12, ptr @fan53880_i2c_probe._entry_ptr.15, ptr @fan53880_i2c_probe._entry_ptr.9, ptr @fan53880_regulator_driver_exit, ptr @fan53880_regulator_driver, ptr @.str, ptr @fan53880_dt_ids, ptr @fan53880_i2c_id, ptr @fan53880_i2c_probe._key, ptr @fan53880_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @fan53880_regulators, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fan53880_ops, ptr @.compoundliteral, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_regulators to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53880_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53880_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fan53880_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fan53880_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @fan53880_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53880_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !74
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @fan53880_regmap, ptr noundef nonnull @fan53880_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_read(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.8, i32 noundef %call3) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp10.not = icmp eq i32 %5, 1
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  br i1 %cmp10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.11, i32 noundef %5) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev17, ptr %config, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %init_data, align 4
  %call21 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef nonnull @fan53880_regulators, ptr noundef nonnull %config) #5
  %cmp.i54 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.end16.if.then23_crit_edge, label %for.cond

if.end16.if.then23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.cond:                                         ; preds = %if.end16
  %call21.1 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i54.1 = icmp ugt ptr %call21.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.1, label %for.cond.if.then23_crit_edge, label %for.cond.1

for.cond.if.then23_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.cond.1:                                       ; preds = %for.cond
  %call21.2 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i54.2 = icmp ugt ptr %call21.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.2, label %for.cond.1.if.then23_crit_edge, label %for.cond.2

for.cond.1.if.then23_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.cond.2:                                       ; preds = %for.cond.1
  %call21.3 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i54.3 = icmp ugt ptr %call21.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.3, label %for.cond.2.if.then23_crit_edge, label %for.cond.3

for.cond.2.if.then23_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.cond.3:                                       ; preds = %for.cond.2
  %call21.4 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i54.4 = icmp ugt ptr %call21.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.4, label %for.cond.3.if.then23_crit_edge, label %for.cond.4

for.cond.3.if.then23_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.cond.4:                                       ; preds = %for.cond.3
  %call21.5 = call ptr @devm_regulator_register(ptr noundef %dev17, ptr noundef getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i54.5 = icmp ugt ptr %call21.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.5, label %for.cond.4.if.then23_crit_edge, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4.if.then23_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %for.cond.4.if.then23_crit_edge, %for.cond.3.if.then23_crit_edge, %for.cond.2.if.then23_crit_edge, %for.cond.1.if.then23_crit_edge, %for.cond.if.then23_crit_edge, %if.end16.if.then23_crit_edge
  %arrayidx.lcssa = phi ptr [ @fan53880_regulators, %if.end16.if.then23_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 1), %for.cond.if.then23_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 2), %for.cond.1.if.then23_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 3), %for.cond.2.if.then23_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 4), %for.cond.3.if.then23_crit_edge ], [ getelementptr inbounds ([6 x %struct.regulator_desc], ptr @fan53880_regulators, i32 0, i32 5), %for.cond.4.if.then23_crit_edge ]
  %call21.lcssa = phi ptr [ %call21, %if.end16.if.then23_crit_edge ], [ %call21.1, %for.cond.if.then23_crit_edge ], [ %call21.2, %for.cond.1.if.then23_crit_edge ], [ %call21.3, %for.cond.2.if.then23_crit_edge ], [ %call21.4, %for.cond.3.if.then23_crit_edge ], [ %call21.5, %for.cond.4.if.then23_crit_edge ]
  %8 = ptrtoint ptr %call21.lcssa to i32
  %9 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.14, ptr noundef %10, i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.cond.4.cleanup_crit_edge, %do.end14, %do.end7, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call3, %do.end7 ], [ -19, %do.end14 ], [ %8, %if.then23 ], [ 0, %for.cond.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
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
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_fan53880__288_182_fan53880_regulator_driver_init6, !1, !"__initcall__kmod_fan53880__288_182_fan53880_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/fan53880.c", i32 182, i32 1}
!2 = !{ptr @__exitcall_fan53880_regulator_driver_exit, !1, !"__exitcall_fan53880_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/fan53880.c", i32 184, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/fan53880.c", i32 185, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/fan53880.c", i32 186, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/fan53880.c", i32 176, i32 11}
!12 = !{ptr @fan53880_regulator_driver, !13, !"fan53880_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/fan53880.c", i32 174, i32 26}
!14 = !{ptr @fan53880_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/fan53880.c", i32 125, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/fan53880.c", i32 128, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fan53880_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @fan53880_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/fan53880.c", i32 134, i32 3}
!27 = !{ptr @fan53880_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fan53880_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/fan53880.c", i32 138, i32 3}
!31 = !{ptr @fan53880_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fan53880_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/fan53880.c", i32 151, i32 4}
!35 = !{ptr @fan53880_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fan53880_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @fan53880_regmap, !38, !"fan53880_regmap", i1 false, i1 false}
!38 = !{!"../drivers/regulator/fan53880.c", i32 111, i32 35}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/fan53880.c", i32 65, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/fan53880.c", i32 66, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/fan53880.c", i32 67, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/fan53880.c", i32 68, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/fan53880.c", i32 70, i32 15}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/fan53880.c", i32 86, i32 21}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/fan53880.c", i32 90, i32 15}
!57 = !{ptr @fan53880_regulators, !58, !"fan53880_regulators", i1 false, i1 false}
!58 = !{!"../drivers/regulator/fan53880.c", i32 64, i32 36}
!59 = !{ptr @fan53880_ops, !60, !"fan53880_ops", i1 false, i1 false}
!60 = !{!"../drivers/regulator/fan53880.c", i32 32, i32 35}
!61 = !{ptr @fan53880_dt_ids, !62, !"fan53880_dt_ids", i1 false, i1 false}
!62 = !{!"../drivers/regulator/fan53880.c", i32 161, i32 34}
!63 = !{ptr @fan53880_i2c_id, !64, !"fan53880_i2c_id", i1 false, i1 false}
!64 = !{!"../drivers/regulator/fan53880.c", i32 168, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
