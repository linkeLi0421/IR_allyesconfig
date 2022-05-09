; ModuleID = '/llk/IR_all_yes/drivers/regulator/fan53555.c_pt.bc'
source_filename = "../drivers/regulator/fan53555.c"
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
%struct.fan53555_device_info = type { i32, ptr, %struct.regulator_desc, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.fan53555_platform_data = type { ptr, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_fan53555__288_672_fan53555_regulator_driver_init6 = internal global ptr @fan53555_regulator_driver_init, section ".initcall6.init", align 4
@fan53555_regulator_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @fan53555_regulator_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fan53555_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fan53555_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fan53555_regulator_driver_exit = internal global ptr @fan53555_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"fan53555.author=Yunfan Zhang <yfzhang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [47 x i8] c"fan53555.description=FAN53555 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"fan53555.file=drivers/regulator/fan53555\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"fan53555.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fan53555-regulator\00", [45 x i8] zeroinitializer }, align 32
@fan53555_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fan53526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fan53555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silergy,syr827\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silergy,syr828\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcs,tcs4525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcs,tcs4526\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@fan53555_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fan53526\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"fan53555\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"syr827\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"syr828\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tcs4525\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tcs4526\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform data not found!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fan53555_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/regulator/fan53555.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr = internal global ptr @fan53555_regulator_probe._entry, section ".printk_index", align 4
@fan53555_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid slew_rate\0A\00", [45 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.8 = internal global ptr @fan53555_regulator_probe._entry.6, section ".printk_index", align 4
@slew_rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 64000, i32 32000, i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 500], [32 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fan53555_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fan53555:596:(&fan53555_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate regmap!\0A\00", [36 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.12 = internal global ptr @fan53555_regulator_probe._entry.10, section ".printk_index", align 4
@fan53555_regulator_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get chip ID!\0A\00", [40 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.15 = internal global ptr @fan53555_regulator_probe._entry.13, section ".printk_index", align 4
@fan53555_regulator_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get chip Rev!\0A\00", [39 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.18 = internal global ptr @fan53555_regulator_probe._entry.16, section ".printk_index", align 4
@fan53555_regulator_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 618, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FAN53555 Option[%d] Rev[%d] Detected!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.22 = internal global ptr @fan53555_regulator_probe._entry.19, section ".printk_index", align 4
@fan53555_regulator_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to setup device!\0A\00", [39 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.25 = internal global ptr @fan53555_regulator_probe._entry.23, section ".printk_index", align 4
@fan53555_regulator_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register regulator!\0A\00", [33 x i8] zeroinitializer }, align 32
@fan53555_regulator_probe._entry_ptr.28 = internal global ptr @fan53555_regulator_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fcs,suspend-voltage-selector\00", [35 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid VSEL ID!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fan53555_device_setup\00", [42 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry_ptr = internal global ptr @fan53555_device_setup._entry, section ".printk_index", align 4
@fan53555_device_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry_ptr.33 = internal global ptr @fan53555_device_setup._entry.32, section ".printk_index", align 4
@fan53555_device_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vendor %d not supported!\0A\00", [38 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry_ptr.36 = internal global ptr @fan53555_device_setup._entry.34, section ".printk_index", align 4
@fan53555_device_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry_ptr.38 = internal global ptr @fan53555_device_setup._entry.37, section ".printk_index", align 4
@fan53555_device_setup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fan53555_device_setup._entry_ptr.40 = internal global ptr @fan53555_device_setup._entry.39, section ".printk_index", align 4
@fan53526_voltages_setup_fairchild._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Chip ID %d with rev %d not supported!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fan53526_voltages_setup_fairchild\00", [62 x i8] zeroinitializer }, align 32
@fan53526_voltages_setup_fairchild._entry_ptr = internal global ptr @fan53526_voltages_setup_fairchild._entry, section ".printk_index", align 4
@fan53526_voltages_setup_fairchild._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Chip ID %d not supported!\0A\00", [37 x i8] zeroinitializer }, align 32
@fan53526_voltages_setup_fairchild._entry_ptr.45 = internal global ptr @fan53526_voltages_setup_fairchild._entry.43, section ".printk_index", align 4
@fan53555_voltages_setup_fairchild._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.46, ptr @.str.3, i32 292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fan53555_voltages_setup_fairchild\00", [62 x i8] zeroinitializer }, align 32
@fan53555_voltages_setup_fairchild._entry_ptr = internal global ptr @fan53555_voltages_setup_fairchild._entry, section ".printk_index", align 4
@fan53555_voltages_setup_fairchild._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fan53555_voltages_setup_fairchild._entry_ptr.48 = internal global ptr @fan53555_voltages_setup_fairchild._entry.47, section ".printk_index", align 4
@fan53555_voltages_setup_silergy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.49, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fan53555_voltages_setup_silergy\00", [32 x i8] zeroinitializer }, align 32
@fan53555_voltages_setup_silergy._entry_ptr = internal global ptr @fan53555_voltages_setup_silergy._entry, section ".printk_index", align 4
@tcs_slew_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 18700, i32 9300, i32 4600, i32 2300], [16 x i8] zeroinitializer }, align 32
@fan53526_voltages_setup_tcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.50, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fan53526_voltages_setup_tcs\00", [36 x i8] zeroinitializer }, align 32
@fan53526_voltages_setup_tcs._entry_ptr = internal global ptr @fan53526_voltages_setup_tcs._entry, section ".printk_index", align 4
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fan53555-reg\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@fan53555_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @fan53555_set_mode, ptr @fan53555_get_mode, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fan53555_set_suspend_voltage, ptr @fan53555_set_suspend_enable, ptr @fan53555_set_suspend_disable, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 15]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.63 = private unnamed_addr constant [26 x i8] c"fan53555_regulator_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 663, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 665, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"fan53555_dt_ids\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 528, i32 49 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"fan53555_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 639, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 573, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 585, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"slew_rates\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 208, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [23 x i8] c"fan53555_regmap_config\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 501, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 596, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 598, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 606, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 613, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 617, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 622, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 634, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 520, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 392, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 407, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 412, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 448, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 467, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 254, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 261, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 290, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 308, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 331, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"tcs_slew_rates\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 219, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 360, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 480, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 481, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant [23 x i8] c"fan53555_regulator_ops\00", align 1
@___asan_gen_.223 = private constant [32 x i8] c"../drivers/regulator/fan53555.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 226, i32 35 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_fan53555_regulator_driver_exit, ptr @__initcall__kmod_fan53555__288_672_fan53555_regulator_driver_init6, ptr @fan53526_voltages_setup_fairchild._entry, ptr @fan53526_voltages_setup_fairchild._entry.43, ptr @fan53526_voltages_setup_fairchild._entry_ptr, ptr @fan53526_voltages_setup_fairchild._entry_ptr.45, ptr @fan53526_voltages_setup_tcs._entry, ptr @fan53526_voltages_setup_tcs._entry_ptr, ptr @fan53555_device_setup._entry, ptr @fan53555_device_setup._entry.32, ptr @fan53555_device_setup._entry.34, ptr @fan53555_device_setup._entry.37, ptr @fan53555_device_setup._entry.39, ptr @fan53555_device_setup._entry_ptr, ptr @fan53555_device_setup._entry_ptr.33, ptr @fan53555_device_setup._entry_ptr.36, ptr @fan53555_device_setup._entry_ptr.38, ptr @fan53555_device_setup._entry_ptr.40, ptr @fan53555_regulator_driver_exit, ptr @fan53555_regulator_probe._entry, ptr @fan53555_regulator_probe._entry.10, ptr @fan53555_regulator_probe._entry.13, ptr @fan53555_regulator_probe._entry.16, ptr @fan53555_regulator_probe._entry.19, ptr @fan53555_regulator_probe._entry.23, ptr @fan53555_regulator_probe._entry.26, ptr @fan53555_regulator_probe._entry.6, ptr @fan53555_regulator_probe._entry_ptr, ptr @fan53555_regulator_probe._entry_ptr.12, ptr @fan53555_regulator_probe._entry_ptr.15, ptr @fan53555_regulator_probe._entry_ptr.18, ptr @fan53555_regulator_probe._entry_ptr.22, ptr @fan53555_regulator_probe._entry_ptr.25, ptr @fan53555_regulator_probe._entry_ptr.28, ptr @fan53555_regulator_probe._entry_ptr.8, ptr @fan53555_voltages_setup_fairchild._entry, ptr @fan53555_voltages_setup_fairchild._entry.47, ptr @fan53555_voltages_setup_fairchild._entry_ptr, ptr @fan53555_voltages_setup_fairchild._entry_ptr.48, ptr @fan53555_voltages_setup_silergy._entry, ptr @fan53555_voltages_setup_silergy._entry_ptr, ptr @fan53555_regulator_driver, ptr @.str, ptr @fan53555_dt_ids, ptr @fan53555_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @slew_rates, ptr @fan53555_regulator_probe._key, ptr @fan53555_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.35, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @tcs_slew_rates, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @fan53555_regulator_ops], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slew_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_device_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_device_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_device_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_device_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_device_setup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53526_voltages_setup_fairchild._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53526_voltages_setup_fairchild._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_voltages_setup_fairchild._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_voltages_setup_fairchild._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_voltages_setup_silergy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs_slew_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53526_voltages_setup_tcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan53555_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fan53555_regulator_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fan53555_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @fan53555_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_regulator_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !123
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp.i, align 4, !annotation !123
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end8, label %if.end.i

if.end.i:                                         ; preds = %if.then5
  %desc = getelementptr inbounds %struct.fan53555_device_info, ptr %call.i, i32 0, i32 2
  %call1.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %1, ptr noundef %desc) #5
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %call.i.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end8.thread157_crit_edge

