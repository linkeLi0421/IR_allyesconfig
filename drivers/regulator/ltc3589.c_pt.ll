; ModuleID = '/llk/IR_all_yes/drivers/regulator/ltc3589.c_pt.bc'
source_filename = "../drivers/regulator/ltc3589.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_default = type { i32, i32 }
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
%struct.ltc3589 = type { ptr, ptr, i32, [8 x %struct.regulator_desc], [8 x ptr] }

@__initcall__kmod_ltc3589__288_482_ltc3589_driver_init6 = internal global ptr @ltc3589_driver_init, section ".initcall6.init", align 4
@ltc3589_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ltc3589_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc3589_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc3589_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc3589_driver_exit = internal global ptr @ltc3589_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"ltc3589.author=Philipp Zabel <p.zabel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"ltc3589.description=Regulator driver for Linear Technology LTC3589(-1,2)\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"ltc3589.file=drivers/regulator/ltc3589\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"ltc3589.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc3589\00", [24 x i8] zeroinitializer }, align 32
@ltc3589_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3589\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3589-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3589-2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ltc3589_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc3589\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltc3589-1\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ltc3589-2\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ltc3589_regulators = internal constant { [8 x %struct.regulator_desc], [480 x i8] } { [8 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 0, i8 0, i32 32, i32 0, ptr @ltc3589_linear_regulator_ops, i32 0, i32 0, ptr null, i32 362500, i32 12500, i32 0, i32 0, i32 1750, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 31, i32 0, i32 0, i32 0, i32 32, i32 1, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 3, ptr @ltc3589_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 1, i8 0, i32 32, i32 0, ptr @ltc3589_linear_regulator_ops, i32 0, i32 0, ptr null, i32 362500, i32 12500, i32 0, i32 0, i32 1750, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 32, i32 4, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 12, ptr @ltc3589_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 2, i8 0, i32 32, i32 0, ptr @ltc3589_linear_regulator_ops, i32 0, i32 0, ptr null, i32 362500, i32 12500, i32 0, i32 0, i32 1750, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 32, i32 16, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 48, ptr @ltc3589_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 3, i8 0, i32 1, i32 0, ptr @ltc3589_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 4, i8 0, i32 1, i32 0, ptr @ltc3589_fixed_standby_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.25, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 5, i8 0, i32 32, i32 0, ptr @ltc3589_linear_regulator_ops, i32 0, i32 0, ptr null, i32 362500, i32 12500, i32 0, i32 0, i32 1750, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 31, i32 0, i32 0, i32 0, i32 32, i32 64, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 192, ptr @ltc3589_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.27, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 6, i8 0, i32 1, i32 0, ptr @ltc3589_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr @.str.15, ptr @ltc3589_of_parse_cb, i32 7, i8 0, i32 97, i32 0, ptr @ltc3589_table_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 51, i32 96, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [480 x i8] zeroinitializer }, align 32
@ltc3589_ldo4 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2800000, i32 2500000, i32 1800000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@ltc3589_12_ldo4 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1800000, i32 2500000, i32 3200000], [16 x i8] zeroinitializer }, align 32
@ltc3589_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc3589_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ltc3589_writeable_reg, ptr @ltc3589_readable_reg, ptr @ltc3589_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 51, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc3589_reg_defaults, i32 13, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ltc3589:411:(&ltc3589_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ltc3589_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc3589_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/ltc3589.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc3589_probe._entry_ptr = internal global ptr @ltc3589_probe._entry, section ".printk_index", align 4
@ltc3589_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register regulator %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ltc3589_probe._entry_ptr.9 = internal global ptr @ltc3589_probe._entry.7, section ".printk_index", align 4
@ltc3589_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ltc3589_probe._entry_ptr.12 = internal global ptr @ltc3589_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW1\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw1\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@ltc3589_linear_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc3589_set_suspend_voltage, ptr null, ptr null, ptr @ltc3589_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ltc3589_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 880, i32 1750, i32 3500, i32 7000], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW2\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw2\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW3\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw3\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BB_OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bb-out\00", [25 x i8] zeroinitializer }, align 32
@ltc3589_fixed_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@ltc3589_fixed_standby_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@ltc3589_table_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lltc,fb-voltage-divider\00", [40 x i8] zeroinitializer }, align 32
@ltc3589_of_parse_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to parse voltage divider: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltc3589_of_parse_cb\00", [44 x i8] zeroinitializer }, align 32
@ltc3589_of_parse_cb._entry_ptr = internal global ptr @ltc3589_of_parse_cb._entry, section ".printk_index", align 4
@ltc3589_reg_defaults = internal constant { [13 x %struct.reg_default], [56 x i8] } { [13 x %struct.reg_default] [%struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 35, i32 25 }, %struct.reg_default { i32 36, i32 25 }, %struct.reg_default { i32 37, i32 255 }, %struct.reg_default { i32 38, i32 25 }, %struct.reg_default { i32 39, i32 25 }, %struct.reg_default { i32 41, i32 25 }, %struct.reg_default { i32 42, i32 25 }, %struct.reg_default { i32 50, i32 25 }, %struct.reg_default { i32 51, i32 25 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 2, i64 7, i64 16, i64 18, i64 32, i64 33, i64 35, i64 36, i64 37, i64 38, i64 39, i64 41, i64 42, i64 50, i64 51]
@__sancov_gen_cov_switch_values.33 = internal global [17 x i64] [i64 15, i64 32, i64 2, i64 7, i64 16, i64 18, i64 19, i64 32, i64 35, i64 36, i64 37, i64 38, i64 39, i64 41, i64 42, i64 50, i64 51]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"ltc3589_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 474, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 476, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"ltc3589_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 457, i32 49 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ltc3589_i2c_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 449, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"ltc3589_regulators\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 256, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"ltc3589_ldo4\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 88, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ltc3589_12_ldo4\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 92, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"ltc3589_regmap_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 340, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 411, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 414, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 429, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 441, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 257, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"ltc3589_linear_regulator_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 132, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"ltc3589_ramp_table\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 96, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 258, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 259, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 260, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"ltc3589_fixed_regulator_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 146, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 261, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [36 x i8] c"ltc3589_fixed_standby_regulator_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 153, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 262, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 263, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 264, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [28 x i8] c"ltc3589_table_regulator_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 157, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 191, i32 39 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 193, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"ltc3589_reg_defaults\00", align 1
@___asan_gen_.173 = private constant [31 x i8] c"../drivers/regulator/ltc3589.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 324, i32 33 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltc3589_driver_exit, ptr @__initcall__kmod_ltc3589__288_482_ltc3589_driver_init6, ptr @ltc3589_driver_exit, ptr @ltc3589_of_parse_cb._entry, ptr @ltc3589_of_parse_cb._entry_ptr, ptr @ltc3589_probe._entry, ptr @ltc3589_probe._entry.10, ptr @ltc3589_probe._entry.7, ptr @ltc3589_probe._entry_ptr, ptr @ltc3589_probe._entry_ptr.12, ptr @ltc3589_probe._entry_ptr.9, ptr @ltc3589_driver, ptr @.str, ptr @ltc3589_of_match, ptr @ltc3589_i2c_id, ptr @ltc3589_regulators, ptr @ltc3589_ldo4, ptr @ltc3589_12_ldo4, ptr @ltc3589_probe._key, ptr @ltc3589_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ltc3589_linear_regulator_ops, ptr @ltc3589_ramp_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ltc3589_fixed_regulator_ops, ptr @.str.22, ptr @.str.23, ptr @ltc3589_fixed_standby_regulator_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ltc3589_table_regulator_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ltc3589_reg_defaults], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_regulators to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_ldo4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_12_ldo4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_linear_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_fixed_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_fixed_standby_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_table_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_of_parse_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc3589_reg_defaults to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc3589_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc3589_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc3589_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1996, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %3 = ptrtoint ptr %call6 to i32
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %5, %if.else ], [ %3, %if.then4 ]
  %6 = getelementptr inbounds %struct.ltc3589, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %6, align 4
  %dev9 = getelementptr inbounds %struct.ltc3589, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev9, align 4
  %regulator_descs = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %regulator_descs, ptr @ltc3589_regulators, i32 1952)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %cmp = icmp eq i32 %.sink, 0
  %spec.select = select i1 %cmp, i32 1800000, i32 2800000
  %spec.select114 = select i1 %cmp, ptr @ltc3589_ldo4, ptr @ltc3589_12_ldo4
  %10 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 6, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %12 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 7, i32 23
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select114, ptr %12, align 4
  %call19 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc3589_regmap_config, ptr noundef nonnull @ltc3589_probe._key, ptr noundef nonnull @.str.1) #6
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %driver_data30 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %15 = getelementptr inbounds i8, ptr %config, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 20)
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev1, ptr %config, align 4
  %18 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %regulator_descs, ptr noundef nonnull %config) #6
  %arrayidx32 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 0
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %arrayidx32, align 4
  %cmp.i108 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %for.cond.preheader.cleanup.thread_crit_edge, label %for.inc

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %20) #9
  br label %cleanup58

