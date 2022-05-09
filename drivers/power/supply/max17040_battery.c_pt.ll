; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max17040_battery.c_pt.bc'
source_filename = "../drivers/power/supply/max17040_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.chip_data = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max17040_chip = type { ptr, ptr, %struct.delayed_work, ptr, %struct.chip_data, i32, i32, i8, i16 }

@__initcall__kmod_max17040_battery__289_605_max17040_i2c_driver_init6 = internal global ptr @max17040_i2c_driver_init, section ".initcall6.init", align 4
@max17040_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max17040_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max17040_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max17040_pm_ops, ptr null, ptr null }, ptr @max17040_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max17040_i2c_driver_exit = internal global ptr @max17040_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"max17040_battery.author=Minkyu Kang <mk7.kang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [49 x i8] c"max17040_battery.description=MAX17040 Fuel Gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [60 x i8] c"max17040_battery.file=drivers/power/supply/max17040_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"max17040_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max17040\00", [23 x i8] zeroinitializer }, align 32
@max17040_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17041\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17043\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77836-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17048\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17049\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17058\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17059\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@max17040_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max17040_suspend, ptr @max17040_resume, ptr @max17040_suspend, ptr @max17040_resume, ptr @max17040_suspend, ptr @max17040_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max17040_id = internal constant { [10 x %struct.i2c_device_id], [48 x i8] } { [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max17040\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max17041\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max17043\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max77836-battery\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max17044\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max17048\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max17049\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max17058\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"max17059\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max17040_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max17040_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max17040_battery:451:(&max17040_regmap)->lock\00", [50 x i8] zeroinitializer }, align 32
@max17040_family = internal constant { [8 x %struct.chip_data], [32 x i8] } { [8 x %struct.chip_data] [%struct.chip_data { i16 84, i16 4, i16 1250, i16 1, i8 0, i8 2, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 2500, i16 1, i8 0, i8 2, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 1250, i16 1, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 84, i16 4, i16 2500, i16 1, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 8, i8 1, i8 1, i8 1 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 4, i8 1, i8 1, i8 1 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 8, i8 1, i8 1, i8 0 }, %struct.chip_data { i16 21504, i16 0, i16 625, i16 4, i8 1, i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@max17040_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.30, i32 1, ptr null, i32 0, ptr @max17040_battery_props, i32 4, ptr @max17040_get_property, ptr @max17040_set_property, ptr @max17040_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max17040_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max17040_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max17040_battery.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max17040_probe._entry_ptr = internal global ptr @max17040_probe._entry, section ".printk_index", align 4
@max17040_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max17040_battery\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAX17040 Fuel-Gauge Ver 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@max17040_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set low SOC alert: err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@max17040_probe._entry_ptr.11 = internal global ptr @max17040_probe._entry.9, section ".printk_index", align 4
@max17040_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set SOC alert: err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max17040_probe._entry_ptr.14 = internal global ptr @max17040_probe._entry.12, section ".printk_index", align 4
@max17040_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&chip->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@max17040_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&chip->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@max17040_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 517, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get IRQ err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max17040_probe._entry_ptr.21 = internal global ptr @max17040_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maxim,double-soc\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maxim,alert-low-soc-level\00", [38 x i8] zeroinitializer }, align 32
@max17040_get_of_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"maxim,alert-low-soc-level out of bounds\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max17040_get_of_data\00", [43 x i8] zeroinitializer }, align 32
@max17040_get_of_data._entry_ptr = internal global ptr @max17040_get_of_data._entry, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maxim,rcomp\00", [20 x i8] zeroinitializer }, align 32
@max17040_get_of_data._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"maxim,rcomp has incorrect length\0A\00", [62 x i8] zeroinitializer }, align 32
@max17040_get_of_data._entry_ptr.29 = internal global ptr @max17040_get_of_data._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@max17040_battery_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 12, i32 47, i32 48], [16 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@max17040_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 322, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IRQ: Alert battery low level\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max17040_thread_handler\00", [40 x i8] zeroinitializer }, align 32
@max17040_thread_handler._entry_ptr = internal global ptr @max17040_thread_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 12, i64 47, i64 48]
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"max17040_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 596, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 598, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"max17040_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 582, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"max17040_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 559, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"max17040_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 568, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"max17040_regmap\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 409, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 451, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"max17040_family\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 64, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"max17040_battery_desc\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 423, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 469, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 476, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 487, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 498, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 505, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 516, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 232, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 236, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 241, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 245, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 253, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 424, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"max17040_battery_props\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 416, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [43 x i8] c"../drivers/power/supply/max17040_battery.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 322, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max17040_i2c_driver_exit, ptr @__initcall__kmod_max17040_battery__289_605_max17040_i2c_driver_init6, ptr @max17040_get_of_data._entry, ptr @max17040_get_of_data._entry.27, ptr @max17040_get_of_data._entry_ptr, ptr @max17040_get_of_data._entry_ptr.29, ptr @max17040_i2c_driver_exit, ptr @max17040_probe._entry, ptr @max17040_probe._entry.12, ptr @max17040_probe._entry.18, ptr @max17040_probe._entry.9, ptr @max17040_probe._entry_ptr, ptr @max17040_probe._entry_ptr.11, ptr @max17040_probe._entry_ptr.14, ptr @max17040_probe._entry_ptr.21, ptr @max17040_thread_handler._entry, ptr @max17040_thread_handler._entry_ptr, ptr @max17040_i2c_driver, ptr @.str, ptr @max17040_of_match, ptr @max17040_pm_ops, ptr @max17040_id, ptr @max17040_probe._key, ptr @max17040_regmap, ptr @.str.1, ptr @max17040_family, ptr @max17040_battery_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @max17040_probe.__key, ptr @.str.15, ptr @max17040_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @max17040_battery_props, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_id to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_family to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_get_of_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_get_of_data._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_battery_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17040_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max17040_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max17040_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max17040_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %version.i = alloca i32, align 4
  %rcomp.i = alloca [2 x i8], align 1
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %2 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max17040_regmap, ptr noundef nonnull @max17040_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i188 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %call.i189 = tail call ptr @of_device_get_match_data(ptr noundef %dev1.i) #6
  %16 = ptrtoint ptr %call.i189 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rcomp.i) #6
  %17 = ptrtoint ptr %rcomp.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %rcomp.i, align 1, !annotation !92
  %18 = getelementptr inbounds [2 x i8], ptr %rcomp.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %18, align 1, !annotation !92
  %call.i.i190 = tail call zeroext i1 @device_property_present(ptr noundef %dev1.i, ptr noundef nonnull @.str.22) #6
  %quirk_double_soc.i = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %call.i.i190 to i8
  %20 = ptrtoint ptr %quirk_double_soc.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %quirk_double_soc.i, align 4
  %low_soc_alert.i = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %low_soc_alert.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %low_soc_alert.i, align 4
  %call.i58.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.23, ptr noundef %low_soc_alert.i, i32 noundef 1) #6
  %22 = ptrtoint ptr %low_soc_alert.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %low_soc_alert.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i191 = icmp eq i32 %23, 0
  br i1 %cmp.i191, label %if.then16.max17040_get_of_data.exit_crit_edge, label %lor.lhs.false.i

