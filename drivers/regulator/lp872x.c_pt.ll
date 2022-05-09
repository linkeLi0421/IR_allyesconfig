; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp872x.c_pt.bc'
source_filename = "../drivers/regulator/lp872x.c"
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
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.lp872x_platform_data = type { i8, i8, [9 x %struct.lp872x_regulator_data], ptr, ptr }
%struct.lp872x_regulator_data = type { i32, ptr }
%struct.lp872x_dvs = type { ptr, i32, i32 }
%struct.lp872x = type { ptr, ptr, i32, ptr, i32, i32 }

@__initcall__kmod_lp872x__288_953_lp872x_driver_init6 = internal global ptr @lp872x_driver_init, section ".initcall6.init", align 4
@lp872x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp872x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp872x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp872x_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp872x_driver_exit = internal global ptr @lp872x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [73 x i8] c"lp872x.description=TI/National Semiconductor LP872x PMU Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [23 x i8] c"lp872x.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"lp872x.file=drivers/regulator/lp872x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"lp872x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp872x\00", [25 x i8] zeroinitializer }, align 32
@lp872x_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lp872x_ids = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8720\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp8725\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lp872x_probe.lp872x_num_regulators = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 9], [24 x i8] zeroinitializer }, align 32
@lp872x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp872x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lp872x:907:(&lp872x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@lp872x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regmap init i2c err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp872x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/lp872x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp872x_probe._entry_ptr = internal global ptr @lp872x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,general-config\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,update-config\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,dvs-vsel\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,dvs-state\00", [19 x i8] zeroinitializer }, align 32
@lp8720_matches = internal global { [6 x %struct.of_regulator_match], [40 x i8] } { [6 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.11, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }], [40 x i8] zeroinitializer }, align 32
@lp8725_matches = internal global { [9 x %struct.of_regulator_match], [44 x i8] } { [9 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.11, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr inttoptr (i32 13 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr inttoptr (i32 14 to ptr), ptr null, ptr null, ptr null }], [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"buck\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lilo1\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lilo2\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lp872x_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio request err: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp872x_hw_enable\00", [47 x i8] zeroinitializer }, align 32
@lp872x_hw_enable._entry_ptr = internal global ptr @lp872x_hw_enable._entry, section ".printk_index", align 4
@__const.lp872x_init_dvs.mask = private unnamed_addr constant [2 x i8] c"\04\0C", align 1
@__const.lp872x_init_dvs.default_dvs_mode = private unnamed_addr constant [2 x i8] c"\00\04", align 1
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti,dvs\00", [25 x i8] zeroinitializer }, align 32
@lp872x_init_dvs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.4, i32 692, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp872x_init_dvs\00", [16 x i8] zeroinitializer }, align 32
@lp872x_init_dvs._entry_ptr = internal global ptr @lp872x_init_dvs._entry, section ".printk_index", align 4
@lp8720_regulator_desc = internal constant { [6 x %struct.regulator_desc], [360 x i8] } { [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 1, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 2, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 3, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8720_ldo4_vtbl, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @lp8720_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8720_buck_vtbl, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [360 x i8] zeroinitializer }, align 32
@lp8725_regulator_desc = internal constant { [9 x %struct.regulator_desc], [556 x i8] } { [9 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 1, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr null, ptr null, i32 7, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 2, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 3, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 10, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_lilo_vtbl, ptr null, i32 0, i32 0, i32 6, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr null, ptr null, i32 12, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_lilo_vtbl, ptr null, i32 0, i32 0, i32 7, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 13, i8 0, i32 32, i32 4, ptr @lp8725_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_buck_vtbl, ptr @lp8725_buck_uA, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 192, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr null, ptr null, i32 14, i8 0, i32 32, i32 4, ptr @lp8725_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_buck_vtbl, ptr @lp8725_buck_uA, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 192, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [556 x i8] zeroinitializer }, align 32
@lp872x_regulator_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 780, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator register err\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lp872x_regulator_register\00", [38 x i8] zeroinitializer }, align 32
@lp872x_regulator_register._entry_ptr = internal global ptr @lp872x_regulator_register._entry, section ".printk_index", align 4
@lp872x_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@lp872x_ldo_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000, i32 3000000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@lp8720_ldo4_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 800000, i32 850000, i32 900000, i32 1000000, i32 1100000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000], [32 x i8] zeroinitializer }, align 32
@lp8720_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp872x_buck_set_voltage_sel, ptr null, ptr @lp872x_buck_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp872x_buck_set_mode, ptr @lp872x_buck_get_mode, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@lp8720_buck_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000], [32 x i8] zeroinitializer }, align 32
@__const.lp872x_get_timestep_usec.lp8725_time_usec = private unnamed_addr constant [4 x i32] [i32 32, i32 64, i32 128, i32 256], align 4
@lp872x_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read 0x%.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp872x_read_byte\00", [47 x i8] zeroinitializer }, align 32
@lp872x_read_byte._entry_ptr = internal global ptr @lp872x_read_byte._entry, section ".printk_index", align 4
@lp8725_lilo_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2850000, i32 2900000, i32 3000000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@lp8725_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp872x_buck_set_voltage_sel, ptr null, ptr @lp872x_buck_get_voltage_sel, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp872x_buck_set_mode, ptr @lp872x_buck_get_mode, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@lp8725_buck_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2850000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@lp8725_buck_uA = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 460000, i32 780000, i32 1050000, i32 1370000], [16 x i8] zeroinitializer }, align 32
@switch.table.lp872x_regulator_enable_time = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 257, i32 258, i32 259, i32 260, i32 261, i32 262, i32 263, i32 264, i32 10], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 13, i64 14]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 13, i64 14]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 13, i64 14]
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"lp872x_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 944, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 946, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"lp872x_dt_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 930, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"lp872x_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 937, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"lp872x_num_regulators\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 887, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"lp872x_regmap_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 788, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 907, i32 15 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 910, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 834, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 835, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 842, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 843, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"lp8720_matches\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 798, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"lp8725_matches\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 807, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 799, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 800, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 801, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 802, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 803, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 804, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 813, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 814, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 815, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 816, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 714, i32 60 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 716, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 689, i32 47 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 692, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"lp8720_regulator_desc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 457, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant [22 x i8] c"lp8725_regulator_desc\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 542, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 780, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"lp872x_ldo_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 418, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"lp872x_ldo_vtbl\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 110, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"lp8720_ldo4_vtbl\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 118, i32 27 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"lp8720_buck_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 429, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"lp8720_buck_vtbl\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 135, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 162, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"lp8725_lilo_vtbl\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 126, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant [16 x i8] c"lp8725_buck_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 442, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"lp8725_buck_vtbl\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 143, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"lp8725_buck_uA\00", align 1
@___asan_gen_.195 = private constant [30 x i8] c"../drivers/regulator/lp872x.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 151, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant [42 x i8] c"switch.table.lp872x_regulator_enable_time\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp872x_driver_exit, ptr @__initcall__kmod_lp872x__288_953_lp872x_driver_init6, ptr @lp872x_driver_exit, ptr @lp872x_hw_enable._entry, ptr @lp872x_hw_enable._entry_ptr, ptr @lp872x_init_dvs._entry, ptr @lp872x_init_dvs._entry_ptr, ptr @lp872x_probe._entry, ptr @lp872x_probe._entry_ptr, ptr @lp872x_read_byte._entry, ptr @lp872x_read_byte._entry_ptr, ptr @lp872x_regulator_register._entry, ptr @lp872x_regulator_register._entry_ptr, ptr @lp872x_driver, ptr @.str, ptr @lp872x_dt_ids, ptr @lp872x_ids, ptr @lp872x_probe.lp872x_num_regulators, ptr @lp872x_probe._key, ptr @lp872x_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @lp8720_matches, ptr @lp8725_matches, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @lp8720_regulator_desc, ptr @lp8725_regulator_desc, ptr @.str.26, ptr @.str.27, ptr @lp872x_ldo_ops, ptr @lp872x_ldo_vtbl, ptr @lp8720_ldo4_vtbl, ptr @lp8720_buck_ops, ptr @lp8720_buck_vtbl, ptr @.str.28, ptr @.str.29, ptr @lp8725_lilo_vtbl, ptr @lp8725_buck_ops, ptr @lp8725_buck_vtbl, ptr @lp8725_buck_uA, ptr @switch.table.lp872x_regulator_enable_time], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_probe.lp872x_num_regulators to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8720_matches to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_matches to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_init_dvs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8720_regulator_desc to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_regulator_desc to i32), i32 2196, i32 2752, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_regulator_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_ldo_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8720_ldo4_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8720_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8720_buck_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp872x_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_lilo_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_buck_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8725_buck_uA to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp872x_regulator_enable_time to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp872x_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp872x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lp872x_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_probe(ptr noundef %cl, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %cfg.i = alloca %struct.regulator_config, align 4
  %dvs_state.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dvs_state.i) #5
  %6 = ptrtoint ptr %dvs_state.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %dvs_state.i, align 1, !annotation !119
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.lp872x_populate_pdata_from_dt.exit.thread_crit_edge, label %if.end.i

