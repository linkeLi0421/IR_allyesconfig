; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq2515x_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq2515x_charger.c"
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
%struct.reg_default = type { i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bq2515x_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], i32, i8, %struct.bq2515x_init_data }
%struct.bq2515x_init_data = type { i32, i32, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_bq2515x_charger__288_1164_bq2515x_driver_init6 = internal global ptr @bq2515x_driver_init, section ".initcall6.init", align 4
@bq2515x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq2515x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq2515x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq2515x_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq2515x_driver_exit = internal global ptr @bq2515x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"bq2515x_charger.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [68 x i8] c"bq2515x_charger.author=Ricardo Rivera-Matos <r-rivera-matos@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [51 x i8] c"bq2515x_charger.description=BQ2515X charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [58 x i8] c"bq2515x_charger.file=drivers/power/supply/bq2515x_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"bq2515x_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq2515x-charger\00", [16 x i8] zeroinitializer }, align 32
@bq2515x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25155\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bq2515x_i2c_ids = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq25150\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25155\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bq2515x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bq25150_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq2515x_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 111, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25150_reg_defaults, i32 36, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bq2515x_charger:1102:(&bq25150_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@bq2515x_probe._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bq25155_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq2515x_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 111, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25155_reg_defaults, i32 36, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bq2515x_charger:1106:(&bq25155_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@bq2515x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq2515x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq2515x_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq2515x_probe._entry_ptr = internal global ptr @bq2515x_probe._entry, section ".printk_index", align 4
@bq2515x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1123, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read device tree properties %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bq2515x_probe._entry_ptr.11 = internal global ptr @bq2515x_probe._entry.9, section ".printk_index", align 4
@bq2515x_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1129, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bq2515x_probe._entry_ptr.14 = internal global ptr @bq2515x_probe._entry.12, section ".printk_index", align 4
@bq2515x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1135, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot initialize the chip\0A\00", [36 x i8] zeroinitializer }, align 32
@bq2515x_probe._entry_ptr.17 = internal global ptr @bq2515x_probe._entry.15, section ".printk_index", align 4
@bq25150_reg_defaults = internal constant { [36 x %struct.reg_default], [64 x i8] } { [36 x %struct.reg_default] [%struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 113 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 18, i32 60 }, %struct.reg_default { i32 19, i32 8 }, %struct.reg_default { i32 20, i32 2 }, %struct.reg_default { i32 21, i32 20 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 130 }, %struct.reg_default { i32 24, i32 66 }, %struct.reg_default { i32 25, i32 1 }, %struct.reg_default { i32 29, i32 176 }, %struct.reg_default { i32 48, i32 42 }, %struct.reg_default { i32 53, i32 16 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 64, i32 2 }, %struct.reg_default { i32 65, i32 64 }, %struct.reg_default { i32 82, i32 35 }, %struct.reg_default { i32 83, i32 32 }, %struct.reg_default { i32 84, i32 56 }, %struct.reg_default { i32 85, i32 144 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 97, i32 52 }, %struct.reg_default { i32 98, i32 124 }, %struct.reg_default { i32 99, i32 109 }, %struct.reg_default { i32 100, i32 56 }, %struct.reg_default { i32 101, i32 39 }, %struct.reg_default { i32 111, i32 32 }], [64 x i8] zeroinitializer }, align 32
@bq25155_reg_defaults = internal constant { [36 x %struct.reg_default], [64 x i8] } { [36 x %struct.reg_default] [%struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 113 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 18, i32 60 }, %struct.reg_default { i32 19, i32 8 }, %struct.reg_default { i32 20, i32 2 }, %struct.reg_default { i32 21, i32 20 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 130 }, %struct.reg_default { i32 24, i32 194 }, %struct.reg_default { i32 25, i32 6 }, %struct.reg_default { i32 29, i32 176 }, %struct.reg_default { i32 48, i32 42 }, %struct.reg_default { i32 53, i32 16 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 64 }, %struct.reg_default { i32 64, i32 2 }, %struct.reg_default { i32 65, i32 64 }, %struct.reg_default { i32 82, i32 35 }, %struct.reg_default { i32 83, i32 32 }, %struct.reg_default { i32 84, i32 56 }, %struct.reg_default { i32 85, i32 144 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 97, i32 52 }, %struct.reg_default { i32 98, i32 124 }, %struct.reg_default { i32 99, i32 109 }, %struct.reg_default { i32 100, i32 56 }, %struct.reg_default { i32 101, i32 39 }, %struct.reg_default { i32 111, i32 53 }], [64 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"input-current-limit-microamp\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ac-detect\00", [22 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 1016, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get ac detect\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq2515x_read_properties\00", [40 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry_ptr = internal global ptr @bq2515x_read_properties._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.6, i32 1024, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get reset\00", [44 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry_ptr.25 = internal global ptr @bq2515x_read_properties._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.6, i32 1032, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get powerdown\00", [40 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry_ptr.29 = internal global ptr @bq2515x_read_properties._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charge-enable\00", [18 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.6, i32 1041, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Failed to get ce\00", [47 x i8] zeroinitializer }, align 32
@bq2515x_read_properties._entry_ptr.33 = internal global ptr @bq2515x_read_properties._entry.31, section ".printk_index", align 4
@bq2515x_mains_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.34, i32 3, ptr null, i32 0, ptr @bq2515x_mains_properties, i32 9, ptr @bq2515x_mains_get_property, ptr @bq2515x_mains_set_property, ptr @bq2515x_power_supply_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq2515x_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.36, i32 1, ptr null, i32 0, ptr @bq2515x_battery_properties, i32 4, ptr @bq2515x_battery_get_property, ptr null, ptr @bq2515x_power_supply_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq2515x-mains\00", [18 x i8] zeroinitializer }, align 32
@bq2515x_mains_properties = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 0, i32 2, i32 38, i32 73, i32 74, i32 31, i32 29, i32 67], [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@bq2515x_ilim_lvl_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 50000, i32 100000, i32 150000, i32 200000, i32 300000, i32 400000, i32 500000, i32 600000], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq2515x-battery\00", [16 x i8] zeroinitializer }, align 32
@bq2515x_battery_properties = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 17, i32 30, i32 32], [16 x i8] zeroinitializer }, align 32
@bq2515x_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 962, ptr @.str.39, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"battery info missing, default values will be applied\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq2515x_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq2515x_hw_init._entry_ptr = internal global ptr @bq2515x_hw_init._entry, section ".printk_index", align 4
@switch.table.bq2515x_mains_get_property = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 13, i32 11, i32 0, i32 12, i32 0, i32 0, i32 0, i32 6], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79]
@__sancov_gen_cov_switch_values.42 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 4, i64 29, i64 31, i64 38, i64 67, i64 73, i64 74]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 29, i64 31, i64 38, i64 67]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 29, i64 31, i64 38, i64 67]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 12, i64 17, i64 30, i64 32]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"bq2515x_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1156, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1158, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"bq2515x_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1149, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"bq2515x_i2c_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1142, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"bq25150_regmap_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1059, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1101, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"bq25155_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1070, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1105, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1111, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1122, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1129, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1135, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"bq25150_reg_defaults\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 191, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"bq25155_reg_defaults\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 230, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 999, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1013, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1016, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1021, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1024, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1029, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1032, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1037, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1041, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"bq2515x_mains_desc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 908, i32 39 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"bq2515x_battery_desc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 918, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 909, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"bq2515x_mains_properties\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 896, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 826, i32 17 }
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"bq2515x_ilim_lvl_values\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 132, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 919, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"bq2515x_battery_properties\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 889, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [42 x i8] c"../drivers/power/supply/bq2515x_charger.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 962, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [40 x i8] c"switch.table.bq2515x_mains_get_property\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bq2515x_driver_exit, ptr @__initcall__kmod_bq2515x_charger__288_1164_bq2515x_driver_init6, ptr @bq2515x_driver_exit, ptr @bq2515x_hw_init._entry, ptr @bq2515x_hw_init._entry_ptr, ptr @bq2515x_probe._entry, ptr @bq2515x_probe._entry.12, ptr @bq2515x_probe._entry.15, ptr @bq2515x_probe._entry.9, ptr @bq2515x_probe._entry_ptr, ptr @bq2515x_probe._entry_ptr.11, ptr @bq2515x_probe._entry_ptr.14, ptr @bq2515x_probe._entry_ptr.17, ptr @bq2515x_read_properties._entry, ptr @bq2515x_read_properties._entry.23, ptr @bq2515x_read_properties._entry.27, ptr @bq2515x_read_properties._entry.31, ptr @bq2515x_read_properties._entry_ptr, ptr @bq2515x_read_properties._entry_ptr.25, ptr @bq2515x_read_properties._entry_ptr.29, ptr @bq2515x_read_properties._entry_ptr.33, ptr @bq2515x_driver, ptr @.str, ptr @bq2515x_of_match, ptr @bq2515x_i2c_ids, ptr @bq2515x_probe._key, ptr @bq25150_regmap_config, ptr @.str.1, ptr @bq2515x_probe._key.2, ptr @bq25155_regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @bq25150_reg_defaults, ptr @bq25155_reg_defaults, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @bq2515x_mains_desc, ptr @bq2515x_battery_desc, ptr @.str.34, ptr @bq2515x_mains_properties, ptr @.str.35, ptr @bq2515x_ilim_lvl_values, ptr @.str.36, ptr @bq2515x_battery_properties, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.bq2515x_mains_get_property], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_i2c_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25150_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25155_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25150_reg_defaults to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25155_reg_defaults to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_read_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_read_properties._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_read_properties._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_read_properties._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_mains_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_mains_properties to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_ilim_lvl_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_battery_properties to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2515x_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq2515x_mains_get_property to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2515x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq2515x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq2515x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bq2515x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2515x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %bat_info.i = alloca ptr, align 4
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %model_name = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 8
  %call4 = tail call ptr @strncpy(ptr noundef %model_name, ptr noundef %id, i32 noundef 20)
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %device_id = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %device_id, align 4
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @bq25150_regmap_config, ptr noundef nonnull @bq2515x_probe._key, ptr noundef nonnull @.str.1) #7
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @bq25155_regmap_config, ptr noundef nonnull @bq2515x_probe._key.2, ptr noundef nonnull @.str.3) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb
  %call9.sink = phi ptr [ %call9, %sw.bb7 ], [ %call6, %sw.bb ]
  %regmap10 = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.sink, ptr %regmap10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %regmap11 = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap11, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  %8 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap11, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %init_data.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %15, ptr noundef nonnull @.str.18, ptr noundef %init_data.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end16.if.end.i_crit_edge, label %if.then.i

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end16
  %16 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_id, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %17, label %if.then.i.if.end.i_crit_edge [
    i32 0, label %if.then.i.if.end.sink.split.i_crit_edge
    i32 1, label %sw.bb3.i
  ]

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb3.i, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 500000, %sw.bb3.i ], [ 100000, %if.then.i.if.end.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.i, ptr %init_data.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.then.i.if.end.i_crit_edge, %if.end16.if.end.i_crit_edge
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  %call7.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef 1) #7
  %ac_detect_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %ac_detect_gpio.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %ac_detect_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.bq2515x_read_properties.exit_crit_edge, label %if.end14.i