if.then16.max17040_get_of_data.exit_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %max17040_get_of_data.exit

lor.lhs.false.i:                                  ; preds = %if.then16
  %24 = ptrtoint ptr %quirk_double_soc.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %quirk_double_soc.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cond.i)
  %cmp8.i = icmp ugt i32 %23, %cond.i
  br i1 %cmp8.i, label %lor.lhs.false.i.max17040_get_of_data.exit_crit_edge, label %if.end.i

lor.lhs.false.i.max17040_get_of_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max17040_get_of_data.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i59.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.26, ptr noundef null, i32 noundef 0) #6
  %rcomp10.i = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %rcomp10.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -26880, ptr %rcomp10.i, align 2
  %rcomp_bytes.i = getelementptr [8 x %struct.chip_data], ptr @max17040_family, i32 0, i32 %16, i32 5
  %27 = ptrtoint ptr %rcomp_bytes.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rcomp_bytes.i, align 1
  %conv.i192 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i59.i, i32 %conv.i192)
  %cmp11.i = icmp eq i32 %call.i59.i, %conv.i192
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end.i
  %call14.i = call i32 @device_property_read_u8_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.26, ptr noundef nonnull %rcomp.i, i32 noundef %call.i59.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.then13.i.if.end20_crit_edge

if.then13.i.if.end20_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i59.i)
  %cmp17.i = icmp eq i32 %call.i59.i, 2
  %29 = ptrtoint ptr %rcomp.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rcomp.i, align 1
  %conv20.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv20.i, 8
  br i1 %cmp17.i, label %cond.true.i, label %if.then16.i.cond.end.i_crit_edge

