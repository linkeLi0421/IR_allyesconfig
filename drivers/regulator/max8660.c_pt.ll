; ModuleID = '/llk/IR_all_yes/drivers/regulator/max8660.c_pt.bc'
source_filename = "../drivers/regulator/max8660.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.max8660_platform_data = type { i32, ptr, i8 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.max8660_subdev_data = type { i32, ptr, ptr }
%struct.max8660 = type { ptr, [11 x i8] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_max8660__288_517_max8660_init4 = internal global ptr @max8660_init, section ".initcall4.init", align 4
@max8660_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max8660_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8660_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max8660_exit = internal global ptr @max8660_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [61 x i8] c"max8660.description=MAXIM 8660/8661 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"max8660.author=Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"max8660.file=drivers/regulator/max8660\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"max8660.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8660\00", [24 x i8] zeroinitializer }, align 32
@max8660_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8660\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max8661\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8660_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8661\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max8660_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Too many regulators found!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8660_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/max8660.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8660_probe._entry_ptr = internal global ptr @max8660_probe._entry, section ".printk_index", align 4
@max8660_dcdc_ops = internal global { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8660_dcdc_set_voltage_sel, ptr null, ptr @max8660_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8660_dcdc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max8660_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Regulator not on this chip!\0A\00", [35 x i8] zeroinitializer }, align 32
@max8660_probe._entry_ptr.8 = internal global ptr @max8660_probe._entry.6, section ".printk_index", align 4
@max8660_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid regulator %s\0A\00", [42 x i8] zeroinitializer }, align 32
@max8660_probe._entry_ptr.11 = internal global ptr @max8660_probe._entry.9, section ".printk_index", align 4
@max8660_reg = internal constant { [5 x %struct.regulator_desc], [316 x i8] } { [5 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 44, i32 0, ptr @max8660_dcdc_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 44, i32 0, ptr @max8660_dcdc_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 13, i32 0, ptr @max8660_ldo5_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @max8660_ldo67_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @max8660_ldo67_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [316 x i8] zeroinitializer }, align 32
@max8660_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@max8660_probe._entry_ptr.14 = internal global ptr @max8660_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max8660_pdata_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing 'regulators' subnode in DT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8660_pdata_from_dt\00", [42 x i8] zeroinitializer }, align 32
@max8660_pdata_from_dt._entry_ptr = internal global ptr @max8660_pdata_from_dt._entry, section ".printk_index", align 4
@max8660_write.max8660_addresses = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\10\12 #$)*239\80", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V3(DCDC)\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"V4(DCDC)\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V5(LDO)\00", [24 x i8] zeroinitializer }, align 32
@max8660_ldo5_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8660_ldo5_set_voltage_sel, ptr null, ptr @max8660_ldo5_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V6(LDO)\00", [24 x i8] zeroinitializer }, align 32
@max8660_ldo67_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8660_ldo67_set_voltage_sel, ptr null, ptr @max8660_ldo67_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8660_ldo67_enable, ptr @max8660_ldo67_disable, ptr @max8660_ldo67_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V7(LDO)\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"max8660_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 505, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 508, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"max8660_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 498, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"max8660_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 311, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 400, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"max8660_dcdc_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 149, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 459, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 468, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"max8660_reg\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 252, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 488, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 327, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 329, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"max8660_addresses\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 75, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 254, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 264, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 274, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"max8660_ldo5_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 184, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 284, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"max8660_ldo67_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 242, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [31 x i8] c"../drivers/regulator/max8660.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 294, i32 11 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8660_exit, ptr @__initcall__kmod_max8660__288_517_max8660_init4, ptr @max8660_exit, ptr @max8660_pdata_from_dt._entry, ptr @max8660_pdata_from_dt._entry_ptr, ptr @max8660_probe._entry, ptr @max8660_probe._entry.12, ptr @max8660_probe._entry.6, ptr @max8660_probe._entry.9, ptr @max8660_probe._entry_ptr, ptr @max8660_probe._entry_ptr.11, ptr @max8660_probe._entry_ptr.14, ptr @max8660_probe._entry_ptr.8, ptr @max8660_driver, ptr @.str, ptr @max8660_id, ptr @max8660_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max8660_dcdc_ops, ptr @.str.7, ptr @.str.10, ptr @max8660_reg, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @max8660_write.max8660_addresses, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @max8660_ldo5_ops, ptr @.str.21, ptr @max8660_ldo67_ops, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_reg to i32), i32 1220, i32 1536, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_pdata_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_write.max8660_addresses to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_ldo5_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8660_ldo67_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max8660_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8660_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max8660_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_probe(ptr noundef %client, ptr nocapture noundef readonly %i2c_id) #2 align 64 {
entry:
  %rmatch.i = alloca [5 x %struct.of_regulator_match], align 4
  %pdata_of = alloca %struct.max8660_platform_data, align 4
  %config = alloca %struct.regulator_config, align 4
  %of_node = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pdata_of) #6
  %0 = call ptr @memset(ptr %pdata_of, i32 255, i32 12)
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %3 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %of_node) #6
  %of_node2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = call ptr @memset(ptr %of_node, i32 255, i32 20)
  %5 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node2, align 8
  %tobool.not = icmp ne ptr %6, null
  %tobool3.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @max8660_dt_ids, ptr noundef %dev1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.cleanup133_crit_edge, label %if.end

if.then.cleanup133_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %rmatch.i) #6
  %7 = getelementptr inbounds i8, ptr %rmatch.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 96)
  %9 = ptrtoint ptr %of_node2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node2, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull @.str.15) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end
  %11 = ptrtoint ptr %rmatch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.18, ptr %rmatch.i, align 4
  %arrayidx2.1.i = getelementptr inbounds [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.19, ptr %arrayidx2.1.i, align 4
  %arrayidx2.2.i = getelementptr inbounds [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.20, ptr %arrayidx2.2.i, align 4
  %arrayidx2.3.i = getelementptr inbounds [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.21, ptr %arrayidx2.3.i, align 4
  %arrayidx2.4.i = getelementptr inbounds [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.22, ptr %arrayidx2.4.i, align 4
  %call4.i = call i32 @of_regulator_match(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %rmatch.i, i32 noundef 5) #6
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 1
  br i1 %cmp5.i, label %max8660_pdata_from_dt.exit, label %if.end7.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %max8660_pdata_from_dt.exit.thread

if.end7.i:                                        ; preds = %for.body.preheader.i
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 12) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !75

devm_kcalloc.exit.thread.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %subdevs57.i = getelementptr inbounds %struct.max8660_platform_data, ptr %pdata_of, i32 0, i32 1
  %18 = ptrtoint ptr %subdevs57.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %subdevs57.i, align 4
  br label %max8660_pdata_from_dt.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end7.i
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %19, i32 noundef 3520) #6
  %subdevs.i = getelementptr inbounds %struct.max8660_platform_data, ptr %pdata_of, i32 0, i32 1
  %20 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i.i, ptr %subdevs.i, align 4
  %tobool10.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool10.not.i, label %devm_kcalloc.exit.i.max8660_pdata_from_dt.exit.thread_crit_edge, label %for.body16.preheader.i

devm_kcalloc.exit.i.max8660_pdata_from_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8660_pdata_from_dt.exit.thread

for.body16.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  %21 = ptrtoint ptr %pdata_of to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call4.i, ptr %pdata_of, align 4
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.preheader.i
  %sub.062.i = phi ptr [ %incdec.ptr.i, %for.body16.i.for.body16.i_crit_edge ], [ %call5.i.i.i, %for.body16.preheader.i ]
  %i.161.i = phi i32 [ %inc25.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.body16.preheader.i ]
  %22 = ptrtoint ptr %sub.062.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.161.i, ptr %sub.062.i, align 4
  %arrayidx17.i = getelementptr [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 %i.161.i
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx17.i, align 4
  %name19.i = getelementptr inbounds %struct.max8660_subdev_data, ptr %sub.062.i, i32 0, i32 1
  %25 = ptrtoint ptr %name19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %name19.i, align 4
  %init_data.i = getelementptr [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 %i.161.i, i32 2
  %26 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_data.i, align 4
  %platform_data.i200 = getelementptr inbounds %struct.max8660_subdev_data, ptr %sub.062.i, i32 0, i32 2
  %28 = ptrtoint ptr %platform_data.i200 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %platform_data.i200, align 4
  %of_node22.i = getelementptr [5 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 %i.161.i, i32 3
  %29 = ptrtoint ptr %of_node22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node22.i, align 4
  %arrayidx23.i = getelementptr ptr, ptr %of_node, i32 %i.161.i
  %31 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %arrayidx23.i, align 4
  %incdec.ptr.i = getelementptr %struct.max8660_subdev_data, ptr %sub.062.i, i32 1
  %inc25.i = add nuw nsw i32 %i.161.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, %call4.i
  br i1 %exitcond.not.i, label %max8660_pdata_from_dt.exit.thread204, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

max8660_pdata_from_dt.exit.thread204:             ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %rmatch.i) #6
  br label %cleanup

max8660_pdata_from_dt.exit.thread:                ; preds = %devm_kcalloc.exit.i.max8660_pdata_from_dt.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.max8660_pdata_from_dt.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %rmatch.i) #6
  br label %cleanup133

max8660_pdata_from_dt.exit:                       ; preds = %for.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %rmatch.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %max8660_pdata_from_dt.exit.cleanup133_crit_edge, label %max8660_pdata_from_dt.exit.cleanup_crit_edge

max8660_pdata_from_dt.exit.cleanup_crit_edge:     ; preds = %max8660_pdata_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max8660_pdata_from_dt.exit.cleanup133_crit_edge:  ; preds = %max8660_pdata_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

cleanup:                                          ; preds = %max8660_pdata_from_dt.exit.cleanup_crit_edge, %max8660_pdata_from_dt.exit.thread204
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %i2c_id, i32 0, i32 1
  %35 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_data, align 4
  %37 = call ptr @memset(ptr %of_node, i32 0, i32 20)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %cleanup
  %pdata.1 = phi ptr [ %2, %if.else ], [ %pdata_of, %cleanup ]
  %ret.1 = phi i32 [ -22, %if.else ], [ 0, %cleanup ]
  %type.1 = phi i32 [ %36, %if.else ], [ %34, %cleanup ]
  %38 = ptrtoint ptr %pdata.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pdata.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp13 = icmp sgt i32 %39, 5
  br i1 %cmp13, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup133

if.end15:                                         ; preds = %if.end12
  %call.i201 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i201, null
  br i1 %tobool17.not, label %if.end15.cleanup133_crit_edge, label %if.end19

if.end15.cleanup133_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup133

if.end19:                                         ; preds = %if.end15
  %40 = ptrtoint ptr %call.i201 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %client, ptr %call.i201, align 4
  %en34_is_high = getelementptr inbounds %struct.max8660_platform_data, ptr %pdata.1, i32 0, i32 2
  %41 = ptrtoint ptr %en34_is_high to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %en34_is_high, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %shadow_regs = getelementptr inbounds %struct.max8660, ptr %call.i201, i32 0, i32 1
  %42 = ptrtoint ptr %shadow_regs to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %shadow_regs, align 4
  br label %if.end24

if.else23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @max8660_dcdc_enable, ptr getelementptr inbounds (%struct.regulator_ops, ptr @max8660_dcdc_ops, i32 0, i32 14), align 4
  store ptr @max8660_dcdc_disable, ptr getelementptr inbounds (%struct.regulator_ops, ptr @max8660_dcdc_ops, i32 0, i32 15), align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  %shadow_regs25 = getelementptr inbounds %struct.max8660, ptr %call.i201, i32 0, i32 1
  %arrayidx32 = getelementptr %struct.max8660, ptr %call.i201, i32 0, i32 1, i32 3
  %arrayidx34 = getelementptr %struct.max8660, ptr %call.i201, i32 0, i32 1, i32 8
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 454761243, ptr %arrayidx32, align 1
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.max8660, ptr %call.i201, i32 0, i32 1, i32 7
  %45 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %arrayidx36, align 1
  %46 = ptrtoint ptr %pdata.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pdata.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp38217 = icmp sgt i32 %47, 0
  br i1 %cmp38217, label %for.body.lr.ph, label %if.end24.for.end132_crit_edge

if.end24.for.end132_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end132

for.body.lr.ph:                                   ; preds = %if.end24
  %subdevs = getelementptr inbounds %struct.max8660_platform_data, ptr %pdata.1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.1)
  %cmp79 = icmp eq i32 %type.1, 1
  %arrayidx89 = getelementptr %struct.max8660, ptr %call.i201, i32 0, i32 1, i32 1
  br label %for.body

for.cond99.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp101219 = icmp sgt i32 %71, 0
  br i1 %cmp101219, label %for.body103.lr.ph, label %for.cond99.preheader.for.end132_crit_edge

for.cond99.preheader.for.end132_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end132

for.body103.lr.ph:                                ; preds = %for.cond99.preheader
  %subdevs104 = getelementptr inbounds %struct.max8660_platform_data, ptr %pdata.1, i32 0, i32 1
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %of_node112 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %driver_data113 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body103

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %48 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %subdevs, align 4
  %platform_data = getelementptr %struct.max8660_subdev_data, ptr %49, i32 %i.0218, i32 2
  %50 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %platform_data, align 4
  %tobool40.not = icmp eq ptr %51, null
  br i1 %tobool40.not, label %for.body.if.end50_crit_edge, label %if.else42

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.else42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %boot_on46 = getelementptr inbounds %struct.regulator_init_data, ptr %51, i32 0, i32 1, i32 28
  %52 = ptrtoint ptr %boot_on46 to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load47 = load i16, ptr %boot_on46, align 4
  %bf.lshr48 = lshr i16 %bf.load47, 14
  %bf.clear = and i16 %bf.lshr48, 1
  %bf.cast49 = zext i16 %bf.clear to i32
  br label %if.end50

if.end50:                                         ; preds = %if.else42, %for.body.if.end50_crit_edge
  %boot_on.0 = phi i32 [ %bf.cast49, %if.else42 ], [ 0, %for.body.if.end50_crit_edge ]
  %arrayidx52 = getelementptr %struct.max8660_subdev_data, ptr %49, i32 %i.0218
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx52, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %do.end96 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb60
    i32 2, label %if.end50.for.inc_crit_edge
    i32 3, label %sw.bb69
    i32 4, label %sw.bb78
  ]

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_on.0)
  %tobool54.not = icmp eq i32 %boot_on.0, 0
  br i1 %tobool54.not, label %sw.bb.for.inc_crit_edge, label %if.then55

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then55:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %shadow_regs25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %shadow_regs25, align 4
  %58 = or i8 %57, 1
  store i8 %58, ptr %shadow_regs25, align 4
  br label %for.inc