if.then.lp872x_populate_pdata_from_dt.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit.thread

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #5
  %call3.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %update_config.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %update_config.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %update_config.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %call.i66.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %dvs.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %dvs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i66.i, ptr %dvs.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i66.i, null
  br i1 %tobool9.not.i, label %if.end6.i.lp872x_populate_pdata_from_dt.exit.thread_crit_edge, label %if.end12.i

if.end6.i.lp872x_populate_pdata_from_dt.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit.thread

if.end12.i:                                       ; preds = %if.end6.i
  %vsel.i = getelementptr inbounds %struct.lp872x_dvs, ptr %call.i66.i, i32 0, i32 1
  %call.i.i67.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %vsel.i, i32 noundef 1, i32 noundef 0) #5
  %call.i.i68.i = call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull %dvs_state.i, i32 noundef 1, i32 noundef 0) #5
  %9 = ptrtoint ptr %dvs_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dvs_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not.i = icmp eq i8 %10, 0
  %cond.i = select i1 %tobool16.not.i, i32 3, i32 7
  %11 = ptrtoint ptr %dvs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvs.i, align 4
  %init_state.i = getelementptr inbounds %struct.lp872x_dvs, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %init_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %init_state.i, align 4
  %call.i69.i = call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #5
  %cmp.not5.i.i = icmp eq ptr %call.i69.i, null
  br i1 %cmp.not5.i.i, label %if.end12.i.lp872x_populate_pdata_from_dt.exit_crit_edge, label %if.end12.i.for.body.i.i_crit_edge

if.end12.i.for.body.i.i_crit_edge:                ; preds = %if.end12.i
  br label %for.body.i.i

