; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9211-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9211-regulator.c"
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
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.da9211 = type { ptr, ptr, ptr, [2 x ptr], i32, i32, i32 }
%struct.da9211_pdata = type { i32, [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_da9211_regulator__288_560_da9211_regulator_driver_init6 = internal global ptr @da9211_regulator_driver_init, section ".initcall6.init", align 4
@da9211_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @da9211_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9211_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9211_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9211_regulator_driver_exit = internal global ptr @da9211_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [69 x i8] c"da9211_regulator.author=James Ban <James.Ban.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [102 x i8] c"da9211_regulator.description=DA9211/DA9212/DA9213/DA9223/DA9214/DA9224/DA9215/DA9225 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9211_regulator.file=drivers/regulator/da9211-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"da9211_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9211\00", [25 x i8] zeroinitializer }, align 32
@da9211_dt_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9211\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9211_i2c_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9213\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9223\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9214\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9215\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9225\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @da9211_i2c_id, i64 168) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@da9211_i2c_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9211\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da9212\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"da9213\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"da9223\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"da9214\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"da9224\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"da9215\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"da9225\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9211_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da9211_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 640, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @da9211_regmap_range, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"da9211_regulator:458:(&da9211_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9211_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9211-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr = internal global ptr @da9211_i2c_probe._entry, section ".printk_index", align 4
@da9211_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read DEVICE_ID reg: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.9 = internal global ptr @da9211_i2c_probe._entry.7, section ".printk_index", align 4
@da9211_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported device id = 0x%x.\0A\00", [33 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.12 = internal global ptr @da9211_i2c_probe._entry.10, section ".printk_index", align 4
@da9211_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No regulators defined for the platform\0A\00", [56 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.15 = internal global ptr @da9211_i2c_probe._entry.13, section ".printk_index", align 4
@da9211_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 508, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.18 = internal global ptr @da9211_i2c_probe._entry.16, section ".printk_index", align 4
@da9211_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 512, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No IRQ configured\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.22 = internal global ptr @da9211_i2c_probe._entry.19, section ".printk_index", align 4
@da9211_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@da9211_i2c_probe._entry_ptr.25 = internal global ptr @da9211_i2c_probe._entry.23, section ".printk_index", align 4
@da9211_regmap_range = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 640, i32 0, i32 6, i32 1, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9211_parse_regulators_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulators node not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da9211_parse_regulators_dt\00", [37 x i8] zeroinitializer }, align 32
@da9211_parse_regulators_dt._entry_ptr = internal global ptr @da9211_parse_regulators_dt._entry, section ".printk_index", align 4
@da9211_matches = internal global { [2 x %struct.of_regulator_match], [56 x i8] } { [2 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.34, ptr null, ptr null, ptr null, ptr @da9211_regulators }, %struct.of_regulator_match { ptr @.str.35, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @da9211_regulators, i64 244) }], [56 x i8] zeroinitializer }, align 32
@da9211_parse_regulators_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to match regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@da9211_parse_regulators_dt._entry_ptr.31 = internal global ptr @da9211_parse_regulators_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"da9211-enable\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCKA\00", [26 x i8] zeroinitializer }, align 32
@da9211_regulators = internal global { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @da9211_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 215, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9211_map_buck_mode }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @da9211_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 217, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 94, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @da9211_map_buck_mode }], [120 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCKB\00", [26 x i8] zeroinitializer }, align 32
@da9211_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @da9211_set_current_limit, ptr @da9211_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9211_buck_set_mode, ptr @da9211_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@da9211_current_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000000, i32 2200000, i32 2400000, i32 2600000, i32 2800000, i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000, i32 4200000, i32 4400000, i32 4600000, i32 4800000, i32 5000000], [32 x i8] zeroinitializer }, align 32
@da9213_current_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000, i32 4200000, i32 4400000, i32 4600000, i32 4800000, i32 5000000, i32 5200000, i32 5400000, i32 5600000, i32 5800000, i32 6000000], [32 x i8] zeroinitializer }, align 32
@da9215_current_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 4000000, i32 4200000, i32 4400000, i32 4600000, i32 4800000, i32 5000000, i32 5200000, i32 5400000, i32 5600000, i32 5800000, i32 6000000, i32 6200000, i32 6400000, i32 6600000, i32 6800000, i32 7000000], [32 x i8] zeroinitializer }, align 32
@da9211_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C error : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9211_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@da9211_irq_handler._entry_ptr = internal global ptr @da9211_irq_handler._entry, section ".printk_index", align 4
@da9211_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read CONFIG_E reg: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da9211_regulator_init\00", [42 x i8] zeroinitializer }, align 32
@da9211_regulator_init._entry_ptr = internal global ptr @da9211_regulator_init._entry, section ".printk_index", align 4
@da9211_regulator_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Configuration is mismatched\0A\00", [35 x i8] zeroinitializer }, align 32
@da9211_regulator_init._entry_ptr.42 = internal global ptr @da9211_regulator_init._entry.40, section ".printk_index", align 4
@da9211_regulator_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register DA9211 regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@da9211_regulator_init._entry_ptr.45 = internal global ptr @da9211_regulator_init._entry.43, section ".printk_index", align 4
@da9211_regulator_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.4, i32 435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to update mask reg: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@da9211_regulator_init._entry_ptr.48 = internal global ptr @da9211_regulator_init._entry.46, section ".printk_index", align 4
@switch.table.da9211_i2c_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 6], [20 x i8] zeroinitializer }, align 32
@switch.table.da9211_map_buck_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.da9211_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"da9211_regulator_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 551, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 553, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"da9211_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 537, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"da9211_i2c_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 523, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"da9211_regmap_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 66, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 458, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 461, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 472, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 487, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 495, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 507, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 512, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 518, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"da9211_regmap_range\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 291, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 293, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"da9211_matches\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 273, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 301, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 320, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 323, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 275, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"da9211_regulators\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 267, i32 30 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 279, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"da9211_buck_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 237, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"da9211_current_limits\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 84, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"da9213_current_limits\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 91, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"da9215_current_limits\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 98, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 375, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 387, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 400, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 425, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [40 x i8] c"../drivers/regulator/da9211-regulator.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 434, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant [30 x i8] c"switch.table.da9211_i2c_probe\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [34 x i8] c"switch.table.da9211_map_buck_mode\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [34 x i8] c"switch.table.da9211_buck_get_mode\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9211_regulator_driver_exit, ptr @__initcall__kmod_da9211_regulator__288_560_da9211_regulator_driver_init6, ptr @da9211_i2c_probe._entry, ptr @da9211_i2c_probe._entry.10, ptr @da9211_i2c_probe._entry.13, ptr @da9211_i2c_probe._entry.16, ptr @da9211_i2c_probe._entry.19, ptr @da9211_i2c_probe._entry.23, ptr @da9211_i2c_probe._entry.7, ptr @da9211_i2c_probe._entry_ptr, ptr @da9211_i2c_probe._entry_ptr.12, ptr @da9211_i2c_probe._entry_ptr.15, ptr @da9211_i2c_probe._entry_ptr.18, ptr @da9211_i2c_probe._entry_ptr.22, ptr @da9211_i2c_probe._entry_ptr.25, ptr @da9211_i2c_probe._entry_ptr.9, ptr @da9211_irq_handler._entry, ptr @da9211_irq_handler._entry_ptr, ptr @da9211_parse_regulators_dt._entry, ptr @da9211_parse_regulators_dt._entry.29, ptr @da9211_parse_regulators_dt._entry_ptr, ptr @da9211_parse_regulators_dt._entry_ptr.31, ptr @da9211_regulator_driver_exit, ptr @da9211_regulator_init._entry, ptr @da9211_regulator_init._entry.40, ptr @da9211_regulator_init._entry.43, ptr @da9211_regulator_init._entry.46, ptr @da9211_regulator_init._entry_ptr, ptr @da9211_regulator_init._entry_ptr.42, ptr @da9211_regulator_init._entry_ptr.45, ptr @da9211_regulator_init._entry_ptr.48, ptr @da9211_regulator_driver, ptr @.str, ptr @da9211_dt_ids, ptr @da9211_i2c_id, ptr @da9211_i2c_probe._key, ptr @da9211_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @da9211_regmap_range, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @da9211_matches, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @da9211_regulators, ptr @.str.35, ptr @da9211_buck_ops, ptr @da9211_current_limits, ptr @da9213_current_limits, ptr @da9215_current_limits, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @switch.table.da9211_i2c_probe, ptr @switch.table.da9211_map_buck_mode, ptr @switch.table.da9211_buck_get_mode], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_dt_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regmap_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_parse_regulators_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_matches to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_parse_regulators_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulators to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_current_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9213_current_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9215_current_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulator_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulator_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9211_regulator_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9211_i2c_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9211_map_buck_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9211_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9211_regulator_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9211_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @da9211_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
  %data.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !120
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da9211_regmap_config, ptr noundef nonnull @da9211_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.da9211, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %3) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data, align 8
  %pdata = getelementptr inbounds %struct.da9211, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdata, align 4
  %call13 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 513, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %call13) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %switch.tableidx = add i32 %13, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 3
  br i1 %14, label %switch.lookup, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %13) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end19
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9211_i2c_probe, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %chip_id23 = getelementptr inbounds %struct.da9211, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %chip_id23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.load, ptr %chip_id23, align 4
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 4
  %tobool29.not = icmp eq ptr %20, null
  br i1 %tobool29.not, label %if.then30, label %switch.lookup.if.end34_crit_edge

