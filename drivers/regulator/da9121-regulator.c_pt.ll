; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9121-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9121-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.da9121_variant_info = type { i32, i32, ptr }
%struct.da9121_range = type { i32, i32, i32, i32, i32 }
%struct.da9121_field = type { i32, i32 }
%struct.status_event_data = type { i32, i32, i32, i32, i32, i32, ptr }
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
%struct.da9121 = type { ptr, %struct.delayed_work, ptr, ptr, [2 x ptr], [2 x i32], i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_da9121_regulator__288_1204_da9121_regulator_driver_init6 = internal global ptr @da9121_regulator_driver_init, section ".initcall6.init", align 4
@da9121_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da9121_i2c_probe, ptr @da9121_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9121_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9121_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9121_regulator_driver_exit = internal global ptr @da9121_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [57 x i8] c"da9121_regulator.file=drivers/regulator/da9121-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [32 x i8] c"da9121_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9121\00", [25 x i8] zeroinitializer }, align 32
@da9121_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9217\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9122\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9131\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9141\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9142\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@da9121_i2c_id = internal constant { [10 x %struct.i2c_device_id], [48 x i8] } { [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9121\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da9130\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da9217\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"da9122\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"da9131\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"da9220\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"da9132\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"da9141\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"da9142\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da9121_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set IRQ masks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9121_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9121-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9121_i2c_probe._entry_ptr = internal global ptr @da9121_i2c_probe._entry, section ".printk_index", align 4
@da9121_of_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: Failed\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9121_of_get_id\00", [47 x i8] zeroinitializer }, align 32
@da9121_of_get_id._entry_ptr = internal global ptr @da9121_of_get_id._entry, section ".printk_index", align 4
@da9121_1ch_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 75, ptr @da9121_1ch_writeable_table, ptr @da9121_1ch_readable_table, ptr @da9121_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@da9121_2ch_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 75, ptr @da9121_2ch_writeable_table, ptr @da9121_2ch_readable_table, ptr @da9121_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@local_da9121_regulators = internal constant { [6 x [2 x ptr]], [48 x i8] } { [6 x [2 x ptr]] [[2 x ptr] [ptr @da9121_reg, ptr null], [2 x ptr] [ptr @da9220_reg, ptr getelementptr (i8, ptr @da9220_reg, i64 244)], [2 x ptr] [ptr @da9122_reg, ptr getelementptr (i8, ptr @da9122_reg, i64 244)], [2 x ptr] [ptr @da9217_reg, ptr null], [2 x ptr] [ptr @da9141_reg, ptr null], [2 x ptr] [ptr @da9142_reg, ptr null]], [48 x i8] zeroinitializer }, align 32
@da9121_matches = internal global { [2 x %struct.of_regulator_match], [56 x i8] } { [2 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.11, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr null, ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@da9121_assign_chip_model._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"da9121_regulator:1039:(regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@da9121_assign_chip_model._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to configure a register map: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9121_assign_chip_model\00", [39 x i8] zeroinitializer }, align 32
@da9121_assign_chip_model._entry_ptr = internal global ptr @da9121_assign_chip_model._entry, section ".printk_index", align 4
@da9121_1ch_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9121_1ch_writeable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9121_1ch_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9121_1ch_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9121_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9121_volatile_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9121_1ch_writeable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 10 }, %struct.regmap_range { i32 13, i32 14 }, %struct.regmap_range { i32 16, i32 21 }, %struct.regmap_range { i32 32, i32 34 }, %struct.regmap_range { i32 36, i32 38 }], [56 x i8] zeroinitializer }, align 32
@da9121_1ch_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 10 }, %struct.regmap_range { i32 13, i32 14 }, %struct.regmap_range { i32 16, i32 21 }, %struct.regmap_range { i32 32, i32 38 }, %struct.regmap_range { i32 72, i32 75 }], [56 x i8] zeroinitializer }, align 32
@da9121_volatile_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 6 }, %struct.regmap_range { i32 16, i32 21 }, %struct.regmap_range { i32 32, i32 38 }], [40 x i8] zeroinitializer }, align 32
@da9121_2ch_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9121_2ch_writeable_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9121_2ch_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9121_2ch_readable_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9121_2ch_writeable_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 10 }, %struct.regmap_range { i32 13, i32 14 }, %struct.regmap_range { i32 16, i32 21 }, %struct.regmap_range { i32 32, i32 34 }, %struct.regmap_range { i32 36, i32 39 }, %struct.regmap_range { i32 40, i32 42 }, %struct.regmap_range { i32 44, i32 47 }], [40 x i8] zeroinitializer }, align 32
@da9121_2ch_readable_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 10 }, %struct.regmap_range { i32 13, i32 14 }, %struct.regmap_range { i32 16, i32 21 }, %struct.regmap_range { i32 32, i32 39 }, %struct.regmap_range { i32 40, i32 47 }, %struct.regmap_range { i32 72, i32 75 }], [48 x i8] zeroinitializer }, align 32
@da9121_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 20000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 20, i32 0, i32 0, ptr @da9121_map_mode }, [44 x i8] zeroinitializer }, align 32
@da9220_reg = internal constant { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.33, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 1, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }], [120 x i8] zeroinitializer }, align 32
@da9122_reg = internal constant { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.33, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 1, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }], [120 x i8] zeroinitializer }, align 32
@da9217_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 191, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 30, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }, [44 x i8] zeroinitializer }, align 32
@da9141_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 131, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 50, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }, [44 x i8] zeroinitializer }, align 32
@da9142_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.11, i8 0, ptr @.str.12, ptr @da9121_of_parse_cb, i32 0, i8 0, i32 131, i32 0, ptr @da9121_buck_ops, i32 0, i32 0, ptr null, i32 500000, i32 10000, i32 50, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9121_map_mode }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9121_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @da9121_set_current_limit, ptr @da9121_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9121_buck_set_mode, ptr @da9121_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@variant_parameters = internal constant { [6 x %struct.da9121_variant_info], [56 x i8] } { [6 x %struct.da9121_variant_info] [%struct.da9121_variant_info { i32 1, i32 2, ptr @da9121_10A_2phase_current }, %struct.da9121_variant_info { i32 2, i32 1, ptr @da9121_3A_1phase_current }, %struct.da9121_variant_info { i32 2, i32 1, ptr @da9121_5A_1phase_current }, %struct.da9121_variant_info { i32 1, i32 2, ptr @da9121_6A_2phase_current }, %struct.da9121_variant_info { i32 1, i32 4, ptr @da914x_40A_4phase_current }, %struct.da9121_variant_info { i32 1, i32 2, ptr @da914x_20A_2phase_current }], [56 x i8] zeroinitializer }, align 32
@da9121_of_parse_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: excessive regulators for device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9121_of_parse_cb\00", [45 x i8] zeroinitializer }, align 32
@da9121_of_parse_cb._entry_ptr = internal global ptr @da9121_of_parse_cb._entry, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"da9121-enable\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,ripple-cancel\00", [46 x i8] zeroinitializer }, align 32
@da9121_of_parse_cb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot set ripple mode, err: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@da9121_of_parse_cb._entry_ptr.20 = internal global ptr @da9121_of_parse_cb._entry.18, section ".printk_index", align 4
@da9121_10A_2phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 7000000, i32 20000000, i32 1000000, i32 1, i32 14 }, [44 x i8] zeroinitializer }, align 32
@da9121_3A_1phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 3500000, i32 6000000, i32 500000, i32 1, i32 6 }, [44 x i8] zeroinitializer }, align 32
@da9121_5A_1phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 3500000, i32 10000000, i32 500000, i32 1, i32 14 }, [44 x i8] zeroinitializer }, align 32
@da9121_6A_2phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 7000000, i32 12000000, i32 1000000, i32 1, i32 6 }, [44 x i8] zeroinitializer }, align 32
@da914x_40A_4phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 26000000, i32 78000000, i32 4000000, i32 1, i32 14 }, [44 x i8] zeroinitializer }, align 32
@da914x_20A_2phase_current = internal global { %struct.da9121_range, [44 x i8] } { %struct.da9121_range { i32 13000000, i32 39000000, i32 2000000, i32 1, i32 14 }, [44 x i8] zeroinitializer }, align 32
@da9121_current_field = internal constant { [2 x %struct.da9121_field], [16 x i8] } { [2 x %struct.da9121_field] [%struct.da9121_field { i32 34, i32 15 }, %struct.da9121_field { i32 42, i32 15 }], [16 x i8] zeroinitializer }, align 32
@da9121_set_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot update BUCK current limit, err: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9121_set_current_limit\00", [39 x i8] zeroinitializer }, align 32
@da9121_set_current_limit._entry_ptr = internal global ptr @da9121_set_current_limit._entry, section ".printk_index", align 4
@da9121_ceiling_selector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Requested current out of regulator capability\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da9121_ceiling_selector\00", [40 x i8] zeroinitializer }, align 32
@da9121_ceiling_selector._entry_ptr = internal global ptr @da9121_ceiling_selector._entry, section ".printk_index", align 4
@da9121_ceiling_selector._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Best match falls below minimum requested current\0A\00", [46 x i8] zeroinitializer }, align 32
@da9121_ceiling_selector._entry_ptr.27 = internal global ptr @da9121_ceiling_selector._entry.25, section ".printk_index", align 4
@da9121_get_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot read BUCK register: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9121_get_current_limit\00", [39 x i8] zeroinitializer }, align 32
@da9121_get_current_limit._entry_ptr = internal global ptr @da9121_get_current_limit._entry, section ".printk_index", align 4
@da9121_mode_field = internal constant { [2 x %struct.da9121_field], [16 x i8] } { [2 x %struct.da9121_field] [%struct.da9121_field { i32 36, i32 3 }, %struct.da9121_field { i32 44, i32 3 }], [16 x i8] zeroinitializer }, align 32
@da9121_buck_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.30, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9121_buck_get_mode\00", [43 x i8] zeroinitializer }, align 32
@da9121_buck_get_mode._entry_ptr = internal global ptr @da9121_buck_get_mode._entry, section ".printk_index", align 4
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DA9220/DA9132 BUCK1\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DA9220/DA9132 BUCK2\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DA9122/DA9131 BUCK1\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DA9122/DA9131 BUCK2\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9217 BUCK1\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9141\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9142 BUCK1\00", [19 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot read device ID: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9121_check_device_type\00", [39 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr = internal global ptr @da9121_check_device_type._entry, section ".printk_index", align 4
@da9121_check_device_type._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot read variant ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr.43 = internal global ptr @da9121_check_device_type._entry.41, section ".printk_index", align 4
@da9121_check_device_type._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid device ID: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr.46 = internal global ptr @da9121_check_device_type._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9121\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9130\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9220\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9132\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9122\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9131\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9217\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA9142\00", [25 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.3, i32 971, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Device detected (device-ID: 0x%02X, var-ID: 0x%02X, %s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr.59 = internal global ptr @da9121_check_device_type._entry.56, section ".printk_index", align 4
@da9121_check_device_type._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.40, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Device tree configuration does not match detected device.\0A\00", [37 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr.62 = internal global ptr @da9121_check_device_type._entry.60, section ".printk_index", align 4
@da9121_check_device_type._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.40, ptr @.str.3, i32 987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot support variant MRC: 0x%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@da9121_check_device_type._entry_ptr.65 = internal global ptr @da9121_check_device_type._entry.63, section ".printk_index", align 4
@da9121_set_regulator_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register regulator %s, %d/%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da9121_set_regulator_config\00", [36 x i8] zeroinitializer }, align 32
@da9121_set_regulator_config._entry_ptr = internal global ptr @da9121_set_regulator_config._entry, section ".printk_index", align 4
@__const.da9121_config_irq.mask_all = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 255, i32 255], align 4
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dlg,irq-polling-delay-passive-ms\00", [63 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1069, ptr @.str.71, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Out-of-range polling period %d ms\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9121_config_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry_ptr = internal global ptr @da9121_config_irq._entry, section ".printk_index", align 4
@da9121_config_irq._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.3, i32 1082, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed IRQ request: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry_ptr.74 = internal global ptr @da9121_config_irq._entry.72, section ".printk_index", align 4
@da9121_config_irq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.70, ptr @.str.3, i32 1089, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry_ptr.76 = internal global ptr @da9121_config_irq._entry.75, section ".printk_index", align 4
@da9121_config_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&chip->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@da9121_config_irq.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&chip->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.3, i32 1095, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Interrupt polling period set at %d ms\0A\00", [57 x i8] zeroinitializer }, align 32
@da9121_config_irq._entry_ptr.82 = internal global ptr @da9121_config_irq._entry.80, section ".printk_index", align 4
@da9121_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read EVENT registers %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9121_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr = internal global ptr @da9121_irq_handler._entry, section ".printk_index", align 4
@da9121_irq_handler._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read MASK registers: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr.87 = internal global ptr @da9121_irq_handler._entry.85, section ".printk_index", align 4
@status_event_handling = internal constant { [14 x %struct.status_event_data], [120 x i8] } { [14 x %struct.status_event_data] [%struct.status_event_data { i32 0, i32 0, i32 4, i32 4, i32 4, i32 0, ptr @.str.99 }, %struct.status_event_data { i32 0, i32 0, i32 2, i32 2, i32 2, i32 144, ptr null }, %struct.status_event_data { i32 0, i32 0, i32 1, i32 1, i32 1, i32 16, ptr null }, %struct.status_event_data { i32 1, i32 1, i32 8, i32 8, i32 8, i32 0, ptr @.str.100 }, %struct.status_event_data { i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, ptr null }, %struct.status_event_data { i32 1, i32 1, i32 2, i32 2, i32 2, i32 1, ptr null }, %struct.status_event_data { i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, ptr null }, %struct.status_event_data { i32 2, i32 1, i32 128, i32 128, i32 128, i32 0, ptr @.str.101 }, %struct.status_event_data { i32 2, i32 1, i32 64, i32 64, i32 64, i32 4, ptr null }, %struct.status_event_data { i32 2, i32 1, i32 32, i32 32, i32 32, i32 1, ptr null }, %struct.status_event_data { i32 2, i32 1, i32 16, i32 16, i32 16, i32 2, ptr null }, %struct.status_event_data { i32 0, i32 2, i32 1, i32 1, i32 1, i32 0, ptr @.str.102 }, %struct.status_event_data { i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, ptr @.str.103 }, %struct.status_event_data { i32 0, i32 2, i32 4, i32 4, i32 4, i32 0, ptr @.str.104 }], [120 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.84, ptr @.str.3, i32 724, ptr @.str.71, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr.89 = internal global ptr @da9121_irq_handler._entry.88, section ".printk_index", align 4
@da9121_irq_handler._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.84, ptr @.str.3, i32 735, ptr @.str.71, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unhandled event(s) in bank%d 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr.92 = internal global ptr @da9121_irq_handler._entry.90, section ".printk_index", align 4
@da9121_irq_handler._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.84, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to mask 0x%02x interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr.95 = internal global ptr @da9121_irq_handler._entry.93, section ".printk_index", align 4
@da9121_irq_handler._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.84, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fail to write EVENTs %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da9121_irq_handler._entry_ptr.98 = internal global ptr @da9121_irq_handler._entry.96, section ".printk_index", align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Handled E_SG\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handled E_PG1\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handled E_PG2\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Handled E_GPIO0\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Handled E_GPIO1\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Handled E_GPIO2\0A\00", [47 x i8] zeroinitializer }, align 32
@da9121_status_poll_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read STATUS registers: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da9121_status_poll_on\00", [42 x i8] zeroinitializer }, align 32
@da9121_status_poll_on._entry_ptr = internal global ptr @da9121_status_poll_on._entry, section ".printk_index", align 4
@da9121_status_poll_on._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to unmask 0x%02x %d\0A\00", [36 x i8] zeroinitializer }, align 32
@da9121_status_poll_on._entry_ptr.109 = internal global ptr @da9121_status_poll_on._entry.107, section ".printk_index", align 4
@__const.da9121_i2c_remove.mask_all = private unnamed_addr constant [4 x i32] [i32 255, i32 255, i32 255, i32 255], align 4
@da9121_i2c_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.110, ptr @.str.3, i32 1176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9121_i2c_remove\00", [46 x i8] zeroinitializer }, align 32
@da9121_i2c_remove._entry_ptr = internal global ptr @da9121_i2c_remove._entry, section ".printk_index", align 4
@switch.table.da9121_i2c_probe = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5], [60 x i8] zeroinitializer }, align 32
@switch.table.da9121_i2c_probe.111 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @da9121_1ch_regmap_config, ptr @da9121_1ch_regmap_config, ptr @da9121_2ch_regmap_config, ptr @da9121_2ch_regmap_config, ptr @da9121_2ch_regmap_config, ptr @da9121_2ch_regmap_config, ptr @da9121_1ch_regmap_config, ptr @da9121_1ch_regmap_config, ptr @da9121_2ch_regmap_config], [60 x i8] zeroinitializer }, align 32
@switch.table.da9121_map_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.da9121_buck_set_mode = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.da9121_buck_get_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 38]
@__sancov_gen_cov_switch_values.112 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"da9121_regulator_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1194, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1196, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"da9121_dt_ids\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1104, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"da9121_i2c_id\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1180, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1151, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1123, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"da9121_1ch_regmap_config\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 869, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant [25 x i8] c"da9121_2ch_regmap_config\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 880, i32 29 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"local_da9121_regulators\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 611, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"da9121_matches\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 372, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1039, i32 17 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1042, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"da9121_1ch_writeable_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 836, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"da9121_1ch_readable_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 809, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"da9121_volatile_table\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 863, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"da9121_1ch_writeable_ranges\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 828, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant [27 x i8] c"da9121_1ch_readable_ranges\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 801, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [23 x i8] c"da9121_volatile_ranges\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 857, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"da9121_2ch_writeable_table\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 851, i32 41 }
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"da9121_2ch_readable_table\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 823, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"da9121_2ch_writeable_ranges\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 841, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"da9121_2ch_readable_ranges\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 814, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"da9121_reg\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 437, i32 36 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"da9220_reg\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 461, i32 36 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"da9122_reg\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 502, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"da9217_reg\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 543, i32 36 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"da9141_reg\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 570, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant [11 x i8] c"da9142_reg\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 590, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 440, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 443, i32 21 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"da9121_buck_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 359, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"variant_parameters\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 111, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 396, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 400, i32 59 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 403, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 413, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 423, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant [26 x i8] c"da9121_10A_2phase_current\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 57, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant [25 x i8] c"da9121_3A_1phase_current\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 81, i32 28 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"da9121_5A_1phase_current\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 73, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant [25 x i8] c"da9121_6A_2phase_current\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 65, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant [26 x i8] c"da914x_40A_4phase_current\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 89, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant [26 x i8] c"da914x_20A_2phase_current\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 97, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant [21 x i8] c"da9121_current_field\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 125, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 288, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 231, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 247, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 199, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"da9121_mode_field\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 130, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 348, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 464, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 483, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 484, i32 15 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 505, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 524, i32 11 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 545, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 572, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 592, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 901, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 907, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 912, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 921, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 925, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 929, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 933, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 937, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 941, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 945, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 949, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 960, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 969, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 974, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 986, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 789, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1063, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1067, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1081, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1088, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1093, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1094, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 691, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 698, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [22 x i8] c"status_event_handling\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 171, i32 39 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 724, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 733, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 747, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 760, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 172, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 175, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 179, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 183, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 184, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 185, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 631, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 661, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.547 = private constant [40 x i8] c"../drivers/regulator/da9121-regulator.c\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1176, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant [30 x i8] c"switch.table.da9121_i2c_probe\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [34 x i8] c"switch.table.da9121_i2c_probe.111\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [29 x i8] c"switch.table.da9121_map_mode\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [34 x i8] c"switch.table.da9121_buck_set_mode\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [34 x i8] c"switch.table.da9121_buck_get_mode\00", align 1
@llvm.compiler.used = appending global [185 x ptr] [ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_da9121_regulator_driver_exit, ptr @__initcall__kmod_da9121_regulator__288_1204_da9121_regulator_driver_init6, ptr @da9121_assign_chip_model._entry, ptr @da9121_assign_chip_model._entry_ptr, ptr @da9121_buck_get_mode._entry, ptr @da9121_buck_get_mode._entry_ptr, ptr @da9121_ceiling_selector._entry, ptr @da9121_ceiling_selector._entry.25, ptr @da9121_ceiling_selector._entry_ptr, ptr @da9121_ceiling_selector._entry_ptr.27, ptr @da9121_check_device_type._entry, ptr @da9121_check_device_type._entry.41, ptr @da9121_check_device_type._entry.44, ptr @da9121_check_device_type._entry.56, ptr @da9121_check_device_type._entry.60, ptr @da9121_check_device_type._entry.63, ptr @da9121_check_device_type._entry_ptr, ptr @da9121_check_device_type._entry_ptr.43, ptr @da9121_check_device_type._entry_ptr.46, ptr @da9121_check_device_type._entry_ptr.59, ptr @da9121_check_device_type._entry_ptr.62, ptr @da9121_check_device_type._entry_ptr.65, ptr @da9121_config_irq._entry, ptr @da9121_config_irq._entry.72, ptr @da9121_config_irq._entry.75, ptr @da9121_config_irq._entry.80, ptr @da9121_config_irq._entry_ptr, ptr @da9121_config_irq._entry_ptr.74, ptr @da9121_config_irq._entry_ptr.76, ptr @da9121_config_irq._entry_ptr.82, ptr @da9121_get_current_limit._entry, ptr @da9121_get_current_limit._entry_ptr, ptr @da9121_i2c_probe._entry, ptr @da9121_i2c_probe._entry_ptr, ptr @da9121_i2c_remove._entry, ptr @da9121_i2c_remove._entry_ptr, ptr @da9121_irq_handler._entry, ptr @da9121_irq_handler._entry.85, ptr @da9121_irq_handler._entry.88, ptr @da9121_irq_handler._entry.90, ptr @da9121_irq_handler._entry.93, ptr @da9121_irq_handler._entry.96, ptr @da9121_irq_handler._entry_ptr, ptr @da9121_irq_handler._entry_ptr.87, ptr @da9121_irq_handler._entry_ptr.89, ptr @da9121_irq_handler._entry_ptr.92, ptr @da9121_irq_handler._entry_ptr.95, ptr @da9121_irq_handler._entry_ptr.98, ptr @da9121_of_get_id._entry, ptr @da9121_of_get_id._entry_ptr, ptr @da9121_of_parse_cb._entry, ptr @da9121_of_parse_cb._entry.18, ptr @da9121_of_parse_cb._entry_ptr, ptr @da9121_of_parse_cb._entry_ptr.20, ptr @da9121_regulator_driver_exit, ptr @da9121_set_current_limit._entry, ptr @da9121_set_current_limit._entry_ptr, ptr @da9121_set_regulator_config._entry, ptr @da9121_set_regulator_config._entry_ptr, ptr @da9121_status_poll_on._entry, ptr @da9121_status_poll_on._entry.107, ptr @da9121_status_poll_on._entry_ptr, ptr @da9121_status_poll_on._entry_ptr.109, ptr @da9121_regulator_driver, ptr @.str, ptr @da9121_dt_ids, ptr @da9121_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @da9121_1ch_regmap_config, ptr @da9121_2ch_regmap_config, ptr @local_da9121_regulators, ptr @da9121_matches, ptr @da9121_assign_chip_model._key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @da9121_1ch_writeable_table, ptr @da9121_1ch_readable_table, ptr @da9121_volatile_table, ptr @da9121_1ch_writeable_ranges, ptr @da9121_1ch_readable_ranges, ptr @da9121_volatile_ranges, ptr @da9121_2ch_writeable_table, ptr @da9121_2ch_readable_table, ptr @da9121_2ch_writeable_ranges, ptr @da9121_2ch_readable_ranges, ptr @da9121_reg, ptr @da9220_reg, ptr @da9122_reg, ptr @da9217_reg, ptr @da9141_reg, ptr @da9142_reg, ptr @.str.11, ptr @.str.12, ptr @da9121_buck_ops, ptr @variant_parameters, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @da9121_10A_2phase_current, ptr @da9121_3A_1phase_current, ptr @da9121_5A_1phase_current, ptr @da9121_6A_2phase_current, ptr @da914x_40A_4phase_current, ptr @da914x_20A_2phase_current, ptr @da9121_current_field, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @da9121_mode_field, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @da9121_config_irq.__key, ptr @.str.77, ptr @da9121_config_irq.__key.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @status_event_handling, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @switch.table.da9121_i2c_probe, ptr @switch.table.da9121_i2c_probe.111, ptr @switch.table.da9121_map_mode, ptr @switch.table.da9121_buck_set_mode, ptr @switch.table.da9121_buck_get_mode], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_i2c_id to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_of_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_1ch_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_2ch_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_da9121_regulators to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_matches to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_assign_chip_model._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_assign_chip_model._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_1ch_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_1ch_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_1ch_writeable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_1ch_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_volatile_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_2ch_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_2ch_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_2ch_writeable_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_2ch_readable_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9220_reg to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9122_reg to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9217_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9141_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9142_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_parameters to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_of_parse_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_of_parse_cb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_10A_2phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_3A_1phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_5A_1phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_6A_2phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da914x_40A_4phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da914x_20A_2phase_current to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_current_field to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_set_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_ceiling_selector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_ceiling_selector._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_get_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_mode_field to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_buck_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_check_device_type._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_set_regulator_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_config_irq._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_event_handling to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_irq_handler._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_status_poll_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_status_poll_on._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9121_i2c_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9121_i2c_probe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9121_i2c_probe.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9121_map_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9121_buck_set_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9121_buck_get_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9121_regulator_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9121_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @da9121_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %p_delay.i = alloca i32, align 4
  %mask_all.i = alloca [4 x i32], align 4
  %config.i = alloca %struct.regulator_config, align 4
  %device_id.i.i = alloca i32, align 4
  %variant_id.i.i = alloca i32, align 4
  %mask_all = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask_all) #6
  %0 = call ptr @memcpy(ptr %mask_all, ptr @__const.da9121_i2c_remove.mask_all, i32 16)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pdata, align 4
  %call.i32 = tail call ptr @of_match_device(ptr noundef nonnull @da9121_dt_ids, ptr noundef %dev) #6
  %tobool.not.i = icmp eq ptr %call.i32, null
  br i1 %tobool.not.i, label %da9121_of_get_id.exit.thread, label %da9121_of_get_id.exit