if.end12.i.lp872x_populate_pdata_from_dt.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end12.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end12.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i69.i, %if.end12.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.06.i.i) #5
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp.i = icmp eq i32 %inc.i.i, 0
  br i1 %cmp.i, label %of_get_child_count.exit.i.lp872x_populate_pdata_from_dt.exit_crit_edge, label %if.end21.i

of_get_child_count.exit.i.lp872x_populate_pdata_from_dt.exit_crit_edge: ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit

if.end21.i:                                       ; preds = %of_get_child_count.exit.i
  %14 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end21.i.lp872x_populate_pdata_from_dt.exit_crit_edge [
    i32 0, label %if.end21.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb22.i
  ]

if.end21.i.sw.epilog.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end21.i.lp872x_populate_pdata_from_dt.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit

sw.bb22.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb22.i, %if.end21.i.sw.epilog.i_crit_edge
  %match.0.i = phi ptr [ @lp8725_matches, %sw.bb22.i ], [ @lp8720_matches, %if.end21.i.sw.epilog.i_crit_edge ]
  %num_matches.0.i = phi i32 [ 9, %sw.bb22.i ], [ 6, %if.end21.i.sw.epilog.i_crit_edge ]
  %call23.i = call i32 @of_regulator_match(ptr noundef %dev, ptr noundef %5, ptr noundef nonnull %match.0.i, i32 noundef %num_matches.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 1
  br i1 %cmp24.i, label %sw.epilog.i.lp872x_populate_pdata_from_dt.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.lp872x_populate_pdata_from_dt.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %i.072.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i_crit_edge ]
  %driver_data.i = getelementptr %struct.of_regulator_match, ptr %match.0.i, i32 %i.072.i, i32 1
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %arrayidx30.i = getelementptr %struct.lp872x_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %i.072.i
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx30.i, align 4
  %init_data.i = getelementptr %struct.of_regulator_match, ptr %match.0.i, i32 %i.072.i, i32 2
  %19 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_data.i, align 4
  %init_data34.i = getelementptr %struct.lp872x_platform_data, ptr %call.i.i, i32 0, i32 2, i32 %i.072.i, i32 1
  %21 = ptrtoint ptr %init_data34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %init_data34.i, align 4
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_matches.0.i
  br i1 %exitcond.not.i, label %for.body.i.lp872x_populate_pdata_from_dt.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.lp872x_populate_pdata_from_dt.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_populate_pdata_from_dt.exit

lp872x_populate_pdata_from_dt.exit.thread:        ; preds = %if.end6.i.lp872x_populate_pdata_from_dt.exit.thread_crit_edge, %if.then.lp872x_populate_pdata_from_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dvs_state.i) #5
  br label %if.then3

lp872x_populate_pdata_from_dt.exit:               ; preds = %for.body.i.lp872x_populate_pdata_from_dt.exit_crit_edge, %sw.epilog.i.lp872x_populate_pdata_from_dt.exit_crit_edge, %if.end21.i.lp872x_populate_pdata_from_dt.exit_crit_edge, %of_get_child_count.exit.i.lp872x_populate_pdata_from_dt.exit_crit_edge, %if.end12.i.lp872x_populate_pdata_from_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dvs_state.i) #5
  %cmp.i64 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %lp872x_populate_pdata_from_dt.exit.if.then3_crit_edge, label %lp872x_populate_pdata_from_dt.exit.if.end7_crit_edge

lp872x_populate_pdata_from_dt.exit.if.end7_crit_edge: ; preds = %lp872x_populate_pdata_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

lp872x_populate_pdata_from_dt.exit.if.then3_crit_edge: ; preds = %lp872x_populate_pdata_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %lp872x_populate_pdata_from_dt.exit.if.then3_crit_edge, %lp872x_populate_pdata_from_dt.exit.thread
  %retval.0.i94 = phi ptr [ inttoptr (i32 -12 to ptr), %lp872x_populate_pdata_from_dt.exit.thread ], [ %call.i.i, %lp872x_populate_pdata_from_dt.exit.if.then3_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i94 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %lp872x_populate_pdata_from_dt.exit.if.end7_crit_edge
  %pdata.0 = phi ptr [ %call.i.i, %lp872x_populate_pdata_from_dt.exit.if.end7_crit_edge ], [ %24, %if.else ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %driver_data13 = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %25 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data13, align 4
  %arrayidx = getelementptr [2 x i32], ptr @lp872x_probe.lp872x_num_regulators, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %num_regulators = getelementptr inbounds %struct.lp872x, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %num_regulators to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %num_regulators, align 4
  %call14 = call ptr @__devm_regmap_init_i2c(ptr noundef %cl, ptr noundef nonnull @lp872x_regmap_config, ptr noundef nonnull @lp872x_probe._key, ptr noundef nonnull @.str.1) #5
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i65 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %31) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %dev23 = getelementptr inbounds %struct.lp872x, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %dev23, align 4
  %pdata24 = getelementptr inbounds %struct.lp872x, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %pdata24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pdata.0, ptr %pdata24, align 4
  %34 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %driver_data13, align 4
  %chipid = getelementptr inbounds %struct.lp872x, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %chipid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %chipid, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not.i66 = icmp eq ptr %pdata.0, null
  br i1 %tobool.not.i66, label %if.end21.cleanup_crit_edge, label %if.end.i67

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i67:                                       ; preds = %if.end21
  %enable_gpio.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %pdata.0, i32 0, i32 4
  %38 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable_gpio.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.end.i67.lp872x_hw_enable.exit.thread_crit_edge, label %if.end4.i

if.end.i67.lp872x_hw_enable.exit.thread_crit_edge: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_hw_enable.exit.thread

if.end4.i:                                        ; preds = %if.end.i67
  %call.i68 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 7) #5
  %40 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata24, align 4
  %enable_gpio6.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %enable_gpio6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i68, ptr %enable_gpio6.i, align 4
  %43 = load ptr, ptr %pdata24, align 4
  %enable_gpio8.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %enable_gpio8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable_gpio8.i, align 4
  %cmp.i.i = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lp872x_hw_enable.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end4.i
  %46 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i69 = icmp eq i32 %47, 0
  br i1 %cmp.i69, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #5
  br label %lp872x_hw_enable.exit.thread

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 45000, i32 noundef 2) #5
  br label %lp872x_hw_enable.exit.thread

