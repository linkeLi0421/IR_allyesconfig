; ModuleID = '/llk/IR_all_yes/drivers/regulator/pfuze100-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pfuze100-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pfuze_regulator = type { %struct.regulator_desc, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pfuze_chip = type { i32, i32, ptr, ptr, [16 x %struct.pfuze_regulator], [16 x ptr], ptr }

@__initcall__kmod_pfuze100_regulator__288_858_pfuze_driver_init6 = internal global ptr @pfuze_driver_init, section ".initcall6.init", align 4
@pfuze_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pfuze100_regulator_probe, ptr @pfuze100_regulator_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pfuze_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pfuze_driver_exit = internal global ptr @pfuze_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"pfuze100_regulator.author=Robin Gong <b38343@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [90 x i8] c"pfuze100_regulator.description=Regulator Driver for Freescale PFUZE100/200/3000/3001 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"pfuze100_regulator.file=drivers/regulator/pfuze100-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"pfuze100_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pfuze100-regulator\00", [45 x i8] zeroinitializer }, align 32
@pfuze_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pfuze100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pfuze200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pfuze3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pfuze3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 49 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pfuze100_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/pfuze100-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr = internal global ptr @pfuze100_regulator_probe._entry, section ".printk_index", align 4
@pfuze100_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No dts match or id table match found\0A\00", [58 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.8 = internal global ptr @pfuze100_regulator_probe._entry.6, section ".printk_index", align 4
@pfuze100_regulator_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pfuze_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pfuze100_regulator:714:(&pfuze_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"regmap allocation failed with err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.12 = internal global ptr @pfuze100_regulator_probe._entry.10, section ".printk_index", align 4
@pfuze100_regulator_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unrecognized pfuze chip ID!\0A\00", [35 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.15 = internal global ptr @pfuze100_regulator_probe._entry.13, section ".printk_index", align 4
@pfuze3001_regulators = internal global { [10 x %struct.pfuze_regulator], [624 x i8] } { [10 x %struct.pfuze_regulator] [%struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @pfuze3000_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze3000_sw1a, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 15, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i8 33, i8 31, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 8, i32 0, ptr @pfuze3000_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze3000_sw2lo, ptr null, i32 0, i32 0, i32 53, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 15, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i8 54, i8 7, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 61, i8 15, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 7, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_vsnvs, ptr null, i32 0, i32 0, i32 107, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 108, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 109, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 2850000, i32 150000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 110, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 4, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 2850000, i32 150000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 111, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 111, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 111, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 112, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 113, i8 32, i8 0 }], [624 x i8] zeroinitializer }, align 32
@pfuze3000_regulators = internal global { [13 x %struct.pfuze_regulator], [808 x i8] } { [13 x %struct.pfuze_regulator] [%struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @pfuze3000_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze3000_sw1a, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 15, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i8 33, i8 31, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 47, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @pfuze3000_sw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze3000_sw2lo, ptr null, i32 0, i32 0, i32 53, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 15, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i8 54, i8 7, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 61, i8 15, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 4, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_swbst, ptr null, i32 0, i32 0, i32 102, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 102, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 7, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_vsnvs, ptr null, i32 0, i32 0, i32 107, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, ptr @pfuze100_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 750000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 106, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 108, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 109, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 2850000, i32 150000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 110, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 4, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 2850000, i32 150000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 111, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 111, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 111, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 112, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 113, i8 32, i8 0 }], [808 x i8] zeroinitializer }, align 32
@pfuze200_regulators = internal global { [14 x %struct.pfuze_regulator], [880 x i8] } { [14 x %struct.pfuze_regulator] [%struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 300000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 33, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 54, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 61, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 68, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 4, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_swbst, ptr null, i32 0, i32 0, i32 102, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 102, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 7, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_vsnvs, ptr null, i32 0, i32 0, i32 107, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, ptr @pfuze100_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 750000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 106, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 108, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 109, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.64, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 110, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.65, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 111, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 111, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 111, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.66, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 112, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 113, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_coin, ptr null, i32 0, i32 0, i32 26, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }], [880 x i8] zeroinitializer }, align 32
@pfuze100_regulators = internal global { [16 x %struct.pfuze_regulator], [992 x i8] } { [16 x %struct.pfuze_regulator] [%struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 300000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 33, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.69, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 300000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 49, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 47, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 53, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 54, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 61, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 68, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.70, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @pfuze100_sw_regulator_ops, i32 0, i32 0, ptr null, i32 400000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 15, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 75, i8 63, i8 1 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_swbst, ptr null, i32 0, i32 0, i32 102, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 102, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 7, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_vsnvs, ptr null, i32 0, i32 0, i32 107, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 107, i32 72, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @pfuze100_fixed_regulator_ops, i32 0, i32 0, ptr null, i32 750000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 106, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 108, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 108, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 108, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.63, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 109, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 109, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 109, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.64, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 110, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 110, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 110, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.65, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 111, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 111, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 111, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.66, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 112, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 112, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 112, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.67, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 16, i32 0, ptr @pfuze100_ldo_regulator_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 113, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 113, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 113, i8 32, i8 0 }, %struct.pfuze_regulator { %struct.regulator_desc { ptr @.str.68, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 8, i32 0, ptr @pfuze100_swb_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pfuze100_coin, ptr null, i32 0, i32 0, i32 26, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0 }], [992 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 761, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pfuze%s found.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.19 = internal global ptr @pfuze100_regulator_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"200\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3000\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3001\00", [27 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fails to read from the register.\0A\00", [62 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.26 = internal global ptr @pfuze100_regulator_probe._entry.24, section ".printk_index", align 4
@pfuze3000_sw2hi = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500000, i32 2800000, i32 2850000, i32 3000000, i32 3100000, i32 3150000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@pfuze100_sw_disable_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @pfuze100_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register regulator%s failed\0A\00", [35 x i8] zeroinitializer }, align 32
@pfuze100_regulator_probe._entry_ptr.29 = internal global ptr @pfuze100_regulator_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,pmic-stby-poweroff\00", [41 x i8] zeroinitializer }, align 32
@pfuze_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 649, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Assuming misprogrammed ID=0x8\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pfuze_identify\00", [17 x i8] zeroinitializer }, align 32
@pfuze_identify._entry_ptr = internal global ptr @pfuze_identify._entry, section ".printk_index", align 4
@pfuze_identify._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 654, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Illegal ID: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pfuze_identify._entry_ptr.36 = internal global ptr @pfuze_identify._entry.33, section ".printk_index", align 4
@pfuze_identify._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 663, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Full layer: %x, Metal layer: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@pfuze_identify._entry_ptr.39 = internal global ptr @pfuze_identify._entry.37, section ".printk_index", align 4
@pfuze_identify._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.3, i32 669, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FAB: %x, FIN: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@pfuze_identify._entry_ptr.42 = internal global ptr @pfuze_identify._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW1\00", [28 x i8] zeroinitializer }, align 32
@pfuze3000_sw_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @pfuze100_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pfuze3000_sw1a = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 700000, i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1800000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW2\00", [28 x i8] zeroinitializer }, align 32
@pfuze3000_sw2lo = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW3\00", [28 x i8] zeroinitializer }, align 32
@pfuze100_sw_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pfuze100_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSNVS\00", [26 x i8] zeroinitializer }, align 32
@pfuze100_swb_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pfuze100_vsnvs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1300000, i32 1500000, i32 1800000, i32 3000000], [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VLDO1\00", [26 x i8] zeroinitializer }, align 32
@pfuze100_ldo_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VLDO2\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCCSD\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V33\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VLDO3\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VLDO4\00", [26 x i8] zeroinitializer }, align 32
@pfuze100_set_ramp_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ramp failed, err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pfuze100_set_ramp_delay\00", [40 x i8] zeroinitializer }, align 32
@pfuze100_set_ramp_delay._entry_ptr = internal global ptr @pfuze100_set_ramp_delay._entry, section ".printk_index", align 4
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SW1A\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SW1B\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SWBST\00", [26 x i8] zeroinitializer }, align 32
@pfuze100_swbst = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5000000, i32 5050000, i32 5100000, i32 5150000], [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VREFDDR\00", [24 x i8] zeroinitializer }, align 32
@pfuze100_fixed_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SW1AB\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SW3A\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SW3B\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN1\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN2\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN3\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN4\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN5\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VGEN6\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COIN\00", [27 x i8] zeroinitializer }, align 32
@pfuze100_coin = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SW1C\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW4\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsl,pfuze-support-disable-sw\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pfuze_parse_regulators_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulators node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pfuze_parse_regulators_dt\00", [38 x i8] zeroinitializer }, align 32
@pfuze_parse_regulators_dt._entry_ptr = internal global ptr @pfuze_parse_regulators_dt._entry, section ".printk_index", align 4
@pfuze3001_matches = internal global { [10 x %struct.of_regulator_match], [56 x i8] } { [10 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.78, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.79, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.80, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.81, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.82, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.83, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.84, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.85, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.86, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.87, ptr null, ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@pfuze_matches = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pfuze3000_matches = internal global { [13 x %struct.of_regulator_match], [92 x i8] } { [13 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.88, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.89, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.79, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.80, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.90, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.81, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.91, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.82, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.83, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.84, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.85, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.86, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.87, ptr null, ptr null, ptr null, ptr null }], [92 x i8] zeroinitializer }, align 32
@pfuze200_matches = internal global { [14 x %struct.of_regulator_match], [72 x i8] } { [14 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.92, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.79, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.93, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.94, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.90, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.81, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.91, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.95, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.96, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.97, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.98, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.99, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.100, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.101, ptr null, ptr null, ptr null, ptr null }], [72 x i8] zeroinitializer }, align 32
@pfuze100_matches = internal global { [16 x %struct.of_regulator_match], [64 x i8] } { [16 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.92, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.102, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.79, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.93, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.94, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.103, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.90, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.81, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.91, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.95, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.96, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.97, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.98, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.99, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.100, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.101, ptr null, ptr null, ptr null, ptr null }], [64 x i8] zeroinitializer }, align 32
@pfuze_parse_regulators_dt._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pfuze_parse_regulators_dt._entry_ptr.77 = internal global ptr @pfuze_parse_regulators_dt._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw1\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw2\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw3\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsnvs\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vldo1\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccsd\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"v33\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vldo4\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw1a\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw1b\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"swbst\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vrefddr\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sw1ab\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw3a\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw3b\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen1\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen2\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen3\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen4\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen5\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vgen6\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"coin\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sw1c\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sw4\00", [28 x i8] zeroinitializer }, align 32
@pfuze_power_off_prepare_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 615, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Requested pm_power_off_prepare handler for not supported chip\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pfuze_power_off_prepare_init\00", [35 x i8] zeroinitializer }, align 32
@pfuze_power_off_prepare_init._entry_ptr = internal global ptr @pfuze_power_off_prepare_init._entry, section ".printk_index", align 4
@pm_power_off_prepare = external dso_local local_unnamed_addr global ptr, align 4
@pfuze_power_off_prepare_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 620, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pm_power_off_prepare is already registered.\0A\00", [51 x i8] zeroinitializer }, align 32
@pfuze_power_off_prepare_init._entry_ptr.108 = internal global ptr @pfuze_power_off_prepare_init._entry.106, section ".printk_index", align 4
@syspm_pfuze_chip = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pfuze_power_off_prepare_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.3, i32 625, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"syspm_pfuze_chip is already set.\0A\00", [62 x i8] zeroinitializer }, align 32
@pfuze_power_off_prepare_init._entry_ptr.111 = internal global ptr @pfuze_power_off_prepare_init._entry.109, section ".printk_index", align 4
@pfuze_power_off_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 576, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Configure standby mode for power off\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pfuze_power_off_prepare\00", [40 x i8] zeroinitializer }, align 32
@pfuze_power_off_prepare._entry_ptr = internal global ptr @pfuze_power_off_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 49]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 49]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 49]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 49]
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"pfuze_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 850, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 852, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"pfuze_dt_ids\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 108, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 700, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 707, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"pfuze_regmap_config\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 674, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 714, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 717, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 724, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"pfuze3001_regulators\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 421, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"pfuze3000_regulators\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 405, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"pfuze200_regulators\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 388, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"pfuze100_regulators\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 369, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 758, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 784, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"pfuze3000_sw2hi\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 104, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [34 x i8] c"pfuze100_sw_disable_regulator_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 184, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 827, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 834, i32 7 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 649, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 654, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 661, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 668, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 422, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"pfuze3000_sw_regulator_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 206, i32 35 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"pfuze3000_sw1a\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 93, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 423, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"pfuze3000_sw2lo\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 100, i32 18 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 424, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [26 x i8] c"pfuze100_sw_regulator_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 176, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 425, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"pfuze100_swb_regulator_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 195, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant [15 x i8] c"pfuze100_vsnvs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 85, i32 18 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 426, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"pfuze100_ldo_regulator_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 160, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 427, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 428, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 429, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 430, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 431, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 152, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 406, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 407, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 410, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"pfuze100_swbst\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 81, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 412, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [29 x i8] c"pfuze100_fixed_regulator_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 169, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 389, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 391, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 392, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 396, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 397, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 398, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 399, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 400, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 401, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 402, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [14 x i8] c"pfuze100_coin\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 89, i32 18 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 371, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 375, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 518, i32 32 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 521, i32 36 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 523, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [18 x i8] c"pfuze3001_matches\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 492, i32 34 }
@___asan_gen_.390 = private unnamed_addr constant [14 x i8] c"pfuze_matches\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 506, i32 35 }
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"pfuze3000_matches\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 474, i32 34 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"pfuze200_matches\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 455, i32 34 }
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"pfuze100_matches\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 435, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 554, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 494, i32 12 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 495, i32 12 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 496, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 497, i32 12 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 498, i32 12 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 499, i32 12 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 500, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 501, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 502, i32 12 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 503, i32 12 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 476, i32 12 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 477, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 480, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 482, i32 12 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 457, i32 12 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 459, i32 12 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 460, i32 12 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 464, i32 12 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 465, i32 12 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 466, i32 12 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 467, i32 12 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 468, i32 12 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 469, i32 12 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 470, i32 12 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 437, i32 12 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 441, i32 12 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 615, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 620, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"syspm_pfuze_chip\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 572, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 625, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [42 x i8] c"../drivers/regulator/pfuze100-regulator.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 576, i32 2 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pfuze_driver_exit, ptr @__initcall__kmod_pfuze100_regulator__288_858_pfuze_driver_init6, ptr @pfuze100_regulator_probe._entry, ptr @pfuze100_regulator_probe._entry.10, ptr @pfuze100_regulator_probe._entry.13, ptr @pfuze100_regulator_probe._entry.16, ptr @pfuze100_regulator_probe._entry.24, ptr @pfuze100_regulator_probe._entry.27, ptr @pfuze100_regulator_probe._entry.6, ptr @pfuze100_regulator_probe._entry_ptr, ptr @pfuze100_regulator_probe._entry_ptr.12, ptr @pfuze100_regulator_probe._entry_ptr.15, ptr @pfuze100_regulator_probe._entry_ptr.19, ptr @pfuze100_regulator_probe._entry_ptr.26, ptr @pfuze100_regulator_probe._entry_ptr.29, ptr @pfuze100_regulator_probe._entry_ptr.8, ptr @pfuze100_set_ramp_delay._entry, ptr @pfuze100_set_ramp_delay._entry_ptr, ptr @pfuze_driver_exit, ptr @pfuze_identify._entry, ptr @pfuze_identify._entry.33, ptr @pfuze_identify._entry.37, ptr @pfuze_identify._entry.40, ptr @pfuze_identify._entry_ptr, ptr @pfuze_identify._entry_ptr.36, ptr @pfuze_identify._entry_ptr.39, ptr @pfuze_identify._entry_ptr.42, ptr @pfuze_parse_regulators_dt._entry, ptr @pfuze_parse_regulators_dt._entry.75, ptr @pfuze_parse_regulators_dt._entry_ptr, ptr @pfuze_parse_regulators_dt._entry_ptr.77, ptr @pfuze_power_off_prepare._entry, ptr @pfuze_power_off_prepare._entry_ptr, ptr @pfuze_power_off_prepare_init._entry, ptr @pfuze_power_off_prepare_init._entry.106, ptr @pfuze_power_off_prepare_init._entry.109, ptr @pfuze_power_off_prepare_init._entry_ptr, ptr @pfuze_power_off_prepare_init._entry_ptr.108, ptr @pfuze_power_off_prepare_init._entry_ptr.111, ptr @pfuze_driver, ptr @.str, ptr @pfuze_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @pfuze100_regulator_probe._key, ptr @pfuze_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @pfuze3001_regulators, ptr @pfuze3000_regulators, ptr @pfuze200_regulators, ptr @pfuze100_regulators, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @pfuze3000_sw2hi, ptr @pfuze100_sw_disable_regulator_ops, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @pfuze3000_sw_regulator_ops, ptr @pfuze3000_sw1a, ptr @.str.44, ptr @pfuze3000_sw2lo, ptr @.str.45, ptr @pfuze100_sw_regulator_ops, ptr @.str.46, ptr @pfuze100_swb_regulator_ops, ptr @pfuze100_vsnvs, ptr @.str.47, ptr @pfuze100_ldo_regulator_ops, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @pfuze100_swbst, ptr @.str.58, ptr @pfuze100_fixed_regulator_ops, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @pfuze100_coin, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @pfuze3001_matches, ptr @pfuze_matches, ptr @pfuze3000_matches, ptr @pfuze200_matches, ptr @pfuze100_matches, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @syspm_pfuze_chip, ptr @.str.110, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3001_regulators to i32), i32 2480, i32 3104, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_regulators to i32), i32 3224, i32 4032, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze200_regulators to i32), i32 3472, i32 4352, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulators to i32), i32 3968, i32 4960, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_sw2hi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_sw_disable_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_regulator_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_identify._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_identify._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_identify._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_sw_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_sw1a to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_sw2lo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_sw_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_swb_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_vsnvs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_ldo_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_set_ramp_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_swbst to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_fixed_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_coin to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_parse_regulators_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3001_matches to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_matches to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze3000_matches to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze200_matches to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze100_matches to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_parse_regulators_dt._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_power_off_prepare_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_power_off_prepare_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syspm_pfuze_chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_power_off_prepare_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pfuze_power_off_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pfuze_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pfuze_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pfuze_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pfuze_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfuze100_regulator_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4052, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup143_crit_edge, label %if.end

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @pfuze_dt_ids, ptr noundef %dev) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup143

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %if.end19

