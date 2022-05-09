; ModuleID = '/llk/IR_all_yes/drivers/regulator/pf8x00-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pf8x00-regulator.c"
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
%struct.pf8x00_regulator_data = type { %struct.regulator_desc, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pf8x00_chip = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_pf8x00_regulator__291_614_pf8x00_regulator_driver_init6 = internal global ptr @pf8x00_regulator_driver_init, section ".initcall6.init", align 4
@pf8x00_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pf8x00_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pf8x00_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pf8x00_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pf8x00_regulator_driver_exit = internal global ptr @pf8x00_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [64 x i8] c"pf8x00_regulator.author=Jagan Teki <jagan@amarulasolutions.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [68 x i8] c"pf8x00_regulator.author=Troy Kisky <troy.kisky@boundarydevices.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [83 x i8] c"pf8x00_regulator.description=Regulator Driver for NXP's PF8100/PF8121A/PF8200 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [57 x i8] c"pf8x00_regulator.file=drivers/regulator/pf8x00-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [32 x i8] c"pf8x00_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pf8x00\00", [25 x i8] zeroinitializer }, align 32
@pf8x00_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pf8100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pf8121a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pf8200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pf8x00_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pf8100\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pf8121a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pf8200\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pf8x00_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pf8x00_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 159, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pf8x00_regulator:559:(&pf8x00_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@pf8x00_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"regmap allocation failed with err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pf8x00_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/pf8x00-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pf8x00_i2c_probe._entry_ptr = internal global ptr @pf8x00_i2c_probe._entry, section ".printk_index", align 4
@pf8x00_regs_data = internal global { [12 x %struct.pf8x00_regulator_data], [784 x i8] } { [12 x %struct.pf8x00_regulator_data] [%struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.26, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @pf8x00_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_ldo_voltages, ptr null, i32 0, i32 0, i32 136, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 134, i32 1, i32 137, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.26, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @pf8x00_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_ldo_voltages, ptr null, i32 0, i32 0, i32 142, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 140, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 140, i32 1, i32 143, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.26, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @pf8x00_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_ldo_voltages, ptr null, i32 0, i32 0, i32 148, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 146, i32 1, i32 149, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.26, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @pf8x00_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_ldo_voltages, ptr null, i32 0, i32 0, i32 154, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 152, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 152, i32 1, i32 155, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 4, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 81, i32 255, i32 0, i32 78, i32 24, i32 0, i32 0, i32 80, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 80, i32 12, i32 82, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 5, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 89, i32 255, i32 0, i32 86, i32 24, i32 0, i32 0, i32 88, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 88, i32 12, i32 90, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 6, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 97, i32 255, i32 0, i32 94, i32 24, i32 0, i32 0, i32 96, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 96, i32 12, i32 98, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 7, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 105, i32 255, i32 0, i32 102, i32 24, i32 0, i32 0, i32 104, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 104, i32 12, i32 106, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 8, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 113, i32 255, i32 0, i32 110, i32 24, i32 0, i32 0, i32 112, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 112, i32 12, i32 114, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 9, i8 0, i32 178, i32 4, ptr @pf8x00_buck1_6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr @pf8x00_sw1_to_6_voltages, ptr null, i32 2, ptr null, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 121, i32 255, i32 0, i32 118, i32 24, i32 0, i32 0, i32 120, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 120, i32 12, i32 122, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.36, i8 0, ptr @.str.26, ptr @pf8x00_of_parse_cb, i32 10, i8 0, i32 32, i32 4, ptr @pf8x00_buck7_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 19000, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_sw7_voltages, ptr @pf8x00_sw_current_table, i32 0, i32 0, i32 129, i32 255, i32 0, i32 126, i32 24, i32 0, i32 0, i32 128, i32 3, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0, i32 0 }, %struct.pf8x00_regulator_data { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.37, i8 0, ptr @.str.26, ptr null, i32 11, i8 0, i32 4, i32 0, ptr @pf8x00_vsnvs_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @pf8x00_vsnvs_voltages, ptr null, i32 0, i32 0, i32 157, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0, i32 0, i32 0 }], [784 x i8] zeroinitializer }, align 32
@pf8x00_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@pf8x00_i2c_probe._entry_ptr.9 = internal global ptr @pf8x00_i2c_probe._entry.7, section ".printk_index", align 4
@pf8x00_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read chip family\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pf8x00_identify\00", [16 x i8] zeroinitializer }, align 32
@pf8x00_identify._entry_ptr = internal global ptr @pf8x00_identify._entry, section ".printk_index", align 4
@pf8x00_identify._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chip 0x%x is not from PF8X00 family\0A\00", [59 x i8] zeroinitializer }, align 32
@pf8x00_identify._entry_ptr.14 = internal global ptr @pf8x00_identify._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PF8100\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PF8121A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PF8200\00", [25 x i8] zeroinitializer }, align 32
@pf8x00_identify._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown pf8x00 device id 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pf8x00_identify._entry_ptr.20 = internal global ptr @pf8x00_identify._entry.18, section ".printk_index", align 4
@pf8x00_identify._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 540, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s PMIC found.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pf8x00_identify._entry_ptr.24 = internal global ptr @pf8x00_identify._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pf8x00_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pf8x00_set_suspend_voltage, ptr @pf8x00_suspend_enable, ptr @pf8x00_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pf8x00_ldo_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1500000, i32 1600000, i32 1800000, i32 1850000, i32 2150000, i32 2500000, i32 2800000, i32 3000000, i32 3100000, i32 3150000, i32 3200000, i32 3300000, i32 3350000, i32 1650000, i32 1700000, i32 5000000], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@pf8x00_buck1_6_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pf8x00_set_suspend_voltage, ptr @pf8x00_suspend_enable, ptr @pf8x00_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pf8x00_sw1_to_6_voltages = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 400000, i32 0, i32 176, i32 6250 }, %struct.linear_range { i32 1800000, i32 177, i32 177, i32 0 }], [32 x i8] zeroinitializer }, align 32
@pf8x00_sw_current_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2100000, i32 2600000, i32 3000000, i32 4500000], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck6\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck7\00", [26 x i8] zeroinitializer }, align 32
@pf8x00_buck7_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pf8x00_suspend_enable, ptr @pf8x00_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pf8x00_sw7_voltages = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1500000, i32 1600000, i32 1800000, i32 1850000, i32 2000000, i32 2100000, i32 2150000, i32 2250000, i32 2300000, i32 2400000, i32 2500000, i32 2800000, i32 3150000, i32 3200000, i32 3250000, i32 3300000, i32 3350000, i32 3400000, i32 3500000, i32 3800000, i32 4000000, i32 4100000, i32 4100000, i32 4100000, i32 4100000, i32 4100000], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsnvs\00", [26 x i8] zeroinitializer }, align 32
@pf8x00_vsnvs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pf8x00_vsnvs_voltages = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1800000, i32 3000000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@pf8x00_set_suspend_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to map %i uV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pf8x00_set_suspend_voltage\00", [37 x i8] zeroinitializer }, align 32
@pf8x00_set_suspend_voltage._entry_ptr = internal global ptr @pf8x00_set_suspend_voltage._entry, section ".printk_index", align 4
@pf8x00_set_suspend_voltage.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pf8x00_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"uV: %i, reg: 0x%x, msk: 0x%x, val: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@pf8x00_set_suspend_voltage._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set %i uV\0A\00", [43 x i8] zeroinitializer }, align 32
@pf8x00_set_suspend_voltage._entry_ptr.44 = internal global ptr @pf8x00_set_suspend_voltage._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,ilim-ma\00", [20 x i8] zeroinitializer }, align 32
@handle_ilim_property.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_ilim_property\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unspecified ilim for BUCK%d, use value stored in OTP\0A\00", [42 x i8] zeroinitializer }, align 32
@handle_ilim_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 223, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nxp,ilim-ma is deprecated, please use regulator-max-microamp\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@handle_ilim_property._entry_ptr = internal global ptr @handle_ilim_property._entry, section ".printk_index", align 4
@handle_ilim_property._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.4, i32 227, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nxp,ilim-ma used with incorrect regulator (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@handle_ilim_property._entry_ptr.52 = internal global ptr @handle_ilim_property._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp,phase-shift\00", [16 x i8] zeroinitializer }, align 32
@handle_shift_property.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_shift_property\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"unspecified phase-shift for BUCK%d, using OTP configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_shift_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 253, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"invalid phase_shift %d for BUCK%d, using OTP configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@handle_shift_property._entry_ptr = internal global ptr @handle_shift_property._entry, section ".printk_index", align 4
@handle_shift_property._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.4, i32 268, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nxp,phase-shift used with incorrect regulator (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_shift_property._entry_ptr.59 = internal global ptr @handle_shift_property._entry.57, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 2600, i64 3000, i64 4500]
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"pf8x00_regulator_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 606, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 609, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"pf8x00_dt_ids\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 590, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"pf8x00_i2c_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 598, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"pf8x00_regmap_config\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 141, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 559, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 562, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"pf8x00_regs_data\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 486, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 581, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 510, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 519, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 527, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 530, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 533, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 536, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 540, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 487, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"pf8x00_ldo_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 330, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"pf8x00_ldo_voltages\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 149, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 488, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 489, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 490, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 491, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"pf8x00_buck1_6_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 343, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [25 x i8] c"pf8x00_sw1_to_6_voltages\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 161, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [24 x i8] c"pf8x00_sw_current_table\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 155, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 492, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 493, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 494, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 495, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 496, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 497, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"pf8x00_buck7_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 357, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"pf8x00_sw7_voltages\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 167, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 498, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"pf8x00_vsnvs_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 371, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"pf8x00_vsnvs_voltages\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 175, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 312, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 316, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 321, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 216, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 218, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 223, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 227, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 242, i32 34 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 244, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 251, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [40 x i8] c"../drivers/regulator/pf8x00-regulator.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 268, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_pf8x00_regulator_driver_exit, ptr @__initcall__kmod_pf8x00_regulator__291_614_pf8x00_regulator_driver_init6, ptr @handle_ilim_property._entry, ptr @handle_ilim_property._entry.50, ptr @handle_ilim_property._entry_ptr, ptr @handle_ilim_property._entry_ptr.52, ptr @handle_shift_property._entry, ptr @handle_shift_property._entry.57, ptr @handle_shift_property._entry_ptr, ptr @handle_shift_property._entry_ptr.59, ptr @pf8x00_i2c_probe._entry, ptr @pf8x00_i2c_probe._entry.7, ptr @pf8x00_i2c_probe._entry_ptr, ptr @pf8x00_i2c_probe._entry_ptr.9, ptr @pf8x00_identify._entry, ptr @pf8x00_identify._entry.12, ptr @pf8x00_identify._entry.18, ptr @pf8x00_identify._entry.21, ptr @pf8x00_identify._entry_ptr, ptr @pf8x00_identify._entry_ptr.14, ptr @pf8x00_identify._entry_ptr.20, ptr @pf8x00_identify._entry_ptr.24, ptr @pf8x00_regulator_driver_exit, ptr @pf8x00_set_suspend_voltage._entry, ptr @pf8x00_set_suspend_voltage._entry.42, ptr @pf8x00_set_suspend_voltage._entry_ptr, ptr @pf8x00_set_suspend_voltage._entry_ptr.44, ptr @pf8x00_regulator_driver, ptr @.str, ptr @pf8x00_dt_ids, ptr @pf8x00_i2c_id, ptr @pf8x00_i2c_probe._key, ptr @pf8x00_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pf8x00_regs_data, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @pf8x00_ldo_ops, ptr @pf8x00_ldo_voltages, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pf8x00_buck1_6_ops, ptr @pf8x00_sw1_to_6_voltages, ptr @pf8x00_sw_current_table, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @pf8x00_buck7_ops, ptr @pf8x00_sw7_voltages, ptr @.str.37, ptr @pf8x00_vsnvs_ops, ptr @pf8x00_vsnvs_voltages, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_regs_data to i32), i32 3120, i32 3904, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_identify._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_identify._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_identify._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_ldo_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_buck1_6_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_sw1_to_6_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_sw_current_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_buck7_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_sw7_voltages to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_vsnvs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_vsnvs_voltages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_set_suspend_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pf8x00_set_suspend_voltage._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ilim_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ilim_property._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_shift_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_shift_property._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pf8x00_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pf8x00_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pf8x00_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pf8x00_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf8x00_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.pf8x00_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pf8x00_regmap_config, ptr noundef nonnull @pf8x00_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %5) #8
  br label %cleanup31

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !157
  %call.i57 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 0, ptr noundef nonnull %value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #8
  br label %pf8x00_identify.exit.thread

if.end.i:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  %conv.i = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv.i)
  %cond.i = icmp eq i32 %conv.i, 64
  br i1 %cond.i, label %sw.epilog.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #8
  br label %pf8x00_identify.exit