if.end.i.if.end8.thread157_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.thread157

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp.i, align 4
  %sleep_vsel_id.i = getelementptr inbounds %struct.fan53555_platform_data, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %sleep_vsel_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sleep_vsel_id.i, align 4
  br label %if.end8.thread157

if.end8.thread157:                                ; preds = %if.then4.i, %if.end.i.if.end8.thread157_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %lor.lhs.false

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end8.thread157, %if.end.lor.lhs.false_crit_edge
  %pdata.0154 = phi ptr [ %call.i.i, %if.end8.thread157 ], [ %5, %if.end.lor.lhs.false_crit_edge ]
  %11 = ptrtoint ptr %pdata.0154 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.0154, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %lor.lhs.false.do.end_crit_edge, label %if.end13

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %regulator15 = getelementptr inbounds %struct.fan53555_device_info, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %regulator15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %regulator15, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %16 = ptrtoint ptr %call21 to i32
  br label %if.end37

if.else:                                          ; preds = %if.end13
  %ramp_delay = getelementptr inbounds %struct.regulator_init_data, ptr %12, i32 0, i32 1, i32 22
  %17 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ramp_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %if.then24, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then24:                                        ; preds = %if.else
  %slew_rate = getelementptr inbounds %struct.fan53555_platform_data, ptr %pdata.0154, i32 0, i32 1
  %19 = ptrtoint ptr %slew_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slew_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp = icmp ugt i32 %20, 7
  br i1 %cmp, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [8 x i32], ptr @slew_rates, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ramp_delay, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %if.else.if.end35_crit_edge
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then19
  %storemerge = phi i32 [ %25, %if.end35 ], [ %16, %if.then19 ]
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %call.i, align 4
  %call38 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @fan53555_regmap_config, ptr noundef nonnull @fan53555_regulator_probe._key, ptr noundef nonnull @.str.9) #5
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %27 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %dev48 = getelementptr inbounds %struct.fan53555_device_info, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev48, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call49 = call i32 @regmap_read(ptr noundef %call38, i32 noundef 3, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %and = and i32 %31, 15
  %chip_id = getelementptr inbounds %struct.fan53555_device_info, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %chip_id, align 4
  %call57 = call i32 @regmap_read(ptr noundef %call38, i32 noundef 4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %and65 = and i32 %34, 15
  %chip_rev = getelementptr inbounds %struct.fan53555_device_info, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and65, ptr %chip_rev, align 4
  %36 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %37, i32 noundef %and65) #8
  %call72 = call fastcc i32 @fan53555_device_setup(ptr noundef nonnull %call.i, ptr noundef nonnull %pdata.0154)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end79:                                         ; preds = %if.end64
  %38 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev48, align 4
  %40 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %config, align 4
  %41 = ptrtoint ptr %regulator15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regulator15, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %43 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %init_data, align 4
  %regmap83 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %44 = ptrtoint ptr %regmap83 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call38, ptr %regmap83, align 4
  %driver_data84 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %45 = ptrtoint ptr %driver_data84 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data84, align 4
  %of_node85 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %46 = ptrtoint ptr %of_node85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %of_node85, align 4
  %call86 = call fastcc i32 @fan53555_regulator_register(ptr noundef nonnull %call.i, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end79.cleanup_crit_edge, %do.end77, %do.end62, %do.end54, %do.end43, %do.end28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %do.end43 ], [ %call49, %do.end54 ], [ %call57, %do.end62 ], [ %call72, %do.end77 ], [ -22, %do.end28 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call86, %do.end91 ], [ %call86, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fan53555_device_setup(ptr noundef %di, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %di, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end22 [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge145
    i32 2, label %entry.sw.bb_crit_edge146
    i32 3, label %sw.bb5
  ]

entry.sw.bb_crit_edge146:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge145:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge145, %entry.sw.bb_crit_edge146
  %sleep_vsel_id = getelementptr inbounds %struct.fan53555_platform_data, ptr %pdata, i32 0, i32 2
  %3 = ptrtoint ptr %sleep_vsel_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sleep_vsel_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %4, label %do.end [
    i32 0, label %sw.bb.sw.epilog25_crit_edge
    i32 1, label %sw.bb2
  ]

sw.bb.sw.epilog25_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %sleep_vsel_id6 = getelementptr inbounds %struct.fan53555_platform_data, ptr %pdata, i32 0, i32 2
  %8 = ptrtoint ptr %sleep_vsel_id6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sleep_vsel_id6, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %do.end16 [
    i32 0, label %sw.bb5.sw.bb37_crit_edge
    i32 1, label %sw.bb10
  ]

sw.bb5.sw.bb37_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

sw.bb10:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

do.end16:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %11 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #8
  br label %cleanup

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %13 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.35, i32 noundef %1) #8
  br label %cleanup

sw.epilog25:                                      ; preds = %sw.bb2, %sw.bb.sw.epilog25_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %sw.bb.sw.epilog25_crit_edge ]
  %sleep_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 7
  %15 = ptrtoint ptr %sleep_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %sleep_reg, align 4
  %vol_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 6
  %16 = ptrtoint ptr %vol_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %vol_reg, align 4
  %17 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %do.end48 [
    i32 0, label %sw.bb27
    i32 1, label %sw.epilog25.sw.epilog51_crit_edge
    i32 2, label %sw.epilog25.sw.epilog51_crit_edge147
  ]

sw.epilog25.sw.epilog51_crit_edge147:             ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51

sw.epilog25.sw.epilog51_crit_edge:                ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51

sw.bb27:                                          ; preds = %sw.epilog25
  %mode_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 11
  %18 = ptrtoint ptr %mode_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %mode_reg, align 4
  %19 = ptrtoint ptr %sleep_vsel_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sleep_vsel_id, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %20, label %sw.bb27.sw.bb53_crit_edge [
    i32 0, label %sw.bb27.sw.bb53.sink.split_crit_edge
    i32 1, label %sw.bb30
  ]

sw.bb27.sw.bb53.sink.split_crit_edge:             ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53.sink.split

sw.bb27.sw.bb53_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

sw.bb30:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53.sink.split

sw.bb37:                                          ; preds = %sw.bb10, %sw.bb5.sw.bb37_crit_edge
  %.sink142 = phi i32 [ 16, %sw.bb10 ], [ 17, %sw.bb5.sw.bb37_crit_edge ]
  %.sink141 = phi i32 [ 17, %sw.bb10 ], [ 16, %sw.bb5.sw.bb37_crit_edge ]
  %sleep_reg11 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 7
  %22 = ptrtoint ptr %sleep_reg11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink142, ptr %sleep_reg11, align 4
  %vol_reg12 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 6
  %23 = ptrtoint ptr %vol_reg12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink141, ptr %vol_reg12, align 4
  %mode_reg38 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 11
  %24 = ptrtoint ptr %mode_reg38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %mode_reg38, align 4
  %25 = ptrtoint ptr %sleep_vsel_id6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sleep_vsel_id6, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %26, label %sw.bb37.sw.bb58_crit_edge [
    i32 0, label %sw.bb37.sw.bb58.sink.split_crit_edge
    i32 1, label %sw.bb42
  ]

sw.bb37.sw.bb58.sink.split_crit_edge:             ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb58.sink.split

sw.bb37.sw.bb58_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb58

sw.bb42:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb58.sink.split

do.end48:                                         ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  %dev49 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %28 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.35, i32 noundef %1) #8
  br label %cleanup