da9121_of_get_id.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  %subvariant_id47 = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %subvariant_id47 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -22, ptr %subvariant_id47, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  br label %sw.epilog.i

da9121_of_get_id.exit:                            ; preds = %if.end
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i32, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %subvariant_id = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %subvariant_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %subvariant_id, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call.i, align 4
  %11 = icmp ult ptr %7, inttoptr (i32 9 to ptr)
  br i1 %11, label %switch.lookup, label %da9121_of_get_id.exit.sw.epilog.i_crit_edge

da9121_of_get_id.exit.sw.epilog.i_crit_edge:      ; preds = %da9121_of_get_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %da9121_of_get_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.da9121_i2c_probe, i32 0, i32 %8
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep63 = getelementptr inbounds [9 x ptr], ptr @switch.table.da9121_i2c_probe.111, i32 0, i32 %8
  %13 = ptrtoint ptr %switch.gep63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load64 = load ptr, ptr %switch.gep63, align 4
  %variant_id11.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %variant_id11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.load, ptr %variant_id11.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %da9121_of_get_id.exit.sw.epilog.i_crit_edge, %da9121_of_get_id.exit.thread
  %subvariant_id48 = phi ptr [ %subvariant_id, %da9121_of_get_id.exit.sw.epilog.i_crit_edge ], [ %subvariant_id, %switch.lookup ], [ %subvariant_id47, %da9121_of_get_id.exit.thread ]
  %regmap.0.i = phi ptr [ inttoptr (i32 -1 to ptr), %da9121_of_get_id.exit.sw.epilog.i_crit_edge ], [ %switch.load64, %switch.lookup ], [ inttoptr (i32 -1 to ptr), %da9121_of_get_id.exit.thread ]
  %variant_id12.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %variant_id12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %variant_id12.i, align 4
  %arrayidx.i = getelementptr [6 x [2 x ptr]], ptr @local_da9121_regulators, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  store ptr %18, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9121_matches, i32 0, i32 0, i32 4), align 4
  %arrayidx16.i = getelementptr [6 x [2 x ptr]], ptr @local_da9121_regulators, i32 0, i32 %16, i32 1
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16.i, align 4
  store ptr %20, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9121_matches, i32 0, i32 1, i32 4), align 4
  %call.i33 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull %regmap.0.i, ptr noundef nonnull @da9121_assign_chip_model._key, ptr noundef nonnull @.str.8) #6
  %regmap17.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i33, ptr %regmap17.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i34

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i33 to i32
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %22) #9
  br label %da9121_assign_chip_model.exit