sw.epilog.i:                                      ; preds = %if.end.i
  %conv8.i = and i32 %10, 15
  %13 = zext i32 %conv8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv8.i, label %do.end15.i [
    i32 0, label %sw.epilog.i.do.end21.i_crit_edge
    i32 2, label %sw.bb10.i
    i32 8, label %sw.bb11.i
  ]

sw.epilog.i.do.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

sw.bb10.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

sw.bb11.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21.i

do.end15.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef %conv8.i) #8
  br label %pf8x00_identify.exit.thread

do.end21.i:                                       ; preds = %sw.bb11.i, %sw.bb10.i, %sw.epilog.i.do.end21.i_crit_edge
  %name.0.i = phi ptr [ @.str.17, %sw.bb11.i ], [ @.str.16, %sw.bb10.i ], [ @.str.15, %sw.epilog.i.do.end21.i_crit_edge ]
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.22, ptr noundef nonnull %name.0.i) #8
  br label %pf8x00_identify.exit

pf8x00_identify.exit.thread:                      ; preds = %do.end15.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end15.i ], [ %call.i57, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  br label %cleanup31

pf8x00_identify.exit:                             ; preds = %do.end21.i, %do.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap18 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %id.062, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond.cleanup31_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup31_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %pf8x00_identify.exit
  %id.062 = phi i32 [ 0, %pf8x00_identify.exit ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.pf8x00_regulator_data], ptr @pf8x00_regs_data, i32 0, i32 %id.062
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %config, align 4
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %driver_data, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %24 = ptrtoint ptr %regmap18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %regmap18, align 4
  %call20 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #5
  %cmp.i58 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %26) #8
  %27 = ptrtoint ptr %call20 to i32
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup.thread, %for.cond.cleanup31_crit_edge, %pf8x00_identify.exit.thread, %if.then6, %entry.cleanup31_crit_edge
  %retval.2 = phi i32 [ %5, %if.then6 ], [ -12, %entry.cleanup31_crit_edge ], [ %retval.0.i.ph, %pf8x00_identify.exit.thread ], [ %27, %cleanup.thread ], [ 0, %for.cond.cleanup31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf8x00_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @handle_ilim_property(ptr noundef %np, ptr noundef %desc, ptr noundef %config)
  tail call fastcc void @handle_shift_property(ptr noundef %np, ptr noundef %desc, ptr noundef %config)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

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
define internal i32 @pf8x00_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %suspend_voltage_cache = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %suspend_voltage_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %suspend_voltage_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %uV)
  %cmp = icmp eq i32 %1, %uV
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @regulator_map_voltage_iterate(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call4, ptr noundef nonnull @.str.38, i32 noundef %uV) #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pf8x00_set_suspend_voltage.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pf8x00_set_suspend_voltage, %do.end15)) #5
          to label %if.then11 [label %do.end15], !srcloc !158

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %suspend_voltage_reg = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %suspend_voltage_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_voltage_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pf8x00_set_suspend_voltage.__UNIQUE_ID_ddebug290, ptr noundef %call12, ptr noundef nonnull @.str.41, i32 noundef %uV, i32 noundef %3, i32 noundef %5, i32 noundef %call1) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body6
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %suspend_voltage_reg16 = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %suspend_voltage_reg16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_voltage_reg16, align 4
  %vsel_mask18 = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 28
  %10 = ptrtoint ptr %vsel_mask18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vsel_mask18, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %call1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call25, ptr noundef nonnull @.str.43, i32 noundef %uV) #8
  br label %cleanup