sw.epilog51:                                      ; preds = %sw.epilog25.sw.epilog51_crit_edge, %sw.epilog25.sw.epilog51_crit_edge147
  %vol_reg34 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 6
  %30 = ptrtoint ptr %vol_reg34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vol_reg34, align 4
  %mode_reg35 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 11
  %32 = ptrtoint ptr %mode_reg35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %mode_reg35, align 4
  %mode_mask36 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 12
  %33 = ptrtoint ptr %mode_mask36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %mode_mask36, align 4
  %34 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %do.end63 [
    i32 2, label %sw.bb56
    i32 1, label %sw.bb54
  ]

sw.bb53.sink.split:                               ; preds = %sw.bb30, %sw.bb27.sw.bb53.sink.split_crit_edge
  %.sink143 = phi i32 [ 1, %sw.bb30 ], [ 2, %sw.bb27.sw.bb53.sink.split_crit_edge ]
  %mode_mask31 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 12
  %35 = ptrtoint ptr %mode_mask31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink143, ptr %mode_mask31, align 4
  br label %sw.bb53

sw.bb53:                                          ; preds = %sw.bb53.sink.split, %sw.bb27.sw.bb53_crit_edge
  %chip_id.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 4
  %36 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cond.i = icmp eq i32 %37, 1
  br i1 %cond.i, label %sw.bb.i, label %do.end6.i