sw.bb60:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_on.0)
  %tobool61.not = icmp eq i32 %boot_on.0, 0
  br i1 %tobool61.not, label %sw.bb60.for.inc_crit_edge, label %if.then62

sw.bb60.for.inc_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then62:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %shadow_regs25 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %shadow_regs25, align 4
  %61 = or i8 %60, 4
  store i8 %61, ptr %shadow_regs25, align 4
  br label %for.inc

sw.bb69:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_on.0)
  %tobool70.not = icmp eq i32 %boot_on.0, 0
  br i1 %tobool70.not, label %sw.bb69.for.inc_crit_edge, label %if.then71

sw.bb69.for.inc_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then71:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx89, align 1
  %64 = or i8 %63, 2
  store i8 %64, ptr %arrayidx89, align 1
  br label %for.inc

sw.bb78:                                          ; preds = %if.end50
  br i1 %cmp79, label %do.end84, label %if.end85

do.end84:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup133

if.end85:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_on.0)
  %tobool86.not = icmp eq i32 %boot_on.0, 0
  br i1 %tobool86.not, label %if.end85.for.inc_crit_edge, label %if.then87

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx89, align 1
  %67 = or i8 %66, 4
  store i8 %67, ptr %arrayidx89, align 1
  br label %for.inc

do.end96:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr %struct.max8660_subdev_data, ptr %49, i32 %i.0218, i32 1
  %68 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %69) #9
  br label %cleanup133