if.end.i34:                                       ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_id.i.i) #6
  %25 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %device_id.i.i, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %variant_id.i.i) #6
  %26 = ptrtoint ptr %variant_id.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %variant_id.i.i, align 4, !annotation !286
  %call.i.i = call i32 @regmap_read(ptr noundef %call.i33, i32 noundef 72, ptr noundef nonnull %device_id.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i43.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i43.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %call.i.i) #9
  br label %da9121_check_device_type.exit.i

if.end.i.i:                                       ; preds = %if.end.i34
  %29 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap17.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 73, ptr noundef nonnull %variant_id.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end9.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.42, i32 noundef %call2.i.i) #9
  br label %da9121_check_device_type.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %33 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_id.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %do.end15.i.i [
    i32 5, label %if.end9.i.i.if.end17.i.i_crit_edge
    i32 38, label %if.end9.i.i.if.end17.i.i_crit_edge71
  ]

if.end9.i.i.if.end17.i.i_crit_edge71:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef %34) #9
  br label %da9121_check_device_type.exit.i

if.end17.i.i:                                     ; preds = %if.end9.i.i.if.end17.i.i_crit_edge, %if.end9.i.i.if.end17.i.i_crit_edge71
  %38 = ptrtoint ptr %variant_id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %variant_id.i.i, align 4
  %40 = trunc i32 %39 to i8
  %conv.i.i = and i8 %40, 15
  %41 = ptrtoint ptr %subvariant_id48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subvariant_id48, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %42, label %if.end17.i.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb21.i.i
    i32 2, label %sw.bb26.i.i
    i32 3, label %sw.bb31.i.i
    i32 4, label %sw.bb36.i.i
    i32 5, label %sw.bb41.i.i
    i32 6, label %sw.bb46.i.i
  ]