sw.bb.i:                                          ; preds = %sw.bb53
  %chip_rev.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 5
  %38 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chip_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cond10.i = icmp eq i32 %39, 8
  br i1 %cond10.i, label %sw.bb1.i, label %do.end.i

sw.bb1.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %vsel_min.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 8
  %40 = ptrtoint ptr %vsel_min.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 600000, ptr %vsel_min.i, align 4
  %vsel_step.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 9
  %41 = ptrtoint ptr %vsel_step.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6250, ptr %vsel_step.i, align 4
  %slew_reg.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 14
  %42 = ptrtoint ptr %slew_reg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %slew_reg.i, align 4
  %slew_mask.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 15
  %43 = ptrtoint ptr %slew_mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 112, ptr %slew_mask.i, align 4
  %ramp_delay_table.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 16
  %44 = ptrtoint ptr %ramp_delay_table.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @slew_rates, ptr %ramp_delay_table.i, align 4
  %n_ramp_values.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 17
  %45 = ptrtoint ptr %n_ramp_values.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %n_ramp_values.i, align 4
  %vsel_count.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 10
  %46 = ptrtoint ptr %vsel_count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 128, ptr %vsel_count.i, align 4
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %39) #8
  br label %cleanup

do.end6.i:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #7
  %dev7.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %49 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.44, i32 noundef %37) #8
  br label %cleanup

