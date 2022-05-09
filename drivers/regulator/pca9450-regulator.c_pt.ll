; ModuleID = '/llk/IR_all_yes/drivers/regulator/pca9450-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pca9450-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pca9450_regulator_desc = type { %struct.regulator_desc, %struct.pc9450_dvs_config }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pc9450_dvs_config = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.pca9450 = type { ptr, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_pca9450_regulator__288_856_pca9450_i2c_driver_init6 = internal global ptr @pca9450_i2c_driver_init, section ".initcall6.init", align 4
@pca9450_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pca9450_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pca9450_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pca9450_i2c_driver_exit = internal global ptr @pca9450_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [57 x i8] c"pca9450_regulator.author=Robin Gong <yibin.gong@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [69 x i8] c"pca9450_regulator.description=NXP PCA9450 Power Management IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [59 x i8] c"pca9450_regulator.file=drivers/regulator/pca9450-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"pca9450_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp-pca9450\00", [20 x i8] zeroinitializer }, align 32
@pca9450_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9450a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9450b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca9450c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No IRQ configured?\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pca9450_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/pca9450-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr = internal global ptr @pca9450_i2c_probe._entry, section ".printk_index", align 4
@pca9450a_regulators = internal constant { [11 x %struct.pca9450_regulator_desc], [724 x i8] } { [11 x %struct.pca9450_regulator_desc] [%struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.47, ptr @pca9450_set_dvs_levels, i32 0, i8 0, i32 128, i32 0, ptr @pca9450_dvs_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_dvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 17, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 192, ptr @pca9450_dvs_buck_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config { i32 17, i32 127, i32 18, i32 127 } }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.48, ptr null, ptr @.str.49, i8 0, ptr @.str.47, ptr @pca9450_set_dvs_levels, i32 1, i8 0, i32 128, i32 0, ptr @pca9450_dvs_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_dvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 20, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 192, ptr @pca9450_dvs_buck_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config { i32 20, i32 127, i32 21, i32 127 } }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.50, ptr null, ptr @.str.51, i8 0, ptr @.str.47, ptr @pca9450_set_dvs_levels, i32 2, i8 0, i32 128, i32 0, ptr @pca9450_dvs_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_dvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 23, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 192, ptr @pca9450_dvs_buck_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config { i32 23, i32 127, i32 24, i32 127 } }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.52, ptr null, ptr @.str.53, i8 0, ptr @.str.47, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 26, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.54, ptr null, ptr @.str.55, i8 0, ptr @.str.47, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 28, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.56, ptr null, ptr @.str.57, i8 0, ptr @.str.47, ptr null, i32 5, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 30, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.58, ptr null, ptr @.str.59, i8 0, ptr @.str.47, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo1_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.60, ptr null, ptr @.str.61, i8 0, ptr @.str.47, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo2_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 34, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.62, ptr null, ptr @.str.63, i8 0, ptr @.str.47, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo34_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.64, ptr null, ptr @.str.65, i8 0, ptr @.str.47, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo34_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.66, ptr null, ptr @.str.67, i8 0, ptr @.str.47, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo5_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 38, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }], [724 x i8] zeroinitializer }, align 32
@pca9450bc_regulators = internal constant { [10 x %struct.pca9450_regulator_desc], [664 x i8] } { [10 x %struct.pca9450_regulator_desc] [%struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.45, ptr null, ptr @.str.46, i8 0, ptr @.str.47, ptr @pca9450_set_dvs_levels, i32 0, i8 0, i32 128, i32 0, ptr @pca9450_dvs_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_dvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 17, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 192, ptr @pca9450_dvs_buck_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config { i32 17, i32 127, i32 18, i32 127 } }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.48, ptr null, ptr @.str.49, i8 0, ptr @.str.47, ptr @pca9450_set_dvs_levels, i32 1, i8 0, i32 128, i32 0, ptr @pca9450_dvs_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_dvs_buck_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 20, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 192, ptr @pca9450_dvs_buck_ramp_table, i32 4, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config { i32 20, i32 127, i32 21, i32 127 } }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.52, ptr null, ptr @.str.53, i8 0, ptr @.str.47, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 26, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.54, ptr null, ptr @.str.55, i8 0, ptr @.str.47, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 28, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.56, ptr null, ptr @.str.57, i8 0, ptr @.str.47, ptr null, i32 5, i8 0, i32 128, i32 0, ptr @pca9450_buck_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_buck_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 30, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 29, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.58, ptr null, ptr @.str.59, i8 0, ptr @.str.47, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo1_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.60, ptr null, ptr @.str.61, i8 0, ptr @.str.47, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo2_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 34, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.62, ptr null, ptr @.str.63, i8 0, ptr @.str.47, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo34_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.64, ptr null, ptr @.str.65, i8 0, ptr @.str.47, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo34_volts, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }, %struct.pca9450_regulator_desc { %struct.regulator_desc { ptr @.str.66, ptr null, ptr @.str.67, i8 0, ptr @.str.47, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @pca9450_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pca9450_ldo5_volts, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 38, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.pc9450_dvs_config zeroinitializer }], [664 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown device type\00", [44 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.8 = internal global ptr @pca9450_i2c_probe._entry.6, section ".printk_index", align 4
@pca9450_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pca9450_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 46, ptr null, ptr null, ptr @pca9450_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pca9450_regulator:737:(&pca9450_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regmap initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.12 = internal global ptr @pca9450_i2c_probe._entry.10, section ".printk_index", align 4
@pca9450_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read device id error\0A\00", [42 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.15 = internal global ptr @pca9450_i2c_probe._entry.13, section ".printk_index", align 4
@pca9450_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device id(%x) mismatched\0A\00", [38 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.18 = internal global ptr @pca9450_i2c_probe._entry.16, section ".printk_index", align 4
@pca9450_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 773, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register regulator(%s): %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.21 = internal global ptr @pca9450_i2c_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pca9450-irq\00", [20 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.25 = internal global ptr @pca9450_i2c_probe._entry.23, section ".printk_index", align 4
@pca9450_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unmask irq error\0A\00", [46 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.28 = internal global ptr @pca9450_i2c_probe._entry.26, section ".printk_index", align 4
@pca9450_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to clear PRESET_EN bit: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.31 = internal global ptr @pca9450_i2c_probe._entry.29, section ".printk_index", align 4
@pca9450_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set WDOG_B reset behavior\0A\00", [59 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.34 = internal global ptr @pca9450_i2c_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd-vsel\00", [24 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get SD_VSEL GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.38 = internal global ptr @pca9450_i2c_probe._entry.36, section ".printk_index", align 4
@pca9450_i2c_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 826, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s probed.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pca9450_i2c_probe._entry_ptr.42 = internal global ptr @pca9450_i2c_probe._entry.39, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pca9450a\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pca9450bc\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pca9450_dvs_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pca9450_dvs_buck_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 127, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@pca9450_dvs_buck_ramp_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 25000, i32 12500, i32 6250, i32 3125], [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@pca9450_buck_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pca9450_buck_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 112, i32 25000 }, %struct.linear_range { i32 3400000, i32 113, i32 127, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck6\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@pca9450_ldo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pca9450_ldo1_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1600000, i32 0, i32 3, i32 100000 }, %struct.linear_range { i32 3000000, i32 4, i32 7, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@pca9450_ldo2_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 7, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@pca9450_ldo34_volts = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 25, i32 100000 }, %struct.linear_range { i32 3300000, i32 26, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@pca9450_ldo5_volts = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 15, i32 100000 }], [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxp,dvs-run-voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nxp,dvs-standby-voltage\00", [40 x i8] zeroinitializer }, align 32
@pca9450_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @pca9450_status_range, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@pca9450_status_range = internal constant { %struct.regmap_range, [24 x i8] } { %struct.regmap_range { i32 1, i32 5 }, [24 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read INT1(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pca9450_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr = internal global ptr @pca9450_irq_handler._entry, section ".printk_index", align 4
@pca9450_irq_handler._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 673, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PWRON interrupt.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.75 = internal global ptr @pca9450_irq_handler._entry.72, section ".printk_index", align 4
@pca9450_irq_handler._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.3, i32 676, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WDOGB interrupt.\0A\00", [46 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.78 = internal global ptr @pca9450_irq_handler._entry.76, section ".printk_index", align 4
@pca9450_irq_handler._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.71, ptr @.str.3, i32 679, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VRFLT1 interrupt.\0A\00", [45 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.81 = internal global ptr @pca9450_irq_handler._entry.79, section ".printk_index", align 4
@pca9450_irq_handler._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.71, ptr @.str.3, i32 682, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VRFLT2 interrupt.\0A\00", [45 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.84 = internal global ptr @pca9450_irq_handler._entry.82, section ".printk_index", align 4
@pca9450_irq_handler._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.71, ptr @.str.3, i32 685, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LOWVSYS interrupt.\0A\00", [44 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.87 = internal global ptr @pca9450_irq_handler._entry.85, section ".printk_index", align 4
@pca9450_irq_handler._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.71, ptr @.str.3, i32 688, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ_THERM_105 interrupt.\0A\00", [38 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.90 = internal global ptr @pca9450_irq_handler._entry.88, section ".printk_index", align 4
@pca9450_irq_handler._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.71, ptr @.str.3, i32 691, ptr @.str.74, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ_THERM_125 interrupt.\0A\00", [38 x i8] zeroinitializer }, align 32
@pca9450_irq_handler._entry_ptr.93 = internal global ptr @pca9450_irq_handler._entry.91, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"pca9450_i2c_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 848, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 850, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"pca9450_of_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 831, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 708, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"pca9450a_regulators\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 215, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"pca9450bc_regulators\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 453, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 726, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"pca9450_regmap_config\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 52, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 736, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 739, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 745, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 752, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 771, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 781, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 783, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 793, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 801, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 809, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 818, i32 59 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 821, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 825, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 218, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 219, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 220, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"pca9450_dvs_buck_regulator_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 72, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"pca9450_dvs_buck_volts\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 106, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant [28 x i8] c"pca9450_dvs_buck_ramp_table\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 68, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 247, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 248, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 276, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 277, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 305, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 306, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant [27 x i8] c"pca9450_buck_regulator_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 83, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"pca9450_buck_volts\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 114, i32 34 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 323, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 324, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 341, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 342, i32 16 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 359, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 360, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant [26 x i8] c"pca9450_ldo_regulator_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 93, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"pca9450_ldo1_volts\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 123, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 377, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 378, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant [19 x i8] c"pca9450_ldo2_volts\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 132, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 395, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 396, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"pca9450_ldo34_volts\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 140, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 413, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 414, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 431, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 432, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"pca9450_ldo5_volts\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 149, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 194, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 199, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant [22 x i8] c"pca9450_volatile_regs\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 47, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant [21 x i8] c"pca9450_status_range\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 42, i32 34 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 667, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 673, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 676, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 679, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 682, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 685, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 688, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.382 = private constant [41 x i8] c"../drivers/regulator/pca9450-regulator.c\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 691, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pca9450_i2c_driver_exit, ptr @__initcall__kmod_pca9450_regulator__288_856_pca9450_i2c_driver_init6, ptr @pca9450_i2c_driver_exit, ptr @pca9450_i2c_probe._entry, ptr @pca9450_i2c_probe._entry.10, ptr @pca9450_i2c_probe._entry.13, ptr @pca9450_i2c_probe._entry.16, ptr @pca9450_i2c_probe._entry.19, ptr @pca9450_i2c_probe._entry.23, ptr @pca9450_i2c_probe._entry.26, ptr @pca9450_i2c_probe._entry.29, ptr @pca9450_i2c_probe._entry.32, ptr @pca9450_i2c_probe._entry.36, ptr @pca9450_i2c_probe._entry.39, ptr @pca9450_i2c_probe._entry.6, ptr @pca9450_i2c_probe._entry_ptr, ptr @pca9450_i2c_probe._entry_ptr.12, ptr @pca9450_i2c_probe._entry_ptr.15, ptr @pca9450_i2c_probe._entry_ptr.18, ptr @pca9450_i2c_probe._entry_ptr.21, ptr @pca9450_i2c_probe._entry_ptr.25, ptr @pca9450_i2c_probe._entry_ptr.28, ptr @pca9450_i2c_probe._entry_ptr.31, ptr @pca9450_i2c_probe._entry_ptr.34, ptr @pca9450_i2c_probe._entry_ptr.38, ptr @pca9450_i2c_probe._entry_ptr.42, ptr @pca9450_i2c_probe._entry_ptr.8, ptr @pca9450_irq_handler._entry, ptr @pca9450_irq_handler._entry.72, ptr @pca9450_irq_handler._entry.76, ptr @pca9450_irq_handler._entry.79, ptr @pca9450_irq_handler._entry.82, ptr @pca9450_irq_handler._entry.85, ptr @pca9450_irq_handler._entry.88, ptr @pca9450_irq_handler._entry.91, ptr @pca9450_irq_handler._entry_ptr, ptr @pca9450_irq_handler._entry_ptr.75, ptr @pca9450_irq_handler._entry_ptr.78, ptr @pca9450_irq_handler._entry_ptr.81, ptr @pca9450_irq_handler._entry_ptr.84, ptr @pca9450_irq_handler._entry_ptr.87, ptr @pca9450_irq_handler._entry_ptr.90, ptr @pca9450_irq_handler._entry_ptr.93, ptr @pca9450_i2c_driver, ptr @.str, ptr @pca9450_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pca9450a_regulators, ptr @pca9450bc_regulators, ptr @.str.7, ptr @pca9450_i2c_probe._key, ptr @pca9450_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @pca9450_dvs_buck_regulator_ops, ptr @pca9450_dvs_buck_volts, ptr @pca9450_dvs_buck_ramp_table, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @pca9450_buck_regulator_ops, ptr @pca9450_buck_volts, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @pca9450_ldo_regulator_ops, ptr @pca9450_ldo1_volts, ptr @.str.60, ptr @.str.61, ptr @pca9450_ldo2_volts, ptr @.str.62, ptr @.str.63, ptr @pca9450_ldo34_volts, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pca9450_ldo5_volts, ptr @.str.68, ptr @.str.69, ptr @pca9450_volatile_regs, ptr @pca9450_status_range, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450a_regulators to i32), i32 2860, i32 3584, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450bc_regulators to i32), i32 2600, i32 3264, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_i2c_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_dvs_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_dvs_buck_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_dvs_buck_ramp_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_buck_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_buck_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_ldo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_ldo1_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_ldo2_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_ldo34_volts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_ldo5_volts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_status_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pca9450_irq_handler._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9450_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pca9450_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pca9450_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pca9450_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9450_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %device_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %0 = ptrtoint ptr %call to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %1 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id) #6
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %device_id, align 4, !annotation !201
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup125

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup125_crit_edge, label %if.end6

if.end.cleanup125_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup125

if.end6:                                          ; preds = %if.end
  %5 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end11 [
    i32 0, label %if.end6.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup125

sw.epilog:                                        ; preds = %sw.bb7, %if.end6.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %sw.bb7 ], [ 11, %if.end6.sw.epilog_crit_edge ]
  %regulator_desc.0 = phi ptr [ @pca9450bc_regulators, %sw.bb7 ], [ @pca9450a_regulators, %if.end6.sw.epilog_crit_edge ]
  %rcnt8 = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %rcnt8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %rcnt8, align 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %irq14 = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq14, align 4
  %type15 = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %0, ptr %type15, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call19 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @pca9450_regmap_config, ptr noundef nonnull @pca9450_i2c_probe._key, ptr noundef nonnull @.str.9) #6
  %regmap = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %if.end29

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup125

if.end29:                                         ; preds = %sw.epilog
  %call31 = call i32 @regmap_read(ptr noundef %call19, i32 noundef 0, ptr noundef nonnull %device_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup125

if.end38:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_id, align 4
  %shr.mask = and i32 %18, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr.mask)
  %cmp.not = icmp ne i32 %shr.mask, 16
  %cmp39 = icmp eq ptr %call, null
  %or.cond = select i1 %cmp.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.end38.do.end47_crit_edge, label %lor.lhs.false

if.end38.do.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

lor.lhs.false:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %shr.mask)
  %cmp41.not = icmp ne i32 %shr.mask, 48
  %cmp43 = icmp eq ptr %call, inttoptr (i32 1 to ptr)
  %or.cond196 = select i1 %cmp41.not, i1 %cmp43, i1 false
  br i1 %or.cond196, label %lor.lhs.false.do.end47_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