if.end26:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %suspend_voltage_cache to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %uV, ptr %suspend_voltage_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call.i, %do.end24 ], [ 0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf8x00_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  %suspend_enable_reg = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %suspend_enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %suspend_enable_reg, align 4
  %suspend_enable_mask = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %suspend_enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %1, i32 noundef %3, i32 noundef %3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pf8x00_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  %suspend_enable_reg = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %suspend_enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %suspend_enable_reg, align 4
  %suspend_enable_mask = getelementptr inbounds %struct.pf8x00_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %suspend_enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ilim_property(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !157
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = add i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %if.then, label %do.end19

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.45, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %do.end14, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ilim_property.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ilim_property, %cleanup)) #5
          to label %if.then9 [label %cleanup], !srcloc !158

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pf8x00_chip, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %sub = add i32 %10, -3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ilim_property.__UNIQUE_ID_ddebug288, ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef %sub) #5
  br label %cleanup

do.end14:                                         ; preds = %if.then
  %dev15 = getelementptr inbounds %struct.pf8x00_chip, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.48) #8
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %16, label %do.end14.swxilim_select.exit_crit_edge [
    i32 4500, label %sw.bb4.i
    i32 2600, label %sw.bb2.i
    i32 3000, label %sw.bb3.i
  ]

do.end14.swxilim_select.exit_crit_edge:           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %swxilim_select.exit