sw.bb54:                                          ; preds = %sw.epilog51
  %chip_id.i101 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 4
  %51 = ptrtoint ptr %chip_id.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chip_id.i101, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %52, label %do.end15.i [
    i32 0, label %sw.bb.i103
    i32 1, label %sw.bb54.sw.epilog18.i_crit_edge
    i32 3, label %sw.bb54.sw.epilog18.i_crit_edge148
    i32 5, label %sw.bb54.sw.epilog18.i_crit_edge149
    i32 8, label %sw.bb54.sw.epilog18.i_crit_edge150
    i32 4, label %sw.bb10.i
  ]

sw.bb54.sw.epilog18.i_crit_edge150:               ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb54.sw.epilog18.i_crit_edge149:               ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb54.sw.epilog18.i_crit_edge148:               ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb54.sw.epilog18.i_crit_edge:                  ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb.i103:                                       ; preds = %sw.bb54
  %chip_rev.i102 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 5
  %54 = ptrtoint ptr %chip_rev.i102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chip_rev.i102, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %55, label %do.end.i105 [
    i32 3, label %sw.bb.i103.sw.epilog18.i_crit_edge
    i32 15, label %sw.bb2.i
  ]

sw.bb.i103.sw.epilog18.i_crit_edge:               ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

sw.bb2.i:                                         ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

do.end.i105:                                      ; preds = %sw.bb.i103
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i104 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %55) #8
  br label %cleanup

sw.bb10.i:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

do.end15.i:                                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  %dev16.i = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %59 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.44, i32 noundef %52) #8
  br label %cleanup