for.cond.preheader:                               ; preds = %lor.lhs.false
  %rcnt51 = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %rcnt51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rcnt51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp52203.not = icmp eq i32 %20, 0
  br i1 %cmp52203.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regmap55 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  br label %for.body

do.end47:                                         ; preds = %lor.lhs.false.do.end47_crit_edge, %if.end38.do.end47_crit_edge
  %shr49 = lshr i32 %18, 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %shr49) #9
  br label %cleanup125

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0204, 1
  %21 = ptrtoint ptr %rcnt51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rcnt51, align 4
  %cmp52 = icmp ult i32 %inc, %22
  br i1 %cmp52, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pca9450_regulator_desc, ptr %regulator_desc.0, i32 %i.0204
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %regmap55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %regmap55, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %28 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %config, align 4
  %call59 = call ptr @devm_regulator_register(ptr noundef %27, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i197 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call59 to i32
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20, ptr noundef %33, i32 noundef %29) #9
  br label %cleanup125

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %36 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq14, align 4
  %call72 = call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %37, ptr noundef null, ptr noundef nonnull @pca9450_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end80, label %do.end77

do.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.24, i32 noundef %41) #9
  br label %cleanup125

if.end80:                                         ; preds = %for.end
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call.i198 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 2, i32 noundef 31, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool83.not = icmp eq i32 %call.i198, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup125