sw.bb2.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %swxilim_select.exit

sw.bb3.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %swxilim_select.exit

sw.bb4.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %swxilim_select.exit

swxilim_select.exit:                              ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %do.end14.swxilim_select.exit_crit_edge
  %ilim_sel.0.i = phi i32 [ 24, %sw.bb4.i ], [ 16, %sw.bb3.i ], [ 8, %sw.bb2.i ], [ 0, %do.end14.swxilim_select.exit_crit_edge ]
  %18 = shl i32 %14, 3
  %conv.i = add i32 %18, 46
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %conv5.i = and i32 %conv.i, 254
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %conv5.i, i32 noundef 24, i32 noundef %ilim_sel.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.pf8x00_chip, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %swxilim_select.exit, %if.then9, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_shift_property(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %conv = add i32 %1, 253
  %conv2 = and i32 %conv, 255
  %2 = shl i32 %conv, 3
  %conv5 = add i32 %2, 46
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !157
  %6 = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %if.then, label %do.end44

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.53, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_shift_property.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_shift_property, %cleanup)) #5
          to label %if.then17 [label %cleanup], !srcloc !158

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pf8x00_chip, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_shift_property.__UNIQUE_ID_ddebug289, ptr noundef %9, ptr noundef nonnull @.str.55, i32 noundef %conv2) #5
  br label %cleanup