lp872x_hw_enable.exit.thread:                     ; preds = %if.else.i, %if.then19.i, %if.end.i67.lp872x_hw_enable.exit.thread_crit_edge
  %48 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load ptr, ptr %pdata24, align 4
  br label %if.end29

lp872x_hw_enable.exit:                            ; preds = %if.end4.i
  %49 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev23, align 4
  %51 = ptrtoint ptr %45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.22, i32 noundef %51) #8
  %52 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata24, align 4
  %enable_gpio16.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %enable_gpio16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable_gpio16.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %tobool27.not = icmp eq ptr %55, null
  br i1 %tobool27.not, label %lp872x_hw_enable.exit.if.end29_crit_edge, label %lp872x_hw_enable.exit.cleanup_crit_edge

lp872x_hw_enable.exit.cleanup_crit_edge:          ; preds = %lp872x_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp872x_hw_enable.exit.if.end29_crit_edge:         ; preds = %lp872x_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %lp872x_hw_enable.exit.if.end29_crit_edge, %lp872x_hw_enable.exit.thread
  %57 = phi ptr [ %.pr, %lp872x_hw_enable.exit.thread ], [ %53, %lp872x_hw_enable.exit.if.end29_crit_edge ]
  %tobool.not.i71 = icmp eq ptr %57, null
  br i1 %tobool.not.i71, label %if.end29.set_default_dvs_mode.i.i_crit_edge, label %lor.lhs.false.i

if.end29.set_default_dvs_mode.i.i_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_default_dvs_mode.i.i

lor.lhs.false.i:                                  ; preds = %if.end29
  %update_config.i72 = getelementptr inbounds %struct.lp872x_platform_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %update_config.i72 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %update_config.i72, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool2.not.i73 = icmp eq i8 %59, 0
  br i1 %tobool2.not.i73, label %lor.lhs.false.i.init_dvs.i_crit_edge, label %if.end.i75

lor.lhs.false.i.init_dvs.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_dvs.i

if.end.i75:                                       ; preds = %lor.lhs.false.i
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %57, align 4
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %conv1.i.i = zext i8 %61 to i32
  %call.i.i74 = call i32 @regmap_write(ptr noundef %63, i32 noundef 0, i32 noundef %conv1.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool3.not.i = icmp eq i32 %call.i.i74, 0
  br i1 %tobool3.not.i, label %if.end.i75.init_dvs.i_crit_edge, label %if.end.i75.cleanup_crit_edge

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i75.init_dvs.i_crit_edge:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_dvs.i

init_dvs.i:                                       ; preds = %if.end.i75.init_dvs.i_crit_edge, %lor.lhs.false.i.init_dvs.i_crit_edge
  %64 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr.i = load ptr, ptr %pdata24, align 4
  %tobool.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i, label %init_dvs.i.set_default_dvs_mode.i.i_crit_edge, label %cond.end.i.i

init_dvs.i.set_default_dvs_mode.i.i_crit_edge:    ; preds = %init_dvs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_default_dvs_mode.i.i

cond.end.i.i:                                     ; preds = %init_dvs.i
  %dvs2.i.i = getelementptr inbounds %struct.lp872x_platform_data, ptr %.pr.i, i32 0, i32 3
  %65 = ptrtoint ptr %dvs2.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dvs2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %66, null
  br i1 %tobool3.not.i.i, label %cond.end.i.i.set_default_dvs_mode.i.i_crit_edge, label %if.end.i.i

cond.end.i.i.set_default_dvs_mode.i.i_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_default_dvs_mode.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %tobool4.not.i.i = icmp eq ptr %68, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.set_default_dvs_mode.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.set_default_dvs_mode.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_default_dvs_mode.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %init_state.i.i = getelementptr inbounds %struct.lp872x_dvs, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %init_state.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %init_state.i.i, align 4
  %71 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev23, align 4
  %call.i13.i = call ptr @devm_gpiod_get_optional(ptr noundef %72, ptr noundef nonnull @.str.24, i32 noundef %70) #5
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i13.i, ptr %66, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %lp872x_config.exit.thread

do.end.i.i:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev23, align 4
  %76 = ptrtoint ptr %call.i13.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.22, i32 noundef %76) #8
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %66, align 4
  %79 = ptrtoint ptr %78 to i32
  br label %lp872x_config.exit

lp872x_config.exit.thread:                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvs_pin.i.i = getelementptr inbounds %struct.lp872x, ptr %call.i, i32 0, i32 5
  %80 = ptrtoint ptr %dvs_pin.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %70, ptr %dvs_pin.i.i, align 4
  br label %if.end33