if.end.i.bq2515x_read_properties.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_read_properties.exit

if.end14.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  %call16.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %24, ptr noundef nonnull @.str.22, i32 noundef 3) #7
  %reset_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16.i, ptr %reset_gpio.i, align 4
  %cmp.i79.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.i, label %if.end14.i.bq2515x_read_properties.exit_crit_edge, label %if.end26.i

if.end14.i.bq2515x_read_properties.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_read_properties.exit

if.end26.i:                                       ; preds = %if.end14.i
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %call28.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 3) #7
  %powerdown_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %powerdown_gpio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28.i, ptr %powerdown_gpio.i, align 4
  %cmp.i80.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %if.end26.i.bq2515x_read_properties.exit_crit_edge, label %if.end38.i

if.end26.i.bq2515x_read_properties.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_read_properties.exit

if.end38.i:                                       ; preds = %if.end26.i
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  %call40.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef 3) #7
  %ce_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %ce_gpio.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call40.i, ptr %ce_gpio.i, align 4
  %cmp.i81.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.end38.i.bq2515x_read_properties.exit_crit_edge, label %if.end38.i.if.end24_crit_edge

if.end38.i.if.end24_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end38.i.bq2515x_read_properties.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_read_properties.exit

bq2515x_read_properties.exit:                     ; preds = %if.end38.i.bq2515x_read_properties.exit_crit_edge, %if.end26.i.bq2515x_read_properties.exit_crit_edge, %if.end14.i.bq2515x_read_properties.exit_crit_edge, %if.end.i.bq2515x_read_properties.exit_crit_edge
  %call40.sink.i = phi ptr [ %call7.i, %if.end.i.bq2515x_read_properties.exit_crit_edge ], [ %call16.i, %if.end14.i.bq2515x_read_properties.exit_crit_edge ], [ %call28.i, %if.end26.i.bq2515x_read_properties.exit_crit_edge ], [ %call40.i, %if.end38.i.bq2515x_read_properties.exit_crit_edge ]
  %.str.32.sink.i = phi ptr [ @.str.20, %if.end.i.bq2515x_read_properties.exit_crit_edge ], [ @.str.24, %if.end14.i.bq2515x_read_properties.exit_crit_edge ], [ @.str.28, %if.end26.i.bq2515x_read_properties.exit_crit_edge ], [ @.str.32, %if.end38.i.bq2515x_read_properties.exit_crit_edge ]
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull %.str.32.sink.i) #10
  %tobool19.not = icmp eq ptr %call40.sink.i, null
  br i1 %tobool19.not, label %bq2515x_read_properties.exit.if.end24_crit_edge, label %do.end23

bq2515x_read_properties.exit.if.end24_crit_edge:  ; preds = %bq2515x_read_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end23:                                         ; preds = %bq2515x_read_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call40.sink.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %34) #10
  br label %cleanup

if.end24:                                         ; preds = %bq2515x_read_properties.exit.if.end24_crit_edge, %if.end38.i.if.end24_crit_edge
  %35 = ptrtoint ptr %13 to i32
  %36 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i)
  %37 = ptrtoint ptr %psy_cfg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %psy_cfg.i, align 4
  %psy_cfg.coerce.fca.1.gep.i = getelementptr inbounds [6 x i32], ptr %psy_cfg.i, i32 0, i32 1
  %38 = ptrtoint ptr %psy_cfg.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %psy_cfg.coerce.fca.1.gep.i, align 4
  %psy_cfg.coerce.fca.2.gep.i = getelementptr inbounds [6 x i32], ptr %psy_cfg.i, i32 0, i32 2
  %39 = ptrtoint ptr %psy_cfg.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %psy_cfg.coerce.fca.2.gep.i, align 4
  %psy_cfg.coerce.fca.3.gep.i = getelementptr inbounds [6 x i32], ptr %psy_cfg.i, i32 0, i32 3
  %40 = ptrtoint ptr %psy_cfg.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %psy_cfg.coerce.fca.3.gep.i, align 4
  %psy_cfg.coerce.fca.4.gep.i = getelementptr inbounds [6 x i32], ptr %psy_cfg.i, i32 0, i32 4
  %41 = ptrtoint ptr %psy_cfg.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %psy_cfg.coerce.fca.4.gep.i, align 4
  %psy_cfg.coerce.fca.5.gep.i = getelementptr inbounds [6 x i32], ptr %psy_cfg.i, i32 0, i32 5
  %42 = ptrtoint ptr %psy_cfg.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %psy_cfg.coerce.fca.5.gep.i, align 4
  %43 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev2, align 4
  %call.i72 = call ptr @devm_power_supply_register(ptr noundef %44, ptr noundef nonnull @bq2515x_mains_desc, ptr noundef nonnull %psy_cfg.i) #7
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i72, ptr %call.i, align 4
  %cmp.i.i73 = icmp ugt ptr %call.i72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i73, label %if.end24.do.end30_crit_edge, label %if.end.i74

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.end.i74:                                       ; preds = %if.end24
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 4
  %call5.i = call ptr @devm_power_supply_register(ptr noundef %47, ptr noundef nonnull @bq2515x_battery_desc, ptr noundef nonnull %psy_cfg.i) #7
  %battery.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i, ptr %battery.i, align 4
  %cmp.i1.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end.i74.do.end30_crit_edge, label %if.end31