if.then16.i.cond.end.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %18, align 1
  %conv22.i = zext i8 %32 to i16
  %or.i = or i16 %shl.i, %conv22.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then16.i.cond.end.i_crit_edge
  %cond26.i = phi i16 [ %or.i, %cond.true.i ], [ %shl.i, %if.then16.i.cond.end.i_crit_edge ]
  %33 = ptrtoint ptr %rcomp10.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %cond26.i, ptr %rcomp10.i, align 2
  br label %if.end20

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %cmp30.i = icmp sgt i32 %call.i59.i, 0
  br i1 %cmp30.i, label %if.else.i.max17040_get_of_data.exit_crit_edge, label %if.else.i.if.end20_crit_edge

if.else.i.if.end20_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else.i.max17040_get_of_data.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max17040_get_of_data.exit

max17040_get_of_data.exit:                        ; preds = %if.else.i.max17040_get_of_data.exit_crit_edge, %lor.lhs.false.i.max17040_get_of_data.exit_crit_edge, %if.then16.max17040_get_of_data.exit_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %lor.lhs.false.i.max17040_get_of_data.exit_crit_edge ], [ @.str.24, %if.then16.max17040_get_of_data.exit_crit_edge ], [ @.str.28, %if.else.i.max17040_get_of_data.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.24.sink) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rcomp.i) #6
  br label %cleanup

if.end20:                                         ; preds = %if.else.i.if.end20_crit_edge, %cond.end.i, %if.then13.i.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rcomp.i) #6
  %call22 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %34 = ptrtoint ptr %call22 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end13.if.end23_crit_edge
  %chip_id.0 = phi i32 [ %34, %if.end20 ], [ %11, %if.end13.if.end23_crit_edge ]
  %data = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 4
  %arrayidx = getelementptr [8 x %struct.chip_data], ptr @max17040_family, i32 0, i32 %chip_id.0
  %35 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 12)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %37 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %drv_data, align 4
  %call25 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @max17040_battery_desc, ptr noundef nonnull %psy_cfg) #6
  %battery = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call25, ptr %battery, align 4
  %cmp.i194 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %39 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %battery, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version.i) #6
  %42 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %version.i, align 4, !annotation !92
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i195 = call i32 @regmap_read(ptr noundef %44, i32 noundef 8, ptr noundef nonnull %version.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i196 = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i196, label %cond.false.i, label %if.end32.max17040_get_version.exit_crit_edge

if.end32.max17040_get_version.exit_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %max17040_get_version.exit

cond.false.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version.i, align 4
  br label %max17040_get_version.exit

max17040_get_version.exit:                        ; preds = %cond.false.i, %if.end32.max17040_get_version.exit_crit_edge
  %cond.i197 = phi i32 [ %46, %cond.false.i ], [ %call.i195, %if.end32.max17040_get_version.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i197)
  %cmp = icmp slt i32 %cond.i197, 0
  br i1 %cmp, label %max17040_get_version.exit.cleanup_crit_edge, label %do.body36

max17040_get_version.exit.cleanup_crit_edge:      ; preds = %max17040_get_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body36:                                        ; preds = %max17040_get_version.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max17040_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max17040_probe, %do.end48)) #6
          to label %if.then43 [label %do.end48], !srcloc !94