cleanup.thread:                                   ; preds = %for.inc.6.cleanup.thread_crit_edge, %for.inc.5.cleanup.thread_crit_edge, %for.inc.4.cleanup.thread_crit_edge, %for.inc.3.cleanup.thread_crit_edge, %for.inc.2.cleanup.thread_crit_edge, %for.inc.1.cleanup.thread_crit_edge, %for.inc.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  %arrayidx28.lcssa = phi ptr [ %regulator_descs, %for.cond.preheader.cleanup.thread_crit_edge ], [ %arrayidx28.1, %for.inc.cleanup.thread_crit_edge ], [ %arrayidx28.2, %for.inc.1.cleanup.thread_crit_edge ], [ %arrayidx28.3, %for.inc.2.cleanup.thread_crit_edge ], [ %arrayidx28.4, %for.inc.3.cleanup.thread_crit_edge ], [ %arrayidx28.5, %for.inc.4.cleanup.thread_crit_edge ], [ %arrayidx28.6, %for.inc.5.cleanup.thread_crit_edge ], [ %arrayidx28.7, %for.inc.6.cleanup.thread_crit_edge ]
  %call31.lcssa = phi ptr [ %call31, %for.cond.preheader.cleanup.thread_crit_edge ], [ %call31.1, %for.inc.cleanup.thread_crit_edge ], [ %call31.2, %for.inc.1.cleanup.thread_crit_edge ], [ %call31.3, %for.inc.2.cleanup.thread_crit_edge ], [ %call31.4, %for.inc.3.cleanup.thread_crit_edge ], [ %call31.5, %for.inc.4.cleanup.thread_crit_edge ], [ %call31.6, %for.inc.5.cleanup.thread_crit_edge ], [ %call31.7, %for.inc.6.cleanup.thread_crit_edge ]
  %21 = ptrtoint ptr %call31.lcssa to i32
  %22 = ptrtoint ptr %arrayidx28.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %23, i32 noundef %21) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  br label %cleanup58