if.end.i74.do.end30_crit_edge:                    ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %if.end.i74.do.end30_crit_edge, %if.end24.do.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end.i74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bat_info.i) #7
  %49 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %bat_info.i, align 4, !annotation !112
  %50 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap11, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 23, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %bq2515x_disable_watchdog_timers.exit.i, label %if.end31.bq2515x_hw_init.exit.thread_crit_edge

if.end31.bq2515x_hw_init.exit.thread_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

bq2515x_disable_watchdog_timers.exit.i:           ; preds = %if.end31
  %52 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap11, align 4
  %call.i5.i.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 55, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool.not.i76 = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool.not.i76, label %if.end.i78, label %bq2515x_disable_watchdog_timers.exit.i.bq2515x_hw_init.exit.thread_crit_edge

bq2515x_disable_watchdog_timers.exit.i.bq2515x_hw_init.exit.thread_crit_edge: ; preds = %bq2515x_disable_watchdog_timers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

if.end.i78:                                       ; preds = %bq2515x_disable_watchdog_timers.exit.i
  %54 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %init_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool1.not.i = icmp eq i32 %55, 0
  br i1 %tobool1.not.i, label %if.end.i78.if.end9.i_crit_edge, label %if.then2.i

if.end.i78.if.end9.i_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %55)
  %cmp1.not.i.i = icmp slt i32 %55, 600000
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.then2.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

if.then2.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %55)
  %cmp1.not.1.i.i = icmp slt i32 %55, 500000
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

for.inc.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %55)
  %cmp1.not.2.i.i = icmp slt i32 %55, 400000
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

for.inc.1.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %55)
  %cmp1.not.3.i.i = icmp slt i32 %55, 300000
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

for.inc.2.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %55)
  %cmp1.not.4.i.i = icmp slt i32 %55, 200000
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

for.inc.3.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %55)
  %cmp1.not.5.i.i = icmp slt i32 %55, 150000
  br i1 %cmp1.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge

for.inc.4.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %55)
  %cmp1.not.6.i.i = icmp sgt i32 %55, 99999
  %spec.select.i.i = zext i1 %cmp1.not.6.i.i to i32
  br label %bq2515x_set_ilim_lvl.exit.i