if.then43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max17040_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev45, ptr noundef nonnull @.str.8, i32 noundef %cond.i197) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chip_id.0)
  %switch = icmp ult i32 %chip_id.0, 2
  br i1 %switch, label %if.then51, label %do.end48.if.end53_crit_edge

do.end48.if.end53_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %data, align 4
  %conv.i200 = zext i16 %52 to i32
  %call.i201 = call i32 @regmap_write(ptr noundef %50, i32 noundef 254, i32 noundef %conv.i200) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %do.end48.if.end53_crit_edge
  %rcomp = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 8
  %53 = ptrtoint ptr %rcomp to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rcomp, align 2
  %rcomp_bytes.i202 = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 4, i32 5
  %55 = ptrtoint ptr %rcomp_bytes.i202 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rcomp_bytes.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i203 = icmp eq i8 %56, 2
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %conv3.i = select i1 %cmp.i203, i32 65535, i32 65280
  %conv4.i = zext i16 %54 to i32
  %call.i.i205 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 12, i32 noundef %conv3.i, i32 noundef %conv4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool55.not = icmp eq i32 %60, 0
  br i1 %tobool55.not, label %if.end53.do.body84_crit_edge, label %land.lhs.true

if.end53.do.body84_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

land.lhs.true:                                    ; preds = %if.end53
  %has_low_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %has_low_soc_alert to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %has_low_soc_alert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool57.not = icmp eq i8 %62, 0
  br i1 %tobool57.not, label %land.lhs.true.if.end67_crit_edge, label %if.then58

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then58:                                        ; preds = %land.lhs.true
  %low_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 6
  %63 = ptrtoint ptr %low_soc_alert to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %low_soc_alert, align 4
  %quirk_double_soc.i206 = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 7
  %65 = ptrtoint ptr %quirk_double_soc.i206 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %quirk_double_soc.i206, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i207 = icmp eq i8 %66, 0
  %cond.neg.i = select i1 %tobool.not.i207, i32 -1, i32 -2
  %mul.neg.i = mul i32 %cond.neg.i, %64
  %sub.i = add i32 %mul.neg.i, 32
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i.i209 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 12, i32 noundef 63, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209)
  %tobool60.not = icmp eq i32 %call.i.i209, 0
  br i1 %tobool60.not, label %if.then58.if.end67_crit_edge, label %do.end64

if.then58.if.end67_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i.i209) #9
  br label %cleanup

if.end67:                                         ; preds = %if.then58.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge
  %69 = xor i1 %tobool57.not, true
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool69.not = icmp eq i32 %.pr, 0
  br i1 %tobool69.not, label %if.end67.do.body84_crit_edge, label %land.lhs.true70

if.end67.do.body84_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

land.lhs.true70:                                  ; preds = %if.end67
  %has_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 4, i32 6
  %71 = ptrtoint ptr %has_soc_alert to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_soc_alert, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool73.not = icmp eq i8 %72, 0
  br i1 %tobool73.not, label %land.lhs.true70.do.body84_crit_edge, label %if.then74

land.lhs.true70.do.body84_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

if.then74:                                        ; preds = %land.lhs.true70
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call.i.i211 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 12, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i211)
  %tobool76.not = icmp eq i32 %call.i.i211, 0
  br i1 %tobool76.not, label %if.then74.if.then111_crit_edge, label %do.end80