switch.lookup.if.end34_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %switch.lookup
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call.i117 = call ptr @of_get_child_by_name(ptr noundef %24, ptr noundef nonnull @.str.26) #6
  %tobool.not.i = icmp eq ptr %call.i117, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #9
  br label %da9211_parse_regulators_dt.exit

if.end.i:                                         ; preds = %if.then30
  %call2.i = call i32 @of_regulator_match(ptr noundef %22, ptr noundef nonnull %call.i117, ptr noundef nonnull @da9211_matches, i32 noundef 2) #6
  call void @of_node_put(ptr noundef nonnull %call.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i118 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i118, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.30) #9
  br label %da9211_parse_regulators_dt.exit

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 28, i32 noundef 3520) #6
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.da9211_parse_regulators_dt.exit_crit_edge, label %if.end13.i

if.end8.i.da9211_parse_regulators_dt.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9211_parse_regulators_dt.exit

if.end13.i:                                       ; preds = %if.end8.i
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2.i, ptr %call.i.i, align 4
  %26 = load ptr, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9211_matches, i32 0, i32 0, i32 2), align 4
  %tobool15.not.i = icmp eq ptr %26, null
  br i1 %tobool15.not.i, label %if.end13.i.for.inc.i_crit_edge, label %if.end17.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %arrayidx21.i, align 4
  %28 = load ptr, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9211_matches, i32 0, i32 0, i32 3), align 4
  %arrayidx24.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 2, i32 0
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx24.i, align 4
  %tobool27.not.i = icmp eq ptr %28, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %28, i32 0, i32 3
  %spec.select.i = select i1 %tobool27.not.i, ptr null, ptr %fwnode.i
  %call.i70.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %22, ptr noundef %spec.select.i, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.33) #6
  %arrayidx29.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 1, i32 0
  %cmp.i.i = icmp ugt ptr %call.i70.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i70.i
  %30 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.store.select.i, ptr %arrayidx29.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %if.end13.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ 1, %if.end17.i ], [ 0, %if.end13.i.for.inc.i_crit_edge ]
  %31 = load ptr, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9211_matches, i32 0, i32 1, i32 2), align 4
  %tobool15.not.1.i = icmp eq ptr %31, null
  br i1 %tobool15.not.1.i, label %for.inc.i.da9211_parse_regulators_dt.exit_crit_edge, label %if.end17.1.i