if.end17.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i.i)
  %cmp19.i.i = icmp eq i8 %conv.i.i, 1
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp23.i.i = icmp eq i8 %conv.i.i, 0
  br label %sw.epilog.i.i

sw.bb26.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp28.i.i = icmp eq i8 %conv.i.i, 0
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i)
  %cmp33.i.i = icmp eq i8 %conv.i.i, 2
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i)
  %cmp38.i.i = icmp eq i8 %conv.i.i, 2
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i.i)
  %cmp43.i.i = icmp eq i8 %conv.i.i, 1
  br label %sw.epilog.i.i

sw.bb46.i.i:                                      ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i.i)
  %cmp48.i.i = icmp eq i8 %conv.i.i, 7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb46.i.i, %sw.bb41.i.i, %sw.bb36.i.i, %sw.bb31.i.i, %sw.bb26.i.i, %sw.bb21.i.i, %sw.bb.i.i, %if.end17.i.i.sw.epilog.i.i_crit_edge
  %type.0.i.i = phi ptr [ @.str.53, %sw.bb46.i.i ], [ @.str.52, %sw.bb41.i.i ], [ @.str.51, %sw.bb36.i.i ], [ @.str.50, %sw.bb31.i.i ], [ @.str.49, %sw.bb26.i.i ], [ @.str.48, %sw.bb21.i.i ], [ @.str.47, %sw.bb.i.i ], [ @.str.54, %if.end17.i.i.sw.epilog.i.i_crit_edge ]
  %config_match.0.shrunk.i.i = phi i1 [ %cmp48.i.i, %sw.bb46.i.i ], [ %cmp43.i.i, %sw.bb41.i.i ], [ %cmp38.i.i, %sw.bb36.i.i ], [ %cmp33.i.i, %sw.bb31.i.i ], [ %cmp28.i.i, %sw.bb26.i.i ], [ %cmp23.i.i, %sw.bb21.i.i ], [ %cmp19.i.i, %sw.bb.i.i ], [ false, %if.end17.i.i.sw.epilog.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %34)
  %cmp51.i.i = icmp eq i32 %34, 38
  br i1 %cmp51.i.i, label %if.then53.i.i, label %sw.epilog.i.i.do.end70.i.i_crit_edge

sw.epilog.i.i.do.end70.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

if.then53.i.i:                                    ; preds = %sw.epilog.i.i
  %44 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %42, label %if.then53.i.i.do.end70.i.i_crit_edge [
    i32 7, label %sw.bb55.i.i
    i32 8, label %sw.bb60.i.i
  ]

if.then53.i.i.do.end70.i.i_crit_edge:             ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70.i.i

sw.bb55.i.i:                                      ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i.i)
  %cmp57.i.i = icmp eq i8 %conv.i.i, 1
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.57, i32 noundef 38, i32 noundef %39, ptr noundef nonnull @.str.37) #9
  br i1 %cmp57.i.i, label %sw.bb55.i.i.if.end77.i.i_crit_edge, label %sw.bb55.i.i.do.end75.i.i_crit_edge

sw.bb55.i.i.do.end75.i.i_crit_edge:               ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75.i.i

sw.bb55.i.i.if.end77.i.i_crit_edge:               ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i.i

sw.bb60.i.i:                                      ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i)
  %cmp62.i.i = icmp eq i8 %conv.i.i, 2
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.57, i32 noundef 38, i32 noundef %39, ptr noundef nonnull @.str.55) #9
  br i1 %cmp62.i.i, label %sw.bb60.i.i.if.end77.i.i_crit_edge, label %sw.bb60.i.i.do.end75.i.i_crit_edge

sw.bb60.i.i.do.end75.i.i_crit_edge:               ; preds = %sw.bb60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75.i.i

sw.bb60.i.i.if.end77.i.i_crit_edge:               ; preds = %sw.bb60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i.i

do.end70.i.i:                                     ; preds = %if.then53.i.i.do.end70.i.i_crit_edge, %sw.epilog.i.i.do.end70.i.i_crit_edge
  %type.1.i.i = phi ptr [ %type.0.i.i, %sw.epilog.i.i.do.end70.i.i_crit_edge ], [ @.str.54, %if.then53.i.i.do.end70.i.i_crit_edge ]
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.57, i32 noundef %34, i32 noundef %39, ptr noundef nonnull %type.1.i.i) #9
  br i1 %config_match.0.shrunk.i.i, label %do.end70.i.i.if.end77.i.i_crit_edge, label %do.end70.i.i.do.end75.i.i_crit_edge

do.end70.i.i.do.end75.i.i_crit_edge:              ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75.i.i

do.end70.i.i.if.end77.i.i_crit_edge:              ; preds = %do.end70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i.i

do.end75.i.i:                                     ; preds = %do.end70.i.i.do.end75.i.i_crit_edge, %sw.bb60.i.i.do.end75.i.i_crit_edge, %sw.bb55.i.i.do.end75.i.i_crit_edge
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.61) #9
  br label %da9121_check_device_type.exit.i

if.end77.i.i:                                     ; preds = %do.end70.i.i.if.end77.i.i_crit_edge, %sw.bb60.i.i.if.end77.i.i_crit_edge, %sw.bb55.i.i.if.end77.i.i_crit_edge
  %53 = ptrtoint ptr %variant_id.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %variant_id.i.i, align 4
  %55 = trunc i32 %54 to i8
  %56 = lshr i32 %54, 4
  %57 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp80.i.i = icmp eq i32 %58, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp84.i.i = icmp ult i8 %55, 32
  %or.cond.i.i = select i1 %cmp80.i.i, i1 %cmp84.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end77.i.i.do.end95.i.i_crit_edge, label %lor.lhs.false.i.i

if.end77.i.i.do.end95.i.i_crit_edge:              ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i.i

lor.lhs.false.i.i:                                ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %58)
  %cmp86.i.i = icmp ne i32 %58, 38
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %55)
  %cmp90.not.i.i = icmp ult i8 %55, 16
  %or.cond1.i.i = select i1 %cmp86.i.i, i1 true, i1 %cmp90.not.i.i
  br i1 %or.cond1.i.i, label %lor.lhs.false.i.i.da9121_check_device_type.exit.i_crit_edge, label %lor.lhs.false.i.i.do.end95.i.i_crit_edge

lor.lhs.false.i.i.do.end95.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i.i

lor.lhs.false.i.i.da9121_check_device_type.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9121_check_device_type.exit.i

do.end95.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end95.i.i_crit_edge, %if.end77.i.i.do.end95.i.i_crit_edge
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %conv97.i.i = and i32 %56, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.64, i32 noundef %conv97.i.i) #9
  br label %da9121_check_device_type.exit.i

da9121_check_device_type.exit.i:                  ; preds = %do.end95.i.i, %lor.lhs.false.i.i.da9121_check_device_type.exit.i_crit_edge, %do.end75.i.i, %do.end15.i.i, %do.end7.i.i, %do.end.i.i
  %ret.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %call2.i.i, %do.end7.i.i ], [ -19, %do.end15.i.i ], [ -22, %do.end95.i.i ], [ %call2.i.i, %lor.lhs.false.i.i.da9121_check_device_type.exit.i_crit_edge ], [ -22, %do.end75.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %variant_id.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_id.i.i) #6
  br label %da9121_assign_chip_model.exit

da9121_assign_chip_model.exit:                    ; preds = %da9121_check_device_type.exit.i, %if.then.i
  %retval.0.i35 = phi i32 [ %22, %if.then.i ], [ %ret.0.i.i, %da9121_check_device_type.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %cmp = icmp slt i32 %retval.0.i35, 0
  br i1 %cmp, label %da9121_assign_chip_model.exit.error_crit_edge, label %if.end6

da9121_assign_chip_model.exit.error_crit_edge:    ; preds = %da9121_assign_chip_model.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end6:                                          ; preds = %da9121_assign_chip_model.exit
  %61 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap17.i, align 4
  %call7 = call i32 @regmap_bulk_write(ptr noundef %62, i32 noundef 7, ptr noundef nonnull %mask_all, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef %call7) #9
  br label %error

if.end11:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %65 = getelementptr inbounds i8, ptr %config.i, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 20)
  %67 = ptrtoint ptr %variant_id12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %variant_id12.i, align 4
  %arrayidx.i36 = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp41.not.i = icmp eq i32 %70, 0
  br i1 %cmp41.not.i, label %if.end11.da9121_set_regulator_config.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end11.da9121_set_regulator_config.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9121_set_regulator_config.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end11
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  %regmap5.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %variant_id12.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %variant_id12.i, align 4
  %arrayidx3.i = getelementptr [6 x [2 x ptr]], ptr @local_da9121_regulators, i32 0, i32 %72, i32 %i.042.i
  %73 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx3.i, align 4
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %77 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %config.i, align 4
  %78 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %driver_data.i, align 4
  %79 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap17.i, align 4
  %81 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %regmap5.i, align 4
  %call.i37 = call ptr @devm_regulator_register(ptr noundef %76, ptr noundef %74, ptr noundef nonnull %config.i) #6
  %arrayidx7.i = getelementptr %struct.da9121, ptr %call.i, i32 0, i32 4, i32 %i.042.i
  %82 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i37, ptr %arrayidx7.i, align 4
  %cmp.i.i38 = icmp ugt ptr %call.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i38, label %da9121_set_regulator_config.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %70
  br i1 %exitcond.not.i, label %for.inc.i.da9121_set_regulator_config.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.da9121_set_regulator_config.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9121_set_regulator_config.exit.thread

da9121_set_regulator_config.exit.thread:          ; preds = %for.inc.i.da9121_set_regulator_config.exit.thread_crit_edge, %if.end11.da9121_set_regulator_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %if.end15

da9121_set_regulator_config.exit:                 ; preds = %for.body.i
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %74, align 4
  %add.i = add nuw i32 %i.042.i, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.66, ptr noundef %86, i32 noundef %add.i, i32 noundef %70) #9
  %87 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx7.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp13 = icmp slt ptr %88, null
  br i1 %cmp13, label %da9121_set_regulator_config.exit.error_crit_edge, label %da9121_set_regulator_config.exit.if.end15_crit_edge