if.end89:                                         ; preds = %if.end80
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call.i199 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool92.not = icmp eq i32 %call.i199, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call.i199) #9
  br label %cleanup125

if.end98:                                         ; preds = %if.end89
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i200 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 8, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool101.not = icmp eq i32 %call.i200, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %cleanup125

if.end107:                                        ; preds = %if.end98
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call109 = call ptr @gpiod_get_optional(ptr noundef %49, ptr noundef nonnull @.str.35, i32 noundef 7) #6
  %sd_vsel_gpio = getelementptr inbounds %struct.pca9450, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %sd_vsel_gpio to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call109, ptr %sd_vsel_gpio, align 4
  %cmp.i201 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %do.end115, label %do.end122

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  %51 = ptrtoint ptr %sd_vsel_gpio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sd_vsel_gpio, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %cleanup125

do.end122:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %cmp39, ptr @.str.43, ptr @.str.44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond) #9
  br label %cleanup125

cleanup125:                                       ; preds = %do.end122, %do.end115, %do.end105, %do.end96, %do.end87, %do.end77, %cleanup.thread, %do.end47, %do.end36, %do.end25, %do.end11, %if.end.cleanup125_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end11 ], [ %16, %do.end25 ], [ %call31, %do.end36 ], [ -22, %do.end47 ], [ %call72, %do.end77 ], [ %call.i198, %do.end87 ], [ %call.i199, %do.end96 ], [ %call.i200, %do.end105 ], [ %53, %do.end115 ], [ 0, %do.end122 ], [ -22, %do.end ], [ -12, %if.end.cleanup125_crit_edge ], [ %29, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9450_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.pca9450, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !201
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.70, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %do.end5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.73) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %if.end.if.end7_crit_edge
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and8 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %do.end13

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.77) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end7.if.end15_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and16 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %do.end21

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.80) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end15.if.end23_crit_edge
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %and24 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %do.end29

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.83) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end23.if.end31_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %and32 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %do.end37

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.86) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end31.if.end39_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %and40 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %do.end45

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.89) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %if.end39.if.end47_crit_edge
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %and48 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %do.end53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.92) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end47.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end53 ], [ 1, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pca9450_set_dvs_levels(ptr noundef %np, ptr noundef %desc, ptr nocapture noundef readonly %cfg) #2 align 64 {
sw.epilog:
  %uv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvs1 = getelementptr inbounds %struct.pca9450_regulator_desc, ptr %desc, i32 0, i32 1
  %standby_reg = getelementptr inbounds %struct.pca9450_regulator_desc, ptr %desc, i32 0, i32 1, i32 2
  %standby_mask = getelementptr inbounds %struct.pca9450_regulator_desc, ptr %desc, i32 0, i32 1, i32 3
  %run_mask = getelementptr inbounds %struct.pca9450_regulator_desc, ptr %desc, i32 0, i32 1, i32 1
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %n_voltages.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 8
  %vsel_mask.i = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 28
  %0 = ptrtoint ptr %run_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %mask.0 = load i32, ptr %run_mask, align 4
  %1 = ptrtoint ptr %dvs1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %reg.0 = load i32, ptr %dvs1, align 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv.i) #6
  %4 = ptrtoint ptr %uv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uv.i, align 4, !annotation !201
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.68, ptr noundef nonnull %uv.i, i32 noundef 1, i32 noundef 0) #6
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %5, label %sw.epilog.buck_set_dvs.exit.thread18_crit_edge [
    i32 -22, label %sw.epilog.buck_set_dvs.exit.thread_crit_edge
    i32 0, label %for.cond.preheader.i
  ]