set_default_dvs_mode.i.i:                         ; preds = %if.end.i.i.set_default_dvs_mode.i.i_crit_edge, %cond.end.i.i.set_default_dvs_mode.i.i_crit_edge, %init_dvs.i.set_default_dvs_mode.i.i_crit_edge, %if.end29.set_default_dvs_mode.i.i_crit_edge
  %81 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chipid, align 4
  %arrayidx.i.i = getelementptr [2 x i8], ptr @__const.lp872x_init_dvs.mask, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %84 to i32
  %arrayidx18.i.i = getelementptr [2 x i8], ptr @__const.lp872x_init_dvs.default_dvs_mode, i32 0, i32 %82
  %85 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx18.i.i, align 1
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %conv1.i.i.i = zext i8 %86 to i32
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 0, i32 noundef %conv.i.i, i32 noundef %conv1.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %lp872x_config.exit

lp872x_config.exit:                               ; preds = %set_default_dvs_mode.i.i, %do.end.i.i
  %retval.0.i76 = phi i32 [ %79, %do.end.i.i ], [ %call.i.i.i.i, %set_default_dvs_mode.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i76)
  %tobool31.not = icmp eq i32 %retval.0.i76, 0
  br i1 %tobool31.not, label %lp872x_config.exit.if.end33_crit_edge, label %lp872x_config.exit.cleanup_crit_edge

lp872x_config.exit.cleanup_crit_edge:             ; preds = %lp872x_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp872x_config.exit.if.end33_crit_edge:            ; preds = %lp872x_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %lp872x_config.exit.if.end33_crit_edge, %lp872x_config.exit.thread
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #5
  %89 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %90 = call ptr @memset(ptr %89, i32 0, i32 20)
  %91 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp26.i = icmp sgt i32 %92, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %if.end33.lp872x_regulator_register.exit_crit_edge

if.end33.lp872x_regulator_register.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_regulator_register.exit

for.body.lr.ph.i:                                 ; preds = %if.end33
  %driver_data.i80 = getelementptr inbounds %struct.regulator_config, ptr %cfg.i, i32 0, i32 2
  %regmap4.i = getelementptr inbounds %struct.regulator_config, ptr %cfg.i, i32 0, i32 4
  br label %for.body.i85

for.cond.i:                                       ; preds = %lp872x_find_regulator_init_data.exit.i
  %inc.i81 = add nuw nsw i32 %i.027.i, 1
  %93 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_regulators, align 4
  %cmp.i82 = icmp slt i32 %inc.i81, %94
  br i1 %cmp.i82, label %for.cond.i.for.body.i85_crit_edge, label %for.cond.i.lp872x_regulator_register.exit_crit_edge

for.cond.i.lp872x_regulator_register.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_regulator_register.exit

for.cond.i.for.body.i85_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.cond.i.for.body.i85_crit_edge, %for.body.lr.ph.i
  %95 = phi i32 [ %92, %for.body.lr.ph.i ], [ %94, %for.cond.i.for.body.i85_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i81, %for.cond.i.for.body.i85_crit_edge ]
  %96 = ptrtoint ptr %chipid to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chipid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp1.i = icmp eq i32 %97, 0
  %arrayidx.i = getelementptr [6 x %struct.regulator_desc], ptr @lp8720_regulator_desc, i32 0, i32 %i.027.i
  %arrayidx2.i = getelementptr [9 x %struct.regulator_desc], ptr @lp8725_regulator_desc, i32 0, i32 %i.027.i
  %cond.i83 = select i1 %cmp1.i, ptr %arrayidx.i, ptr %arrayidx2.i
  %98 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev23, align 4
  %100 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %cfg.i, align 4
  %id.i = getelementptr inbounds %struct.regulator_desc, ptr %cond.i83, i32 0, i32 6
  %101 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id.i, align 4
  %103 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdata24, align 4
  %tobool.not.i.i84 = icmp ne ptr %104, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp16.i.i = icmp sgt i32 %95, 0
  %or.cond.i = select i1 %tobool.not.i.i84, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i, label %for.body.i85.for.body.i.i87_crit_edge, label %for.body.i85.lp872x_find_regulator_init_data.exit.i_crit_edge

for.body.i85.lp872x_find_regulator_init_data.exit.i_crit_edge: ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_find_regulator_init_data.exit.i

for.body.i85.for.body.i.i87_crit_edge:            ; preds = %for.body.i85
  br label %for.body.i.i87

for.body.i.i87:                                   ; preds = %for.inc.i.i.for.body.i.i87_crit_edge, %for.body.i85.for.body.i.i87_crit_edge
  %i.017.i.i = phi i32 [ %inc.i.i88, %for.inc.i.i.for.body.i.i87_crit_edge ], [ 0, %for.body.i85.for.body.i.i87_crit_edge ]
  %arrayidx.i.i86 = getelementptr %struct.lp872x_platform_data, ptr %104, i32 0, i32 2, i32 %i.017.i.i
  %105 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %102)
  %cmp3.i.i = icmp eq i32 %106, %102
  br i1 %cmp3.i.i, label %if.then4.i.i, label %for.inc.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i87
  call void @__sanitizer_cov_trace_pc() #7
  %init_data.i.i = getelementptr %struct.lp872x_platform_data, ptr %104, i32 0, i32 2, i32 %i.017.i.i, i32 1
  %107 = ptrtoint ptr %init_data.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_data.i.i, align 4
  br label %lp872x_find_regulator_init_data.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i87
  %inc.i.i88 = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i88, %95
  br i1 %exitcond.not.i.i, label %for.inc.i.i.lp872x_find_regulator_init_data.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i87_crit_edge