for.inc:                                          ; preds = %if.then87, %if.end85.for.inc_crit_edge, %if.then71, %sw.bb69.for.inc_crit_edge, %if.then62, %sw.bb60.for.inc_crit_edge, %if.then55, %sw.bb.for.inc_crit_edge, %if.end50.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0218, 1
  %70 = ptrtoint ptr %pdata.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pdata.1, align 4
  %cmp38 = icmp slt i32 %inc, %71
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.cond99.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond99:                                       ; preds = %for.body103
  %inc131 = add nuw nsw i32 %i.1220, 1
  %72 = ptrtoint ptr %pdata.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pdata.1, align 4
  %cmp101 = icmp slt i32 %inc131, %73
  br i1 %cmp101, label %for.cond99.for.body103_crit_edge, label %for.cond99.for.end132_crit_edge

for.cond99.for.end132_crit_edge:                  ; preds = %for.cond99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end132

for.cond99.for.body103_crit_edge:                 ; preds = %for.cond99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body103

for.body103:                                      ; preds = %for.cond99.for.body103_crit_edge, %for.body103.lr.ph
  %i.1220 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc131, %for.cond99.for.body103_crit_edge ]
  %74 = ptrtoint ptr %subdevs104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %subdevs104, align 4
  %arrayidx105 = getelementptr %struct.max8660_subdev_data, ptr %75, i32 %i.1220
  %76 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx105, align 4
  %78 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev1, ptr %config, align 4
  %platform_data110 = getelementptr %struct.max8660_subdev_data, ptr %75, i32 %i.1220, i32 2
  %79 = ptrtoint ptr %platform_data110 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %platform_data110, align 4
  %81 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %init_data, align 4
  %arrayidx111 = getelementptr [5 x ptr], ptr %of_node, i32 0, i32 %i.1220
  %82 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx111, align 4
  %84 = ptrtoint ptr %of_node112 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %of_node112, align 4
  %85 = ptrtoint ptr %driver_data113 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i201, ptr %driver_data113, align 4
  %arrayidx115 = getelementptr [5 x %struct.regulator_desc], ptr @max8660_reg, i32 0, i32 %77
  %call116 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %arrayidx115, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup127.thread, label %for.cond99