if.else:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %id, null
  br i1 %tobool10.not, label %do.end16, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  br label %if.end19

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup143

if.end19:                                         ; preds = %if.then11, %if.end9
  %storemerge = phi i32 [ %7, %if.then11 ], [ %5, %if.end9 ]
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev21 = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev21, align 4
  %call22 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pfuze_regmap_config, ptr noundef nonnull @pfuze100_regulator_probe._key, ptr noundef nonnull @.str.9) #6
  %regmap = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %12) #9
  br label %cleanup143

if.end32:                                         ; preds = %if.end19
  %call33 = tail call fastcc i32 @pfuze_identify(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup143

if.end40:                                         ; preds = %if.end32
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end50 [
    i32 49, label %if.end40.cond.false56.sink.split_crit_edge
    i32 3, label %sw.bb42
    i32 1, label %do.end50.thread247
  ]

if.end40.cond.false56.sink.split_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56.sink.split

sw.bb42:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56.sink.split

do.end50.thread247:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %pfuze_regulators45 = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %pfuze_regulators45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pfuze200_regulators, ptr %pfuze_regulators45, align 4
  br label %cond.end60

do.end50:                                         ; preds = %if.end40
  %pfuze_regulators47 = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %pfuze_regulators47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pfuze100_regulators, ptr %pfuze_regulators47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cond258 = icmp eq i32 %14, 0
  br i1 %cond258, label %do.end50.cond.end60_crit_edge, label %do.end50.cond.false56_crit_edge

do.end50.cond.false56_crit_edge:                  ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56

do.end50.cond.end60_crit_edge:                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end60

cond.false56.sink.split:                          ; preds = %sw.bb42, %if.end40.cond.false56.sink.split_crit_edge
  %pfuze3000_regulators.sink = phi ptr [ @pfuze3000_regulators, %sw.bb42 ], [ @pfuze3001_regulators, %if.end40.cond.false56.sink.split_crit_edge ]
  %sw_check_end.0244.ph = phi i32 [ 2, %sw.bb42 ], [ 1, %if.end40.cond.false56.sink.split_crit_edge ]
  %regulator_num.0240.ph = phi i32 [ 13, %sw.bb42 ], [ 10, %if.end40.cond.false56.sink.split_crit_edge ]
  %pfuze_regulators43 = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %pfuze_regulators43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pfuze3000_regulators.sink, ptr %pfuze_regulators43, align 4
  br label %cond.false56

cond.false56:                                     ; preds = %cond.false56.sink.split, %do.end50.cond.false56_crit_edge
  %sw_hi.0246 = phi i32 [ 64, %do.end50.cond.false56_crit_edge ], [ 8, %cond.false56.sink.split ]
  %sw_check_end.0244 = phi i32 [ 5, %do.end50.cond.false56_crit_edge ], [ %sw_check_end.0244.ph, %cond.false56.sink.split ]
  %sw_check_start.0242 = phi i32 [ 2, %do.end50.cond.false56_crit_edge ], [ %sw_check_end.0244.ph, %cond.false56.sink.split ]
  %regulator_num.0240 = phi i32 [ 16, %do.end50.cond.false56_crit_edge ], [ %regulator_num.0240.ph, %cond.false56.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp58 = icmp eq i32 %14, 3
  %cond = select i1 %cmp58, ptr @.str.22, ptr @.str.23
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false56, %do.end50.cond.end60_crit_edge, %do.end50.thread247
  %sw_hi.0245 = phi i32 [ 64, %do.end50.cond.end60_crit_edge ], [ %sw_hi.0246, %cond.false56 ], [ 64, %do.end50.thread247 ]
  %sw_check_end.0243 = phi i32 [ 5, %do.end50.cond.end60_crit_edge ], [ %sw_check_end.0244, %cond.false56 ], [ 3, %do.end50.thread247 ]
  %sw_check_start.0241 = phi i32 [ 2, %do.end50.cond.end60_crit_edge ], [ %sw_check_start.0242, %cond.false56 ], [ 1, %do.end50.thread247 ]
  %regulator_num.0239 = phi i32 [ 16, %do.end50.cond.end60_crit_edge ], [ %regulator_num.0240, %cond.false56 ], [ 14, %do.end50.thread247 ]
  %cond61 = phi ptr [ @.str.20, %do.end50.cond.end60_crit_edge ], [ %cond, %cond.false56 ], [ @.str.21, %do.end50.thread247 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond61) #9
  %regulator_descs = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 4
  %pfuze_regulators62 = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %pfuze_regulators62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pfuze_regulators62, align 4
  %21 = call ptr @memcpy(ptr %regulator_descs, ptr %20, i32 3968)
  %call63 = tail call fastcc i32 @pfuze_parse_regulators_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.cond.preheader, label %cond.end60.cleanup143_crit_edge

cond.end60.cleanup143_crit_edge:                  ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

for.cond.preheader:                               ; preds = %cond.end60
  %flags = getelementptr inbounds %struct.pfuze_chip, ptr %call.i, i32 0, i32 1
  %init_data113 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data114 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %of_node116 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0261 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val, align 4, !annotation !271
  %arrayidx = getelementptr %struct.pfuze_chip, ptr %call.i, i32 0, i32 4, i32 %i.0261
  %23 = load ptr, ptr @pfuze_matches, align 4
  %init_data.i = getelementptr %struct.of_regulator_match, ptr %23, i32 %i.0261, i32 2
  %24 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0261, i32 %sw_check_start.0241)
  %cmp71.not = icmp ult i32 %i.0261, %sw_check_start.0241
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0261, i32 %sw_check_end.0243)
  %cmp72.not = icmp ugt i32 %i.0261, %sw_check_end.0243
  %or.cond = or i1 %cmp71.not, %cmp72.not
  br i1 %or.cond, label %for.body.if.end94_crit_edge, label %if.then73