for.inc.i.da9211_parse_regulators_dt.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9211_parse_regulators_dt.exit

if.end17.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.1.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 3, i32 %n.1.i
  %32 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx21.1.i, align 4
  %33 = load ptr, ptr getelementptr inbounds ([2 x %struct.of_regulator_match], ptr @da9211_matches, i32 0, i32 1, i32 3), align 4
  %arrayidx24.1.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 2, i32 %n.1.i
  %34 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %arrayidx24.1.i, align 4
  %tobool27.not.1.i = icmp eq ptr %33, null
  %fwnode.1.i = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 3
  %spec.select.1.i = select i1 %tobool27.not.1.i, ptr null, ptr %fwnode.1.i
  %call.i70.1.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %22, ptr noundef %spec.select.1.i, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.33) #6
  %arrayidx29.1.i = getelementptr %struct.da9211_pdata, ptr %call.i.i, i32 0, i32 1, i32 %n.1.i
  %cmp.i.1.i = icmp ugt ptr %call.i70.1.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.1.i = select i1 %cmp.i.1.i, ptr null, ptr %call.i70.1.i
  %35 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %spec.store.select.1.i, ptr %arrayidx29.1.i, align 4
  br label %da9211_parse_regulators_dt.exit

da9211_parse_regulators_dt.exit:                  ; preds = %if.end17.1.i, %for.inc.i.da9211_parse_regulators_dt.exit_crit_edge, %if.end8.i.da9211_parse_regulators_dt.exit_crit_edge, %do.end6.i, %do.end.i
  %retval.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end6.i ], [ inttoptr (i32 -19 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.end8.i.da9211_parse_regulators_dt.exit_crit_edge ], [ %call.i.i, %if.end17.1.i ], [ %call.i.i, %for.inc.i.da9211_parse_regulators_dt.exit_crit_edge ]
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i, ptr %pdata, align 4
  br label %if.end34

if.end34:                                         ; preds = %da9211_parse_regulators_dt.exit, %switch.lookup.if.end34_crit_edge
  %37 = phi ptr [ %retval.0.i, %da9211_parse_regulators_dt.exit ], [ %20, %switch.lookup.if.end34_crit_edge ]
  %cmp.i119 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14) #9
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %chip_irq = getelementptr inbounds %struct.da9211, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %chip_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp46.not = icmp eq i32 %44, 0
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  br i1 %cmp46.not, label %do.end61, label %if.then47