sw.epilog18.i:                                    ; preds = %sw.bb10.i, %sw.bb2.i, %sw.bb.i103.sw.epilog18.i_crit_edge, %sw.bb54.sw.epilog18.i_crit_edge, %sw.bb54.sw.epilog18.i_crit_edge148, %sw.bb54.sw.epilog18.i_crit_edge149, %sw.bb54.sw.epilog18.i_crit_edge150
  %.sink38.i = phi i32 [ 800000, %sw.bb2.i ], [ 603000, %sw.bb10.i ], [ 600000, %sw.bb.i103.sw.epilog18.i_crit_edge ], [ 600000, %sw.bb54.sw.epilog18.i_crit_edge ], [ 600000, %sw.bb54.sw.epilog18.i_crit_edge148 ], [ 600000, %sw.bb54.sw.epilog18.i_crit_edge149 ], [ 600000, %sw.bb54.sw.epilog18.i_crit_edge150 ]
  %.sink.i = phi i32 [ 10000, %sw.bb2.i ], [ 12826, %sw.bb10.i ], [ 10000, %sw.bb.i103.sw.epilog18.i_crit_edge ], [ 10000, %sw.bb54.sw.epilog18.i_crit_edge ], [ 10000, %sw.bb54.sw.epilog18.i_crit_edge148 ], [ 10000, %sw.bb54.sw.epilog18.i_crit_edge149 ], [ 10000, %sw.bb54.sw.epilog18.i_crit_edge150 ]
  %vsel_min.i106 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 8
  %61 = ptrtoint ptr %vsel_min.i106 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink38.i, ptr %vsel_min.i106, align 4
  %vsel_step.i107 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 9
  %62 = ptrtoint ptr %vsel_step.i107 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i, ptr %vsel_step.i107, align 4
  %slew_reg.i108 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 14
  %63 = ptrtoint ptr %slew_reg.i108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %slew_reg.i108, align 4
  %slew_mask.i109 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 15
  %64 = ptrtoint ptr %slew_mask.i109 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 112, ptr %slew_mask.i109, align 4
  %ramp_delay_table.i110 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 16
  %65 = ptrtoint ptr %ramp_delay_table.i110 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @slew_rates, ptr %ramp_delay_table.i110, align 4
  %n_ramp_values.i111 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 17
  %66 = ptrtoint ptr %n_ramp_values.i111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %n_ramp_values.i111, align 4
  %vsel_count.i112 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 10
  %67 = ptrtoint ptr %vsel_count.i112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 64, ptr %vsel_count.i112, align 4
  br label %cleanup

sw.bb56:                                          ; preds = %sw.epilog51
  %chip_id.i114 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 4
  %68 = ptrtoint ptr %chip_id.i114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip_id.i114, align 4
  %70 = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %70)
  %switch.i = icmp eq i32 %70, 8
  br i1 %switch.i, label %sw.bb.i122, label %do.end.i124

sw.bb.i122:                                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  %vsel_min.i115 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 8
  %71 = ptrtoint ptr %vsel_min.i115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 712500, ptr %vsel_min.i115, align 4
  %vsel_step.i116 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 9
  %72 = ptrtoint ptr %vsel_step.i116 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 12500, ptr %vsel_step.i116, align 4
  %slew_reg.i117 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 14
  %73 = ptrtoint ptr %slew_reg.i117 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %slew_reg.i117, align 4
  %slew_mask.i118 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 15
  %74 = ptrtoint ptr %slew_mask.i118 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 112, ptr %slew_mask.i118, align 4
  %ramp_delay_table.i119 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 16
  %75 = ptrtoint ptr %ramp_delay_table.i119 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @slew_rates, ptr %ramp_delay_table.i119, align 4
  %n_ramp_values.i120 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 17
  %76 = ptrtoint ptr %n_ramp_values.i120 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %n_ramp_values.i120, align 4
  %vsel_count.i121 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 10
  %77 = ptrtoint ptr %vsel_count.i121 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %vsel_count.i121, align 4
  br label %cleanup

do.end.i124:                                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i123 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %78 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i123, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.44, i32 noundef %69) #8
  br label %cleanup

sw.bb58.sink.split:                               ; preds = %sw.bb42, %sw.bb37.sw.bb58.sink.split_crit_edge
  %.sink144 = phi i32 [ 128, %sw.bb42 ], [ 64, %sw.bb37.sw.bb58.sink.split_crit_edge ]
  %mode_mask43 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 12
  %80 = ptrtoint ptr %mode_mask43 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink144, ptr %mode_mask43, align 4
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb58.sink.split, %sw.bb37.sw.bb58_crit_edge
  %chip_id.i126 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 4
  %81 = ptrtoint ptr %chip_id.i126 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chip_id.i126, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %82, label %do.end.i136 [
    i32 12, label %sw.bb58.sw.bb.i134_crit_edge
    i32 0, label %sw.bb58.sw.bb.i134_crit_edge151
  ]

sw.bb58.sw.bb.i134_crit_edge151:                  ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i134

sw.bb58.sw.bb.i134_crit_edge:                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i134