for.body.if.end94_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then73:                                        ; preds = %for.body
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 27
  %28 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsel_reg, align 4
  %call75 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup.thread

if.end82:                                         ; preds = %if.then73
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %and = and i32 %31, %sw_hi.0245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.end82.if.end94_crit_edge, label %if.then84

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then84:                                        ; preds = %if.end82
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %33, label %if.else90 [
    i32 3, label %if.then84.if.then89_crit_edge
    i32 49, label %if.then84.if.then89_crit_edge277
  ]

if.then84.if.then89_crit_edge277:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

if.then84.if.then89_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

if.then89:                                        ; preds = %if.then84.if.then89_crit_edge, %if.then84.if.then89_crit_edge277
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 23
  %35 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pfuze3000_sw2hi, ptr %volt_table, align 4
  br label %if.end94.sink.split

if.else90:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %min_uV = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 14
  %36 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 800000, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 15
  %37 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 50000, ptr %uV_step, align 4
  br label %if.end94.sink.split

if.end94.sink.split:                              ; preds = %if.else90, %if.then89
  %.sink = phi i32 [ 51, %if.else90 ], [ 8, %if.then89 ]
  %n_voltages91 = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 8
  %38 = ptrtoint ptr %n_voltages91 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %n_voltages91, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.end82.if.end94_crit_edge, %for.body.if.end94_crit_edge
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and95 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end110_crit_edge, label %if.then97