if.then47:                                        ; preds = %if.end44
  %call50 = call i32 @devm_request_threaded_irq(ptr noundef %47, i32 noundef %44, ptr noundef null, ptr noundef nonnull @da9211_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.then47.if.end63_crit_edge, label %do.end55

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end55:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %50 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef %51) #9
  br label %cleanup

do.end61:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.20) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %if.then47.if.end63_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %52 = call ptr @memset(ptr %config.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %data.i, align 4, !annotation !120
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call.i120 = call i32 @regmap_read(ptr noundef %55, i32 noundef 327, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %do.end.i122, label %if.end.i123

do.end.i122:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.38, i32 noundef %call.i120) #9
  br label %da9211_regulator_init.exit.thread

if.end.i123:                                      ; preds = %if.end63
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data.i, align 4
  %and.i = and i32 %59, 64
  store i32 %and.i, ptr %data.i, align 4
  %60 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp1.i = icmp eq i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp1.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %if.end.i123.if.end17.i124_crit_edge, label %if.else.i

if.end.i123.if.end17.i124_crit_edge:              ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i124

if.else.i:                                        ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp6.i = icmp ne i32 %63, 2
  %brmerge.i = select i1 %cmp6.i, i1 true, i1 %cmp2.i
  br i1 %brmerge.i, label %do.end14.i, label %if.else.i.if.end17.i124_crit_edge

if.else.i.if.end17.i124_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i124

do.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.41) #9
  br label %da9211_regulator_init.exit.thread