for.inc:                                          ; preds = %for.cond.preheader
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.1 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %24 = getelementptr inbounds i8, ptr %config, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 20)
  %26 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %config, align 4
  %27 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.1, ptr noundef nonnull %config) #6
  %arrayidx32.1 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31.1, ptr %arrayidx32.1, align 4
  %cmp.i108.1 = icmp ugt ptr %call31.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.2 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %29 = getelementptr inbounds i8, ptr %config, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 20)
  %31 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev1, ptr %config, align 4
  %32 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.2, ptr noundef nonnull %config) #6
  %arrayidx32.2 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call31.2, ptr %arrayidx32.2, align 4
  %cmp.i108.2 = icmp ugt ptr %call31.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.2, label %for.inc.1.cleanup.thread_crit_edge, label %for.inc.2

for.inc.1.cleanup.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.2:                                        ; preds = %for.inc.1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.3 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %34 = getelementptr inbounds i8, ptr %config, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 20)
  %36 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev1, ptr %config, align 4
  %37 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.3, ptr noundef nonnull %config) #6
  %arrayidx32.3 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call31.3, ptr %arrayidx32.3, align 4
  %cmp.i108.3 = icmp ugt ptr %call31.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.3, label %for.inc.2.cleanup.thread_crit_edge, label %for.inc.3