da9121_set_regulator_config.exit.if.end15_crit_edge: ; preds = %da9121_set_regulator_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

da9121_set_regulator_config.exit.error_crit_edge: ; preds = %da9121_set_regulator_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end15:                                         ; preds = %da9121_set_regulator_config.exit.if.end15_crit_edge, %da9121_set_regulator_config.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_delay.i) #6
  %90 = ptrtoint ptr %p_delay.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3000, ptr %p_delay.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask_all.i) #6
  %91 = call ptr @memcpy(ptr %mask_all.i, ptr @__const.da9121_config_irq.mask_all, i32 16)
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %92 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq.i, align 4
  %chip_irq.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 7
  %94 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %chip_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not.i = icmp eq i32 %93, 0
  br i1 %cmp.not.i, label %if.end15.da9121_config_irq.exit_crit_edge, label %if.then.i41

if.end15.da9121_config_irq.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9121_config_irq.exit

if.then.i41:                                      ; preds = %if.end15
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 27
  %97 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %98, ptr noundef nonnull @.str.68, ptr noundef nonnull %p_delay.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i40 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i40, label %if.then2.i, label %if.then.i41.if.end7.i_crit_edge

if.then.i41.if.end7.i_crit_edge:                  ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i41
  %99 = ptrtoint ptr %p_delay.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %p_delay.i, align 4
  %101 = add i32 %100, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9001, i32 %101)
  %102 = icmp ult i32 %101, -9001
  br i1 %102, label %do.end.i42, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

do.end.i42:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.69, i32 noundef %100) #9
  %105 = ptrtoint ptr %p_delay.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3000, ptr %p_delay.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i42, %if.then2.i.if.end7.i_crit_edge, %if.then.i41.if.end7.i_crit_edge
  %106 = ptrtoint ptr %p_delay.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %p_delay.i, align 4
  %passive_delay.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 6
  %108 = ptrtoint ptr %passive_delay.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %passive_delay.i, align 4
  %109 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip_irq.i, align 4
  %call9.i = call i32 @request_threaded_irq(i32 noundef %110, ptr noundef null, ptr noundef nonnull @da9121_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end17.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 4
  %113 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %chip_irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.73, i32 noundef %114) #9
  br label %da9121_config_irq.exit

if.end17.i:                                       ; preds = %if.end7.i
  %115 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap17.i, align 4
  %call18.i = call i32 @regmap_bulk_write(ptr noundef %116, i32 noundef 7, ptr noundef nonnull %mask_all.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %do.body27.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.1, i32 noundef %call18.i) #9
  %119 = ptrtoint ptr %chip_irq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %chip_irq.i, align 4
  %call53.i = call ptr @free_irq(i32 noundef %120, ptr noundef %call.i) #6
  br label %da9121_config_irq.exit

do.body27.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %work.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #6
  %121 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @da9121_config_irq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry35.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %entry35.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %124 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @da9121_status_poll_on, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.79, ptr noundef nonnull @da9121_config_irq.__key.78) #6
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i, align 4
  %127 = ptrtoint ptr %passive_delay.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %passive_delay.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.81, i32 noundef %128) #9
  br label %da9121_config_irq.exit

da9121_config_irq.exit:                           ; preds = %do.body27.i, %do.end23.i, %do.end14.i, %if.end15.da9121_config_irq.exit_crit_edge
  %retval.0.i44 = phi i32 [ %call18.i, %do.end23.i ], [ %call9.i, %do.end14.i ], [ 0, %do.body27.i ], [ 0, %if.end15.da9121_config_irq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask_all.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_delay.i) #6
  br label %error

error:                                            ; preds = %da9121_config_irq.exit, %da9121_set_regulator_config.exit.error_crit_edge, %do.end, %da9121_assign_chip_model.exit.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %retval.0.i35, %da9121_assign_chip_model.exit.error_crit_edge ], [ %call7, %do.end ], [ %89, %da9121_set_regulator_config.exit.error_crit_edge ], [ %retval.0.i44, %da9121_config_irq.exit ], [ -12, %entry.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask_all) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_i2c_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  %mask_all = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask_all) #6
  %2 = call ptr @memcpy(ptr %mask_all, ptr @__const.da9121_i2c_remove.mask_all, i32 16)
  %chip_irq = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %1) #6
  %work = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %regmap = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 7, ptr noundef nonnull %mask_all, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask_all) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_of_parse_cb(ptr noundef %np, ptr nocapture noundef readnone %desc, ptr nocapture noundef %config) #2 align 64 {
entry:
  %ripple_cancel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %pdata1 = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pdata.0 = phi ptr [ %call.i, %if.then.if.end4_crit_edge ], [ %3, %entry.if.end4_crit_edge ]
  %6 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdata.0, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %pdata.0, align 4
  %variant_id = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %variant_id, align 4
  %arrayidx = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %11)
  %cmp6 = icmp sgt i32 %inc, %11
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %tobool10.not = icmp eq ptr %np, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 3
  %spec.select = select i1 %tobool10.not, ptr null, ptr %fwnode
  %call11 = tail call ptr @fwnode_gpiod_get_index(ptr noundef %spec.select, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.16) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %ena_gpiod14 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %14 = ptrtoint ptr %ena_gpiod14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %ena_gpiod14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %15 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %variant_id, align 4
  %arrayidx17 = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp19 = icmp eq i32 %18, 2
  br i1 %cmp19, label %if.then20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ripple_cancel) #6
  %19 = ptrtoint ptr %ripple_cancel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ripple_cancel, align 4, !annotation !286
  %20 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdata.0, align 4
  %sub = add i32 %21, -1
  %of_node = getelementptr [2 x %struct.of_regulator_match], ptr @da9121_matches, i32 0, i32 %sub, i32 3
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull %ripple_cancel, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.then20.if.end39_crit_edge, label %if.then25

if.then20.if.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then25:                                        ; preds = %if.then20
  %24 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp27 = icmp sgt i32 %25, 1
  %. = select i1 %cmp27, i32 47, i32 39
  %regmap = getelementptr inbounds %struct.da9121, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %ripple_cancel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ripple_cancel, align 4
  %call.i58 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %., i32 noundef 3, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp32 = icmp slt i32 %call.i58, 0
  br i1 %cmp32, label %do.end36, label %if.then25.if.end39_crit_edge

if.then25.if.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.19, i32 noundef %call.i58) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.then25.if.end39_crit_edge, %if.then20.if.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ripple_cancel) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end15.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end39 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da9121_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %0 = icmp ult i32 %mode, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.da9121_map_mode, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_set_current_limit(ptr noundef %rdev, i32 noundef %min_ua, i32 noundef %max_ua) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %variant_id = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant_id, align 4
  %current_range = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %current_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_range, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_ua)
  %cmp = icmp sgt i32 %5, %min_ua
  br i1 %cmp, label %entry.error_crit_edge, label %lor.lhs.false

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

lor.lhs.false:                                    ; preds = %entry
  %val_max = getelementptr inbounds %struct.da9121_range, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %val_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_ua)
  %cmp2 = icmp slt i32 %7, %max_ua
  br i1 %cmp2, label %lor.lhs.false.error_crit_edge, label %if.end

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is_enabled, align 4
  %call3 = tail call i32 %13(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %variant_id.i = getelementptr inbounds %struct.da9121, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %variant_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %variant_id.i, align 4
  %current_range.i = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %current_range.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_range.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %max_ua)
  %cmp.i = icmp sgt i32 %19, %max_ua
  br i1 %cmp.i, label %if.end5.do.end.i_crit_edge, label %lor.lhs.false.i

if.end5.do.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %val_max.i = getelementptr inbounds %struct.da9121_range, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %val_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %min_ua)
  %cmp1.i = icmp slt i32 %21, %min_ua
  br i1 %cmp1.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end5.do.end.i_crit_edge
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23) #9
  br label %error

if.end.i:                                         ; preds = %lor.lhs.false.i
  %reg_max.i = getelementptr inbounds %struct.da9121_range, ptr %17, i32 0, i32 4
  %24 = ptrtoint ptr %reg_max.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_max.i, align 4
  %reg_min.i = getelementptr inbounds %struct.da9121_range, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %reg_min.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp3.not27.i = icmp ult i32 %25, %27
  br i1 %cmp3.not27.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %val_stp.i = getelementptr inbounds %struct.da9121_range, ptr %17, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ %25, %for.body.lr.ph.i ], [ %dec.i, %if.end6.i.for.body.i_crit_edge ]
  %level.028.i = phi i32 [ %21, %for.body.lr.ph.i ], [ %sub.i, %if.end6.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.028.i, i32 %max_ua)
  %cmp4.not.i = icmp ugt i32 %level.028.i, %max_ua
  br i1 %cmp4.not.i, label %if.end6.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end6.i:                                        ; preds = %for.body.i
  %28 = ptrtoint ptr %val_stp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val_stp.i, align 4
  %sub.i = sub i32 %level.028.i, %29
  %dec.i = add i32 %i.029.i, -1
  %cmp3.not.i = icmp ult i32 %dec.i, %27
  br i1 %cmp3.not.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end6.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %level.0.lcssa.i = phi i32 [ %21, %if.end.i.for.end.i_crit_edge ], [ %sub.i, %if.end6.i.for.end.i_crit_edge ], [ %level.028.i, %for.body.i.for.end.i_crit_edge ]
  %sel.0.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ 0, %if.end6.i.for.end.i_crit_edge ], [ %i.029.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.lcssa.i, i32 %min_ua)
  %cmp7.i = icmp ult i32 %level.0.lcssa.i, %min_ua
  br i1 %cmp7.i, label %do.end11.i, label %if.end9

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.26) #9
  br label %error

if.end9:                                          ; preds = %for.end.i
  %regmap = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %arrayidx10 = getelementptr [2 x %struct.da9121_field], ptr @da9121_current_field, i32 0, i32 %call1
  %34 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx10, align 4
  %msk = getelementptr [2 x %struct.da9121_field], ptr @da9121_current_field, i32 0, i32 %call1, i32 1
  %36 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msk, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %sel.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp13 = icmp slt i32 %call.i29, 0
  br i1 %cmp13, label %do.end, label %if.end9.error_crit_edge

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.21, i32 noundef %call.i29) #9
  br label %error