sw.epilog.buck_set_dvs.exit.thread_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread

sw.epilog.buck_set_dvs.exit.thread18_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread18

for.cond.preheader.i:                             ; preds = %sw.epilog
  %7 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp327.not.i = icmp eq i32 %8, 0
  br i1 %cmp327.not.i, label %for.cond.preheader.i.buck_set_dvs.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.buck_set_dvs.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread

buck_set_dvs.exit.thread18:                       ; preds = %sw.epilog.1.buck_set_dvs.exit.thread18_crit_edge, %sw.epilog.buck_set_dvs.exit.thread18_crit_edge
  %.lcssa = phi i32 [ %5, %sw.epilog.buck_set_dvs.exit.thread18_crit_edge ], [ %21, %sw.epilog.1.buck_set_dvs.exit.thread18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call4.i = call i32 @regulator_desc_list_voltage_linear_range(ptr noundef %desc, i32 noundef %i.028.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %10)
  %cmp8.i = icmp eq i32 %call4.i, %10
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_mask.i, align 4
  %13 = call i32 @llvm.cttz.i32(i32 %12, i1 true) #6, !range !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %iszero.i = icmp eq i32 %12, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %13
  %shl.i = shl i32 %i.028.i, %sub.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %buck_set_dvs.exit

for.inc.i:                                        ; preds = %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.028.i, 1
  %14 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_voltages.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %15
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.buck_set_dvs.exit_crit_edge

for.inc.i.buck_set_dvs.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

buck_set_dvs.exit.thread:                         ; preds = %for.cond.preheader.i.buck_set_dvs.exit.thread_crit_edge, %sw.epilog.buck_set_dvs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #6
  br label %sw.epilog.1

buck_set_dvs.exit:                                ; preds = %for.inc.i.buck_set_dvs.exit_crit_edge, %if.then9.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then9.i ], [ %call4.i, %for.inc.i.buck_set_dvs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %buck_set_dvs.exit.sw.epilog.1_crit_edge, label %buck_set_dvs.exit.cleanup_crit_edge

buck_set_dvs.exit.cleanup_crit_edge:              ; preds = %buck_set_dvs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

buck_set_dvs.exit.sw.epilog.1_crit_edge:          ; preds = %buck_set_dvs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %buck_set_dvs.exit.sw.epilog.1_crit_edge, %buck_set_dvs.exit.thread
  %16 = ptrtoint ptr %standby_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %mask.0.1 = load i32, ptr %standby_mask, align 4
  %17 = ptrtoint ptr %standby_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %reg.0.1 = load i32, ptr %standby_reg, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv.i) #6
  %20 = ptrtoint ptr %uv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %uv.i, align 4, !annotation !201
  %call.i.i.i.1 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.69, ptr noundef nonnull %uv.i, i32 noundef 1, i32 noundef 0) #6
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i.i.1, i32 0) #6
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %21, label %sw.epilog.1.buck_set_dvs.exit.thread18_crit_edge [
    i32 -22, label %sw.epilog.1.buck_set_dvs.exit.thread.1_crit_edge
    i32 0, label %for.cond.preheader.i.1
  ]