cleanup127.thread:                                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx115, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %87) #9
  %88 = ptrtoint ptr %call116 to i32
  br label %cleanup133

for.end132:                                       ; preds = %for.cond99.for.end132_crit_edge, %for.cond99.preheader.for.end132_crit_edge, %if.end24.for.end132_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i201, ptr %driver_data.i.i, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %for.end132, %cleanup127.thread, %do.end96, %do.end84, %if.end15.cleanup133_crit_edge, %do.end, %max8660_pdata_from_dt.exit.cleanup133_crit_edge, %max8660_pdata_from_dt.exit.thread, %if.then.cleanup133_crit_edge
  %retval.4 = phi i32 [ -22, %do.end ], [ %ret.1, %do.end96 ], [ -22, %do.end84 ], [ 0, %for.end132 ], [ -12, %if.end15.cleanup133_crit_edge ], [ %88, %cleanup127.thread ], [ %retval.0.i.ph, %max8660_pdata_from_dt.exit.thread ], [ %call4.i, %max8660_pdata_from_dt.exit.cleanup133_crit_edge ], [ -19, %if.then.cleanup133_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %of_node) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pdata_of) #6
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_dcdc_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %conv = select i1 %cmp, i8 1, i8 4
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %or17.i = or i8 %conv, %1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %or17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.max8660_write.exit_crit_edge