for.inc.i.i.for.body.i.i87_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i87

for.inc.i.i.lp872x_find_regulator_init_data.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_find_regulator_init_data.exit.i

lp872x_find_regulator_init_data.exit.i:           ; preds = %for.inc.i.i.lp872x_find_regulator_init_data.exit.i_crit_edge, %if.then4.i.i, %for.body.i85.lp872x_find_regulator_init_data.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %108, %if.then4.i.i ], [ null, %for.body.i85.lp872x_find_regulator_init_data.exit.i_crit_edge ], [ null, %for.inc.i.i.lp872x_find_regulator_init_data.exit.i_crit_edge ]
  %109 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %retval.0.i.i, ptr %89, align 4
  %110 = ptrtoint ptr %driver_data.i80 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i80, align 4
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  %113 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %regmap4.i, align 4
  %call6.i = call ptr @devm_regulator_register(ptr noundef %99, ptr noundef %cond.i83, ptr noundef nonnull %cfg.i) #5
  %cmp.i.i89 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i89, label %do.end.i90, label %for.cond.i

do.end.i90:                                       ; preds = %lp872x_find_regulator_init_data.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.26) #8
  %116 = ptrtoint ptr %call6.i to i32
  br label %lp872x_regulator_register.exit

lp872x_regulator_register.exit:                   ; preds = %do.end.i90, %for.cond.i.lp872x_regulator_register.exit_crit_edge, %if.end33.lp872x_regulator_register.exit_crit_edge
  %retval.0.i91 = phi i32 [ %116, %do.end.i90 ], [ 0, %if.end33.lp872x_regulator_register.exit_crit_edge ], [ 0, %for.cond.i.lp872x_regulator_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %lp872x_regulator_register.exit, %lp872x_config.exit.cleanup_crit_edge, %if.end.i75.cleanup_crit_edge, %lp872x_hw_enable.exit.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then17, %if.end7.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %22, %if.then3 ], [ %31, %if.then17 ], [ %retval.0.i91, %lp872x_regulator_register.exit ], [ -12, %if.end7.cleanup_crit_edge ], [ %56, %lp872x_hw_enable.exit.cleanup_crit_edge ], [ %retval.0.i76, %lp872x_config.exit.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %call.i.i74, %if.end.i75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

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
define internal i32 @lp872x_regulator_enable_time(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %lp8720_time_usec.i = alloca [2 x i32], align 8
  %lp8725_time_usec.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %chipid.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chipid.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lp8720_time_usec.i) #5
  %2 = ptrtoint ptr %lp8720_time_usec.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 107374182450, ptr %lp8720_time_usec.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lp8725_time_usec.i) #5
  %3 = call ptr @memcpy(ptr %lp8725_time_usec.i, ptr @__const.lp872x_get_timestep_usec.lp8725_time_usec, i32 16)
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %entry.lp872x_get_timestep_usec.exit.thread_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.lp872x_get_timestep_usec.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_get_timestep_usec.exit.thread

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %mask.0.i = phi i8 [ -64, %sw.bb1.i ], [ 1, %entry.sw.epilog.i_crit_edge ]
  %shift.0.i = phi i8 [ 6, %sw.bb1.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %time_usec.0.i = phi ptr [ %lp8725_time_usec.i, %sw.bb1.i ], [ %lp8720_time_usec.i, %entry.sw.epilog.i_crit_edge ]
  %size.0.i = phi i32 [ 4, %sw.bb1.i ], [ 2, %entry.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i.i, align 4, !annotation !119
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %lp872x_read_byte.exit.i, label %if.end.i

lp872x_read_byte.exit.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %lp872x_get_timestep_usec.exit.thread

if.end.i:                                         ; preds = %sw.epilog.i
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  %conv3.i.i = trunc i32 %11 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %and.i = and i8 %mask.0.i, %conv3.i.i
  %shr.i = lshr i8 %and.i, %shift.0.i
  %conv6.i = zext i8 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %conv6.i)
  %cmp.not.i = icmp ugt i32 %size.0.i, %conv6.i
  br i1 %cmp.not.i, label %lp872x_get_timestep_usec.exit, label %if.end.i.lp872x_get_timestep_usec.exit.thread_crit_edge

if.end.i.lp872x_get_timestep_usec.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp872x_get_timestep_usec.exit.thread

lp872x_get_timestep_usec.exit.thread:             ; preds = %if.end.i.lp872x_get_timestep_usec.exit.thread_crit_edge, %lp872x_read_byte.exit.i, %entry.lp872x_get_timestep_usec.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.lp872x_get_timestep_usec.exit.thread_crit_edge ], [ %call.i.i, %lp872x_read_byte.exit.i ], [ -22, %entry.lp872x_get_timestep_usec.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lp8725_time_usec.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lp8720_time_usec.i) #5
  br label %cleanup

lp872x_get_timestep_usec.exit:                    ; preds = %if.end.i
  %add.ptr.i = getelementptr i32, ptr %time_usec.0.i, i32 %conv6.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lp8725_time_usec.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lp8720_time_usec.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %lp872x_get_timestep_usec.exit.cleanup_crit_edge, label %if.end

lp872x_get_timestep_usec.exit.cleanup_crit_edge:  ; preds = %lp872x_get_timestep_usec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lp872x_get_timestep_usec.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call1)
  %14 = icmp ult i32 %call1, 15
  br i1 %14, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.lp872x_regulator_enable_time, i32 0, i32 %call1
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !119
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %conv.i = and i32 %switch.load, 255
  %call.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lp872x_read_byte.exit, label %if.end9