if.then74.if.then111_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then111

do.end80:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i.i211) #9
  br label %cleanup

do.body84:                                        ; preds = %land.lhs.true70.do.body84_crit_edge, %if.end67.do.body84_crit_edge, %if.end53.do.body84_crit_edge
  %enable_irq.0.off0219 = phi i1 [ %69, %land.lhs.true70.do.body84_crit_edge ], [ %69, %if.end67.do.body84_crit_edge ], [ false, %if.end53.do.body84_crit_edge ]
  %work = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %75 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @max17040_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry93 = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %76 = ptrtoint ptr %entry93 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry93, ptr %entry93, align 4
  %prev.i = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry93, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %78 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @max17040_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.max17040_chip, ptr %call.i, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.17, ptr noundef nonnull @max17040_probe.__key.16) #6
  %call105 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @max17040_stop_work, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %do.body84.cleanup_crit_edge

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %do.body84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %79 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i212 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %work, i32 noundef 1000) #6
  br i1 %enable_irq.0.off0219, label %if.end108.if.then111_crit_edge, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108.if.then111_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then111

if.then111:                                       ; preds = %if.end108.if.then111_crit_edge, %if.then74.if.then111_crit_edge
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq.i, align 4
  %84 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %battery, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call.i213 = call i32 @devm_request_threaded_irq(ptr noundef %dev.i, i32 noundef %83, ptr noundef null, ptr noundef nonnull @max17040_thread_handler, i32 noundef 8192, ptr noundef %89, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool113.not = icmp eq i32 %call.i213, 0
  br i1 %tobool113.not, label %if.then111.cleanup_crit_edge, label %if.then114

if.then111.cleanup_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i213) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.then111.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %do.body84.cleanup_crit_edge, %do.end80, %do.end64, %max17040_get_version.exit.cleanup_crit_edge, %do.end, %max17040_get_of_data.exit, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then10 ], [ %41, %do.end ], [ %call.i.i209, %do.end64 ], [ %call.i.i211, %do.end80 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %max17040_get_of_data.exit ], [ %cond.i197, %max17040_get_version.exit.cleanup_crit_edge ], [ %call105, %do.body84.cleanup_crit_edge ], [ 0, %if.then111.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %if.end108.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max17040_work(ptr noundef %work) #2 align 64 {
entry:
  %soc.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr i8, ptr %work, i32 116
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %soc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i.i) #6
  %2 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %soc.i.i, align 4, !annotation !92
  %regmap.i.i = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %soc.i.i) #6
  %5 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %soc.i.i, align 4
  %quirk_double_soc.i.i = getelementptr i8, ptr %work, i32 124
  %7 = ptrtoint ptr %quirk_double_soc.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %quirk_double_soc.i.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 8, i32 9
  %shr.i.i = lshr i32 %6, %cond.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i.i) #6
  %9 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr.i.i, ptr %soc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %shr.i.i)
  %cmp.not = icmp eq i32 %1, %shr.i.i
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %battery = getelementptr i8, ptr %work, i32 100
  %10 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %12 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i6 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work, i32 noundef 1000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max17040_stop_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.max17040_chip, ptr %data, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %soc.i = alloca i32, align 4
  %vcell.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %entry.cleanup.sink.split_crit_edge
    i32 12, label %sw.bb2
    i32 47, label %sw.bb4
    i32 48, label %sw.bb6
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcell.i) #6
  %1 = ptrtoint ptr %vcell.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vcell.i, align 4, !annotation !92
  %regmap.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %vcell.i) #6
  %4 = ptrtoint ptr %vcell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcell.i, align 4
  %conv.i.i = and i32 %5, 65535
  %vcell_shift.i.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %vcell_shift.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vcell_shift.i.i, align 2
  %conv1.i.i = zext i16 %7 to i32
  %shr.i.i = lshr i32 %conv.i.i, %conv1.i.i
  %vcell_mul.i.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %vcell_mul.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vcell_mul.i.i, align 2
  %conv2.i.i = zext i16 %9 to i32
  %mul.i.i = mul nuw i32 %shr.i.i, %conv2.i.i
  %vcell_div.i.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %vcell_div.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vcell_div.i.i, align 2
  %conv3.i.i = zext i16 %11 to i32
  %div.i.i = sdiv i32 %mul.i.i, %conv3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcell.i) #6
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i) #6
  %12 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %soc.i, align 4, !annotation !92
  %regmap.i13 = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i13, align 4
  %call.i14 = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %soc.i) #6
  %15 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %soc.i, align 4
  %quirk_double_soc.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %quirk_double_soc.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %quirk_double_soc.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 9
  %shr.i = lshr i32 %16, %cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i) #6
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %low_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %low_soc_alert to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %low_soc_alert, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %div.i.i, %sw.bb2 ], [ %shr.i, %sw.bb4 ], [ %20, %sw.bb6 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %psp)
  %cond3 = icmp eq i32 %psp, 48
  br i1 %cond3, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %quirk_double_soc = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %quirk_double_soc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %quirk_double_soc, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 32, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cond)
  %cmp1 = icmp ugt i32 %1, %cond
  br i1 %cmp1, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %cond.neg.i = select i1 %tobool.not, i32 -1, i32 -2
  %mul.neg.i = mul i32 %cond.neg.i, %1
  %sub.i = add i32 %mul.neg.i, 32
  %regmap.i = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 63, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %low_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %low_soc_alert to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %low_soc_alert, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.end ], [ -22, %lor.lhs.false.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max17040_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %psp)
  %cond = icmp eq i32 %psp, 48
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_thread_handler(i32 noundef %id, ptr nocapture noundef %dev) #2 align 64 {
entry:
  %soc.i.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %has_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %has_soc_alert to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_soc_alert, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data.i, align 4, !annotation !92
  %regmap.i = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %data.i) #6
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i, align 4
  %and1.i = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.max17040_handle_soc_alert.exit_crit_edge, label %if.then3.i