bq2515x_set_ilim_lvl.exit.i:                      ; preds = %for.inc.5.i.i, %for.inc.4.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge, %for.inc.3.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge, %for.inc.2.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge, %for.inc.1.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge, %for.inc.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge, %if.then2.i.bq2515x_set_ilim_lvl.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 7, %if.then2.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ 6, %for.inc.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ 5, %for.inc.1.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ 4, %for.inc.2.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ 3, %for.inc.3.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ 2, %for.inc.4.i.i.bq2515x_set_ilim_lvl.exit.i_crit_edge ], [ %spec.select.i.i, %for.inc.5.i.i ]
  %56 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap11, align 4
  %call.i.i79 = call i32 @regmap_write(ptr noundef %57, i32 noundef 25, i32 noundef %i.0.lcssa.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool6.not.i = icmp eq i32 %call.i.i79, 0
  br i1 %tobool6.not.i, label %bq2515x_set_ilim_lvl.exit.i.if.end9.i_crit_edge, label %bq2515x_set_ilim_lvl.exit.i.bq2515x_hw_init.exit.thread_crit_edge

bq2515x_set_ilim_lvl.exit.i.bq2515x_hw_init.exit.thread_crit_edge: ; preds = %bq2515x_set_ilim_lvl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

bq2515x_set_ilim_lvl.exit.i.if.end9.i_crit_edge:  ; preds = %bq2515x_set_ilim_lvl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %bq2515x_set_ilim_lvl.exit.i.if.end9.i_crit_edge, %if.end.i78.if.end9.i_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call10.i = call i32 @power_supply_get_battery_info(ptr noundef %59, ptr noundef nonnull %bat_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.37) #10
  %ichg.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %ichg.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10000, ptr %ichg.i, align 4
  %vbatreg.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 2
  %63 = ptrtoint ptr %vbatreg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4200000, ptr %vbatreg.i, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_current_max_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %constant_charge_current_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %constant_charge_current_max_ua.i, align 4
  %ichg17.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 1
  %68 = ptrtoint ptr %ichg17.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ichg17.i, align 4
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %65, i32 0, i32 12
  %69 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %constant_charge_voltage_max_uv.i, align 4
  %vbatreg19.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %vbatreg19.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %vbatreg19.i, align 4
  %precharge_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %65, i32 0, i32 6
  %72 = ptrtoint ptr %precharge_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %precharge_current_ua.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %do.end.i
  %.sink.i81 = phi i32 [ %73, %if.else.i ], [ 2500, %do.end.i ]
  %74 = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 3
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink.i81, ptr %74, align 4
  %ichg24.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 1
  %76 = ptrtoint ptr %ichg24.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ichg24.i, align 4
  %call25.i = call fastcc i32 @bq2515x_set_const_charge_current(ptr noundef nonnull %call.i, i32 noundef %77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end22.i.bq2515x_hw_init.exit.thread_crit_edge

if.end22.i.bq2515x_hw_init.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

if.end28.i:                                       ; preds = %if.end22.i
  %vbatreg30.i = getelementptr inbounds %struct.bq2515x_device, ptr %call.i, i32 0, i32 11, i32 2
  %78 = ptrtoint ptr %vbatreg30.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vbatreg30.i, align 4
  %80 = add i32 %79, -4600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000001, i32 %80)
  %81 = icmp ult i32 %80, -1000001
  br i1 %81, label %if.end28.i.bq2515x_hw_init.exit.thread_crit_edge, label %bq2515x_set_batt_reg.exit.i

if.end28.i.bq2515x_hw_init.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

bq2515x_set_batt_reg.exit.i:                      ; preds = %if.end28.i
  %sub.i.i = add nsw i32 %79, -3600000
  %div4.i.i = udiv i32 %sub.i.i, 10000
  %82 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap11, align 4
  %call.i66.i = call i32 @regmap_write(ptr noundef %83, i32 noundef 18, i32 noundef %div4.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool32.not.i = icmp eq i32 %call.i66.i, 0
  br i1 %tobool32.not.i, label %bq2515x_hw_init.exit, label %bq2515x_set_batt_reg.exit.i.bq2515x_hw_init.exit.thread_crit_edge

bq2515x_set_batt_reg.exit.i.bq2515x_hw_init.exit.thread_crit_edge: ; preds = %bq2515x_set_batt_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_hw_init.exit.thread

bq2515x_hw_init.exit.thread:                      ; preds = %bq2515x_set_batt_reg.exit.i.bq2515x_hw_init.exit.thread_crit_edge, %if.end28.i.bq2515x_hw_init.exit.thread_crit_edge, %if.end22.i.bq2515x_hw_init.exit.thread_crit_edge, %bq2515x_set_ilim_lvl.exit.i.bq2515x_hw_init.exit.thread_crit_edge, %bq2515x_disable_watchdog_timers.exit.i.bq2515x_hw_init.exit.thread_crit_edge, %if.end31.bq2515x_hw_init.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ -22, %if.end28.i.bq2515x_hw_init.exit.thread_crit_edge ], [ %call.i.i.i, %if.end31.bq2515x_hw_init.exit.thread_crit_edge ], [ %call.i66.i, %bq2515x_set_batt_reg.exit.i.bq2515x_hw_init.exit.thread_crit_edge ], [ %call25.i, %if.end22.i.bq2515x_hw_init.exit.thread_crit_edge ], [ %call.i.i79, %bq2515x_set_ilim_lvl.exit.i.bq2515x_hw_init.exit.thread_crit_edge ], [ %call.i5.i.i, %bq2515x_disable_watchdog_timers.exit.i.bq2515x_hw_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #7
  br label %do.end37

bq2515x_hw_init.exit:                             ; preds = %bq2515x_set_batt_reg.exit.i
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %74, align 4
  %call37.i = call fastcc i32 @bq2515x_set_precharge_current(ptr noundef nonnull %call.i, i32 noundef %85) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool33.not = icmp eq i32 %call37.i, 0
  br i1 %tobool33.not, label %bq2515x_hw_init.exit.cleanup_crit_edge, label %bq2515x_hw_init.exit.do.end37_crit_edge

bq2515x_hw_init.exit.do.end37_crit_edge:          ; preds = %bq2515x_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

bq2515x_hw_init.exit.cleanup_crit_edge:           ; preds = %bq2515x_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %bq2515x_hw_init.exit.do.end37_crit_edge, %bq2515x_hw_init.exit.thread
  %retval.0.i8290 = phi i32 [ %retval.0.i82.ph, %bq2515x_hw_init.exit.thread ], [ %call37.i, %bq2515x_hw_init.exit.do.end37_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %bq2515x_hw_init.exit.cleanup_crit_edge, %do.end30, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %34, %do.end23 ], [ -22, %do.end30 ], [ %retval.0.i8290, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %bq2515x_hw_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bq2515x_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %reg, label %sw.default [
    i32 66, label %entry.return_crit_edge
    i32 67, label %entry.return_crit_edge2
    i32 68, label %entry.return_crit_edge3
    i32 69, label %entry.return_crit_edge4
    i32 70, label %entry.return_crit_edge5
    i32 71, label %entry.return_crit_edge6
    i32 72, label %entry.return_crit_edge7
    i32 73, label %entry.return_crit_edge8
    i32 74, label %entry.return_crit_edge9
    i32 75, label %entry.return_crit_edge10
    i32 76, label %entry.return_crit_edge11
    i32 77, label %entry.return_crit_edge12
    i32 78, label %entry.return_crit_edge13
    i32 79, label %entry.return_crit_edge14
    i32 0, label %entry.return_crit_edge15
    i32 1, label %entry.return_crit_edge16
    i32 2, label %entry.return_crit_edge17
    i32 3, label %entry.return_crit_edge18
    i32 4, label %entry.return_crit_edge19
    i32 5, label %entry.return_crit_edge20
    i32 6, label %entry.return_crit_edge21
  ]

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2515x_mains_get_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %icctrl2.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %ilimctrl.i = alloca i32, align 4
  %stat1.i = alloca i32, align 4
  %flag3.i = alloca i32, align 4
  %pchrgctrl.i69 = alloca i32, align 4
  %vbat_reg_code.i = alloca i32, align 4
  %ichg_reg_code.i = alloca i32, align 4
  %pchrgctrl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 29, label %sw.bb
    i32 31, label %sw.bb2
    i32 67, label %sw.bb7
    i32 4, label %sw.bb12
    i32 2, label %sw.bb13
    i32 38, label %sw.bb18
    i32 73, label %sw.bb24
    i32 74, label %sw.bb25
    i32 0, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ichg_reg_code.i) #7
  %1 = ptrtoint ptr %ichg_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ichg_reg_code.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pchrgctrl.i) #7
  %2 = ptrtoint ptr %pchrgctrl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pchrgctrl.i, align 4, !annotation !112
  %regmap.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 19, ptr noundef nonnull %ichg_reg_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bq2515x_get_const_charge_current.exit_crit_edge

sw.bb.bq2515x_get_const_charge_current.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_const_charge_current.exit

if.end.i:                                         ; preds = %sw.bb
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %pchrgctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.bq2515x_get_const_charge_current.exit_crit_edge

if.end.i.bq2515x_get_const_charge_current.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_const_charge_current.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pchrgctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pchrgctrl.i, align 4
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 1250, i32 2500
  %9 = ptrtoint ptr %ichg_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ichg_reg_code.i, align 4
  %mul.i = mul i32 %spec.select.i, %10
  br label %bq2515x_get_const_charge_current.exit

bq2515x_get_const_charge_current.exit:            ; preds = %if.end5.i, %if.end.i.bq2515x_get_const_charge_current.exit_crit_edge, %sw.bb.bq2515x_get_const_charge_current.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.end5.i ], [ %call.i, %sw.bb.bq2515x_get_const_charge_current.exit_crit_edge ], [ %call2.i, %if.end.i.bq2515x_get_const_charge_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_reg_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %bq2515x_get_const_charge_current.exit.cleanup_crit_edge, label %if.end

bq2515x_get_const_charge_current.exit.cleanup_crit_edge: ; preds = %bq2515x_get_const_charge_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bq2515x_get_const_charge_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat_reg_code.i) #7
  %12 = ptrtoint ptr %vbat_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %vbat_reg_code.i, align 4, !annotation !112
  %regmap.i63 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i63, align 4
  %call.i64 = call i32 @regmap_read(ptr noundef %14, i32 noundef 18, ptr noundef nonnull %vbat_reg_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end.i67, label %sw.bb2.bq2515x_get_batt_reg.exit_crit_edge

sw.bb2.bq2515x_get_batt_reg.exit_crit_edge:       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_batt_reg.exit

if.end.i67:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %vbat_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vbat_reg_code.i, align 4
  %mul.i66 = mul i32 %16, 10000
  %add.i = add i32 %mul.i66, 3600000
  br label %bq2515x_get_batt_reg.exit

bq2515x_get_batt_reg.exit:                        ; preds = %if.end.i67, %sw.bb2.bq2515x_get_batt_reg.exit_crit_edge
  %retval.0.i68 = phi i32 [ %add.i, %if.end.i67 ], [ %call.i64, %sw.bb2.bq2515x_get_batt_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat_reg_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %cmp4 = icmp slt i32 %retval.0.i68, 0
  br i1 %cmp4, label %bq2515x_get_batt_reg.exit.cleanup_crit_edge, label %if.end6

bq2515x_get_batt_reg.exit.cleanup_crit_edge:      ; preds = %bq2515x_get_batt_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %bq2515x_get_batt_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i68, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pchrgctrl.i69) #7
  %18 = ptrtoint ptr %pchrgctrl.i69 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pchrgctrl.i69, align 4, !annotation !112
  %regmap.i70 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %regmap.i70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i70, align 4
  %call.i71 = call i32 @regmap_read(ptr noundef %20, i32 noundef 20, ptr noundef nonnull %pchrgctrl.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %bq2515x_get_precharge_current.exit.thread, label %bq2515x_get_precharge_current.exit

bq2515x_get_precharge_current.exit.thread:        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pchrgctrl.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pchrgctrl.i69, align 4
  %and.i73 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool1.not.i = icmp eq i32 %and.i73, 0
  %spec.select.i74 = select i1 %tobool1.not.i, i32 1250, i32 2500
  %and4.i = and i32 %22, 31
  %mul.i75 = mul nuw nsw i32 %spec.select.i74, %and4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl.i69) #7
  br label %if.end11

bq2515x_get_precharge_current.exit:               ; preds = %sw.bb7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp9 = icmp slt i32 %call.i71, 0
  br i1 %cmp9, label %bq2515x_get_precharge_current.exit.cleanup_crit_edge, label %bq2515x_get_precharge_current.exit.if.end11_crit_edge

bq2515x_get_precharge_current.exit.if.end11_crit_edge: ; preds = %bq2515x_get_precharge_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

bq2515x_get_precharge_current.exit.cleanup_crit_edge: ; preds = %bq2515x_get_precharge_current.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %bq2515x_get_precharge_current.exit.if.end11_crit_edge, %bq2515x_get_precharge_current.exit.thread
  %retval.0.i77104 = phi i32 [ %mul.i75, %bq2515x_get_precharge_current.exit.thread ], [ %call.i71, %bq2515x_get_precharge_current.exit.if.end11_crit_edge ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i77104, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mains_online = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 10
  %24 = ptrtoint ptr %mains_online to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mains_online, align 4, !range !113
  %26 = zext i8 %25 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat1.i) #7
  %28 = ptrtoint ptr %stat1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %stat1.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag3.i) #7
  %29 = ptrtoint ptr %flag3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %flag3.i, align 4, !annotation !112
  %mains_online.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mains_online.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i78 = icmp eq i8 %31, 0
  br i1 %tobool.not.i78, label %if.then.i, label %sw.bb13.if.end.i80_crit_edge