if.end94.if.end110_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then97:                                        ; preds = %if.end94
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %switch = icmp ult i32 %42, 2
  br i1 %switch, label %if.then103, label %if.then97.if.end110_crit_edge

if.then97.if.end110_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then103:                                       ; preds = %if.then97
  %sw_reg = getelementptr %struct.pfuze_chip, ptr %call.i, i32 0, i32 4, i32 %i.0261, i32 3
  %43 = ptrtoint ptr %sw_reg to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sw_reg, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool106.not = icmp eq i8 %44, 0
  br i1 %tobool106.not, label %if.then103.if.end110_crit_edge, label %if.then107

if.then103.if.end110_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 10
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pfuze100_sw_disable_regulator_ops, ptr %ops, align 4
  %enable_val = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 36
  %46 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %enable_val, align 4
  %disable_val = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 37
  %47 = ptrtoint ptr %disable_val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %disable_val, align 4
  %enable_time = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 57
  %48 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 500, ptr %enable_time, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.then103.if.end110_crit_edge, %if.then97.if.end110_crit_edge, %if.end94.if.end110_crit_edge
  %49 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %config, align 4
  %50 = ptrtoint ptr %init_data113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %25, ptr %init_data113, align 4
  %51 = ptrtoint ptr %driver_data114 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data114, align 4
  %52 = load ptr, ptr @pfuze_matches, align 4
  %of_node.i = getelementptr %struct.of_regulator_match, ptr %52, i32 %i.0261, i32 3
  %53 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node.i, align 4
  %55 = ptrtoint ptr %of_node116 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %of_node116, align 4
  %call118 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %arrayidx119 = getelementptr %struct.pfuze_chip, ptr %call.i, i32 0, i32 5, i32 %i.0261
  %56 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call118, ptr %arrayidx119, align 4
  %cmp.i233 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %do.end126, label %for.inc