error:                                            ; preds = %do.end, %if.end9.error_crit_edge, %do.end11.i, %do.end.i, %if.end.error_crit_edge, %lor.lhs.false.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call.i29, %do.end ], [ %call.i29, %if.end9.error_crit_edge ], [ -22, %lor.lhs.false.error_crit_edge ], [ -22, %entry.error_crit_edge ], [ -16, %if.end.error_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end11.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %variant_id = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant_id, align 4
  %current_range = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %current_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_range, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %arrayidx2 = getelementptr [2 x %struct.da9121_field], ptr @da9121_current_field, i32 0, i32 %call1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %reg_min = getelementptr inbounds %struct.da9121_range, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %reg_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp4 = icmp ult i32 %12, %14
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %reg_max = getelementptr inbounds %struct.da9121_range, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %reg_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp7 = icmp ugt i32 %12, %16
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %val_stp = getelementptr inbounds %struct.da9121_range, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %val_stp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val_stp, align 4
  %sub = sub i32 %12, %14
  %mul = mul i32 %20, %sub
  %add = add i32 %mul, %18
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %add, %if.end9 ], [ %call3, %do.end ], [ -13, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
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
define internal i32 @da9121_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.da9121_buck_set_mode, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [2 x %struct.da9121_field], ptr @da9121_mode_field, i32 0, i32 %call1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %msk = getelementptr [2 x %struct.da9121_field], ptr @da9121_mode_field, i32 0, i32 %call1, i32 1
  %7 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msk, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !286
  %regmap = getelementptr inbounds %struct.da9121, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [2 x %struct.da9121_field], ptr @da9121_mode_field, i32 0, i32 %call1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %msk = getelementptr [2 x %struct.da9121_field], ptr @da9121_mode_field, i32 0, i32 %call1, i32 1
  %9 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msk, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %11 = icmp ult i32 %and, 4
  br i1 %11, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.da9121_buck_get_mode, i32 0, i32 %and
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %switch.load, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9121_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %event = alloca [3 x i32], align 4
  %handled = alloca [3 x i32], align 4
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #6
  %0 = call ptr @memset(ptr %event, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %handled) #6
  %1 = call ptr @memset(ptr %handled, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #6
  %2 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %regmap = getelementptr inbounds %struct.da9121, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %event, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.83, i32 noundef %call) #9
  br label %cleanup103

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 7, ptr noundef nonnull %mask, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.86, i32 noundef 0) #9
  br label %cleanup103

if.end10:                                         ; preds = %if.end
  %rdev11 = getelementptr inbounds %struct.da9121, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %rdev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev11, align 4
  %variant_id = getelementptr inbounds %struct.da9121, ptr %data, i32 0, i32 8
  br label %for.body

for.cond46.preheader:                             ; preds = %if.end45
  %13 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %event, align 4
  %15 = ptrtoint ptr %handled to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handled, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp51.not = icmp eq i32 %14, %16
  br i1 %cmp51.not, label %for.cond46.preheader.for.inc60_crit_edge, label %do.end55

for.cond46.preheader.for.inc60_crit_edge:         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %if.end10
  %i.0167 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end45.for.body_crit_edge ]
  %ret.0166 = phi i32 [ 0, %if.end10 ], [ %ret.1, %if.end45.for.body_crit_edge ]
  %arrayidx13 = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167
  %reg_index = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167, i32 1
  %17 = ptrtoint ptr %reg_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_index, align 4
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  %21 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %variant_id, align 4
  %arrayidx14 = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp15.not = icmp sgt i32 %20, %24
  %event_bit = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167, i32 3
  %25 = ptrtoint ptr %event_bit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event_bit, align 4
  %warn = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167, i32 6
  %27 = ptrtoint ptr %warn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %warn, align 4
  %29 = lshr i32 1910, %i.0167
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp22.not = icmp eq i32 %30, 0
  br i1 %cmp15.not, label %for.body.if.end45_crit_edge, label %land.lhs.true

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true:                                    ; preds = %for.body
  %arrayidx18 = getelementptr [3 x i32], ptr %event, i32 0, i32 %18
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx18, align 4
  %and19 = and i32 %32, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %arrayidx16 = getelementptr [3 x i32], ptr %mask, i32 0, i32 %18
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx16, align 4
  %mask_bit = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167, i32 4
  %35 = ptrtoint ptr %mask_bit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask_bit, align 4
  %and = and i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool20.not
  br i1 %brmerge, label %land.lhs.true.if.end45_crit_edge, label %if.then28

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then28:                                        ; preds = %land.lhs.true
  br i1 %cmp22.not, label %do.end38, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx32 = getelementptr %struct.da9121, ptr %data, i32 0, i32 5, i32 %18
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx32, align 4
  %or = or i32 %38, %26
  store i32 %or, ptr %arrayidx32, align 4
  %notification = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.0167, i32 5
  %39 = ptrtoint ptr %notification to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %notification, align 4
  %call33 = call i32 @regulator_notifier_call_chain(ptr noundef %12, i32 noundef %40, ptr noundef null) #6
  br label %if.end45

do.end38:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef %28) #9
  %arrayidx42 = getelementptr [3 x i32], ptr %handled, i32 0, i32 %18
  %43 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx42, align 4
  %or43 = or i32 %44, %26
  store i32 %or43, ptr %arrayidx42, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end38, %if.then30, %land.lhs.true.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %ret.1 = phi i32 [ %ret.0166, %if.then30 ], [ 1, %do.end38 ], [ %ret.0166, %land.lhs.true.if.end45_crit_edge ], [ %ret.0166, %for.body.if.end45_crit_edge ]
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.cond46.preheader, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end55:                                         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %xor = xor i32 %16, %14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.91, i32 noundef 0, i32 noundef %xor) #9
  br label %for.inc60

for.inc60:                                        ; preds = %do.end55, %for.cond46.preheader.for.inc60_crit_edge
  %arrayidx49.1 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx49.1, align 4
  %arrayidx50.1 = getelementptr inbounds [3 x i32], ptr %handled, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx50.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp51.not.1 = icmp eq i32 %48, %50
  br i1 %cmp51.not.1, label %for.inc60.for.inc60.1_crit_edge, label %do.end55.1

for.inc60.for.inc60.1_crit_edge:                  ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60.1

do.end55.1:                                       ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %xor.1 = xor i32 %50, %48
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.91, i32 noundef 1, i32 noundef %xor.1) #9
  br label %for.inc60.1

for.inc60.1:                                      ; preds = %do.end55.1, %for.inc60.for.inc60.1_crit_edge
  %arrayidx49.2 = getelementptr inbounds [3 x i32], ptr %event, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx49.2, align 4
  %arrayidx50.2 = getelementptr inbounds [3 x i32], ptr %handled, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx50.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp51.not.2 = icmp eq i32 %54, %56
  br i1 %cmp51.not.2, label %for.inc60.1.for.inc60.2_crit_edge, label %do.end55.2

for.inc60.1.for.inc60.2_crit_edge:                ; preds = %for.inc60.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60.2

do.end55.2:                                       ; preds = %for.inc60.1
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %xor.2 = xor i32 %56, %54
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.91, i32 noundef 2, i32 noundef %xor.2) #9
  br label %for.inc60.2

for.inc60.2:                                      ; preds = %do.end55.2, %for.inc60.1.for.inc60.2_crit_edge
  %59 = ptrtoint ptr %handled to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool67.not = icmp eq i32 %60, 0
  br i1 %tobool67.not, label %for.inc60.2.for.inc81_crit_edge, label %if.then68

for.inc60.2.for.inc81_crit_edge:                  ; preds = %for.inc60.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc81

if.then68:                                        ; preds = %for.inc60.2
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 7, i32 noundef %60, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp72 = icmp slt i32 %call.i, 0
  br i1 %cmp72, label %if.then68.cleanup_crit_edge, label %if.then68.for.inc81_crit_edge

if.then68.for.inc81_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc81

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68.1.cleanup_crit_edge, %if.then68.cleanup_crit_edge
  %add.lcssa = phi i32 [ 7, %if.then68.cleanup_crit_edge ], [ 8, %if.then68.1.cleanup_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.then68.cleanup_crit_edge ], [ %call.i.1, %if.then68.1.cleanup_crit_edge ]
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.94, i32 noundef %add.lcssa, i32 noundef %call.i.lcssa) #9
  br label %cleanup103

for.inc81:                                        ; preds = %if.then68.for.inc81_crit_edge, %for.inc60.2.for.inc81_crit_edge
  %65 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx50.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool67.not.1 = icmp eq i32 %66, 0
  br i1 %tobool67.not.1, label %for.inc81.for.inc81.1_crit_edge, label %if.then68.1

for.inc81.for.inc81.1_crit_edge:                  ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc81.1

if.then68.1:                                      ; preds = %for.inc81
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i.1 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 8, i32 noundef %66, i32 noundef %66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp72.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp72.1, label %if.then68.1.cleanup_crit_edge, label %if.then68.1.for.inc81.1_crit_edge

if.then68.1.for.inc81.1_crit_edge:                ; preds = %if.then68.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc81.1

if.then68.1.cleanup_crit_edge:                    ; preds = %if.then68.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc81.1:                                      ; preds = %if.then68.1.for.inc81.1_crit_edge, %for.inc81.for.inc81.1_crit_edge
  %69 = ptrtoint ptr %handled to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %handled, align 4
  %71 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx50.1, align 4
  %or86 = or i32 %72, %70
  %73 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx50.2, align 4
  %or88 = or i32 %or86, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or88)
  %tobool89.not = icmp eq i32 %or88, 0
  br i1 %tobool89.not, label %for.inc81.1.if.end101_crit_edge, label %if.then90

for.inc81.1.if.end101_crit_edge:                  ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then90:                                        ; preds = %for.inc81.1
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %call93 = call i32 @regmap_bulk_write(ptr noundef %76, i32 noundef 4, ptr noundef nonnull %handled, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end98, label %if.then90.if.end101_crit_edge

if.then90.if.end101_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

do.end98:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.97, i32 noundef %call93) #9
  br label %cleanup103

if.end101:                                        ; preds = %if.then90.if.end101_crit_edge, %for.inc81.1.if.end101_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %79 = load ptr, ptr @system_freezable_wq, align 4
  %work = getelementptr inbounds %struct.da9121, ptr %data, i32 0, i32 1
  %call.i162 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %work, i32 noundef 0) #6
  br label %cleanup103