if.end19:                                         ; preds = %if.then
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 316, i32 %11)
  %12 = icmp ult i32 %11, 316
  %rem = srem i32 %11, 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp25.not = icmp eq i32 %rem, 0
  %or.cond65 = and i1 %12, %cmp25.not
  br i1 %or.cond65, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef %11, i32 noundef %conv2) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %11)
  %cmp34 = icmp ugt i32 %11, 44
  %div67.lhs.trunc = trunc i32 %11 to i16
  %div6768 = udiv i16 %div67.lhs.trunc, 45
  %div67.zext = zext i16 %div6768 to i32
  %sub37 = add nsw i32 %div67.zext, -1
  %phase.0 = select i1 %cmp34, i32 %sub37, i32 7
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %conv39 = and i32 %conv5, 254
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %conv39, i32 noundef 7, i32 noundef %phase.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev45 = getelementptr inbounds %struct.pf8x00_chip, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.58, i32 noundef %conv2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end33, %do.end30, %if.then17, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_pf8x00_regulator__291_614_pf8x00_regulator_driver_init6, !1, !"__initcall__kmod_pf8x00_regulator__291_614_pf8x00_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 614, i32 1}
!2 = !{ptr @__exitcall_pf8x00_regulator_driver_exit, !1, !"__exitcall_pf8x00_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 616, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 617, i32 1}
!7 = !{ptr @__UNIQUE_ID_description294, !8, !"__UNIQUE_ID_description294", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 618, i32 1}
!9 = !{ptr @__UNIQUE_ID_file295, !10, !"__UNIQUE_ID_file295", i1 false, i1 false}
!10 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 619, i32 1}
!11 = !{ptr @__UNIQUE_ID_license296, !10, !"__UNIQUE_ID_license296", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 609, i32 11}
!14 = !{ptr @pf8x00_regulator_driver, !15, !"pf8x00_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 606, i32 26}
!16 = !{ptr @pf8x00_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 559, i32 17}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 562, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pf8x00_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pf8x00_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 581, i32 4}
!29 = !{ptr @pf8x00_i2c_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pf8x00_i2c_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @pf8x00_regmap_config, !32, !"pf8x00_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 141, i32 35}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 510, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pf8x00_identify._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pf8x00_identify._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 519, i32 3}
!40 = !{ptr @pf8x00_identify._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pf8x00_identify._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 527, i32 10}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 530, i32 10}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 533, i32 10}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 536, i32 3}
!50 = !{ptr @pf8x00_identify._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pf8x00_identify._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 540, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pf8x00_identify._entry.21, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pf8x00_identify._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 487, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 488, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 489, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 490, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 491, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 492, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 493, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 494, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 495, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 496, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 497, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 498, i32 2}
!82 = !{ptr @pf8x00_regs_data, !83, !"pf8x00_regs_data", i1 false, i1 false}
!83 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 486, i32 37}
!84 = !{ptr @pf8x00_ldo_ops, !85, !"pf8x00_ldo_ops", i1 false, i1 false}
!85 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 330, i32 35}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 312, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @pf8x00_set_suspend_voltage._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @pf8x00_set_suspend_voltage._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 316, i32 2}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pf8x00_set_suspend_voltage.__UNIQUE_ID_ddebug290, !92, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 321, i32 3}
!97 = !{ptr @pf8x00_set_suspend_voltage._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pf8x00_set_suspend_voltage._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @pf8x00_ldo_voltages, !100, !"pf8x00_ldo_voltages", i1 false, i1 false}
!100 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 149, i32 18}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 216, i32 34}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 218, i32 4}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @handle_ilim_property.__UNIQUE_ID_ddebug288, !104, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 223, i32 3}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @handle_ilim_property._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @handle_ilim_property._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 227, i32 3}
!114 = !{ptr @handle_ilim_property._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @handle_ilim_property._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 242, i32 34}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 244, i32 4}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @handle_shift_property.__UNIQUE_ID_ddebug289, !119, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 251, i32 4}
!124 = !{ptr @handle_shift_property._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @handle_shift_property._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 268, i32 3}
!128 = !{ptr @handle_shift_property._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @handle_shift_property._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @pf8x00_buck1_6_ops, !131, !"pf8x00_buck1_6_ops", i1 false, i1 false}
!131 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 343, i32 35}
!132 = !{ptr @pf8x00_sw1_to_6_voltages, !133, !"pf8x00_sw1_to_6_voltages", i1 false, i1 false}
!133 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 161, i32 34}
!134 = !{ptr @pf8x00_sw_current_table, !135, !"pf8x00_sw_current_table", i1 false, i1 false}
!135 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 155, i32 27}
!136 = !{ptr @pf8x00_buck7_ops, !137, !"pf8x00_buck7_ops", i1 false, i1 false}
!137 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 357, i32 35}
!138 = !{ptr @pf8x00_sw7_voltages, !139, !"pf8x00_sw7_voltages", i1 false, i1 false}
!139 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 167, i32 18}
!140 = !{ptr @pf8x00_vsnvs_ops, !141, !"pf8x00_vsnvs_ops", i1 false, i1 false}
!141 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 371, i32 35}
!142 = !{ptr @pf8x00_vsnvs_voltages, !143, !"pf8x00_vsnvs_voltages", i1 false, i1 false}
!143 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 175, i32 18}
!144 = !{ptr @pf8x00_dt_ids, !145, !"pf8x00_dt_ids", i1 false, i1 false}
!145 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 590, i32 34}
!146 = !{ptr @pf8x00_i2c_id, !147, !"pf8x00_i2c_id", i1 false, i1 false}
!147 = !{!"../drivers/regulator/pf8x00-regulator.c", i32 598, i32 35}
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
!158 = !{i64 2148771957, i64 2148771962, i64 2148771975, i64 2148772019, i64 2148772053, i64 2148772074}