sw.bb13.if.end.i80_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i80

if.then.i:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @bq2515x_wake_up(ptr noundef %call) #7
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then.i, %sw.bb13.if.end.i80_crit_edge
  %regmap.i79 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %32 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i79, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 6, ptr noundef nonnull %flag3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i80.if.then16_crit_edge

if.end.i80.if.then16_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end4.i:                                        ; preds = %if.end.i80
  %34 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i79, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 1, ptr noundef nonnull %stat1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.if.then16_crit_edge

if.end4.i.if.then16_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end9.i:                                        ; preds = %if.end4.i
  %36 = ptrtoint ptr %stat1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stat1.i, align 4
  %and.i81 = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i81)
  %38 = icmp ult i32 %and.i81, 9
  br i1 %38, label %switch.lookup, label %if.end9.i.bq2515x_charger_get_health.exit_crit_edge

if.end9.i.bq2515x_charger_get_health.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_charger_get_health.exit

switch.lookup:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.bq2515x_mains_get_property, i32 0, i32 %and.i81
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bq2515x_charger_get_health.exit

bq2515x_charger_get_health.exit:                  ; preds = %switch.lookup, %if.end9.i.bq2515x_charger_get_health.exit_crit_edge
  %health.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end9.i.bq2515x_charger_get_health.exit_crit_edge ]
  %and17.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %spec.select.i82 = select i1 %tobool18.not.i, i32 %health.0.i, i32 4
  %40 = ptrtoint ptr %flag3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flag3.i, align 4
  %and21.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %health.2.i = select i1 %tobool22.not.i, i32 %spec.select.i82, i32 8
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %health.2.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat1.i) #7
  br label %cleanup

if.then16:                                        ; preds = %if.end4.i.if.then16_crit_edge, %if.end.i80.if.then16_crit_edge
  %retval.0.i83.ph = phi i32 [ %call6.i, %if.end4.i.if.then16_crit_edge ], [ %call1.i, %if.end.i80.if.then16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat1.i) #7
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ilimctrl.i) #7
  %44 = ptrtoint ptr %ilimctrl.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %ilimctrl.i, align 4, !annotation !112
  %regmap.i84 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %regmap.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i84, align 4
  %call.i85 = call i32 @regmap_read(ptr noundef %46, i32 noundef 25, ptr noundef nonnull %ilimctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %if.end.i88, label %sw.bb18.bq2515x_get_ilim_lvl.exit_crit_edge

sw.bb18.bq2515x_get_ilim_lvl.exit_crit_edge:      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_ilim_lvl.exit

if.end.i88:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ilimctrl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ilimctrl.i, align 4
  %and.i87 = and i32 %48, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @bq2515x_ilim_lvl_values, i32 0, i32 %and.i87
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  br label %bq2515x_get_ilim_lvl.exit

bq2515x_get_ilim_lvl.exit:                        ; preds = %if.end.i88, %sw.bb18.bq2515x_get_ilim_lvl.exit_crit_edge
  %retval.0.i89 = phi i32 [ %50, %if.end.i88 ], [ %call.i85, %sw.bb18.bq2515x_get_ilim_lvl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ilimctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89)
  %cmp20 = icmp slt i32 %retval.0.i89, 0
  br i1 %cmp20, label %bq2515x_get_ilim_lvl.exit.cleanup_crit_edge, label %if.end23

bq2515x_get_ilim_lvl.exit.cleanup_crit_edge:      ; preds = %bq2515x_get_ilim_lvl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %bq2515x_get_ilim_lvl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i89, ptr %val, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %model_name = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 8
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %model_name, ptr %val, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.35, ptr %val, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %status.i, align 4, !annotation !112
  %mains_online.i90 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 10
  %55 = ptrtoint ptr %mains_online.i90 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mains_online.i90, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i91 = icmp eq i8 %56, 0
  br i1 %tobool.not.i91, label %sw.bb26.bq2515x_charging_status.exit_crit_edge, label %if.end.i95

sw.bb26.bq2515x_charging_status.exit_crit_edge:   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_charging_status.exit

if.end.i95:                                       ; preds = %sw.bb26
  %regmap.i92 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %57 = ptrtoint ptr %regmap.i92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i92, align 4
  %call.i93 = call i32 @regmap_read(ptr noundef %58, i32 noundef 0, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool1.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool1.not.i94, label %if.end3.i, label %if.end.i95.bq2515x_charging_status.exit.thread_crit_edge

if.end.i95.bq2515x_charging_status.exit.thread_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_charging_status.exit.thread

if.end3.i:                                        ; preds = %if.end.i95
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status.i, align 4
  %and.i96 = and i32 %60, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i96)
  %cmp.i = icmp eq i32 %and.i96, 1
  %conv.i = zext i1 %cmp.i to i32
  %and4.i97 = and i32 %60, 32
  %and4.lobit.i = lshr exact i32 %and4.i97, 5
  %61 = xor i32 %and4.lobit.i, -1
  %and7.i = and i32 %conv.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i97)
  %tobool11.not.i = icmp ne i32 %and4.i97, 0
  %not.tobool8.not.i = xor i1 %tobool8.not.i, true
  %charge_done.0.off0.i = select i1 %tobool8.not.i, i1 %tobool11.not.i, i1 false
  %62 = ptrtoint ptr %regmap.i92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i92, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i98 = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i98, label %if.end20.i, label %if.end3.i.bq2515x_charging_status.exit.thread_crit_edge

if.end3.i.bq2515x_charging_status.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_charging_status.exit.thread

if.end20.i:                                       ; preds = %if.end3.i
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status.i, align 4
  %and21.i99 = and i32 %65, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i99)
  %cmp22.i = icmp eq i32 %and21.i99, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icctrl2.i.i) #7
  %66 = ptrtoint ptr %icctrl2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %icctrl2.i.i, align 4, !annotation !112
  %ce_gpio.i.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 7
  %67 = ptrtoint ptr %ce_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ce_gpio.i.i, align 4
  %call.i.i = call i32 @gpiod_get_value_cansleep(ptr noundef %68) #7
  %69 = ptrtoint ptr %regmap.i92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i92, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 55, ptr noundef nonnull %icctrl2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end20.i.bq2515x_get_charge_disable.exit.i_crit_edge

if.end20.i.bq2515x_get_charge_disable.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_charge_disable.exit.i

if.end.i.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %icctrl2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %icctrl2.i.i, align 4
  %and.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.not.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool3.not.i.not.i, i1 %tobool4.not.i.i, i1 false
  %phi.cast.i = zext i1 %or.cond.i.i to i32
  br label %bq2515x_get_charge_disable.exit.i

bq2515x_get_charge_disable.exit.i:                ; preds = %if.end.i.i, %if.end20.i.bq2515x_get_charge_disable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end20.i.bq2515x_get_charge_disable.exit.i_crit_edge ], [ %phi.cast.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icctrl2.i.i) #7
  %and3273.i = and i1 %cmp22.i, %not.tobool8.not.i
  %and32.i = zext i1 %and3273.i to i32
  %and35.i = and i32 %retval.0.i.i, %and32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %..i = select i1 %charge_done.0.off0.i, i32 4, i32 3
  %spec.select.i100 = select i1 %tobool36.not.i, i32 %..i, i32 1
  br label %bq2515x_charging_status.exit