cleanup103:                                       ; preds = %if.end101, %do.end98, %cleanup, %do.end8, %do.end
  %ret.5 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ 0, %cleanup ], [ 0, %do.end98 ], [ %ret.1, %if.end101 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %handled) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #6
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9121_status_poll_on(ptr noundef %work) #2 align 64 {
entry:
  %status = alloca [3 x i32], align 4
  %clear = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %status) #6
  %0 = call ptr @memset(ptr %status, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clear) #6
  %1 = call ptr @memset(ptr %clear, i32 0, i32 12)
  %regmap = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %status, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %variant_id = getelementptr i8, ptr %work, i32 132
  %persistent = getelementptr i8, ptr %work, i32 116
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %call) #9
  br label %cleanup57

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.cond.preheader
  %i.098 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end24.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.098
  %reg_index = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.098, i32 1
  %6 = ptrtoint ptr %reg_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_index, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %variant_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %variant_id, align 4
  %arrayidx2 = getelementptr [6 x %struct.da9121_variant_info], ptr @variant_parameters, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp3.not = icmp sgt i32 %9, %13
  %arrayidx6 = getelementptr [2 x i32], ptr %persistent, i32 0, i32 %7
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %event_bit = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.098, i32 3
  %16 = ptrtoint ptr %event_bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_bit, align 4
  br i1 %cmp3.not, label %for.body.if.end24_crit_edge, label %land.lhs.true

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %for.body
  %arrayidx8 = getelementptr [3 x i32], ptr %status, i32 0, i32 %7
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8, align 4
  %status_bit = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.098, i32 2
  %20 = ptrtoint ptr %status_bit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_bit, align 4
  %and9 = and i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  %and = and i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %22 = lshr i32 1910, %i.098
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.not = icmp eq i32 %23, 0
  %brmerge = select i1 %cmp4.not, i1 true, i1 %tobool.not
  %brmerge93 = select i1 %brmerge, i1 true, i1 %tobool10.not
  br i1 %brmerge93, label %land.lhs.true.if.end24_crit_edge, label %if.then18

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mask_bit = getelementptr [14 x %struct.status_event_data], ptr @status_event_handling, i32 0, i32 %i.098, i32 4
  %24 = ptrtoint ptr %mask_bit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_bit, align 4
  %arrayidx19 = getelementptr [3 x i32], ptr %clear, i32 0, i32 %7
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %or = or i32 %27, %25
  store i32 %or, ptr %arrayidx19, align 4
  %neg = xor i32 %17, -1
  %and23 = and i32 %15, %neg
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and23, ptr %arrayidx6, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true.if.end24_crit_edge, %for.body.if.end24_crit_edge
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.body27.preheader, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body27.preheader:                             ; preds = %if.end24
  %29 = ptrtoint ptr %clear to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not = icmp eq i32 %30, 0
  br i1 %tobool29.not, label %for.body27.preheader.for.inc43_crit_edge, label %if.then30

for.body27.preheader.for.inc43_crit_edge:         ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43

if.then30:                                        ; preds = %for.body27.preheader
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 7, i32 noundef %30, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  br i1 %cmp34, label %if.then30.cleanup_crit_edge, label %if.then30.for.inc43_crit_edge

if.then30.for.inc43_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30.1.cleanup_crit_edge, %if.then30.cleanup_crit_edge
  %add.lcssa = phi i32 [ 7, %if.then30.cleanup_crit_edge ], [ 8, %if.then30.1.cleanup_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.then30.cleanup_crit_edge ], [ %call.i.1, %if.then30.1.cleanup_crit_edge ]
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.108, i32 noundef %add.lcssa, i32 noundef %call.i.lcssa) #9
  br label %cleanup57

for.inc43:                                        ; preds = %if.then30.for.inc43_crit_edge, %for.body27.preheader.for.inc43_crit_edge
  %arrayidx28.1 = getelementptr inbounds [3 x i32], ptr %clear, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx28.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool29.not.1 = icmp eq i32 %36, 0
  br i1 %tobool29.not.1, label %for.inc43.for.inc43.1_crit_edge, label %if.then30.1

for.inc43.for.inc43.1_crit_edge:                  ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.1

if.then30.1:                                      ; preds = %for.inc43
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i.1 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 8, i32 noundef %36, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp34.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp34.1, label %if.then30.1.cleanup_crit_edge, label %if.then30.1.for.inc43.1_crit_edge

if.then30.1.for.inc43.1_crit_edge:                ; preds = %if.then30.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.1

if.then30.1.cleanup_crit_edge:                    ; preds = %if.then30.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc43.1:                                      ; preds = %if.then30.1.for.inc43.1_crit_edge, %for.inc43.for.inc43.1_crit_edge
  %39 = ptrtoint ptr %persistent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %persistent, align 4
  %arrayidx49 = getelementptr i8, ptr %work, i32 120
  %41 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx49, align 4
  %or50 = or i32 %42, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or50)
  %tobool51.not = icmp eq i32 %or50, 0
  br i1 %tobool51.not, label %for.inc43.1.cleanup57_crit_edge, label %if.else.i

for.inc43.1.cleanup57_crit_edge:                  ; preds = %for.inc43.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

if.else.i:                                        ; preds = %for.inc43.1
  call void @__sanitizer_cov_trace_pc() #8
  %passive_delay = getelementptr i8, ptr %work, i32 124
  %43 = ptrtoint ptr %passive_delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %passive_delay, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %44) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %45 = load ptr, ptr @system_freezable_wq, align 4
  %call.i95 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work, i32 noundef %call2.i) #6
  br label %cleanup57