if.end17.i124:                                    ; preds = %if.else.i.if.end17.i124_crit_edge, %if.end.i123.if.end17.i124_crit_edge
  %.sink.i = phi i32 [ 1, %if.end.i123.if.end17.i124_crit_edge ], [ 2, %if.else.i.if.end17.i124_crit_edge ]
  %num_regulator10.i = getelementptr inbounds %struct.da9211, ptr %call.i, i32 0, i32 4
  %66 = ptrtoint ptr %num_regulator10.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %num_regulator10.i, align 4
  %init_data21.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  %regmap25.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 4
  %of_node.i125 = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 3
  %ena_gpiod.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i130.for.body.i_crit_edge, %if.end17.i124
  %i.0115.i = phi i32 [ 0, %if.end17.i124 ], [ %inc.i, %for.inc.i130.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdata, align 4
  %arrayidx.i = getelementptr %struct.da9211_pdata, ptr %68, i32 0, i32 3, i32 %i.0115.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %init_data21.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %init_data21.i, align 4
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %config.i, align 4
  %75 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i, align 4
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %78 = ptrtoint ptr %regmap25.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %regmap25.i, align 4
  %arrayidx27.i = getelementptr %struct.da9211_pdata, ptr %68, i32 0, i32 2, i32 %i.0115.i
  %79 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx27.i, align 4
  %81 = ptrtoint ptr %of_node.i125 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %of_node.i125, align 4
  %arrayidx29.i126 = getelementptr %struct.da9211_pdata, ptr %68, i32 0, i32 1, i32 %i.0115.i
  %82 = ptrtoint ptr %arrayidx29.i126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx29.i126, align 4
  %tobool.not.i127 = icmp eq ptr %83, null
  br i1 %tobool.not.i127, label %if.end36.thread.i, label %if.then39.i

if.end36.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %ena_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %ena_gpiod.i, align 4
  br label %if.end42.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %ena_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %83, ptr %ena_gpiod.i, align 4
  call void @devm_gpiod_unhinge(ptr noundef %73, ptr noundef nonnull %83) #6
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %if.end36.thread.i
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %arrayidx44.i = getelementptr [2 x %struct.regulator_desc], ptr @da9211_regulators, i32 0, i32 %i.0115.i
  %call45.i = call ptr @devm_regulator_register(ptr noundef %87, ptr noundef %arrayidx44.i, ptr noundef nonnull %config.i) #6
  %arrayidx46.i = getelementptr %struct.da9211, ptr %call.i, i32 0, i32 3, i32 %i.0115.i
  %88 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call45.i, ptr %arrayidx46.i, align 4
  %cmp.i.i128 = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i128, label %da9211_regulator_init.exit, label %if.end58.i

if.end58.i:                                       ; preds = %if.end42.i
  %89 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chip_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp59.not.i = icmp eq i32 %90, 0
  br i1 %cmp59.not.i, label %if.end58.i.for.inc.i130_crit_edge, label %if.then60.i

if.end58.i.for.inc.i130_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

if.then60.i:                                      ; preds = %if.end58.i
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %shl.i = shl i32 16, %i.0115.i
  %call.i.i129 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 85, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp63.i = icmp slt i32 %call.i.i129, 0
  br i1 %cmp63.i, label %do.end67.i, label %if.then60.i.for.inc.i130_crit_edge

if.then60.i.for.inc.i130_crit_edge:               ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

do.end67.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.47, i32 noundef %call.i.i129) #9
  br label %da9211_regulator_init.exit.thread

for.inc.i130:                                     ; preds = %if.then60.i.for.inc.i130_crit_edge, %if.end58.i.for.inc.i130_crit_edge
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %95 = ptrtoint ptr %num_regulator10.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_regulator10.i, align 4
  %cmp19.i = icmp slt i32 %inc.i, %96
  br i1 %cmp19.i, label %for.inc.i130.for.body.i_crit_edge, label %da9211_regulator_init.exit.thread135

for.inc.i130.for.body.i_crit_edge:                ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

da9211_regulator_init.exit.thread135:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %cleanup

da9211_regulator_init.exit.thread:                ; preds = %do.end67.i, %do.end14.i, %do.end.i122
  %retval.0.i131.ph = phi i32 [ -22, %do.end14.i ], [ %call.i.i129, %do.end67.i ], [ %call.i120, %do.end.i122 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %do.end69

da9211_regulator_init.exit:                       ; preds = %if.end42.i
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.44) #9
  %99 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx46.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp65 = icmp slt ptr %100, null
  br i1 %cmp65, label %da9211_regulator_init.exit.do.end69_crit_edge, label %da9211_regulator_init.exit.cleanup_crit_edge

da9211_regulator_init.exit.cleanup_crit_edge:     ; preds = %da9211_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

da9211_regulator_init.exit.do.end69_crit_edge:    ; preds = %da9211_regulator_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