for.inc.2.cleanup.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.3:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.4 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %39 = getelementptr inbounds i8, ptr %config, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 20)
  %41 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev1, ptr %config, align 4
  %42 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.4 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.4, ptr noundef nonnull %config) #6
  %arrayidx32.4 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call31.4, ptr %arrayidx32.4, align 4
  %cmp.i108.4 = icmp ugt ptr %call31.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.4, label %for.inc.3.cleanup.thread_crit_edge, label %for.inc.4

for.inc.3.cleanup.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.4:                                        ; preds = %for.inc.3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.5 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %44 = getelementptr inbounds i8, ptr %config, i32 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 20)
  %46 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev1, ptr %config, align 4
  %47 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.5 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.5, ptr noundef nonnull %config) #6
  %arrayidx32.5 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call31.5, ptr %arrayidx32.5, align 4
  %cmp.i108.5 = icmp ugt ptr %call31.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.5, label %for.inc.4.cleanup.thread_crit_edge, label %for.inc.5

for.inc.4.cleanup.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.5:                                        ; preds = %for.inc.4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.6 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %49 = getelementptr inbounds i8, ptr %config, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 20)
  %51 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev1, ptr %config, align 4
  %52 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.6 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.6, ptr noundef nonnull %config) #6
  %arrayidx32.6 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call31.6, ptr %arrayidx32.6, align 4
  %cmp.i108.6 = icmp ugt ptr %call31.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.6, label %for.inc.5.cleanup.thread_crit_edge, label %for.inc.6

for.inc.5.cleanup.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.6:                                        ; preds = %for.inc.5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %arrayidx28.7 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 3, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %54 = getelementptr inbounds i8, ptr %config, i32 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 20)
  %56 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev1, ptr %config, align 4
  %57 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data30, align 4
  %call31.7 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx28.7, ptr noundef nonnull %config) #6
  %arrayidx32.7 = getelementptr %struct.ltc3589, ptr %call.i, i32 0, i32 4, i32 7
  %58 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call31.7, ptr %arrayidx32.7, align 4
  %cmp.i108.7 = icmp ugt ptr %call31.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.7, label %for.inc.6.cleanup.thread_crit_edge, label %for.inc.7

for.inc.6.cleanup.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.inc.7:                                        ; preds = %for.inc.6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool45.not = icmp eq i32 %60, 0
  br i1 %tobool45.not, label %for.inc.7.cleanup58_crit_edge, label %if.then46

for.inc.7.cleanup58_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.then46:                                        ; preds = %for.inc.7
  %name48 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call50 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %60, ptr noundef null, ptr noundef nonnull @ltc3589_isr, i32 noundef 8200, ptr noundef %name48, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then46.cleanup58_crit_edge, label %do.end55

if.then46.cleanup58_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call50) #9
  br label %cleanup58