cleanup57:                                        ; preds = %if.else.i, %for.inc43.1.cleanup57_crit_edge, %cleanup, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clear) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %status) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !202, !203, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @__initcall__kmod_da9121_regulator__288_1204_da9121_regulator_driver_init6, !1, !"__initcall__kmod_da9121_regulator__288_1204_da9121_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9121-regulator.c", i32 1204, i32 1}
!2 = !{ptr @__exitcall_da9121_regulator_driver_exit, !1, !"__exitcall_da9121_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/da9121-regulator.c", i32 1206, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/regulator/da9121-regulator.c", i32 1196, i32 11}
!8 = !{ptr @da9121_regulator_driver, !9, !"da9121_regulator_driver", i1 false, i1 false}
!9 = !{!"../drivers/regulator/da9121-regulator.c", i32 1194, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/da9121-regulator.c", i32 1151, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @da9121_i2c_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @da9121_i2c_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/da9121-regulator.c", i32 1123, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @da9121_of_get_id._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @da9121_of_get_id._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @da9121_assign_chip_model._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/regulator/da9121-regulator.c", i32 1039, i32 17}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/da9121-regulator.c", i32 1042, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @da9121_assign_chip_model._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @da9121_assign_chip_model._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @da9121_1ch_regmap_config, !32, !"da9121_1ch_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/regulator/da9121-regulator.c", i32 869, i32 29}
!33 = !{ptr @da9121_1ch_writeable_table, !34, !"da9121_1ch_writeable_table", i1 false, i1 false}
!34 = !{!"../drivers/regulator/da9121-regulator.c", i32 836, i32 41}
!35 = !{ptr @da9121_1ch_writeable_ranges, !36, !"da9121_1ch_writeable_ranges", i1 false, i1 false}
!36 = !{!"../drivers/regulator/da9121-regulator.c", i32 828, i32 34}
!37 = !{ptr @da9121_1ch_readable_table, !38, !"da9121_1ch_readable_table", i1 false, i1 false}
!38 = !{!"../drivers/regulator/da9121-regulator.c", i32 809, i32 41}
!39 = !{ptr @da9121_1ch_readable_ranges, !40, !"da9121_1ch_readable_ranges", i1 false, i1 false}
!40 = !{!"../drivers/regulator/da9121-regulator.c", i32 801, i32 34}
!41 = !{ptr @da9121_volatile_table, !42, !"da9121_volatile_table", i1 false, i1 false}
!42 = !{!"../drivers/regulator/da9121-regulator.c", i32 863, i32 41}
!43 = !{ptr @da9121_volatile_ranges, !44, !"da9121_volatile_ranges", i1 false, i1 false}
!44 = !{!"../drivers/regulator/da9121-regulator.c", i32 857, i32 34}
!45 = !{ptr @da9121_2ch_regmap_config, !46, !"da9121_2ch_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/regulator/da9121-regulator.c", i32 880, i32 29}
!47 = !{ptr @da9121_2ch_writeable_table, !48, !"da9121_2ch_writeable_table", i1 false, i1 false}
!48 = !{!"../drivers/regulator/da9121-regulator.c", i32 851, i32 41}
!49 = !{ptr @da9121_2ch_writeable_ranges, !50, !"da9121_2ch_writeable_ranges", i1 false, i1 false}
!50 = !{!"../drivers/regulator/da9121-regulator.c", i32 841, i32 34}
!51 = !{ptr @da9121_2ch_readable_table, !52, !"da9121_2ch_readable_table", i1 false, i1 false}
!52 = !{!"../drivers/regulator/da9121-regulator.c", i32 823, i32 41}
!53 = !{ptr @da9121_2ch_readable_ranges, !54, !"da9121_2ch_readable_ranges", i1 false, i1 false}
!54 = !{!"../drivers/regulator/da9121-regulator.c", i32 814, i32 34}
!55 = !{ptr @local_da9121_regulators, !56, !"local_da9121_regulators", i1 false, i1 false}
!56 = !{!"../drivers/regulator/da9121-regulator.c", i32 611, i32 37}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/da9121-regulator.c", i32 440, i32 14}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/da9121-regulator.c", i32 443, i32 21}
!61 = !{ptr @da9121_reg, !62, !"da9121_reg", i1 false, i1 false}
!62 = !{!"../drivers/regulator/da9121-regulator.c", i32 437, i32 36}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/da9121-regulator.c", i32 396, i32 3}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @da9121_of_parse_cb._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @da9121_of_parse_cb._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/da9121-regulator.c", i32 400, i32 59}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/da9121-regulator.c", i32 403, i32 7}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/da9121-regulator.c", i32 413, i32 5}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/da9121-regulator.c", i32 423, i32 5}
!76 = !{ptr @da9121_of_parse_cb._entry.18, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @da9121_of_parse_cb._entry_ptr.20, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @variant_parameters, !79, !"variant_parameters", i1 false, i1 false}
!79 = !{!"../drivers/regulator/da9121-regulator.c", i32 111, i32 41}
!80 = !{ptr @da9121_10A_2phase_current, !81, !"da9121_10A_2phase_current", i1 false, i1 false}
!81 = !{!"../drivers/regulator/da9121-regulator.c", i32 57, i32 28}
!82 = !{ptr @da9121_3A_1phase_current, !83, !"da9121_3A_1phase_current", i1 false, i1 false}
!83 = !{!"../drivers/regulator/da9121-regulator.c", i32 81, i32 28}
!84 = !{ptr @da9121_5A_1phase_current, !85, !"da9121_5A_1phase_current", i1 false, i1 false}
!85 = !{!"../drivers/regulator/da9121-regulator.c", i32 73, i32 28}
!86 = !{ptr @da9121_6A_2phase_current, !87, !"da9121_6A_2phase_current", i1 false, i1 false}
!87 = !{!"../drivers/regulator/da9121-regulator.c", i32 65, i32 28}
!88 = !{ptr @da914x_40A_4phase_current, !89, !"da914x_40A_4phase_current", i1 false, i1 false}
!89 = !{!"../drivers/regulator/da9121-regulator.c", i32 89, i32 28}
!90 = !{ptr @da914x_20A_2phase_current, !91, !"da914x_20A_2phase_current", i1 false, i1 false}
!91 = !{!"../drivers/regulator/da9121-regulator.c", i32 97, i32 28}
!92 = !{ptr @da9121_buck_ops, !93, !"da9121_buck_ops", i1 false, i1 false}
!93 = !{!"../drivers/regulator/da9121-regulator.c", i32 359, i32 35}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/da9121-regulator.c", i32 288, i32 3}
!96 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @da9121_set_current_limit._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @da9121_set_current_limit._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/da9121-regulator.c", i32 231, i32 3}
!101 = !{ptr @.str.24, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @da9121_ceiling_selector._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @da9121_ceiling_selector._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/da9121-regulator.c", i32 247, i32 3}
!106 = !{ptr @da9121_ceiling_selector._entry.25, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @da9121_ceiling_selector._entry_ptr.27, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @da9121_current_field, !109, !"da9121_current_field", i1 false, i1 false}
!109 = !{!"../drivers/regulator/da9121-regulator.c", i32 125, i32 34}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/da9121-regulator.c", i32 199, i32 3}
!112 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @da9121_get_current_limit._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @da9121_get_current_limit._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @da9121_mode_field, !116, !"da9121_mode_field", i1 false, i1 false}
!116 = !{!"../drivers/regulator/da9121-regulator.c", i32 130, i32 34}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/da9121-regulator.c", i32 348, i32 3}
!119 = !{ptr @da9121_buck_get_mode._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @da9121_buck_get_mode._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/da9121-regulator.c", i32 464, i32 11}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/da9121-regulator.c", i32 483, i32 11}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/da9121-regulator.c", i32 484, i32 15}
!127 = !{ptr @da9220_reg, !128, !"da9220_reg", i1 false, i1 false}
!128 = !{!"../drivers/regulator/da9121-regulator.c", i32 461, i32 36}
!129 = !{ptr @.str.34, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/regulator/da9121-regulator.c", i32 505, i32 11}
!131 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/da9121-regulator.c", i32 524, i32 11}
!133 = !{ptr @da9122_reg, !134, !"da9122_reg", i1 false, i1 false}
!134 = !{!"../drivers/regulator/da9121-regulator.c", i32 502, i32 36}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/da9121-regulator.c", i32 545, i32 10}
!137 = !{ptr @da9217_reg, !138, !"da9217_reg", i1 false, i1 false}
!138 = !{!"../drivers/regulator/da9121-regulator.c", i32 543, i32 36}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/da9121-regulator.c", i32 572, i32 10}
!141 = !{ptr @da9141_reg, !142, !"da9141_reg", i1 false, i1 false}
!142 = !{!"../drivers/regulator/da9121-regulator.c", i32 570, i32 36}
!143 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/da9121-regulator.c", i32 592, i32 10}
!145 = !{ptr @da9142_reg, !146, !"da9142_reg", i1 false, i1 false}
!146 = !{!"../drivers/regulator/da9121-regulator.c", i32 590, i32 36}
!147 = !{ptr @da9121_matches, !148, !"da9121_matches", i1 false, i1 false}
!148 = !{!"../drivers/regulator/da9121-regulator.c", i32 372, i32 34}
!149 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/da9121-regulator.c", i32 901, i32 3}
!151 = !{ptr @.str.40, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @da9121_check_device_type._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @da9121_check_device_type._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.42, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/da9121-regulator.c", i32 907, i32 3}
!156 = !{ptr @da9121_check_device_type._entry.41, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @da9121_check_device_type._entry_ptr.43, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/regulator/da9121-regulator.c", i32 912, i32 3}
!160 = !{ptr @da9121_check_device_type._entry.44, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @da9121_check_device_type._entry_ptr.46, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/da9121-regulator.c", i32 921, i32 10}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/da9121-regulator.c", i32 925, i32 10}
!166 = !{ptr @.str.49, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/da9121-regulator.c", i32 929, i32 10}
!168 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/da9121-regulator.c", i32 933, i32 10}
!170 = !{ptr @.str.51, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/da9121-regulator.c", i32 937, i32 10}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/da9121-regulator.c", i32 941, i32 10}
!174 = !{ptr @.str.53, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/da9121-regulator.c", i32 945, i32 10}
!176 = !{ptr @.str.54, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/regulator/da9121-regulator.c", i32 949, i32 10}
!178 = !{ptr @.str.55, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/da9121-regulator.c", i32 960, i32 11}
!180 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/da9121-regulator.c", i32 969, i32 2}
!182 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @da9121_check_device_type._entry.56, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @da9121_check_device_type._entry_ptr.59, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/regulator/da9121-regulator.c", i32 974, i32 3}
!187 = !{ptr @da9121_check_device_type._entry.60, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @da9121_check_device_type._entry_ptr.62, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/regulator/da9121-regulator.c", i32 986, i32 3}
!191 = !{ptr @da9121_check_device_type._entry.63, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @da9121_check_device_type._entry_ptr.65, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.66, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/regulator/da9121-regulator.c", i32 789, i32 4}
!195 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @da9121_set_regulator_config._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @da9121_set_regulator_config._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/da9121-regulator.c", i32 1063, i32 8}
!200 = !{ptr @.str.69, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/da9121-regulator.c", i32 1067, i32 5}
!202 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @da9121_config_irq._entry, !201, !"_entry", i1 false, i1 false}
!205 = !{ptr @da9121_config_irq._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.73, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/da9121-regulator.c", i32 1081, i32 4}
!208 = !{ptr @da9121_config_irq._entry.72, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @da9121_config_irq._entry_ptr.74, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @da9121_config_irq._entry.75, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/regulator/da9121-regulator.c", i32 1088, i32 4}
!212 = !{ptr @da9121_config_irq._entry_ptr.76, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @da9121_config_irq.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../drivers/regulator/da9121-regulator.c", i32 1093, i32 3}
!215 = !{ptr @.str.77, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @da9121_config_irq.__key.78, !214, !"__key", i1 false, i1 false}
!217 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.81, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/da9121-regulator.c", i32 1094, i32 3}
!220 = !{ptr @da9121_config_irq._entry.80, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @da9121_config_irq._entry_ptr.82, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/da9121-regulator.c", i32 691, i32 3}
!224 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @da9121_irq_handler._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @da9121_irq_handler._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/regulator/da9121-regulator.c", i32 698, i32 3}
!229 = !{ptr @da9121_irq_handler._entry.85, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @da9121_irq_handler._entry_ptr.87, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @da9121_irq_handler._entry.88, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/regulator/da9121-regulator.c", i32 724, i32 5}
!233 = !{ptr @da9121_irq_handler._entry_ptr.89, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.91, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/regulator/da9121-regulator.c", i32 733, i32 4}
!236 = !{ptr @da9121_irq_handler._entry.90, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @da9121_irq_handler._entry_ptr.92, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.94, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/regulator/da9121-regulator.c", i32 747, i32 5}
!240 = !{ptr @da9121_irq_handler._entry.93, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @da9121_irq_handler._entry_ptr.95, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.97, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/regulator/da9121-regulator.c", i32 760, i32 4}
!244 = !{ptr @da9121_irq_handler._entry.96, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @da9121_irq_handler._entry_ptr.98, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.99, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/regulator/da9121-regulator.c", i32 172, i32 2}
!248 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/regulator/da9121-regulator.c", i32 175, i32 2}
!250 = !{ptr @.str.101, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/regulator/da9121-regulator.c", i32 179, i32 2}
!252 = !{ptr @.str.102, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/regulator/da9121-regulator.c", i32 183, i32 2}
!254 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/regulator/da9121-regulator.c", i32 184, i32 2}
!256 = !{ptr @.str.104, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/regulator/da9121-regulator.c", i32 185, i32 2}
!258 = !{ptr @status_event_handling, !259, !"status_event_handling", i1 false, i1 false}
!259 = !{!"../drivers/regulator/da9121-regulator.c", i32 171, i32 39}
!260 = !{ptr @.str.105, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/regulator/da9121-regulator.c", i32 631, i32 3}
!262 = !{ptr @.str.106, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @da9121_status_poll_on._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @da9121_status_poll_on._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/regulator/da9121-regulator.c", i32 661, i32 5}
!267 = !{ptr @da9121_status_poll_on._entry.107, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @da9121_status_poll_on._entry_ptr.109, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/regulator/da9121-regulator.c", i32 1176, i32 3}
!271 = !{ptr @da9121_i2c_remove._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @da9121_i2c_remove._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @da9121_dt_ids, !274, !"da9121_dt_ids", i1 false, i1 false}
!274 = !{!"../drivers/regulator/da9121-regulator.c", i32 1104, i32 34}
!275 = !{ptr @da9121_i2c_id, !276, !"da9121_i2c_id", i1 false, i1 false}
!276 = !{!"../drivers/regulator/da9121-regulator.c", i32 1180, i32 35}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"auto-init"}