do.end126:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %pfuze_regulators62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pfuze_regulators62, align 4
  %arrayidx129 = getelementptr %struct.pfuze_regulator, ptr %58, i32 %i.0261
  %59 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %60) #9
  %61 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx119, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end126, %do.end80
  %retval.1.ph = phi i32 [ %call75, %do.end80 ], [ %63, %do.end126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup143

for.inc:                                          ; preds = %if.end110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  %inc = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc, %regulator_num.0239
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %64 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node, align 8
  %call.i234 = call ptr @of_find_property(ptr noundef %65, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i234, null
  br i1 %tobool.i.not, label %for.end.cleanup143_crit_edge, label %if.then140

for.end.cleanup143_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.then140:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call fastcc i32 @pfuze_power_off_prepare_init(ptr noundef nonnull %call.i)
  br label %cleanup143

cleanup143:                                       ; preds = %if.then140, %for.end.cleanup143_crit_edge, %cleanup.thread, %cond.end60.cleanup143_crit_edge, %do.end38, %if.then25, %do.end16, %do.end, %entry.cleanup143_crit_edge
  %retval.2 = phi i32 [ %12, %if.then25 ], [ %call33, %do.end38 ], [ %call141, %if.then140 ], [ -19, %do.end ], [ -19, %do.end16 ], [ -12, %entry.cleanup143_crit_edge ], [ %call63, %cond.end60.cleanup143_crit_edge ], [ 0, %for.end.cleanup143_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pfuze100_regulator_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @syspm_pfuze_chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @syspm_pfuze_chip, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off_prepare to i32))
  store ptr null, ptr @pm_power_off_prepare, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfuze_identify(ptr nocapture noundef readonly %pfuze_chip) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !271
  %regmap = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %pfuze_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pfuze_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %do.end, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.31) #9
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %9 = ptrtoint ptr %pfuze_chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pfuze_chip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %10)
  %cmp5.not = icmp eq i32 %and, %10
  %and7 = lshr i32 %4, 4
  %shr = and i32 %and7, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %10)
  %cmp9.not = icmp eq i32 %shr, %10
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp9.not
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp12.not = icmp eq i32 %4, %10
  %or.cond61 = select i1 %or.cond, i1 true, i1 %cmp12.not
  br i1 %or.cond61, label %if.else.if.end19_crit_edge, label %do.end16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %11 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %4) #9
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %do.end
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %14, i32 noundef 3, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end27, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %if.end19
  %dev28 = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %15 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev28, align 4
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %and29 = lshr i32 %18, 4
  %shr30 = and i32 %and29, 15
  %and31 = and i32 %18, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef %shr30, i32 noundef %and31) #9
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end39, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev28, align 4
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %and41 = lshr i32 %24, 2
  %shr42 = and i32 %and41, 3
  %and43 = and i32 %24, 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.41, i32 noundef %shr42, i32 noundef %and43) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end39 ], [ -19, %do.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call33, %do.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfuze_parse_regulators_dt(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pfuze_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_node_get(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.71, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.pfuze_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call, ptr noundef nonnull @.str.72) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.73) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %7, label %sw.default [
    i32 49, label %sw.bb
    i32 3, label %sw.bb10
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @pfuze3001_matches, ptr @pfuze_matches, align 4
  %call9 = tail call i32 @of_regulator_match(ptr noundef %1, ptr noundef nonnull %call5, ptr noundef nonnull @pfuze3001_matches, i32 noundef 10) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @pfuze3000_matches, ptr @pfuze_matches, align 4
  %call11 = tail call i32 @of_regulator_match(ptr noundef %1, ptr noundef nonnull %call5, ptr noundef nonnull @pfuze3000_matches, i32 noundef 13) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @pfuze200_matches, ptr @pfuze_matches, align 4
  %call13 = tail call i32 @of_regulator_match(ptr noundef %1, ptr noundef nonnull %call5, ptr noundef nonnull @pfuze200_matches, i32 noundef 14) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @pfuze100_matches, ptr @pfuze_matches, align 4
  %call15 = tail call i32 @of_regulator_match(ptr noundef %1, ptr noundef nonnull %call5, ptr noundef nonnull @pfuze100_matches, i32 noundef 16) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb
  %ret.0 = phi i32 [ %call15, %sw.default ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb ]
  tail call void @of_node_put(ptr noundef nonnull %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %do.end19, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end19 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pfuze_power_off_prepare_init(ptr noundef %pfuze_chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfuze_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pfuze_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.104) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off_prepare to i32))
  %4 = load ptr, ptr @pm_power_off_prepare, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end5, label %do.end3

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.107) #9
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr @syspm_pfuze_chip, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.pfuze_chip, ptr %pfuze_chip, i32 0, i32 3
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.110) #9
  br label %return

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %pfuze_chip, ptr @syspm_pfuze_chip, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off_prepare to i32))
  store ptr @pfuze_power_off_prepare, ptr @pm_power_off_prepare, align 4
  br label %return