do.end69:                                         ; preds = %da9211_regulator_init.exit.do.end69_crit_edge, %da9211_regulator_init.exit.thread
  %retval.0.i131134 = phi i32 [ %retval.0.i131.ph, %da9211_regulator_init.exit.thread ], [ %101, %da9211_regulator_init.exit.do.end69_crit_edge ]
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i131134) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %da9211_regulator_init.exit.cleanup_crit_edge, %da9211_regulator_init.exit.thread135, %do.end55, %do.end40, %do.end26, %do.end17, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call13, %do.end17 ], [ -19, %do.end26 ], [ %42, %do.end40 ], [ %call50, %do.end55 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i131134, %do.end69 ], [ %101, %da9211_regulator_init.exit.cleanup_crit_edge ], [ 0, %da9211_regulator_init.exit.thread135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !120
  %regmap = getelementptr inbounds %struct.da9211, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 83, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then1:                                         ; preds = %if.end
  %rdev = getelementptr inbounds %struct.da9211, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 4
  %call2 = call i32 @regulator_notifier_call_chain(ptr noundef %6, i32 noundef 2, ptr noundef null) #6
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %8, i32 noundef 83, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then1.do.end_crit_edge, label %if.then1.if.end8_crit_edge

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then1.do.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end8:                                          ; preds = %if.then1.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ 1, %if.then1.if.end8_crit_edge ]
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_val, align 4
  %and9 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %arrayidx13 = getelementptr %struct.da9211, ptr %data, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %call14 = call i32 @regulator_notifier_call_chain(ptr noundef %12, i32 noundef 2, ptr noundef null) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_write(ptr noundef %14, i32 noundef 83, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then11.do.end_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.do.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.then11.do.end_crit_edge, %if.then1.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call4, %if.then1.do.end_crit_edge ], [ %call16, %if.then11.do.end_crit_edge ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.end8.cleanup_crit_edge ], [ 1, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da9211_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %0)
  %switch = icmp eq i32 %0, 80
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da9211_map_buck_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9211_map_buck_mode, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_set_current_limit(ptr noundef %rdev, i32 noundef %min, i32 noundef %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %chip_id = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 6
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
    i32 6, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %current_limits.0 = phi ptr [ @da9215_current_limits, %sw.bb3 ], [ @da9213_current_limits, %sw.bb2 ], [ @da9211_current_limits, %entry.sw.epilog_crit_edge ]
  %arrayidx = getelementptr i32, ptr %current_limits.0, i32 15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %min)
  %cmp4.not = icmp slt i32 %4, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %max)
  %cmp6.not = icmp sgt i32 %4, %max
  %or.cond = or i1 %cmp4.not, %cmp6.not
  br i1 %or.cond, label %for.inc, label %sw.epilog.if.then_crit_edge

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  %i.023.lcssa = phi i32 [ 15, %sw.epilog.if.then_crit_edge ], [ 14, %for.inc.if.then_crit_edge ], [ 13, %for.inc.1.if.then_crit_edge ], [ 12, %for.inc.2.if.then_crit_edge ], [ 11, %for.inc.3.if.then_crit_edge ], [ 10, %for.inc.4.if.then_crit_edge ], [ 9, %for.inc.5.if.then_crit_edge ], [ 8, %for.inc.6.if.then_crit_edge ], [ 7, %for.inc.7.if.then_crit_edge ], [ 6, %for.inc.8.if.then_crit_edge ], [ 5, %for.inc.9.if.then_crit_edge ], [ 4, %for.inc.10.if.then_crit_edge ], [ 3, %for.inc.11.if.then_crit_edge ], [ 2, %for.inc.12.if.then_crit_edge ], [ 1, %for.inc.13.if.then_crit_edge ], [ 0, %for.inc.14.if.then_crit_edge ]
  %regmap = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %call, 2
  %shl = shl i32 15, %mul
  %shl8 = shl i32 %i.023.lcssa, %mul
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 208, i32 noundef %shl, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog
  %arrayidx.1 = getelementptr i32, ptr %current_limits.0, i32 14
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %min)
  %cmp4.not.1 = icmp slt i32 %8, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %max)
  %cmp6.not.1 = icmp sgt i32 %8, %max
  %or.cond.1 = or i1 %cmp4.not.1, %cmp6.not.1
  br i1 %or.cond.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i32, ptr %current_limits.0, i32 13
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %min)
  %cmp4.not.2 = icmp slt i32 %10, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max)
  %cmp6.not.2 = icmp sgt i32 %10, %max
  %or.cond.2 = or i1 %cmp4.not.2, %cmp6.not.2
  br i1 %or.cond.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i32, ptr %current_limits.0, i32 12
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %min)
  %cmp4.not.3 = icmp slt i32 %12, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %max)
  %cmp6.not.3 = icmp sgt i32 %12, %max
  %or.cond.3 = or i1 %cmp4.not.3, %cmp6.not.3
  br i1 %or.cond.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i32, ptr %current_limits.0, i32 11
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %min)
  %cmp4.not.4 = icmp slt i32 %14, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %max)
  %cmp6.not.4 = icmp sgt i32 %14, %max
  %or.cond.4 = or i1 %cmp4.not.4, %cmp6.not.4
  br i1 %or.cond.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i32, ptr %current_limits.0, i32 10
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %min)
  %cmp4.not.5 = icmp slt i32 %16, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %max)
  %cmp6.not.5 = icmp sgt i32 %16, %max
  %or.cond.5 = or i1 %cmp4.not.5, %cmp6.not.5
  br i1 %or.cond.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i32, ptr %current_limits.0, i32 9
  %17 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %min)
  %cmp4.not.6 = icmp slt i32 %18, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %max)
  %cmp6.not.6 = icmp sgt i32 %18, %max
  %or.cond.6 = or i1 %cmp4.not.6, %cmp6.not.6
  br i1 %or.cond.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i32, ptr %current_limits.0, i32 8
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %min)
  %cmp4.not.7 = icmp slt i32 %20, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %max)
  %cmp6.not.7 = icmp sgt i32 %20, %max
  %or.cond.7 = or i1 %cmp4.not.7, %cmp6.not.7
  br i1 %or.cond.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr i32, ptr %current_limits.0, i32 7
  %21 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %min)
  %cmp4.not.8 = icmp slt i32 %22, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %max)
  %cmp6.not.8 = icmp sgt i32 %22, %max
  %or.cond.8 = or i1 %cmp4.not.8, %cmp6.not.8
  br i1 %or.cond.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr i32, ptr %current_limits.0, i32 6
  %23 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %min)
  %cmp4.not.9 = icmp slt i32 %24, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %max)
  %cmp6.not.9 = icmp sgt i32 %24, %max
  %or.cond.9 = or i1 %cmp4.not.9, %cmp6.not.9
  br i1 %or.cond.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr i32, ptr %current_limits.0, i32 5
  %25 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %min)
  %cmp4.not.10 = icmp slt i32 %26, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %max)
  %cmp6.not.10 = icmp sgt i32 %26, %max
  %or.cond.10 = or i1 %cmp4.not.10, %cmp6.not.10
  br i1 %or.cond.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr i32, ptr %current_limits.0, i32 4
  %27 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %min)
  %cmp4.not.11 = icmp slt i32 %28, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %max)
  %cmp6.not.11 = icmp sgt i32 %28, %max
  %or.cond.11 = or i1 %cmp4.not.11, %cmp6.not.11
  br i1 %or.cond.11, label %for.inc.11, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr i32, ptr %current_limits.0, i32 3
  %29 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %min)
  %cmp4.not.12 = icmp slt i32 %30, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %max)
  %cmp6.not.12 = icmp sgt i32 %30, %max
  %or.cond.12 = or i1 %cmp4.not.12, %cmp6.not.12
  br i1 %or.cond.12, label %for.inc.12, label %for.inc.11.if.then_crit_edge

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr i32, ptr %current_limits.0, i32 2
  %31 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %min)
  %cmp4.not.13 = icmp slt i32 %32, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %max)
  %cmp6.not.13 = icmp sgt i32 %32, %max
  %or.cond.13 = or i1 %cmp4.not.13, %cmp6.not.13
  br i1 %or.cond.13, label %for.inc.13, label %for.inc.12.if.then_crit_edge

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr i32, ptr %current_limits.0, i32 1
  %33 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %min)
  %cmp4.not.14 = icmp slt i32 %34, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %max)
  %cmp6.not.14 = icmp sgt i32 %34, %max
  %or.cond.14 = or i1 %cmp4.not.14, %cmp6.not.14
  br i1 %or.cond.14, label %for.inc.14, label %for.inc.13.if.then_crit_edge

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %35 = ptrtoint ptr %current_limits.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %current_limits.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %min)
  %cmp4.not.15 = icmp slt i32 %36, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %max)
  %cmp6.not.15 = icmp sgt i32 %36, %max
  %or.cond.15 = or i1 %cmp4.not.15, %cmp6.not.15
  br i1 %or.cond.15, label %for.inc.14.cleanup_crit_edge, label %for.inc.14.if.then_crit_edge

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.14.cleanup_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !120
  %chip_id = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 6
  %1 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_id, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
    i32 6, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %current_limits.0 = phi ptr [ @da9215_current_limits, %sw.bb3 ], [ @da9213_current_limits, %sw.bb2 ], [ @da9211_current_limits, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %5, i32 noundef 208, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %mul = shl i32 %call, 2
  %shr = lshr i32 %7, %mul
  %and = and i32 %shr, 15
  %arrayidx = getelementptr i32, ptr %current_limits.0, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb3 ], [ 3, %sw.bb2 ], [ 2, %sw.bb ]
  %regmap = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %call, 209
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9211_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !120
  %regmap = getelementptr inbounds %struct.da9211, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %add = add i32 %call, 209
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %and = and i32 %4, 3
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9211_buck_get_mode, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_da9211_regulator__288_560_da9211_regulator_driver_init6, !1, !"__initcall__kmod_da9211_regulator__288_560_da9211_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9211-regulator.c", i32 560, i32 1}
!2 = !{ptr @__exitcall_da9211_regulator_driver_exit, !1, !"__exitcall_da9211_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/da9211-regulator.c", i32 562, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/da9211-regulator.c", i32 563, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/da9211-regulator.c", i32 564, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/da9211-regulator.c", i32 553, i32 11}
!12 = !{ptr @da9211_regulator_driver, !13, !"da9211_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/da9211-regulator.c", i32 551, i32 26}
!14 = !{ptr @da9211_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/da9211-regulator.c", i32 458, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/da9211-regulator.c", i32 461, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9211_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9211_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9211-regulator.c", i32 472, i32 3}
!27 = !{ptr @da9211_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9211_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9211-regulator.c", i32 487, i32 3}
!31 = !{ptr @da9211_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9211_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/da9211-regulator.c", i32 495, i32 3}
!35 = !{ptr @da9211_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @da9211_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/da9211-regulator.c", i32 507, i32 4}
!39 = !{ptr @da9211_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @da9211_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/da9211-regulator.c", i32 512, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @da9211_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @da9211_i2c_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/da9211-regulator.c", i32 518, i32 3}
!48 = !{ptr @da9211_i2c_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9211_i2c_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @da9211_regmap_config, !51, !"da9211_regmap_config", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9211-regulator.c", i32 66, i32 35}
!52 = !{ptr @da9211_regmap_range, !53, !"da9211_regmap_range", i1 false, i1 false}
!53 = !{!"../drivers/regulator/da9211-regulator.c", i32 42, i32 38}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9211-regulator.c", i32 291, i32 44}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9211-regulator.c", i32 293, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @da9211_parse_regulators_dt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @da9211_parse_regulators_dt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/da9211-regulator.c", i32 301, i32 3}
!63 = !{ptr @da9211_parse_regulators_dt._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @da9211_parse_regulators_dt._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/da9211-regulator.c", i32 320, i32 6}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/da9211-regulator.c", i32 323, i32 6}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/da9211-regulator.c", i32 275, i32 11}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/da9211-regulator.c", i32 279, i32 11}
!73 = !{ptr @da9211_matches, !74, !"da9211_matches", i1 false, i1 false}
!74 = !{!"../drivers/regulator/da9211-regulator.c", i32 273, i32 34}
!75 = !{ptr @da9211_regulators, !76, !"da9211_regulators", i1 false, i1 false}
!76 = !{!"../drivers/regulator/da9211-regulator.c", i32 267, i32 30}
!77 = !{ptr @da9211_buck_ops, !78, !"da9211_buck_ops", i1 false, i1 false}
!78 = !{!"../drivers/regulator/da9211-regulator.c", i32 237, i32 35}
!79 = !{ptr @da9211_current_limits, !80, !"da9211_current_limits", i1 false, i1 false}
!80 = !{!"../drivers/regulator/da9211-regulator.c", i32 84, i32 18}
!81 = !{ptr @da9213_current_limits, !82, !"da9213_current_limits", i1 false, i1 false}
!82 = !{!"../drivers/regulator/da9211-regulator.c", i32 91, i32 18}
!83 = !{ptr @da9215_current_limits, !84, !"da9215_current_limits", i1 false, i1 false}
!84 = !{!"../drivers/regulator/da9211-regulator.c", i32 98, i32 18}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/da9211-regulator.c", i32 375, i32 2}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @da9211_irq_handler._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @da9211_irq_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/da9211-regulator.c", i32 387, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @da9211_regulator_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @da9211_regulator_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/da9211-regulator.c", i32 400, i32 3}
!97 = !{ptr @da9211_regulator_init._entry.40, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @da9211_regulator_init._entry_ptr.42, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/da9211-regulator.c", i32 425, i32 4}
!101 = !{ptr @da9211_regulator_init._entry.43, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @da9211_regulator_init._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/da9211-regulator.c", i32 434, i32 5}
!105 = !{ptr @da9211_regulator_init._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @da9211_regulator_init._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @da9211_dt_ids, !108, !"da9211_dt_ids", i1 false, i1 false}
!108 = !{!"../drivers/regulator/da9211-regulator.c", i32 537, i32 34}
!109 = !{ptr @da9211_i2c_id, !110, !"da9211_i2c_id", i1 false, i1 false}
!110 = !{!"../drivers/regulator/da9211-regulator.c", i32 523, i32 35}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