lp872x_read_byte.exit:                            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end9:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %conv3.i = trunc i32 %22 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %23 = lshr i8 %conv3.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp13 = icmp eq i8 %23, 7
  %conv12 = zext i8 %23 to i32
  %mul = mul i32 %13, %conv12
  %cond = select i1 %cmp13, i32 0, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lp872x_read_byte.exit, %if.end.cleanup_crit_edge, %lp872x_get_timestep_usec.exit.cleanup_crit_edge, %lp872x_get_timestep_usec.exit.thread
  %retval.0 = phi i32 [ %cond, %if.end9 ], [ %13, %lp872x_get_timestep_usec.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %lp872x_read_byte.exit ], [ %retval.0.i.ph, %lp872x_get_timestep_usec.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_buck_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %pdata = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.end:                                         ; preds = %entry
  %dvs3 = getelementptr inbounds %struct.lp872x_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvs3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvs3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %vsel = getelementptr inbounds %struct.lp872x_dvs, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %cond.i = select i1 %cmp.i, i32 7, i32 3
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef %cond.i) #5
  %dvs_pin.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %dvs_pin.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %dvs_pin.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr noundef %call, i32 noundef %call1), !range !121
  %addr.off.i = add nsw i8 %call7, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %addr.off.i)
  %switch.i = icmp ult i8 %addr.off.i, 6
  br i1 %switch.i, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %conv.i = zext i8 %call7 to i32
  %conv1.i = and i32 %selector, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %conv.i, i32 noundef 31, i32 noundef %conv1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end10 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_buck_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %call2 = tail call fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr noundef %call, i32 noundef %call1), !range !121
  %addr.off.i = add nsw i8 %call2, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %addr.off.i)
  %switch.i = icmp ult i8 %addr.off.i, 6
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !119
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %conv.i = zext i8 %call2 to i32
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lp872x_read_byte.exit, label %if.end6

lp872x_read_byte.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %7 = and i32 %6, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lp872x_read_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %lp872x_read_byte.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 13, label %sw.bb2
    i32 14, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 12, %sw.bb3 ], [ 12, %sw.bb2 ], [ 7, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 32, %sw.bb3 ], [ 2, %sw.bb2 ], [ 32, %entry.sw.epilog_crit_edge ]
  %shift.0 = phi i8 [ 5, %sw.bb3 ], [ 1, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ]
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mode, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %sw.epilog.if.end12_crit_edge
  ]

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i8 1, %shift.0
  %phi.cast = zext i8 %shl to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then, %sw.epilog.if.end12_crit_edge
  %val.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %sw.epilog.if.end12_crit_edge ]
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %addr.0, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp872x_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 13, label %sw.bb2
    i32 14, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 12, %sw.bb3 ], [ 12, %sw.bb2 ], [ 7, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 32, %sw.bb3 ], [ 2, %sw.bb2 ], [ 32, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !119
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %addr.0, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lp872x_read_byte.exit, label %if.end

lp872x_read_byte.exit:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp872x, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %addr.0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %mask.0, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lp872x_read_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %lp872x_read_byte.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr nocapture noundef readonly %lp, i32 noundef %buck) unnamed_addr #2 align 64 {
entry:
  %val.i37 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !119
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lp872x_read_byte.exit, label %if.end

lp872x_read_byte.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.lp872x, ptr %lp, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv3.i = trunc i32 %6 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %7 = zext i32 %buck to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %buck, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 13, label %sw.bb15
    i32 14, label %sw.bb27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %8 = and i8 %conv3.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dvs_pin = getelementptr inbounds %struct.lp872x, ptr %lp, i32 0, i32 5
  %9 = ptrtoint ptr %dvs_pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dvs_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp = icmp eq i32 %10, 7
  %conv4 = select i1 %cmp, i8 6, i8 7
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i37) #5
  %11 = ptrtoint ptr %val.i37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i37, align 4, !annotation !119
  %12 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lp, align 4
  %call.i38 = call i32 @regmap_read(ptr noundef %13, i32 noundef 8, ptr noundef nonnull %val.i37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %lp872x_read_byte.exit45, label %if.end8

lp872x_read_byte.exit45:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i40 = getelementptr inbounds %struct.lp872x, ptr %lp, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i37) #5
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i37) #5
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  %conv13 = select i1 %tobool11.not, i8 7, i8 6
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %19 = and i8 %conv3.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.else20, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else20:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %dvs_pin21 = getelementptr inbounds %struct.lp872x, ptr %lp, i32 0, i32 5
  %20 = ptrtoint ptr %dvs_pin21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dvs_pin21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp22 = icmp eq i32 %21, 7
  %conv25 = select i1 %cmp22, i8 8, i8 9
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i8 %conv3.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  %conv32 = select i1 %tobool30.not, i8 11, i8 10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %if.else20, %sw.bb15.cleanup_crit_edge, %if.end8, %lp872x_read_byte.exit45, %if.then2, %if.end.cleanup_crit_edge, %lp872x_read_byte.exit
  %retval.0 = phi i8 [ 0, %lp872x_read_byte.exit ], [ 0, %lp872x_read_byte.exit45 ], [ 0, %if.end.cleanup_crit_edge ], [ %conv32, %sw.bb27 ], [ %conv25, %if.else20 ], [ %conv4, %if.then2 ], [ %conv13, %if.end8 ], [ 8, %sw.bb15.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_lp872x__288_953_lp872x_driver_init6, !1, !"__initcall__kmod_lp872x__288_953_lp872x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp872x.c", i32 953, i32 1}