return:                                           ; preds = %if.end11, %do.end9, %do.end3, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -16, %do.end3 ], [ -16, %do.end9 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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
define internal i32 @pfuze100_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %1, label %sw.default [
    i32 49, label %entry.if.end16_crit_edge
    i32 3, label %sw.epilog
    i32 1, label %sw.bb3
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp4 = icmp slt i32 %call1, 4
  br i1 %cmp4, label %sw.bb3.if.then_crit_edge, label %sw.bb3.if.end16_crit_edge

sw.bb3.if.end16_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.bb3.if.then_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1)
  %cmp7 = icmp slt i32 %call1, 6
  br i1 %cmp7, label %sw.default.if.then_crit_edge, label %sw.default.if.end16_crit_edge

sw.default.if.end16_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.default.if.then_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp = icmp slt i32 %call1, 4
  br i1 %cmp, label %sw.epilog.if.then_crit_edge, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %sw.default.if.then_crit_edge, %sw.bb3.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp_delay)
  %cmp9 = icmp sgt i32 %ramp_delay, 0
  br i1 %cmp9, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div28 = udiv i32 12500, %ramp_delay
  %3 = lshr i32 %div28, 1
  %4 = lshr i32 %div28, 3
  %sub = sub nsw i32 %3, %4
  %phi.bo = shl nsw i32 %sub, 6
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %ramp_bits.0 = phi i32 [ %phi.bo, %if.then10 ], [ 0, %if.then.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.pfuze_chip, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_reg, align 4
  %add = add i32 %10, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef 192, i32 noundef %ramp_bits.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %do.end, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pfuze_chip, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef %call.i) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge, %sw.default.if.end16_crit_edge, %sw.bb3.if.end16_crit_edge, %entry.if.end16_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %if.end.if.end16_crit_edge ], [ -13, %entry.if.end16_crit_edge ], [ -13, %sw.epilog.if.end16_crit_edge ], [ -13, %sw.default.if.end16_crit_edge ], [ -13, %sw.bb3.if.end16_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfuze_power_off_prepare() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @syspm_pfuze_chip, align 4
  %dev = getelementptr inbounds %struct.pfuze_chip, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.112) #9
  %3 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap = getelementptr inbounds %struct.pfuze_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 35, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap1 = getelementptr inbounds %struct.pfuze_chip, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap1, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 49, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap3 = getelementptr inbounds %struct.pfuze_chip, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap3, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 56, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap5 = getelementptr inbounds %struct.pfuze_chip, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap5, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 63, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap7 = getelementptr inbounds %struct.pfuze_chip, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap7, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 70, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap9 = getelementptr inbounds %struct.pfuze_chip, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap9, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 77, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap11 = getelementptr inbounds %struct.pfuze_chip, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap11, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 108, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap13 = getelementptr inbounds %struct.pfuze_chip, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap13, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 109, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap15 = getelementptr inbounds %struct.pfuze_chip, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap15, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 110, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap17 = getelementptr inbounds %struct.pfuze_chip, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap17, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 111, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap19 = getelementptr inbounds %struct.pfuze_chip, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap19, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 112, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = load ptr, ptr @syspm_pfuze_chip, align 4
  %regmap21 = getelementptr inbounds %struct.pfuze_chip, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap21, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 113, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !257, !258, !259, !260}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__initcall__kmod_pfuze100_regulator__288_858_pfuze_driver_init6, !1, !"__initcall__kmod_pfuze100_regulator__288_858_pfuze_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 858, i32 1}