bq2515x_charging_status.exit.thread:              ; preds = %if.end3.i.bq2515x_charging_status.exit.thread_crit_edge, %if.end.i95.bq2515x_charging_status.exit.thread_crit_edge
  %retval.0.i101.ph = phi i32 [ %call17.i, %if.end3.i.bq2515x_charging_status.exit.thread_crit_edge ], [ %call.i93, %if.end.i95.bq2515x_charging_status.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %cleanup

bq2515x_charging_status.exit:                     ; preds = %bq2515x_get_charge_disable.exit.i, %sw.bb26.bq2515x_charging_status.exit_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb26.bq2515x_charging_status.exit_crit_edge ], [ %spec.select.i100, %bq2515x_get_charge_disable.exit.i ]
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bq2515x_charging_status.exit, %bq2515x_charging_status.exit.thread, %sw.bb25, %sw.bb24, %if.end23, %bq2515x_get_ilim_lvl.exit.cleanup_crit_edge, %if.then16, %bq2515x_charger_get_health.exit, %sw.bb12, %if.end11, %bq2515x_get_precharge_current.exit.cleanup_crit_edge, %if.end6, %bq2515x_get_batt_reg.exit.cleanup_crit_edge, %if.end, %bq2515x_get_const_charge_current.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %bq2515x_get_const_charge_current.exit.cleanup_crit_edge ], [ %retval.0.i68, %bq2515x_get_batt_reg.exit.cleanup_crit_edge ], [ %call.i71, %bq2515x_get_precharge_current.exit.cleanup_crit_edge ], [ %retval.0.i89, %bq2515x_get_ilim_lvl.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i101.ph, %bq2515x_charging_status.exit.thread ], [ 0, %bq2515x_charging_status.exit ], [ 0, %sw.bb25 ], [ 0, %sw.bb24 ], [ %retval.0.i89, %if.end23 ], [ %retval.0.i83.ph, %if.then16 ], [ 0, %bq2515x_charger_get_health.exit ], [ 0, %sw.bb12 ], [ %retval.0.i77104, %if.end11 ], [ %retval.0.i68, %if.end6 ], [ %retval.0.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2515x_mains_set_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 29, label %sw.bb2
    i32 38, label %sw.bb4
    i32 67, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = add i32 %2, -4600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000001, i32 %3)
  %4 = icmp ult i32 %3, -1000001
  br i1 %4, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %2, -3600000
  %div4.i = udiv i32 %sub.i, 10000
  %regmap.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 18, i32 noundef %div4.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call3 = tail call fastcc i32 @bq2515x_set_const_charge_current(ptr noundef %call, i32 noundef %8)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %10)
  %cmp1.not.i = icmp slt i32 %10, 600000
  br i1 %cmp1.not.i, label %for.inc.i, label %sw.bb4.bq2515x_set_ilim_lvl.exit_crit_edge

sw.bb4.bq2515x_set_ilim_lvl.exit_crit_edge:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %10)
  %cmp1.not.1.i = icmp slt i32 %10, 500000
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.bq2515x_set_ilim_lvl.exit_crit_edge

for.inc.i.bq2515x_set_ilim_lvl.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %10)
  %cmp1.not.2.i = icmp slt i32 %10, 400000
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.bq2515x_set_ilim_lvl.exit_crit_edge

for.inc.1.i.bq2515x_set_ilim_lvl.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %10)
  %cmp1.not.3.i = icmp slt i32 %10, 300000
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.bq2515x_set_ilim_lvl.exit_crit_edge

for.inc.2.i.bq2515x_set_ilim_lvl.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %10)
  %cmp1.not.4.i = icmp slt i32 %10, 200000
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.bq2515x_set_ilim_lvl.exit_crit_edge

for.inc.3.i.bq2515x_set_ilim_lvl.exit_crit_edge:  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %10)
  %cmp1.not.5.i = icmp slt i32 %10, 150000
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.bq2515x_set_ilim_lvl.exit_crit_edge

for.inc.4.i.bq2515x_set_ilim_lvl.exit_crit_edge:  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_set_ilim_lvl.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %10)
  %cmp1.not.6.i = icmp sgt i32 %10, 99999
  %spec.select.i = zext i1 %cmp1.not.6.i to i32
  br label %bq2515x_set_ilim_lvl.exit

bq2515x_set_ilim_lvl.exit:                        ; preds = %for.inc.5.i, %for.inc.4.i.bq2515x_set_ilim_lvl.exit_crit_edge, %for.inc.3.i.bq2515x_set_ilim_lvl.exit_crit_edge, %for.inc.2.i.bq2515x_set_ilim_lvl.exit_crit_edge, %for.inc.1.i.bq2515x_set_ilim_lvl.exit_crit_edge, %for.inc.i.bq2515x_set_ilim_lvl.exit_crit_edge, %sw.bb4.bq2515x_set_ilim_lvl.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 7, %sw.bb4.bq2515x_set_ilim_lvl.exit_crit_edge ], [ 6, %for.inc.i.bq2515x_set_ilim_lvl.exit_crit_edge ], [ 5, %for.inc.1.i.bq2515x_set_ilim_lvl.exit_crit_edge ], [ 4, %for.inc.2.i.bq2515x_set_ilim_lvl.exit_crit_edge ], [ 3, %for.inc.3.i.bq2515x_set_ilim_lvl.exit_crit_edge ], [ 2, %for.inc.4.i.bq2515x_set_ilim_lvl.exit_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %regmap.i15 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i15, align 4
  %call.i16 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 25, i32 noundef %i.0.lcssa.i) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %call7 = tail call fastcc i32 @bq2515x_set_precharge_current(ptr noundef %call, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %bq2515x_set_ilim_lvl.exit, %sw.bb2, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7, %sw.bb6 ], [ %call.i16, %bq2515x_set_ilim_lvl.exit ], [ %call3, %sw.bb2 ], [ %call.i, %if.end.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq2515x_power_supply_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %prop) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %prop, label %sw.default [
    i32 38, label %entry.return_crit_edge
    i32 31, label %entry.return_crit_edge1
    i32 29, label %entry.return_crit_edge2
    i32 67, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq2515x_wake_up(ptr nocapture noundef readonly %bq2515x) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !112
  %regmap = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %powerdown_gpio = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 5
  %3 = ptrtoint ptr %powerdown_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %powerdown_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef 0) #7
  %reset_gpio = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 4
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 1700000, i32 noundef 2300000, i32 noundef 2) #7
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 88, i32 noundef 40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2515x_set_const_charge_current(ptr nocapture noundef readonly %bq2515x, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val)
  %0 = icmp ugt i32 %val, 500000
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 318750, i32 %val)
  %cmp2 = icmp ugt i32 %val, 318750
  %spec.select26 = select i1 %cmp2, i32 128, i32 0
  %ce_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 7
  %1 = ptrtoint ptr %ce_gpio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ce_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %2, i32 noundef 1) #7
  %regmap.i = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 55, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 20, i32 noundef 128, i32 noundef %spec.select26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %spec.select = select i1 %cmp2, i32 2500, i32 1250
  %div30 = udiv i32 %val, %spec.select
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 19, i32 noundef %div30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ce_gpio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ce_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #7
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 55, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i29, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq2515x_set_precharge_current(ptr nocapture noundef readonly %bq2515x, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %pchrgctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pchrgctrl) #7
  %0 = ptrtoint ptr %pchrgctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pchrgctrl, align 4, !annotation !112
  %regmap = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %pchrgctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pchrgctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pchrgctrl, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %. = select i1 %tobool1.not, i32 1250, i32 2500
  %.32 = select i1 %tobool1.not, i32 18750, i32 37500
  call void @__sanitizer_cov_trace_cmp4(i32 %.32, i32 %val)
  %cmp = icmp ult i32 %.32, %val
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ce_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %bq2515x, i32 0, i32 7
  %5 = ptrtoint ptr %ce_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ce_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 55, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %div = udiv i32 %val, %.
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 20, i32 noundef 31, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ce_gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ce_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 0) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i.i35 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 55, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i35, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq2515x_battery_get_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %vbat_msb.i.i = alloca i32, align 4
  %vbat_lsb.i.i = alloca i32, align 4
  %ichg_msb.i = alloca i32, align 4
  %ichg_lsb.i = alloca i32, align 4
  %ichg_reg_code.i = alloca i32, align 4
  %pchrgctrl.i = alloca i32, align 4
  %buvlo.i = alloca i32, align 4
  %vbat_msb.i = alloca i32, align 4
  %vbat_lsb.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !112
  %ac_detect_gpio.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ac_detect_gpio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ac_detect_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %2) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %val.i, align 4
  br label %bq2515x_update_ps_status.exit