cleanup58:                                        ; preds = %do.end55, %if.then46.cleanup58_crit_edge, %for.inc.7.cleanup58_crit_edge, %cleanup.thread, %if.then22, %entry.cleanup58_crit_edge
  %retval.2 = phi i32 [ %20, %if.then22 ], [ %call50, %do.end55 ], [ -12, %entry.cleanup58_crit_edge ], [ 0, %if.then46.cleanup58_crit_edge ], [ 0, %for.inc.7.cleanup58_crit_edge ], [ %21, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irqstat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqstat) #6
  %0 = ptrtoint ptr %irqstat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irqstat, align 4, !annotation !98
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %irqstat) #6
  %3 = ptrtoint ptr %irqstat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irqstat, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @regulator_notifier_call_chain(ptr noundef %6, i32 noundef 16, ptr noundef null) #6
  %arrayidx.1 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %call1.1 = call i32 @regulator_notifier_call_chain(ptr noundef %8, i32 noundef 16, ptr noundef null) #6
  %arrayidx.2 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  %call1.2 = call i32 @regulator_notifier_call_chain(ptr noundef %10, i32 noundef 16, ptr noundef null) #6
  %arrayidx.3 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3, align 4
  %call1.3 = call i32 @regulator_notifier_call_chain(ptr noundef %12, i32 noundef 16, ptr noundef null) #6
  %arrayidx.4 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.4, align 4
  %call1.4 = call i32 @regulator_notifier_call_chain(ptr noundef %14, i32 noundef 16, ptr noundef null) #6
  %arrayidx.5 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %call1.5 = call i32 @regulator_notifier_call_chain(ptr noundef %16, i32 noundef 16, ptr noundef null) #6
  %arrayidx.6 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.6, align 4
  %call1.6 = call i32 @regulator_notifier_call_chain(ptr noundef %18, i32 noundef 16, ptr noundef null) #6
  %arrayidx.7 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.7, align 4
  %call1.7 = call i32 @regulator_notifier_call_chain(ptr noundef %20, i32 noundef 16, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %irqstat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irqstat, align 4
  %and2 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %for.body7.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body7.preheader:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 0
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx9, align 4
  %call10 = call i32 @regulator_notifier_call_chain(ptr noundef %24, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.1 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9.1, align 4
  %call10.1 = call i32 @regulator_notifier_call_chain(ptr noundef %26, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.2 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx9.2, align 4
  %call10.2 = call i32 @regulator_notifier_call_chain(ptr noundef %28, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.3 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.3, align 4
  %call10.3 = call i32 @regulator_notifier_call_chain(ptr noundef %30, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.4 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx9.4, align 4
  %call10.4 = call i32 @regulator_notifier_call_chain(ptr noundef %32, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.5 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx9.5, align 4
  %call10.5 = call i32 @regulator_notifier_call_chain(ptr noundef %34, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.6 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx9.6, align 4
  %call10.6 = call i32 @regulator_notifier_call_chain(ptr noundef %36, i32 noundef 1, ptr noundef null) #6
  %arrayidx9.7 = getelementptr %struct.ltc3589, ptr %dev_id, i32 0, i32 4, i32 7
  %37 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.7, align 4
  %call10.7 = call i32 @regulator_notifier_call_chain(ptr noundef %38, i32 noundef 1, ptr noundef null) #6
  br label %if.end14

if.end14:                                         ; preds = %for.body7.preheader, %if.end.if.end14_crit_edge
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 4
  %call16 = call i32 @regmap_write(ptr noundef %40, i32 noundef 33, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqstat) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %r = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #6
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %r, align 4, !annotation !98
  %5 = getelementptr inbounds [2 x i32], ptr %r, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp sgt i32 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.30, ptr noundef nonnull %r, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ltc3589, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %call.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %min_uV = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 14
  %13 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end9.ltc3589_scale.exit_crit_edge, label %if.end.i

if.end9.ltc3589_scale.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3589_scale.exit

if.end.i:                                         ; preds = %if.end9
  %conv.i = zext i32 %14 to i64
  %conv1.i = zext i32 %10 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp172.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp172.i, label %if.then176.i, label %if.else182.i, !prof !99

if.then176.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i = trunc i64 %mul.i to i32
  %div180.i = udiv i32 %conv177.i, %12
  br label %if.end186.i

if.else182.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul.i) #10, !srcloc !100
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t296.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else182.i, %if.then176.i
  %tmp.0.off0.i = phi i32 [ %div180.i, %if.then176.i ], [ %extract.t296.i, %if.else182.i ]
  %add189.i = add i32 %tmp.0.off0.i, %14
  br label %ltc3589_scale.exit

ltc3589_scale.exit:                               ; preds = %if.end186.i, %if.end9.ltc3589_scale.exit_crit_edge
  %retval.0.i = phi i32 [ %add189.i, %if.end186.i ], [ 0, %if.end9.ltc3589_scale.exit_crit_edge ]
  %min_uV13 = getelementptr %struct.ltc3589, ptr %1, i32 0, i32 3, i32 %3, i32 14
  %16 = ptrtoint ptr %min_uV13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %min_uV13, align 4
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 15
  %17 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uV_step, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i35 = icmp eq i32 %18, 0
  br i1 %cmp.i35, label %ltc3589_scale.exit.ltc3589_scale.exit158_crit_edge, label %if.end.i40

ltc3589_scale.exit.ltc3589_scale.exit158_crit_edge: ; preds = %ltc3589_scale.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3589_scale.exit158

if.end.i40:                                       ; preds = %ltc3589_scale.exit
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r, align 4
  %conv.i36 = zext i32 %18 to i64
  %conv1.i37 = zext i32 %22 to i64
  %mul.i38 = mul nuw i64 %conv1.i37, %conv.i36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i38)
  %cmp172.i146 = icmp ult i64 %mul.i38, 4294967296
  br i1 %cmp172.i146, label %if.then176.i150, label %if.else182.i153, !prof !99

if.then176.i150:                                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i148 = trunc i64 %mul.i38 to i32
  %div180.i149 = udiv i32 %conv177.i148, %20
  br label %if.end186.i156

if.else182.i153:                                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %mul.i38) #10, !srcloc !100
  %asmresult1.i.i151 = extractvalue { i64, i64 } %23, 1
  %extract.t296.i152 = trunc i64 %asmresult1.i.i151 to i32
  br label %if.end186.i156

if.end186.i156:                                   ; preds = %if.else182.i153, %if.then176.i150
  %tmp.0.off0.i154 = phi i32 [ %div180.i149, %if.then176.i150 ], [ %extract.t296.i152, %if.else182.i153 ]
  %add189.i155 = add i32 %tmp.0.off0.i154, %18
  br label %ltc3589_scale.exit158

ltc3589_scale.exit158:                            ; preds = %if.end186.i156, %ltc3589_scale.exit.ltc3589_scale.exit158_crit_edge
  %retval.0.i157 = phi i32 [ %add189.i155, %if.end186.i156 ], [ 0, %ltc3589_scale.exit.ltc3589_scale.exit158_crit_edge ]
  %uV_step17 = getelementptr %struct.ltc3589, ptr %1, i32 0, i32 3, i32 %3, i32 15
  %24 = ptrtoint ptr %uV_step17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i157, ptr %uV_step17, align 4
  %fixed_uV = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 17
  %25 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fixed_uV, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i159 = icmp eq i32 %26, 0
  br i1 %cmp.i159, label %ltc3589_scale.exit158.ltc3589_scale.exit282_crit_edge, label %if.end.i164

ltc3589_scale.exit158.ltc3589_scale.exit282_crit_edge: ; preds = %ltc3589_scale.exit158
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc3589_scale.exit282

if.end.i164:                                      ; preds = %ltc3589_scale.exit158
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r, align 4
  %conv.i160 = zext i32 %26 to i64
  %conv1.i161 = zext i32 %30 to i64
  %mul.i162 = mul nuw i64 %conv1.i161, %conv.i160
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i162)
  %cmp172.i270 = icmp ult i64 %mul.i162, 4294967296
  br i1 %cmp172.i270, label %if.then176.i274, label %if.else182.i277, !prof !99

if.then176.i274:                                  ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #8
  %conv177.i272 = trunc i64 %mul.i162 to i32
  %div180.i273 = udiv i32 %conv177.i272, %28
  br label %if.end186.i280

if.else182.i277:                                  ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %mul.i162) #10, !srcloc !100
  %asmresult1.i.i275 = extractvalue { i64, i64 } %31, 1
  %extract.t296.i276 = trunc i64 %asmresult1.i.i275 to i32
  br label %if.end186.i280

if.end186.i280:                                   ; preds = %if.else182.i277, %if.then176.i274
  %tmp.0.off0.i278 = phi i32 [ %div180.i273, %if.then176.i274 ], [ %extract.t296.i276, %if.else182.i277 ]
  %add189.i279 = add i32 %tmp.0.off0.i278, %26
  br label %ltc3589_scale.exit282

ltc3589_scale.exit282:                            ; preds = %if.end186.i280, %ltc3589_scale.exit158.ltc3589_scale.exit282_crit_edge
  %retval.0.i281 = phi i32 [ %add189.i279, %if.end186.i280 ], [ 0, %ltc3589_scale.exit158.ltc3589_scale.exit282_crit_edge ]
  %fixed_uV21 = getelementptr %struct.ltc3589, ptr %1, i32 0, i32 3, i32 %3, i32 17
  %32 = ptrtoint ptr %fixed_uV21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i281, ptr %fixed_uV21, align 4
  br label %cleanup

cleanup:                                          ; preds = %ltc3589_scale.exit282, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %ltc3589_scale.exit282 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %5, 1
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef %7, i32 noundef %call1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3589_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %apply_bit = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %apply_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %apply_bit, align 4
  %shl = shl i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %cmp = icmp eq i32 %mode, 8
  %spec.select = select i1 %cmp, i32 %shl, i32 0
  %or = or i32 %shl, %3
  %or5 = or i32 %spec.select, %3
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef %or, i32 noundef %or5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc3589_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 2, label %entry.return_crit_edge
    i32 7, label %entry.return_crit_edge1
    i32 16, label %entry.return_crit_edge2
    i32 18, label %entry.return_crit_edge3
    i32 32, label %entry.return_crit_edge4
    i32 33, label %entry.return_crit_edge5
    i32 35, label %entry.return_crit_edge6
    i32 36, label %entry.return_crit_edge7
    i32 37, label %entry.return_crit_edge8
    i32 38, label %entry.return_crit_edge9
    i32 39, label %entry.return_crit_edge10
    i32 41, label %entry.return_crit_edge11
    i32 42, label %entry.return_crit_edge12
    i32 50, label %entry.return_crit_edge13
    i32 51, label %entry.return_crit_edge14
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc3589_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %reg, label %sw.epilog [
    i32 2, label %entry.return_crit_edge
    i32 7, label %entry.return_crit_edge1
    i32 16, label %entry.return_crit_edge2
    i32 18, label %entry.return_crit_edge3
    i32 19, label %entry.return_crit_edge4
    i32 32, label %entry.return_crit_edge5
    i32 35, label %entry.return_crit_edge6
    i32 36, label %entry.return_crit_edge7
    i32 37, label %entry.return_crit_edge8
    i32 38, label %entry.return_crit_edge9
    i32 39, label %entry.return_crit_edge10
    i32 41, label %entry.return_crit_edge11
    i32 42, label %entry.return_crit_edge12
    i32 50, label %entry.return_crit_edge13
    i32 51, label %entry.return_crit_edge14
  ]

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltc3589_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 31
  %switch.cast = trunc i32 %switch.tableidx to i31
  %switch.downshift = lshr i31 -1073610751, %switch.cast
  %1 = and i31 %switch.downshift, 1
  %2 = sext i31 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i31 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_ltc3589__288_482_ltc3589_driver_init6, !1, !"__initcall__kmod_ltc3589__288_482_ltc3589_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ltc3589.c", i32 482, i32 1}
!2 = !{ptr @__exitcall_ltc3589_driver_exit, !1, !"__exitcall_ltc3589_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/ltc3589.c", i32 484, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/ltc3589.c", i32 485, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/ltc3589.c", i32 486, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/ltc3589.c", i32 476, i32 11}
!12 = !{ptr @ltc3589_driver, !13, !"ltc3589_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/ltc3589.c", i32 474, i32 26}
!14 = !{ptr @ltc3589_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/ltc3589.c", i32 411, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/ltc3589.c", i32 414, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ltc3589_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ltc3589_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/ltc3589.c", i32 429, i32 4}
!27 = !{ptr @ltc3589_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ltc3589_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/ltc3589.c", i32 441, i32 4}
!31 = !{ptr @ltc3589_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ltc3589_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/ltc3589.c", i32 257, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/ltc3589.c", i32 258, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/ltc3589.c", i32 259, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/ltc3589.c", i32 260, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ltc3589.c", i32 261, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/ltc3589.c", i32 262, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/ltc3589.c", i32 263, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/ltc3589.c", i32 264, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ltc3589_regulators, !59, !"ltc3589_regulators", i1 false, i1 false}
!59 = !{!"../drivers/regulator/ltc3589.c", i32 256, i32 36}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/ltc3589.c", i32 191, i32 39}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/ltc3589.c", i32 193, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ltc3589_of_parse_cb._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ltc3589_of_parse_cb._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ltc3589_linear_regulator_ops, !68, !"ltc3589_linear_regulator_ops", i1 false, i1 false}
!68 = !{!"../drivers/regulator/ltc3589.c", i32 132, i32 35}
!69 = !{ptr @ltc3589_ramp_table, !70, !"ltc3589_ramp_table", i1 false, i1 false}
!70 = !{!"../drivers/regulator/ltc3589.c", i32 96, i32 27}
!71 = !{ptr @ltc3589_fixed_regulator_ops, !72, !"ltc3589_fixed_regulator_ops", i1 false, i1 false}
!72 = !{!"../drivers/regulator/ltc3589.c", i32 146, i32 35}
!73 = !{ptr @ltc3589_fixed_standby_regulator_ops, !74, !"ltc3589_fixed_standby_regulator_ops", i1 false, i1 false}
!74 = !{!"../drivers/regulator/ltc3589.c", i32 153, i32 35}
!75 = !{ptr @ltc3589_table_regulator_ops, !76, !"ltc3589_table_regulator_ops", i1 false, i1 false}
!76 = !{!"../drivers/regulator/ltc3589.c", i32 157, i32 35}
!77 = !{ptr @ltc3589_ldo4, !78, !"ltc3589_ldo4", i1 false, i1 false}
!78 = !{!"../drivers/regulator/ltc3589.c", i32 88, i32 18}
!79 = !{ptr @ltc3589_12_ldo4, !80, !"ltc3589_12_ldo4", i1 false, i1 false}
!80 = !{!"../drivers/regulator/ltc3589.c", i32 92, i32 18}
!81 = !{ptr @ltc3589_regmap_config, !82, !"ltc3589_regmap_config", i1 false, i1 false}
!82 = !{!"../drivers/regulator/ltc3589.c", i32 340, i32 35}
!83 = !{ptr @ltc3589_reg_defaults, !84, !"ltc3589_reg_defaults", i1 false, i1 false}
!84 = !{!"../drivers/regulator/ltc3589.c", i32 324, i32 33}
!85 = !{ptr @ltc3589_of_match, !86, !"ltc3589_of_match", i1 false, i1 false}
!86 = !{!"../drivers/regulator/ltc3589.c", i32 457, i32 49}
!87 = !{ptr @ltc3589_i2c_id, !88, !"ltc3589_i2c_id", i1 false, i1 false}
!88 = !{!"../drivers/regulator/ltc3589.c", i32 449, i32 35}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2149023401, i64 2149023681, i64 2149024015, i64 2149024349}