sw.bb.i134:                                       ; preds = %sw.bb58.sw.bb.i134_crit_edge, %sw.bb58.sw.bb.i134_crit_edge151
  %slew_reg.i127 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 14
  %84 = ptrtoint ptr %slew_reg.i127 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 19, ptr %slew_reg.i127, align 4
  %slew_mask.i128 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 15
  %85 = ptrtoint ptr %slew_mask.i128 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %slew_mask.i128, align 4
  %ramp_delay_table.i129 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 16
  %86 = ptrtoint ptr %ramp_delay_table.i129 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tcs_slew_rates, ptr %ramp_delay_table.i129, align 4
  %n_ramp_values.i130 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 17
  %87 = ptrtoint ptr %n_ramp_values.i130 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %n_ramp_values.i130, align 4
  %vsel_min.i131 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 8
  %88 = ptrtoint ptr %vsel_min.i131 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 600000, ptr %vsel_min.i131, align 4
  %vsel_step.i132 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 9
  %89 = ptrtoint ptr %vsel_step.i132 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 6250, ptr %vsel_step.i132, align 4
  %vsel_count.i133 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 10
  %90 = ptrtoint ptr %vsel_count.i133 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %vsel_count.i133, align 4
  br label %cleanup

do.end.i136:                                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i135 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %91 = ptrtoint ptr %dev.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i135, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.44, i32 noundef %82) #8
  br label %cleanup

do.end63:                                         ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #7
  %dev64 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %93 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.35, i32 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.end.i136, %sw.bb.i134, %do.end.i124, %sw.bb.i122, %sw.epilog18.i, %do.end15.i, %do.end.i105, %do.end6.i, %do.end.i, %sw.bb1.i, %do.end48, %do.end22, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end22 ], [ -22, %do.end16 ], [ -22, %do.end48 ], [ -22, %do.end63 ], [ -22, %do.end ], [ 0, %sw.bb1.i ], [ -22, %do.end.i ], [ -22, %do.end6.i ], [ -22, %do.end15.i ], [ 0, %sw.epilog18.i ], [ -22, %do.end.i105 ], [ -22, %do.end.i124 ], [ 0, %sw.bb.i122 ], [ -22, %do.end.i136 ], [ 0, %sw.bb.i134 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fan53555_regulator_register(ptr noundef %di, ptr noundef %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.51, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.52, ptr %supply_name, align 4
  %ops = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fan53555_regulator_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 12
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %vsel_count = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 10
  %4 = ptrtoint ptr %vsel_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_count, align 4
  %n_voltages = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %n_voltages, align 4
  %vol_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 6
  %7 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_reg, align 4
  %enable_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 34
  %9 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 35
  %10 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %enable_mask, align 4
  %vsel_min = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 8
  %11 = ptrtoint ptr %vsel_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_min, align 4
  %min_uV = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 14
  %13 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %min_uV, align 4
  %vsel_step = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 9
  %14 = ptrtoint ptr %vsel_step to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsel_step, align 4
  %uV_step = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 15
  %16 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %uV_step, align 4
  %vsel_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 27
  %17 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %vsel_reg, align 4
  %sub = add i32 %5, -1
  %vsel_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 28
  %18 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %vsel_mask, align 4
  %slew_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 14
  %19 = ptrtoint ptr %slew_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slew_reg, align 4
  %ramp_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 53
  %21 = ptrtoint ptr %ramp_reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ramp_reg, align 4
  %slew_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 15
  %22 = ptrtoint ptr %slew_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slew_mask, align 4
  %ramp_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 54
  %24 = ptrtoint ptr %ramp_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ramp_mask, align 4
  %ramp_delay_table = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 16
  %25 = ptrtoint ptr %ramp_delay_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ramp_delay_table, align 4
  %ramp_delay_table3 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 55
  %27 = ptrtoint ptr %ramp_delay_table3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ramp_delay_table3, align 4
  %n_ramp_values = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 17
  %28 = ptrtoint ptr %n_ramp_values to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_ramp_values, align 4
  %n_ramp_values4 = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 56
  %30 = ptrtoint ptr %n_ramp_values4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %n_ramp_values4, align 4
  %owner = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner, align 4
  %dev = getelementptr inbounds %struct.fan53555_device_info, ptr %di, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_regulator_register(ptr noundef %33, ptr noundef %desc, ptr noundef %config) #5
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %34, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

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
define internal i32 @fan53555_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %mode_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap4 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %vol_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %vol_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vol_reg, align 4
  %mode_mask5 = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 12
  %11 = ptrtoint ptr %mode_mask5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_mask5, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !123
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %mode_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mode_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode_mask, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %sleep_vol_cache = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %sleep_vol_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sleep_vol_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %uV)
  %cmp = icmp eq i32 %1, %uV
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %sleep_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %sleep_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sleep_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 2, i32 28
  %6 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %call1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %sleep_vol_cache to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %uV, ptr %sleep_vol_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %sleep_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %sleep_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan53555_set_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %sleep_reg = getelementptr inbounds %struct.fan53555_device_info, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %sleep_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_fan53555__288_672_fan53555_regulator_driver_init6, !1, !"__initcall__kmod_fan53555__288_672_fan53555_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/fan53555.c", i32 672, i32 1}