entry.max8660_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8660_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or17.i, ptr %arrayidx.i, align 1
  br label %max8660_write.exit

max8660_write.exit:                               ; preds = %if.then.i, %entry.max8660_write.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_dcdc_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %conv = select i1 %cmp, i8 -2, i8 -5
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %and16.i = and i8 %conv, %1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %and16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.max8660_write.exit_crit_edge

entry.max8660_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8660_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and16.i, ptr %arrayidx.i, align 1
  br label %max8660_write.exit

max8660_write.exit:                               ; preds = %if.then.i, %entry.max8660_write.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_dcdc_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %conv2 = trunc i32 %selector to i8
  %idxprom.i = select i1 %cmp, i32 4, i32 6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx5.i = getelementptr [11 x i8], ptr @max8660_write.max8660_addresses, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %arrayidx.i, align 1
  %call4 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  %conv8 = select i1 %cmp5, i8 3, i8 48
  %arrayidx.i17 = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i17, align 1
  %or17.i = or i8 %conv8, %6
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 32, i8 noundef zeroext %or17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i19 = icmp eq i32 %call.i18, 0
  br i1 %cmp.i19, label %if.then.i20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i20:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or17.i, ptr %arrayidx.i17, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i18, %if.end.cleanup_crit_edge ], [ 0, %if.then.i20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_dcdc_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %idxprom = select i1 %cmp, i32 4, i32 6
  %arrayidx = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_dcdc_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %shadow_regs = getelementptr inbounds %struct.max8660, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %shadow_regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shadow_regs, align 4
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %conv2 = zext i8 %1 to i32
  %conv3 = select i1 %cmp, i32 1, i32 4
  %and = and i32 %conv3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo5_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %conv = trunc i32 %selector to i8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 51, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx.i, align 1
  %arrayidx.i6 = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i6, align 1
  %or17.i = or i8 %4, -64
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 32, i8 noundef zeroext %or17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.i8 = icmp eq i32 %call.i7, 0
  br i1 %cmp.i8, label %if.then.i9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i9:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or17.i, ptr %arrayidx.i6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i7, %if.end.cleanup_crit_edge ], [ 0, %if.then.i9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo5_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %arrayidx = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo67_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %conv = trunc i32 %selector to i8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %and16.i = and i8 %1, -16
  %or17.i = or i8 %and16.i, %conv
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 57, i8 noundef zeroext %or17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or17.i, ptr %arrayidx.i, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv3 = shl i8 %conv, 4
  %arrayidx.i8 = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 9
  %5 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i8, align 1
  %and16.i9 = and i8 %6, 15
  %or17.i10 = or i8 %and16.i9, %conv3
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 57, i8 noundef zeroext %or17.i10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp eq i32 %call.i11, 0
  br i1 %cmp.i12, label %if.then.i13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i13:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or17.i10, ptr %arrayidx.i8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i13, %if.else.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i11, %if.else.cleanup_crit_edge ], [ 0, %if.then.i13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo67_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %arrayidx = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv3 = select i1 %cmp, i8 0, i8 4
  %shr = lshr i8 %1, %conv3
  %and = and i8 %shr, 15
  %conv5 = zext i8 %and to i32
  ret i32 %conv5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo67_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %conv = select i1 %cmp, i8 2, i8 4
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %or17.i = or i8 %conv, %1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext %or17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.max8660_write.exit_crit_edge

entry.max8660_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8660_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or17.i, ptr %arrayidx.i, align 1
  br label %max8660_write.exit

max8660_write.exit:                               ; preds = %if.then.i, %entry.max8660_write.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo67_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %conv = select i1 %cmp, i8 -3, i8 -5
  %arrayidx.i = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %and16.i = and i8 %conv, %1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext %and16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.max8660_write.exit_crit_edge

entry.max8660_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8660_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and16.i, ptr %arrayidx.i, align 1
  br label %max8660_write.exit

max8660_write.exit:                               ; preds = %if.then.i, %entry.max8660_write.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8660_ldo67_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %arrayidx = getelementptr %struct.max8660, ptr %call, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  %conv2 = zext i8 %1 to i32
  %conv3 = select i1 %cmp, i32 2, i32 4
  %and = and i32 %conv3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_max8660__288_517_max8660_init4, !1, !"__initcall__kmod_max8660__288_517_max8660_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max8660.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_max8660_exit, !3, !"__exitcall_max8660_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max8660.c", i32 523, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max8660.c", i32 526, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max8660.c", i32 527, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max8660.c", i32 528, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max8660.c", i32 508, i32 11}
!13 = !{ptr @max8660_driver, !14, !"max8660_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max8660.c", i32 505, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max8660.c", i32 400, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max8660_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max8660_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max8660.c", i32 459, i32 5}
!25 = !{ptr @max8660_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @max8660_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max8660.c", i32 468, i32 4}
!29 = !{ptr @max8660_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max8660_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max8660.c", i32 488, i32 4}
!33 = !{ptr @max8660_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max8660_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @max8660_dt_ids, !36, !"max8660_dt_ids", i1 false, i1 false}
!36 = !{!"../drivers/regulator/max8660.c", i32 311, i32 34}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/max8660.c", i32 327, i32 42}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/max8660.c", i32 329, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max8660_pdata_from_dt._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max8660_pdata_from_dt._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @max8660_write.max8660_addresses, !45, !"max8660_addresses", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max8660.c", i32 75, i32 18}
!46 = !{ptr @max8660_dcdc_ops, !47, !"max8660_dcdc_ops", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max8660.c", i32 149, i32 29}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max8660.c", i32 254, i32 11}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max8660.c", i32 264, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max8660.c", i32 274, i32 11}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max8660.c", i32 284, i32 11}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max8660.c", i32 294, i32 11}
!58 = !{ptr @max8660_reg, !59, !"max8660_reg", i1 false, i1 false}
!59 = !{!"../drivers/regulator/max8660.c", i32 252, i32 36}
!60 = !{ptr @max8660_ldo5_ops, !61, !"max8660_ldo5_ops", i1 false, i1 false}
!61 = !{!"../drivers/regulator/max8660.c", i32 184, i32 35}
!62 = !{ptr @max8660_ldo67_ops, !63, !"max8660_ldo67_ops", i1 false, i1 false}
!63 = !{!"../drivers/regulator/max8660.c", i32 242, i32 35}
!64 = !{ptr @max8660_id, !65, !"max8660_id", i1 false, i1 false}
!65 = !{!"../drivers/regulator/max8660.c", i32 498, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 1, i32 2000}