sw.epilog.1.buck_set_dvs.exit.thread.1_crit_edge: ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread.1

sw.epilog.1.buck_set_dvs.exit.thread18_crit_edge: ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread18

for.cond.preheader.i.1:                           ; preds = %sw.epilog.1
  %23 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp327.not.i.1 = icmp eq i32 %24, 0
  br i1 %cmp327.not.i.1, label %for.cond.preheader.i.1.buck_set_dvs.exit.thread.1_crit_edge, label %for.cond.preheader.i.1.for.body.i.1_crit_edge

for.cond.preheader.i.1.for.body.i.1_crit_edge:    ; preds = %for.cond.preheader.i.1
  br label %for.body.i.1

for.cond.preheader.i.1.buck_set_dvs.exit.thread.1_crit_edge: ; preds = %for.cond.preheader.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.thread.1

for.body.i.1:                                     ; preds = %for.inc.i.1.for.body.i.1_crit_edge, %for.cond.preheader.i.1.for.body.i.1_crit_edge
  %i.028.i.1 = phi i32 [ %inc.i.1, %for.inc.i.1.for.body.i.1_crit_edge ], [ 0, %for.cond.preheader.i.1.for.body.i.1_crit_edge ]
  %call4.i.1 = call i32 @regulator_desc_list_voltage_linear_range(ptr noundef %desc, i32 noundef %i.028.i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %cmp5.i.1 = icmp slt i32 %call4.i.1, 0
  br i1 %cmp5.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.end7.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

if.end7.i.1:                                      ; preds = %for.body.i.1
  %25 = ptrtoint ptr %uv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.1, i32 %26)
  %cmp8.i.1 = icmp eq i32 %call4.i.1, %26
  br i1 %cmp8.i.1, label %if.then9.i.1, label %if.end7.i.1.for.inc.i.1_crit_edge