!2 = !{ptr @__exitcall_fan53555_regulator_driver_exit, !1, !"__exitcall_fan53555_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/fan53555.c", i32 674, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/fan53555.c", i32 675, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/fan53555.c", i32 676, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/fan53555.c", i32 665, i32 11}
!12 = !{ptr @fan53555_regulator_driver, !13, !"fan53555_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/fan53555.c", i32 663, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/fan53555.c", i32 573, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fan53555_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @fan53555_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/fan53555.c", i32 585, i32 5}
!24 = !{ptr @fan53555_regulator_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fan53555_regulator_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @fan53555_regulator_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/regulator/fan53555.c", i32 596, i32 11}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/fan53555.c", i32 598, i32 3}
!31 = !{ptr @fan53555_regulator_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fan53555_regulator_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/fan53555.c", i32 606, i32 3}
!35 = !{ptr @fan53555_regulator_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fan53555_regulator_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/fan53555.c", i32 613, i32 3}
!39 = !{ptr @fan53555_regulator_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @fan53555_regulator_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/fan53555.c", i32 617, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fan53555_regulator_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fan53555_regulator_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/fan53555.c", i32 622, i32 3}
!48 = !{ptr @fan53555_regulator_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fan53555_regulator_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/fan53555.c", i32 634, i32 3}
!52 = !{ptr @fan53555_regulator_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fan53555_regulator_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/fan53555.c", i32 520, i32 33}
!56 = !{ptr @slew_rates, !57, !"slew_rates", i1 false, i1 false}
!57 = !{!"../drivers/regulator/fan53555.c", i32 208, i32 27}
!58 = !{ptr @fan53555_regmap_config, !59, !"fan53555_regmap_config", i1 false, i1 false}
!59 = !{!"../drivers/regulator/fan53555.c", i32 501, i32 35}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/fan53555.c", i32 392, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fan53555_device_setup._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fan53555_device_setup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @fan53555_device_setup._entry.32, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/regulator/fan53555.c", i32 407, i32 4}
!67 = !{ptr @fan53555_device_setup._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/fan53555.c", i32 412, i32 3}
!70 = !{ptr @fan53555_device_setup._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @fan53555_device_setup._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @fan53555_device_setup._entry.37, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/regulator/fan53555.c", i32 448, i32 3}
!74 = !{ptr @fan53555_device_setup._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @fan53555_device_setup._entry.39, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/regulator/fan53555.c", i32 467, i32 3}
!77 = !{ptr @fan53555_device_setup._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/fan53555.c", i32 254, i32 4}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @fan53526_voltages_setup_fairchild._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @fan53526_voltages_setup_fairchild._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/fan53555.c", i32 261, i32 3}
!85 = !{ptr @fan53526_voltages_setup_fairchild._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fan53526_voltages_setup_fairchild._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/fan53555.c", i32 290, i32 4}
!89 = !{ptr @fan53555_voltages_setup_fairchild._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @fan53555_voltages_setup_fairchild._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @fan53555_voltages_setup_fairchild._entry.47, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/regulator/fan53555.c", i32 308, i32 3}
!93 = !{ptr @fan53555_voltages_setup_fairchild._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/fan53555.c", i32 331, i32 3}
!96 = !{ptr @fan53555_voltages_setup_silergy._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fan53555_voltages_setup_silergy._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/fan53555.c", i32 360, i32 3}
!100 = !{ptr @fan53526_voltages_setup_tcs._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fan53526_voltages_setup_tcs._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @tcs_slew_rates, !103, !"tcs_slew_rates", i1 false, i1 false}
!103 = !{!"../drivers/regulator/fan53555.c", i32 219, i32 27}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/fan53555.c", i32 480, i32 16}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/fan53555.c", i32 481, i32 23}
!108 = !{ptr @fan53555_regulator_ops, !109, !"fan53555_regulator_ops", i1 false, i1 false}
!109 = !{!"../drivers/regulator/fan53555.c", i32 226, i32 35}
!110 = !{ptr @fan53555_dt_ids, !111, !"fan53555_dt_ids", i1 false, i1 false}
!111 = !{!"../drivers/regulator/fan53555.c", i32 528, i32 49}
!112 = !{ptr @fan53555_id, !113, !"fan53555_id", i1 false, i1 false}
!113 = !{!"../drivers/regulator/fan53555.c", i32 639, i32 35}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