!2 = !{ptr @__exitcall_lp872x_driver_exit, !1, !"__exitcall_lp872x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/lp872x.c", i32 955, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/lp872x.c", i32 956, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/lp872x.c", i32 957, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/lp872x.c", i32 946, i32 11}
!12 = !{ptr @lp872x_driver, !13, !"lp872x_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/lp872x.c", i32 944, i32 26}
!14 = !{ptr @lp872x_probe.lp872x_num_regulators, !15, !"lp872x_num_regulators", i1 false, i1 false}
!15 = !{!"../drivers/regulator/lp872x.c", i32 887, i32 19}
!16 = !{ptr @lp872x_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/regulator/lp872x.c", i32 907, i32 15}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/lp872x.c", i32 910, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lp872x_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @lp872x_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/lp872x.c", i32 834, i32 26}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/lp872x.c", i32 835, i32 27}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/lp872x.c", i32 842, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/lp872x.c", i32 843, i32 26}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/lp872x.c", i32 799, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/lp872x.c", i32 800, i32 12}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/lp872x.c", i32 801, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/lp872x.c", i32 802, i32 12}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/lp872x.c", i32 803, i32 12}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/lp872x.c", i32 804, i32 12}
!47 = !{ptr @lp8720_matches, !48, !"lp8720_matches", i1 false, i1 false}
!48 = !{!"../drivers/regulator/lp872x.c", i32 798, i32 34}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/lp872x.c", i32 813, i32 12}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/lp872x.c", i32 814, i32 12}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/lp872x.c", i32 815, i32 12}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/lp872x.c", i32 816, i32 12}
!57 = !{ptr @lp8725_matches, !58, !"lp8725_matches", i1 false, i1 false}
!58 = !{!"../drivers/regulator/lp872x.c", i32 807, i32 34}
!59 = !{ptr @lp872x_regmap_config, !60, !"lp872x_regmap_config", i1 false, i1 false}
!60 = !{!"../drivers/regulator/lp872x.c", i32 788, i32 35}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/lp872x.c", i32 714, i32 60}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/lp872x.c", i32 716, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lp872x_hw_enable._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lp872x_hw_enable._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/lp872x.c", i32 689, i32 47}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/lp872x.c", i32 692, i32 3}
!72 = !{ptr @lp872x_init_dvs._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lp872x_init_dvs._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/lp872x.c", i32 780, i32 4}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lp872x_regulator_register._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lp872x_regulator_register._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @lp8720_regulator_desc, !80, !"lp8720_regulator_desc", i1 false, i1 false}
!80 = !{!"../drivers/regulator/lp872x.c", i32 457, i32 36}
!81 = !{ptr @lp872x_ldo_ops, !82, !"lp872x_ldo_ops", i1 false, i1 false}
!82 = !{!"../drivers/regulator/lp872x.c", i32 418, i32 35}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/lp872x.c", i32 162, i32 3}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @lp872x_read_byte._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @lp872x_read_byte._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @lp872x_ldo_vtbl, !89, !"lp872x_ldo_vtbl", i1 false, i1 false}
!89 = !{!"../drivers/regulator/lp872x.c", i32 110, i32 27}
!90 = !{ptr @lp8720_ldo4_vtbl, !91, !"lp8720_ldo4_vtbl", i1 false, i1 false}
!91 = !{!"../drivers/regulator/lp872x.c", i32 118, i32 27}
!92 = !{ptr @lp8720_buck_ops, !93, !"lp8720_buck_ops", i1 false, i1 false}
!93 = !{!"../drivers/regulator/lp872x.c", i32 429, i32 35}
!94 = !{ptr @lp8720_buck_vtbl, !95, !"lp8720_buck_vtbl", i1 false, i1 false}
!95 = !{!"../drivers/regulator/lp872x.c", i32 135, i32 27}
!96 = !{ptr @lp8725_regulator_desc, !97, !"lp8725_regulator_desc", i1 false, i1 false}
!97 = !{!"../drivers/regulator/lp872x.c", i32 542, i32 36}
!98 = !{ptr @lp8725_lilo_vtbl, !99, !"lp8725_lilo_vtbl", i1 false, i1 false}
!99 = !{!"../drivers/regulator/lp872x.c", i32 126, i32 27}
!100 = !{ptr @lp8725_buck_ops, !101, !"lp8725_buck_ops", i1 false, i1 false}
!101 = !{!"../drivers/regulator/lp872x.c", i32 442, i32 35}
!102 = !{ptr @lp8725_buck_vtbl, !103, !"lp8725_buck_vtbl", i1 false, i1 false}
!103 = !{!"../drivers/regulator/lp872x.c", i32 143, i32 27}
!104 = !{ptr @lp8725_buck_uA, !105, !"lp8725_buck_uA", i1 false, i1 false}
!105 = !{!"../drivers/regulator/lp872x.c", i32 151, i32 27}
!106 = !{ptr @lp872x_dt_ids, !107, !"lp872x_dt_ids", i1 false, i1 false}
!107 = !{!"../drivers/regulator/lp872x.c", i32 930, i32 34}
!108 = !{ptr @lp872x_ids, !109, !"lp872x_ids", i1 false, i1 false}
!109 = !{!"../drivers/regulator/lp872x.c", i32 937, i32 35}
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
!120 = !{i8 0, i8 2}
!121 = !{i8 0, i8 12}