land.lhs.true.max17040_handle_soc_alert.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %max17040_handle_soc_alert.exit

if.then3.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %and5.i = and i32 %6, -8193
  %call6.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 26, i32 noundef %and5.i) #6
  br label %max17040_handle_soc_alert.exit

max17040_handle_soc_alert.exit:                   ; preds = %if.then3.i, %land.lhs.true.max17040_handle_soc_alert.exit_crit_edge
  %and.i = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br i1 %tobool.not.i, label %max17040_handle_soc_alert.exit.if.end_crit_edge, label %max17040_handle_soc_alert.exit.do.end_crit_edge

max17040_handle_soc_alert.exit.do.end_crit_edge:  ; preds = %max17040_handle_soc_alert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

max17040_handle_soc_alert.exit.if.end_crit_edge:  ; preds = %max17040_handle_soc_alert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %max17040_handle_soc_alert.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.31) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %max17040_handle_soc_alert.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i.i) #6
  %11 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %soc.i.i, align 4, !annotation !92
  %regmap.i.i = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %soc.i.i) #6
  %14 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soc.i.i, align 4
  %quirk_double_soc.i.i = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 7
  %16 = ptrtoint ptr %quirk_double_soc.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %quirk_double_soc.i.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 8, i32 9
  %shr.i.i = lshr i32 %15, %cond.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i.i) #6
  %soc.i = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i.i, ptr %soc.i, align 4
  %battery = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %20) #6
  %low_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %dev, i32 0, i32 6
  %21 = ptrtoint ptr %low_soc_alert to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %low_soc_alert, align 4
  %23 = ptrtoint ptr %quirk_double_soc.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %quirk_double_soc.i.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i10 = icmp eq i8 %24, 0
  %cond.neg.i = select i1 %tobool.not.i10, i32 -1, i32 -2
  %mul.neg.i = mul i32 %cond.neg.i, %22
  %sub.i = add i32 %mul.neg.i, 32
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i12 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 12, i32 noundef 63, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %has_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %has_soc_alert to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_soc_alert, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %work = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %land.lhs.true6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true6.if.end12_crit_edge, label %device_may_wakeup.exit

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