if.else.i:                                        ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.bq2515x_update_ps_status.exit_crit_edge, label %bq2515x_update_ps_status.exit.thread

if.else.i.bq2515x_update_ps_status.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_update_ps_status.exit

bq2515x_update_ps_status.exit.thread:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

bq2515x_update_ps_status.exit:                    ; preds = %if.else.i.bq2515x_update_ps_status.exit_crit_edge, %if.then.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %and.i = and i32 %7, 1
  %8 = trunc i32 %and.i to i8
  %mains_online.i = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mains_online.i, align 4, !range !113
  %11 = zext i8 %10 to i32
  %12 = xor i32 %and.i, %11
  store i8 %8, ptr %mains_online.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %bq2515x_update_ps_status.exit.cleanup_crit_edge

bq2515x_update_ps_status.exit.cleanup_crit_edge:  ; preds = %bq2515x_update_ps_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bq2515x_update_ps_status.exit
  %13 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %prop, label %if.end.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 30, label %sw.bb4
    i32 12, label %sw.bb9
    i32 17, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %vbatreg = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %vbatreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbatreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %ichg = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %ichg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ichg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat_msb.i) #7
  %20 = ptrtoint ptr %vbat_msb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %vbat_msb.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat_lsb.i) #7
  %21 = ptrtoint ptr %vbat_lsb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %vbat_lsb.i, align 4, !annotation !112
  %22 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mains_online.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i43 = icmp eq i8 %23, 0
  br i1 %tobool.not.i43, label %if.then.i44, label %sw.bb9.if.end.i_crit_edge

sw.bb9.if.end.i_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i44:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bq2515x_wake_up(ptr noundef %call) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i44, %sw.bb9.if.end.i_crit_edge
  %regmap.i45 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i45, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 66, ptr noundef nonnull %vbat_msb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.bq2515x_get_battery_voltage_now.exit_crit_edge

if.end.i.bq2515x_get_battery_voltage_now.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_voltage_now.exit

if.end4.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i45, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 67, ptr noundef nonnull %vbat_lsb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.bq2515x_get_battery_voltage_now.exit_crit_edge

if.end4.i.bq2515x_get_battery_voltage_now.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_voltage_now.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %vbat_msb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vbat_msb.i, align 4
  %shl.i = shl i32 %29, 8
  %30 = ptrtoint ptr %vbat_lsb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vbat_lsb.i, align 4
  %or.i = or i32 %shl.i, %31
  %mul10.i = mul i32 %or.i, 90
  br label %bq2515x_get_battery_voltage_now.exit

bq2515x_get_battery_voltage_now.exit:             ; preds = %if.end9.i, %if.end4.i.bq2515x_get_battery_voltage_now.exit_crit_edge, %if.end.i.bq2515x_get_battery_voltage_now.exit_crit_edge
  %retval.0.i46 = phi i32 [ %mul10.i, %if.end9.i ], [ %call1.i, %if.end.i.bq2515x_get_battery_voltage_now.exit_crit_edge ], [ %call6.i, %if.end4.i.bq2515x_get_battery_voltage_now.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat_lsb.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat_msb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i46)
  %cmp11 = icmp slt i32 %retval.0.i46, 0
  br i1 %cmp11, label %bq2515x_get_battery_voltage_now.exit.cleanup_crit_edge, label %if.end13

bq2515x_get_battery_voltage_now.exit.cleanup_crit_edge: ; preds = %bq2515x_get_battery_voltage_now.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %bq2515x_get_battery_voltage_now.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i46, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ichg_msb.i) #7
  %33 = ptrtoint ptr %ichg_msb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %ichg_msb.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ichg_lsb.i) #7
  %34 = ptrtoint ptr %ichg_lsb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %ichg_lsb.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ichg_reg_code.i) #7
  %35 = ptrtoint ptr %ichg_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %ichg_reg_code.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pchrgctrl.i) #7
  %36 = ptrtoint ptr %pchrgctrl.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %pchrgctrl.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buvlo.i) #7
  %37 = ptrtoint ptr %buvlo.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %buvlo.i, align 4, !annotation !112
  %38 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mains_online.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i48 = icmp eq i8 %39, 0
  br i1 %tobool.not.i48, label %bq2515x_get_battery_current_now.exit.thread, label %if.end.i51

bq2515x_get_battery_current_now.exit.thread:      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buvlo.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_reg_code.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_lsb.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_msb.i) #7
  br label %cleanup

if.end.i51:                                       ; preds = %sw.bb14
  %regmap.i49 = getelementptr inbounds %struct.bq2515x_device, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i49, align 4
  %call.i50 = call i32 @regmap_read(ptr noundef %41, i32 noundef 70, ptr noundef nonnull %ichg_msb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool1.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i51.bq2515x_get_battery_current_now.exit_crit_edge

if.end.i51.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end3.i:                                        ; preds = %if.end.i51
  %42 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i49, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 71, ptr noundef nonnull %ichg_lsb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.bq2515x_get_battery_current_now.exit_crit_edge

if.end3.i.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end8.i:                                        ; preds = %if.end3.i
  %44 = ptrtoint ptr %ichg_msb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ichg_msb.i, align 4
  %shl.i52 = shl i32 %45, 8
  %46 = ptrtoint ptr %ichg_lsb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ichg_lsb.i, align 4
  %or.i53 = or i32 %shl.i52, %47
  %48 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i49, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 22, ptr noundef nonnull %buvlo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.bq2515x_get_battery_current_now.exit_crit_edge

if.end8.i.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end13.i:                                       ; preds = %if.end8.i
  %50 = ptrtoint ptr %buvlo.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buvlo.i, align 4
  %and.i54 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool14.not.i = icmp eq i32 %and.i54, 0
  %spec.select.i = select i1 %tobool14.not.i, i32 3000000, i32 2800000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat_msb.i.i) #7
  %52 = ptrtoint ptr %vbat_msb.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %vbat_msb.i.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbat_lsb.i.i) #7
  %53 = ptrtoint ptr %vbat_lsb.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %vbat_lsb.i.i, align 4, !annotation !112
  %54 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mains_online.i, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end13.i.if.end.i.i_crit_edge

if.end13.i.if.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bq2515x_wake_up(ptr noundef %call) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end13.i.if.end.i.i_crit_edge
  %56 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i49, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 66, ptr noundef nonnull %vbat_msb.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge

if.end.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_voltage_now.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %58 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i49, align 4
  %call6.i.i = call i32 @regmap_read(ptr noundef %59, i32 noundef 67, ptr noundef nonnull %vbat_lsb.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end4.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge

if.end4.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_voltage_now.exit.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %vbat_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vbat_msb.i.i, align 4
  %shl.i.i = shl i32 %61, 8
  %62 = ptrtoint ptr %vbat_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vbat_lsb.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %63
  %mul10.i.i = mul i32 %or.i.i, 90
  br label %bq2515x_get_battery_voltage_now.exit.i

bq2515x_get_battery_voltage_now.exit.i:           ; preds = %if.end9.i.i, %if.end4.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge, %if.end.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %mul10.i.i, %if.end9.i.i ], [ %call1.i.i, %if.end.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge ], [ %call6.i.i, %if.end4.i.i.bq2515x_get_battery_voltage_now.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat_lsb.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbat_msb.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %spec.select.i)
  %cmp.i = icmp ult i32 %retval.0.i.i, %spec.select.i
  %64 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i49, align 4
  br i1 %cmp.i, label %if.then18.i, label %if.else.i55