!2 = !{ptr @__exitcall_pfuze_driver_exit, !1, !"__exitcall_pfuze_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 860, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 861, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 862, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 852, i32 11}
!12 = !{ptr @pfuze_driver, !13, !"pfuze_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 850, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 700, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pfuze100_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pfuze100_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 707, i32 3}
!24 = !{ptr @pfuze100_regulator_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pfuze100_regulator_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @pfuze100_regulator_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 714, i32 23}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 717, i32 3}
!31 = !{ptr @pfuze100_regulator_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pfuze100_regulator_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 724, i32 3}
!35 = !{ptr @pfuze100_regulator_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pfuze100_regulator_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 758, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pfuze100_regulator_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pfuze100_regulator_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 784, i32 5}
!48 = !{ptr @pfuze100_regulator_probe._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pfuze100_regulator_probe._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 827, i32 4}
!52 = !{ptr @pfuze100_regulator_probe._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pfuze100_regulator_probe._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 834, i32 7}
!56 = !{ptr @pfuze_regmap_config, !57, !"pfuze_regmap_config", i1 false, i1 false}
!57 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 674, i32 35}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 649, i32 3}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pfuze_identify._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pfuze_identify._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 654, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pfuze_identify._entry.33, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @pfuze_identify._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 661, i32 2}
!70 = !{ptr @pfuze_identify._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @pfuze_identify._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 668, i32 2}
!74 = !{ptr @pfuze_identify._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pfuze_identify._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 422, i32 2}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 423, i32 2}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 424, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 425, i32 2}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 426, i32 2}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 427, i32 2}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 428, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 429, i32 2}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 430, i32 2}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 431, i32 2}
!96 = !{ptr @pfuze3001_regulators, !97, !"pfuze3001_regulators", i1 false, i1 false}
!97 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 421, i32 31}
!98 = !{ptr @pfuze3000_sw_regulator_ops, !99, !"pfuze3000_sw_regulator_ops", i1 false, i1 false}
!99 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 206, i32 35}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 152, i32 4}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pfuze100_set_ramp_delay._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @pfuze100_set_ramp_delay._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @pfuze3000_sw1a, !106, !"pfuze3000_sw1a", i1 false, i1 false}
!106 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 93, i32 18}
!107 = !{ptr @pfuze3000_sw2lo, !108, !"pfuze3000_sw2lo", i1 false, i1 false}
!108 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 100, i32 18}
!109 = !{ptr @pfuze100_sw_regulator_ops, !110, !"pfuze100_sw_regulator_ops", i1 false, i1 false}
!110 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 176, i32 35}
!111 = !{ptr @pfuze100_swb_regulator_ops, !112, !"pfuze100_swb_regulator_ops", i1 false, i1 false}
!112 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 195, i32 35}
!113 = !{ptr @pfuze100_vsnvs, !114, !"pfuze100_vsnvs", i1 false, i1 false}
!114 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 85, i32 18}
!115 = !{ptr @pfuze100_ldo_regulator_ops, !116, !"pfuze100_ldo_regulator_ops", i1 false, i1 false}
!116 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 160, i32 35}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 406, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 407, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 410, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 412, i32 2}
!125 = !{ptr @pfuze3000_regulators, !126, !"pfuze3000_regulators", i1 false, i1 false}
!126 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 405, i32 31}
!127 = !{ptr @pfuze100_swbst, !128, !"pfuze100_swbst", i1 false, i1 false}
!128 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 81, i32 18}
!129 = !{ptr @pfuze100_fixed_regulator_ops, !130, !"pfuze100_fixed_regulator_ops", i1 false, i1 false}
!130 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 169, i32 35}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 389, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 391, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 392, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 396, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 397, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 398, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 399, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 400, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 401, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 402, i32 2}
!151 = !{ptr @pfuze200_regulators, !152, !"pfuze200_regulators", i1 false, i1 false}
!152 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 388, i32 31}
!153 = !{ptr @pfuze100_coin, !154, !"pfuze100_coin", i1 false, i1 false}
!154 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 89, i32 18}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 371, i32 2}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 375, i32 2}
!159 = !{ptr @pfuze100_regulators, !160, !"pfuze100_regulators", i1 false, i1 false}
!160 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 369, i32 31}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 518, i32 32}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 521, i32 36}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 523, i32 3}
!167 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @pfuze_parse_regulators_dt._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @pfuze_parse_regulators_dt._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 554, i32 3}
!172 = !{ptr @pfuze_parse_regulators_dt._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @pfuze_parse_regulators_dt._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 494, i32 12}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 495, i32 12}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 496, i32 12}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 497, i32 12}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 498, i32 12}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 499, i32 12}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 500, i32 12}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 501, i32 12}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 502, i32 12}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 503, i32 12}
!194 = !{ptr @pfuze3001_matches, !195, !"pfuze3001_matches", i1 false, i1 false}
!195 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 492, i32 34}
!196 = !{ptr @pfuze_matches, !197, !"pfuze_matches", i1 false, i1 false}
!197 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 506, i32 35}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 476, i32 12}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 477, i32 12}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 480, i32 12}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 482, i32 12}
!206 = !{ptr @pfuze3000_matches, !207, !"pfuze3000_matches", i1 false, i1 false}
!207 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 474, i32 34}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 457, i32 12}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 459, i32 12}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 460, i32 12}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 464, i32 12}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 465, i32 12}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 466, i32 12}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 467, i32 12}
!222 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 468, i32 12}
!224 = !{ptr @.str.100, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 469, i32 12}
!226 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 470, i32 12}
!228 = !{ptr @pfuze200_matches, !229, !"pfuze200_matches", i1 false, i1 false}
!229 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 455, i32 34}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 437, i32 12}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 441, i32 12}
!234 = !{ptr @pfuze100_matches, !235, !"pfuze100_matches", i1 false, i1 false}
!235 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 435, i32 34}
!236 = !{ptr @pfuze3000_sw2hi, !237, !"pfuze3000_sw2hi", i1 false, i1 false}
!237 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 104, i32 18}
!238 = !{ptr @pfuze100_sw_disable_regulator_ops, !239, !"pfuze100_sw_disable_regulator_ops", i1 false, i1 false}
!239 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 184, i32 35}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 615, i32 3}
!242 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @pfuze_power_off_prepare_init._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @pfuze_power_off_prepare_init._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 620, i32 3}
!247 = !{ptr @pfuze_power_off_prepare_init._entry.106, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @pfuze_power_off_prepare_init._entry_ptr.108, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 625, i32 3}
!251 = !{ptr @pfuze_power_off_prepare_init._entry.109, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @pfuze_power_off_prepare_init._entry_ptr.111, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @syspm_pfuze_chip, !254, !"syspm_pfuze_chip", i1 false, i1 false}
!254 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 572, i32 27}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 576, i32 2}
!257 = !{ptr @.str.113, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @pfuze_power_off_prepare._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @pfuze_power_off_prepare._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @pfuze_dt_ids, !261, !"pfuze_dt_ids", i1 false, i1 false}
!261 = !{!"../drivers/regulator/pfuze100-regulator.c", i32 108, i32 34}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{!"auto-init"}
!272 = !{i8 0, i8 2}