if.end7.i.1.for.inc.i.1_crit_edge:                ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

if.then9.i.1:                                     ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vsel_mask.i, align 4
  %29 = call i32 @llvm.cttz.i32(i32 %28, i1 true) #6, !range !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %iszero.i.1 = icmp eq i32 %28, 0
  %sub.i.1 = select i1 %iszero.i.1, i32 -1, i32 %29
  %shl.i.1 = shl i32 %i.028.i.1, %sub.i.1
  %call.i.i.1 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %reg.0.1, i32 noundef %mask.0.1, i32 noundef %shl.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %buck_set_dvs.exit.1

for.inc.i.1:                                      ; preds = %if.end7.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = add nuw i32 %i.028.i.1, 1
  %30 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_voltages.i, align 4
  %cmp3.i.1 = icmp ult i32 %inc.i.1, %31
  br i1 %cmp3.i.1, label %for.inc.i.1.for.body.i.1_crit_edge, label %for.inc.i.1.buck_set_dvs.exit.1_crit_edge

for.inc.i.1.buck_set_dvs.exit.1_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %buck_set_dvs.exit.1

for.inc.i.1.for.body.i.1_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.1

buck_set_dvs.exit.1:                              ; preds = %for.inc.i.1.buck_set_dvs.exit.1_crit_edge, %if.then9.i.1
  %retval.0.i.1 = phi i32 [ %call.i.i.1, %if.then9.i.1 ], [ %call4.i.1, %for.inc.i.1.buck_set_dvs.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1)
  %tobool.not.1 = icmp eq i32 %retval.0.i.1, 0
  br i1 %tobool.not.1, label %buck_set_dvs.exit.1.for.inc.1_crit_edge, label %buck_set_dvs.exit.1.cleanup_crit_edge

buck_set_dvs.exit.1.cleanup_crit_edge:            ; preds = %buck_set_dvs.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

buck_set_dvs.exit.1.for.inc.1_crit_edge:          ; preds = %buck_set_dvs.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