if.then18.i:                                      ; preds = %bq2515x_get_battery_voltage_now.exit.i
  %call20.i = call i32 @regmap_read(ptr noundef %65, i32 noundef 20, ptr noundef nonnull %pchrgctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then18.i.bq2515x_get_battery_current_now.exit_crit_edge

if.then18.i.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end23.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %pchrgctrl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pchrgctrl.i, align 4
  %and24.i = and i32 %67, 31
  br label %if.end30.i

if.else.i55:                                      ; preds = %bq2515x_get_battery_voltage_now.exit.i
  %call26.i = call i32 @regmap_read(ptr noundef %65, i32 noundef 19, ptr noundef nonnull %ichg_reg_code.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.else.i55.bq2515x_get_battery_current_now.exit_crit_edge

if.else.i55.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end29.i:                                       ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ichg_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ichg_reg_code.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end29.i, %if.end23.i
  %reg_code.0.i = phi i32 [ %and24.i, %if.end23.i ], [ %69, %if.end29.i ]
  %70 = ptrtoint ptr %regmap.i49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i49, align 4
  %call32.i = call i32 @regmap_read(ptr noundef %71, i32 noundef 20, ptr noundef nonnull %pchrgctrl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end30.i.bq2515x_get_battery_current_now.exit_crit_edge

if.end30.i.bq2515x_get_battery_current_now.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq2515x_get_battery_current_now.exit

if.end35.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %pchrgctrl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pchrgctrl.i, align 4
  %and36.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %spec.select70.i = select i1 %tobool37.not.i, i32 1250, i32 2500
  %mul.i = mul i32 %spec.select70.i, %or.i53
  %div.i = udiv i32 %mul.i, 52429
  %mul40.i = mul i32 %div.i, %reg_code.0.i
  br label %bq2515x_get_battery_current_now.exit

bq2515x_get_battery_current_now.exit:             ; preds = %if.end35.i, %if.end30.i.bq2515x_get_battery_current_now.exit_crit_edge, %if.else.i55.bq2515x_get_battery_current_now.exit_crit_edge, %if.then18.i.bq2515x_get_battery_current_now.exit_crit_edge, %if.end8.i.bq2515x_get_battery_current_now.exit_crit_edge, %if.end3.i.bq2515x_get_battery_current_now.exit_crit_edge, %if.end.i51.bq2515x_get_battery_current_now.exit_crit_edge
  %retval.0.i56 = phi i32 [ %mul40.i, %if.end35.i ], [ %call.i50, %if.end.i51.bq2515x_get_battery_current_now.exit_crit_edge ], [ %call5.i, %if.end3.i.bq2515x_get_battery_current_now.exit_crit_edge ], [ %call10.i, %if.end8.i.bq2515x_get_battery_current_now.exit_crit_edge ], [ %call20.i, %if.then18.i.bq2515x_get_battery_current_now.exit_crit_edge ], [ %call26.i, %if.else.i55.bq2515x_get_battery_current_now.exit_crit_edge ], [ %call32.i, %if.end30.i.bq2515x_get_battery_current_now.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buvlo.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pchrgctrl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_reg_code.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_lsb.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichg_msb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56)
  %cmp16 = icmp slt i32 %retval.0.i56, 0
  br i1 %cmp16, label %bq2515x_get_battery_current_now.exit.cleanup_crit_edge, label %if.end18

bq2515x_get_battery_current_now.exit.cleanup_crit_edge: ; preds = %bq2515x_get_battery_current_now.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %bq2515x_get_battery_current_now.exit
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i56, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %bq2515x_get_battery_current_now.exit.cleanup_crit_edge, %bq2515x_get_battery_current_now.exit.thread, %if.end13, %bq2515x_get_battery_voltage_now.exit.cleanup_crit_edge, %if.end8, %sw.bb4.cleanup_crit_edge, %if.end3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bq2515x_update_ps_status.exit.cleanup_crit_edge, %bq2515x_update_ps_status.exit.thread
  %retval.0 = phi i32 [ %12, %bq2515x_update_ps_status.exit.cleanup_crit_edge ], [ %15, %sw.bb.cleanup_crit_edge ], [ %18, %sw.bb4.cleanup_crit_edge ], [ %retval.0.i46, %bq2515x_get_battery_voltage_now.exit.cleanup_crit_edge ], [ %retval.0.i56, %bq2515x_get_battery_current_now.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end18 ], [ 0, %if.end13 ], [ 0, %if.end8 ], [ 0, %if.end3 ], [ %call2.i, %bq2515x_update_ps_status.exit.thread ], [ -61, %bq2515x_get_battery_current_now.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_bq2515x_charger__288_1164_bq2515x_driver_init6, !1, !"__initcall__kmod_bq2515x_charger__288_1164_bq2515x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1164, i32 1}
!2 = !{ptr @__exitcall_bq2515x_driver_exit, !1, !"__exitcall_bq2515x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1166, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1167, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1168, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1169, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1158, i32 11}
!14 = !{ptr @bq2515x_driver, !15, !"bq2515x_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1156, i32 26}
!16 = !{ptr @bq2515x_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1101, i32 21}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bq2515x_probe._key.2, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1105, i32 21}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1111, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bq2515x_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @bq2515x_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1122, i32 3}
!32 = !{ptr @bq2515x_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bq2515x_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1129, i32 3}
!36 = !{ptr @bq2515x_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bq2515x_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1135, i32 3}
!40 = !{ptr @bq2515x_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bq2515x_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bq25150_regmap_config, !43, !"bq25150_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1059, i32 35}
!44 = !{ptr @bq25150_reg_defaults, !45, !"bq25150_reg_defaults", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 191, i32 33}
!46 = !{ptr @bq25155_regmap_config, !47, !"bq25155_regmap_config", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1070, i32 35}
!48 = !{ptr @bq25155_reg_defaults, !49, !"bq25155_reg_defaults", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 230, i32 33}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 999, i32 11}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1013, i32 10}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1016, i32 3}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bq2515x_read_properties._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @bq2515x_read_properties._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1021, i32 10}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1024, i32 3}
!63 = !{ptr @bq2515x_read_properties._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @bq2515x_read_properties._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1029, i32 7}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1032, i32 3}
!69 = !{ptr @bq2515x_read_properties._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bq2515x_read_properties._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1037, i32 10}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1041, i32 3}
!75 = !{ptr @bq2515x_read_properties._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bq2515x_read_properties._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 909, i32 12}
!79 = !{ptr @bq2515x_mains_desc, !80, !"bq2515x_mains_desc", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 908, i32 39}
!81 = !{ptr @bq2515x_mains_properties, !82, !"bq2515x_mains_properties", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 896, i32 41}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 826, i32 17}
!85 = !{ptr @bq2515x_ilim_lvl_values, !86, !"bq2515x_ilim_lvl_values", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 132, i32 18}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 919, i32 12}
!89 = !{ptr @bq2515x_battery_desc, !90, !"bq2515x_battery_desc", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 918, i32 39}
!91 = !{ptr @bq2515x_battery_properties, !92, !"bq2515x_battery_properties", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 889, i32 41}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 962, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bq2515x_hw_init._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @bq2515x_hw_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @bq2515x_of_match, !100, !"bq2515x_of_match", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1149, i32 34}
!101 = !{ptr @bq2515x_i2c_ids, !102, !"bq2515x_i2c_ids", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bq2515x_charger.c", i32 1142, i32 35}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i8 0, i8 2}