device_may_wakeup.exit:                           ; preds = %land.lhs.true6
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %12, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end12_crit_edge, label %if.then9

device_may_wakeup.exit.if.end12_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %device_may_wakeup.exit.if.end12_crit_edge, %land.lhs.true6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17040_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.end.if.else_crit_edge, label %land.lhs.true6

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true6:                                   ; preds = %if.end
  %has_soc_alert = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %has_soc_alert to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_soc_alert, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.else_crit_edge, label %if.then8

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 12, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %12 = load ptr, ptr @system_power_efficient_wq, align 4
  %work.i = getelementptr inbounds %struct.max17040_chip, ptr %1, i32 0, i32 2
  %call.i.i17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work.i, i32 noundef 1000) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_max17040_battery__289_605_max17040_i2c_driver_init6, !1, !"__initcall__kmod_max17040_battery__289_605_max17040_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max17040_battery.c", i32 605, i32 1}
!2 = !{ptr @__exitcall_max17040_i2c_driver_exit, !1, !"__exitcall_max17040_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max17040_battery.c", i32 607, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max17040_battery.c", i32 608, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max17040_battery.c", i32 609, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max17040_battery.c", i32 598, i32 11}
!12 = !{ptr @max17040_i2c_driver, !13, !"max17040_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max17040_battery.c", i32 596, i32 26}
!14 = !{ptr @max17040_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max17040_battery.c", i32 451, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/max17040_battery.c", i32 469, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max17040_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max17040_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/max17040_battery.c", i32 476, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @max17040_probe.__UNIQUE_ID_ddebug288, !26, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/max17040_battery.c", i32 487, i32 4}
!31 = !{ptr @max17040_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max17040_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max17040_battery.c", i32 498, i32 4}
!35 = !{ptr @max17040_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max17040_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @max17040_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/max17040_battery.c", i32 505, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @max17040_probe.__key.16, !38, !"__key", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/max17040_battery.c", i32 516, i32 4}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @max17040_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @max17040_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @max17040_regmap, !48, !"max17040_regmap", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/max17040_battery.c", i32 409, i32 35}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max17040_battery.c", i32 232, i32 11}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/max17040_battery.c", i32 236, i32 6}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max17040_battery.c", i32 241, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @max17040_get_of_data._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @max17040_get_of_data._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/max17040_battery.c", i32 245, i32 44}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/max17040_battery.c", i32 253, i32 3}
!62 = !{ptr @max17040_get_of_data._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @max17040_get_of_data._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @max17040_family, !65, !"max17040_family", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/max17040_battery.c", i32 64, i32 25}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/max17040_battery.c", i32 424, i32 12}
!68 = !{ptr @max17040_battery_desc, !69, !"max17040_battery_desc", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/max17040_battery.c", i32 423, i32 39}
!70 = !{ptr @max17040_battery_props, !71, !"max17040_battery_props", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/max17040_battery.c", i32 416, i32 35}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/max17040_battery.c", i32 322, i32 3}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max17040_thread_handler._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max17040_thread_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @max17040_of_match, !78, !"max17040_of_match", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/max17040_battery.c", i32 582, i32 34}
!79 = !{ptr @max17040_pm_ops, !80, !"max17040_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max17040_battery.c", i32 559, i32 8}
!81 = !{ptr @max17040_id, !82, !"max17040_id", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/max17040_battery.c", i32 568, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i8 0, i8 2}
!94 = !{i64 2148966259, i64 2148966264, i64 2148966277, i64 2148966321, i64 2148966355, i64 2148966376}