buck_set_dvs.exit.thread.1:                       ; preds = %for.cond.preheader.i.1.buck_set_dvs.exit.thread.1_crit_edge, %sw.epilog.1.buck_set_dvs.exit.thread.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv.i) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %buck_set_dvs.exit.thread.1, %buck_set_dvs.exit.1.for.inc.1_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %buck_set_dvs.exit.1.cleanup_crit_edge, %buck_set_dvs.exit.cleanup_crit_edge, %buck_set_dvs.exit.thread18
  %retval.0 = phi i32 [ %.lcssa, %buck_set_dvs.exit.thread18 ], [ %retval.0.i, %buck_set_dvs.exit.cleanup_crit_edge ], [ %retval.0.i.1, %buck_set_dvs.exit.1.cleanup_crit_edge ], [ 0, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_desc_list_voltage_linear_range(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_pca9450_regulator__288_856_pca9450_i2c_driver_init6, !1, !"__initcall__kmod_pca9450_regulator__288_856_pca9450_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pca9450-regulator.c", i32 856, i32 1}
!2 = !{ptr @__exitcall_pca9450_i2c_driver_exit, !1, !"__exitcall_pca9450_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pca9450-regulator.c", i32 858, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pca9450-regulator.c", i32 859, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pca9450-regulator.c", i32 860, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pca9450-regulator.c", i32 850, i32 11}
!12 = !{ptr @pca9450_i2c_driver, !13, !"pca9450_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pca9450-regulator.c", i32 848, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pca9450-regulator.c", i32 708, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pca9450_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pca9450_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/pca9450-regulator.c", i32 726, i32 3}
!24 = !{ptr @pca9450_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pca9450_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @pca9450_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/regulator/pca9450-regulator.c", i32 736, i32 20}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/pca9450-regulator.c", i32 739, i32 3}
!31 = !{ptr @pca9450_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pca9450_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/pca9450-regulator.c", i32 745, i32 3}
!35 = !{ptr @pca9450_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pca9450_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/pca9450-regulator.c", i32 752, i32 3}
!39 = !{ptr @pca9450_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pca9450_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/pca9450-regulator.c", i32 771, i32 4}
!43 = !{ptr @pca9450_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pca9450_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/pca9450-regulator.c", i32 781, i32 6}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/pca9450-regulator.c", i32 783, i32 3}
!49 = !{ptr @pca9450_i2c_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pca9450_i2c_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/pca9450-regulator.c", i32 793, i32 3}
!53 = !{ptr @pca9450_i2c_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pca9450_i2c_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/pca9450-regulator.c", i32 801, i32 3}
!57 = !{ptr @pca9450_i2c_probe._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pca9450_i2c_probe._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/pca9450-regulator.c", i32 809, i32 3}
!61 = !{ptr @pca9450_i2c_probe._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pca9450_i2c_probe._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/pca9450-regulator.c", i32 818, i32 59}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/pca9450-regulator.c", i32 821, i32 3}
!67 = !{ptr @pca9450_i2c_probe._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pca9450_i2c_probe._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/pca9450-regulator.c", i32 825, i32 2}
!71 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pca9450_i2c_probe._entry.39, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @pca9450_i2c_probe._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/pca9450-regulator.c", i32 218, i32 12}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/pca9450-regulator.c", i32 219, i32 16}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/pca9450-regulator.c", i32 220, i32 23}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/pca9450-regulator.c", i32 247, i32 12}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/pca9450-regulator.c", i32 248, i32 16}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/pca9450-regulator.c", i32 276, i32 12}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/pca9450-regulator.c", i32 277, i32 16}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/pca9450-regulator.c", i32 305, i32 12}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/pca9450-regulator.c", i32 306, i32 16}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/pca9450-regulator.c", i32 323, i32 12}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/pca9450-regulator.c", i32 324, i32 16}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/pca9450-regulator.c", i32 341, i32 12}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/pca9450-regulator.c", i32 342, i32 16}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/pca9450-regulator.c", i32 359, i32 12}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/pca9450-regulator.c", i32 360, i32 16}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/pca9450-regulator.c", i32 377, i32 12}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/pca9450-regulator.c", i32 378, i32 16}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/pca9450-regulator.c", i32 395, i32 12}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/pca9450-regulator.c", i32 396, i32 16}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/pca9450-regulator.c", i32 413, i32 12}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/pca9450-regulator.c", i32 414, i32 16}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/pca9450-regulator.c", i32 431, i32 12}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/pca9450-regulator.c", i32 432, i32 16}
!122 = !{ptr @pca9450a_regulators, !123, !"pca9450a_regulators", i1 false, i1 false}
!123 = !{!"../drivers/regulator/pca9450-regulator.c", i32 215, i32 44}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/pca9450-regulator.c", i32 194, i32 11}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/pca9450-regulator.c", i32 199, i32 11}
!128 = !{ptr @pca9450_dvs_buck_regulator_ops, !129, !"pca9450_dvs_buck_regulator_ops", i1 false, i1 false}
!129 = !{!"../drivers/regulator/pca9450-regulator.c", i32 72, i32 35}
!130 = !{ptr @pca9450_dvs_buck_volts, !131, !"pca9450_dvs_buck_volts", i1 false, i1 false}
!131 = !{!"../drivers/regulator/pca9450-regulator.c", i32 106, i32 34}
!132 = !{ptr @pca9450_dvs_buck_ramp_table, !133, !"pca9450_dvs_buck_ramp_table", i1 false, i1 false}
!133 = !{!"../drivers/regulator/pca9450-regulator.c", i32 68, i32 27}
!134 = !{ptr @pca9450_buck_regulator_ops, !135, !"pca9450_buck_regulator_ops", i1 false, i1 false}
!135 = !{!"../drivers/regulator/pca9450-regulator.c", i32 83, i32 35}
!136 = !{ptr @pca9450_buck_volts, !137, !"pca9450_buck_volts", i1 false, i1 false}
!137 = !{!"../drivers/regulator/pca9450-regulator.c", i32 114, i32 34}
!138 = !{ptr @pca9450_ldo_regulator_ops, !139, !"pca9450_ldo_regulator_ops", i1 false, i1 false}
!139 = !{!"../drivers/regulator/pca9450-regulator.c", i32 93, i32 35}
!140 = !{ptr @pca9450_ldo1_volts, !141, !"pca9450_ldo1_volts", i1 false, i1 false}
!141 = !{!"../drivers/regulator/pca9450-regulator.c", i32 123, i32 34}
!142 = !{ptr @pca9450_ldo2_volts, !143, !"pca9450_ldo2_volts", i1 false, i1 false}
!143 = !{!"../drivers/regulator/pca9450-regulator.c", i32 132, i32 34}
!144 = !{ptr @pca9450_ldo34_volts, !145, !"pca9450_ldo34_volts", i1 false, i1 false}
!145 = !{!"../drivers/regulator/pca9450-regulator.c", i32 140, i32 34}
!146 = !{ptr @pca9450_ldo5_volts, !147, !"pca9450_ldo5_volts", i1 false, i1 false}
!147 = !{!"../drivers/regulator/pca9450-regulator.c", i32 149, i32 34}
!148 = !{ptr @pca9450bc_regulators, !149, !"pca9450bc_regulators", i1 false, i1 false}
!149 = !{!"../drivers/regulator/pca9450-regulator.c", i32 453, i32 44}
!150 = !{ptr @pca9450_regmap_config, !151, !"pca9450_regmap_config", i1 false, i1 false}
!151 = !{!"../drivers/regulator/pca9450-regulator.c", i32 52, i32 35}
!152 = !{ptr @pca9450_volatile_regs, !153, !"pca9450_volatile_regs", i1 false, i1 false}
!153 = !{!"../drivers/regulator/pca9450-regulator.c", i32 47, i32 41}
!154 = !{ptr @pca9450_status_range, !155, !"pca9450_status_range", i1 false, i1 false}
!155 = !{!"../drivers/regulator/pca9450-regulator.c", i32 42, i32 34}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/pca9450-regulator.c", i32 667, i32 3}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @pca9450_irq_handler._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @pca9450_irq_handler._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/pca9450-regulator.c", i32 673, i32 3}
!163 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @pca9450_irq_handler._entry.72, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @pca9450_irq_handler._entry_ptr.75, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/pca9450-regulator.c", i32 676, i32 3}
!168 = !{ptr @pca9450_irq_handler._entry.76, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @pca9450_irq_handler._entry_ptr.78, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/pca9450-regulator.c", i32 679, i32 3}
!172 = !{ptr @pca9450_irq_handler._entry.79, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @pca9450_irq_handler._entry_ptr.81, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/pca9450-regulator.c", i32 682, i32 3}
!176 = !{ptr @pca9450_irq_handler._entry.82, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @pca9450_irq_handler._entry_ptr.84, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/pca9450-regulator.c", i32 685, i32 3}
!180 = !{ptr @pca9450_irq_handler._entry.85, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @pca9450_irq_handler._entry_ptr.87, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/pca9450-regulator.c", i32 688, i32 3}
!184 = !{ptr @pca9450_irq_handler._entry.88, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @pca9450_irq_handler._entry_ptr.90, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/regulator/pca9450-regulator.c", i32 691, i32 3}
!188 = !{ptr @pca9450_irq_handler._entry.91, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @pca9450_irq_handler._entry_ptr.93, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @pca9450_of_match, !191, !"pca9450_of_match", i1 false, i1 false}
!191 = !{!"../drivers/regulator/pca9450-regulator.c", i32 831, i32 34}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{i32 0, i32 33}
