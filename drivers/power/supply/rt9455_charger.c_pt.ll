; ModuleID = '/llk/IR_all_yes/drivers/power/supply/rt9455_charger.c_pt.bc'
source_filename = "../drivers/power/supply/rt9455_charger.c"
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
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.rt9455_info = type { ptr, ptr, [55 x ptr], ptr, ptr, %struct.notifier_block, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_rt9455_charger__309_1752_rt9455_driver_init6 = internal global ptr @rt9455_driver_init, section ".initcall6.init", align 4
@rt9455_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt9455_probe, ptr @rt9455_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt9455_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt9455_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt9455_driver_exit = internal global ptr @rt9455_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file310 = internal constant [56 x i8] c"rt9455_charger.file=drivers/power/supply/rt9455_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [27 x i8] c"rt9455_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [72 x i8] c"rt9455_charger.author=Anda-Maria Nicolae <anda-maria.nicolae@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [57 x i8] c"rt9455_charger.description=Richtek RT9455 Charger Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt9455-charger\00", [17 x i8] zeroinitializer }, align 32
@rt9455_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt9455\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt9455_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt9455-charger\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt9455_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt9455_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/rt9455_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr = internal global ptr @rt9455_probe._entry, section ".printk_index", align 4
@rt9455_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt9455_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @rt9455_is_writeable_reg, ptr null, ptr @rt9455_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rt9455_charger:1613:(&rt9455_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@rt9455_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize register map\0A\00", [61 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.9 = internal global ptr @rt9455_probe._entry.7, section ".printk_index", align 4
@rt9455_reg_fields = internal constant { [55 x %struct.reg_field], [276 x i8] } { [55 x %struct.reg_field] [%struct.reg_field { i32 0, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 2, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 4, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 3, i32 3, i32 0, i32 0 }], [276 x i8] zeroinitializer }, align 32
@rt9455_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate regmap field = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.12 = internal global ptr @rt9455_probe._entry.10, section ".printk_index", align 4
@rt9455_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to discover charger\0A\00", [36 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.15 = internal global ptr @rt9455_probe._entry.13, section ".printk_index", align 4
@rt9455_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get USB transceiver\0A\00", [33 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.18 = internal global ptr @rt9455_probe._entry.16, section ".printk_index", align 4
@rt9455_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register USB notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.21 = internal global ptr @rt9455_probe._entry.19, section ".printk_index", align 4
@rt9455_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&info->pwr_rdy_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@rt9455_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&info->pwr_rdy_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@rt9455_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(work_completion)(&(&info->max_charging_time_work)->work)\00", [38 x i8] zeroinitializer }, align 32
@rt9455_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&(&info->max_charging_time_work)->timer\00", [56 x i8] zeroinitializer }, align 32
@rt9455_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&info->batt_presence_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@rt9455_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&info->batt_presence_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@rt9455_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.129], [28 x i8] zeroinitializer }, align 32
@rt9455_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register IRQ handler\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.35 = internal global ptr @rt9455_probe._entry.33, section ".printk_index", align 4
@rt9455_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set charger to its default values\0A\00", [51 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.38 = internal global ptr @rt9455_probe._entry.36, section ".printk_index", align 4
@rt9455_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @rt9455_charger_properties, i32 12, ptr @rt9455_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rt9455_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 1684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register charger\0A\00", [36 x i8] zeroinitializer }, align 32
@rt9455_probe._entry_ptr.41 = internal global ptr @rt9455_probe._entry.39, section ".printk_index", align 4
@rt9455_discover_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No support for either device tree or ACPI\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt9455_discover_charger\00", [40 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry_ptr = internal global ptr @rt9455_discover_charger._entry, section ".printk_index", align 4
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"richtek,output-charge-current\00", [34 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error: missing \22output-charge-current\22 property\0A\00", [47 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry_ptr.47 = internal global ptr @rt9455_discover_charger._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"richtek,end-of-charge-percentage\00", [63 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.3, i32 1208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error: missing \22end-of-charge-percentage\22 property\0A\00", [44 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry_ptr.51 = internal global ptr @rt9455_discover_charger._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"richtek,battery-regulation-voltage\00", [61 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Error: missing \22battery-regulation-voltage\22 property\0A\00", [42 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry_ptr.55 = internal global ptr @rt9455_discover_charger._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"richtek,boost-output-voltage\00", [35 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.3, i32 1223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: missing \22boost-output-voltage\22 property\0A\00", [48 x i8] zeroinitializer }, align 32
@rt9455_discover_charger._entry_ptr.59 = internal global ptr @rt9455_discover_charger._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"richtek,min-input-voltage-regulation\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"richtek,avg-input-current-regulation\00", [59 x i8] zeroinitializer }, align 32
@rt9455_usb_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read OPA_MODE value\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt9455_usb_event\00", [47 x i8] zeroinitializer }, align 32
@rt9455_usb_event._entry_ptr = internal global ptr @rt9455_usb_event._entry, section ".printk_index", align 4
@rt9455_usb_event._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 1422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read IAICR value\0A\00", [36 x i8] zeroinitializer }, align 32
@rt9455_usb_event._entry_ptr.66 = internal global ptr @rt9455_usb_event._entry.64, section ".printk_index", align 4
@rt9455_usb_event.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.63, ptr @.str.3, ptr @.str.68, i8 1, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt9455_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Received USB event %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.3, i32 1437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown USB event\0A\00", [45 x i8] zeroinitializer }, align 32
@rt9455_usb_event._entry_ptr.71 = internal global ptr @rt9455_usb_event._entry.69, section ".printk_index", align 4
@rt9455_usb_event_none._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to set VOREG before entering charge mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt9455_usb_event_none\00", [42 x i8] zeroinitializer }, align 32
@rt9455_usb_event_none._entry_ptr = internal global ptr @rt9455_usb_event_none._entry, section ".printk_index", align 4
@rt9455_usb_event_none.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 1, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"USB_EVENT_NONE received, therefore the charger goes into charge mode\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_usb_event_none._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.3, i32 1262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set charger in charge mode\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_usb_event_none._entry_ptr.77 = internal global ptr @rt9455_usb_event_none._entry.75, section ".printk_index", align 4
@rt9455_usb_event_none.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.73, ptr @.str.3, ptr @.str.78, i8 1, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"USB_EVENT_NONE received, therefore IAICR is set to its minimum value\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_usb_event_none._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.3, i32 1272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set IAICR value\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_usb_event_none._entry_ptr.81 = internal global ptr @rt9455_usb_event_none._entry.79, section ".printk_index", align 4
@rt9455_voreg_values = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 3500000, i32 3520000, i32 3540000, i32 3560000, i32 3580000, i32 3600000, i32 3620000, i32 3640000, i32 3660000, i32 3680000, i32 3700000, i32 3720000, i32 3740000, i32 3760000, i32 3780000, i32 3800000, i32 3820000, i32 3840000, i32 3860000, i32 3880000, i32 3900000, i32 3920000, i32 3940000, i32 3960000, i32 3980000, i32 4000000, i32 4020000, i32 4040000, i32 4060000, i32 4080000, i32 4100000, i32 4120000, i32 4140000, i32 4160000, i32 4180000, i32 4200000, i32 4220000, i32 4240000, i32 4260000, i32 4280000, i32 4300000, i32 4330000, i32 4350000, i32 4370000, i32 4390000, i32 4410000, i32 4430000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000, i32 4450000], [64 x i8] zeroinitializer }, align 32
@rt9455_set_voreg_before_charge_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set VOREG value\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rt9455_set_voreg_before_charge_mode\00", [60 x i8] zeroinitializer }, align 32
@rt9455_set_voreg_before_charge_mode._entry_ptr = internal global ptr @rt9455_set_voreg_before_charge_mode._entry, section ".printk_index", align 4
@rt9455_usb_event_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.84, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt9455_usb_event_vbus\00", [42 x i8] zeroinitializer }, align 32
@rt9455_usb_event_vbus._entry_ptr = internal global ptr @rt9455_usb_event_vbus._entry, section ".printk_index", align 4
@rt9455_usb_event_vbus.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 1, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"USB_EVENT_VBUS received, therefore the charger goes into charge mode\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_usb_event_vbus._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.84, ptr @.str.3, i32 1302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event_vbus._entry_ptr.87 = internal global ptr @rt9455_usb_event_vbus._entry.86, section ".printk_index", align 4
@rt9455_usb_event_vbus.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 1, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"USB_EVENT_VBUS received, therefore IAICR is set to 500 mA\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_usb_event_vbus._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.84, ptr @.str.3, i32 1312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event_vbus._entry_ptr.90 = internal global ptr @rt9455_usb_event_vbus._entry.89, section ".printk_index", align 4
@rt9455_usb_event_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to set boost output voltage before entering boost mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt9455_usb_event_id\00", [44 x i8] zeroinitializer }, align 32
@rt9455_usb_event_id._entry_ptr = internal global ptr @rt9455_usb_event_id._entry, section ".printk_index", align 4
@rt9455_usb_event_id.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 1, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"USB_EVENT_ID received, therefore the charger goes into boost mode\0A\00", [61 x i8] zeroinitializer }, align 32
@rt9455_usb_event_id._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.3, i32 1342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set charger in boost mode\0A\00", [59 x i8] zeroinitializer }, align 32
@rt9455_usb_event_id._entry_ptr.96 = internal global ptr @rt9455_usb_event_id._entry.94, section ".printk_index", align 4
@rt9455_usb_event_id.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.92, ptr @.str.3, ptr @.str.97, i8 1, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"USB_EVENT_ID received, therefore IAICR is set to its minimum value\0A\00", [60 x i8] zeroinitializer }, align 32
@rt9455_usb_event_id._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.92, ptr @.str.3, i32 1352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event_id._entry_ptr.99 = internal global ptr @rt9455_usb_event_id._entry.98, section ".printk_index", align 4
@rt9455_boost_voltage_values = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 4425000, i32 4450000, i32 4475000, i32 4500000, i32 4525000, i32 4550000, i32 4575000, i32 4600000, i32 4625000, i32 4650000, i32 4675000, i32 4700000, i32 4725000, i32 4750000, i32 4775000, i32 4800000, i32 4825000, i32 4850000, i32 4875000, i32 4900000, i32 4925000, i32 4950000, i32 4975000, i32 5000000, i32 5025000, i32 5050000, i32 5075000, i32 5100000, i32 5125000, i32 5150000, i32 5175000, i32 5200000, i32 5225000, i32 5250000, i32 5275000, i32 5300000, i32 5325000, i32 5350000, i32 5375000, i32 5400000, i32 5425000, i32 5450000, i32 5475000, i32 5500000, i32 5525000, i32 5550000, i32 5575000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000, i32 5600000], [64 x i8] zeroinitializer }, align 32
@rt9455_set_boost_voltage_before_boost_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set boost output voltage value\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rt9455_set_boost_voltage_before_boost_mode\00", [53 x i8] zeroinitializer }, align 32
@rt9455_set_boost_voltage_before_boost_mode._entry_ptr = internal global ptr @rt9455_set_boost_voltage_before_boost_mode._entry, section ".printk_index", align 4
@rt9455_usb_event_charger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.102, ptr @.str.3, i32 1369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt9455_usb_event_charger\00", [39 x i8] zeroinitializer }, align 32
@rt9455_usb_event_charger._entry_ptr = internal global ptr @rt9455_usb_event_charger._entry, section ".printk_index", align 4
@rt9455_usb_event_charger.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 1, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"USB_EVENT_CHARGER received, therefore the charger goes into charge mode\0A\00", [55 x i8] zeroinitializer }, align 32
@rt9455_usb_event_charger._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.102, ptr @.str.3, i32 1382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event_charger._entry_ptr.105 = internal global ptr @rt9455_usb_event_charger._entry.104, section ".printk_index", align 4
@rt9455_usb_event_charger.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.102, ptr @.str.3, ptr @.str.106, i8 1, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"USB_EVENT_CHARGER received, therefore IAICR is set to no current limit\0A\00", [56 x i8] zeroinitializer }, align 32
@rt9455_usb_event_charger._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.102, ptr @.str.3, i32 1392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_usb_event_charger._entry_ptr.108 = internal global ptr @rt9455_usb_event_charger._entry.107, section ".printk_index", align 4
@rt9455_pwr_rdy_work_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 1453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read PWR_RDY bit\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt9455_pwr_rdy_work_callback\00", [35 x i8] zeroinitializer }, align 32
@rt9455_pwr_rdy_work_callback._entry_ptr = internal global ptr @rt9455_pwr_rdy_work_callback._entry, section ".printk_index", align 4
@rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.110, ptr @.str.3, ptr @.str.111, i8 1, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Charger disconnected from power source\0A\00", [56 x i8] zeroinitializer }, align 32
@rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.110, ptr @.str.3, ptr @.str.112, i8 1, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Charger connected to power source\0A\00", [61 x i8] zeroinitializer }, align 32
@rt9455_pwr_rdy_work_callback._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.110, ptr @.str.3, i32 1466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable charging\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_pwr_rdy_work_callback._entry_ptr.115 = internal global ptr @rt9455_pwr_rdy_work_callback._entry.113, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt9455_max_charging_time_work_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 1488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"Battery has been charging for at least 6 hours and is not yet fully charged. Battery is dead, therefore charging is disabled.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rt9455_max_charging_time_work_callback\00", [57 x i8] zeroinitializer }, align 32
@rt9455_max_charging_time_work_callback._entry_ptr = internal global ptr @rt9455_max_charging_time_work_callback._entry, section ".printk_index", align 4
@rt9455_max_charging_time_work_callback._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.3, i32 1492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to disable charging\0A\00", [36 x i8] zeroinitializer }, align 32
@rt9455_max_charging_time_work_callback._entry_ptr.120 = internal global ptr @rt9455_max_charging_time_work_callback._entry.118, section ".printk_index", align 4
@rt9455_batt_presence_work_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read IRQ1 register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rt9455_batt_presence_work_callback\00", [61 x i8] zeroinitializer }, align 32
@rt9455_batt_presence_work_callback._entry_ptr = internal global ptr @rt9455_batt_presence_work_callback._entry, section ".printk_index", align 4
@rt9455_batt_presence_work_callback._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 1524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read MASK1 register\0A\00", [33 x i8] zeroinitializer }, align 32
@rt9455_batt_presence_work_callback._entry_ptr.125 = internal global ptr @rt9455_batt_presence_work_callback._entry.123, section ".printk_index", align 4
@rt9455_batt_presence_work_callback._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.3, i32 1532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to unmask BATAB interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@rt9455_batt_presence_work_callback._entry_ptr.128 = internal global ptr @rt9455_batt_presence_work_callback._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Interrupt is not for RT9455 charger\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt9455_irq_handler_thread\00", [38 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry_ptr = internal global ptr @rt9455_irq_handler_thread._entry, section ".printk_index", align 4
@rt9455_irq_handler_thread._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read STAT bits\0A\00", [38 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry_ptr.134 = internal global ptr @rt9455_irq_handler_thread._entry.132, section ".printk_index", align 4
@rt9455_irq_handler_thread.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.131, ptr @.str.3, ptr @.str.135, i8 1, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Charger status is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.3, i32 1153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to handle IRQ1 register\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry_ptr.138 = internal global ptr @rt9455_irq_handler_thread._entry.136, section ".printk_index", align 4
@rt9455_irq_handler_thread._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.131, ptr @.str.3, i32 1160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to handle IRQ2 register\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry_ptr.141 = internal global ptr @rt9455_irq_handler_thread._entry.139, section ".printk_index", align 4
@rt9455_irq_handler_thread._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.131, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to handle IRQ3 register\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_thread._entry_ptr.144 = internal global ptr @rt9455_irq_handler_thread._entry.142, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.145, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rt9455_irq_handler_check_irq1_register\00", [57 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr = internal global ptr @rt9455_irq_handler_check_irq1_register._entry, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.145, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.147 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.146, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.145, ptr @.str.3, i32 873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Thermal shutdown fault occurred\0A\00", [63 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.150 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.148, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.145, ptr @.str.3, i32 878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Overvoltage input occurred\0A\00", [36 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.153 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.151, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.145, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Battery absence occurred\0A\00", [38 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.156 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.154, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.145, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to mask BATAB interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.159 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.157, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.145, ptr @.str.3, i32 898, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read MASK2 register\0A\00", [33 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.162 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.160, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.145, ptr @.str.3, i32 906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to unmask CHTERMI interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.165 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.163, section ".printk_index", align 4
@rt9455_irq_handler_check_irq1_register._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.145, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to unmask CHRCHGI interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq1_register._entry_ptr.168 = internal global ptr @rt9455_irq_handler_check_irq1_register._entry.166, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.3, i32 955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read IRQ2 register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rt9455_irq_handler_check_irq2_register\00", [57 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr = internal global ptr @rt9455_irq_handler_check_irq2_register._entry, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.170, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.172 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.171, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.170, ptr @.str.3, ptr @.str.173, i8 0, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Charger fault occurred\0A\00", [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.3, i32 983, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Battery OVP occurred\0A\00", [42 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.176 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.174, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.170, ptr @.str.3, ptr @.str.177, i8 0, i8 -10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Charge terminated\0A\00", [45 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.170, ptr @.str.3, i32 993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to mask CHTERMI interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.180 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.178, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.170, ptr @.str.3, ptr @.str.181, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Recharge request\0A\00", [46 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.170, ptr @.str.3, i32 1011, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.183 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.182, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.170, ptr @.str.3, i32 1018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.185 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.184, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.170, ptr @.str.3, i32 1038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Charger fault. 32 mins timeout occurred\0A\00", [55 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.188 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.186, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.170, ptr @.str.3, i32 1043, ptr @.str.191, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Charger warning. Thermal regulation loop active\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq2_register._entry_ptr.192 = internal global ptr @rt9455_irq_handler_check_irq2_register._entry.189, section ".printk_index", align 4
@rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.170, ptr @.str.3, ptr @.str.193, i8 1, i8 6, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Charger warning. Input voltage MIVR loop active\0A\00", [47 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read IRQ3 register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rt9455_irq_handler_check_irq3_register\00", [57 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr = internal global ptr @rt9455_irq_handler_check_irq3_register._entry, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read MASK3 register\0A\00", [33 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.198 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.196, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.195, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Boost fault. Overvoltage input occurred\0A\00", [55 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.201 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.199, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.195, ptr @.str.3, i32 1082, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Boost fault. Overload\0A\00", [41 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.204 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.202, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.195, ptr @.str.3, i32 1086, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Boost fault. Battery voltage too low\0A\00", [58 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.207 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.205, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.195, ptr @.str.3, i32 1090, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Boost fault. 32 seconds timeout occurred.\0A\00", [53 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.210 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.208, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.195, ptr @.str.3, i32 1095, ptr @.str.213, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Boost fault occurred, therefore the charger goes into charge mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.214 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.211, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.195, ptr @.str.3, i32 1098, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.216 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.215, section ".printk_index", align 4
@rt9455_irq_handler_check_irq3_register._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.195, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_irq_handler_check_irq3_register._entry_ptr.218 = internal global ptr @rt9455_irq_handler_check_irq3_register._entry.217, section ".printk_index", align 4
@rt9455_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Power On Reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt9455_hw_init\00", [17 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr = internal global ptr @rt9455_hw_init._entry, section ".printk_index", align 4
@rt9455_hw_init._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to set TE bit\0A\00", [42 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.223 = internal global ptr @rt9455_hw_init._entry.221, section ".printk_index", align 4
@rt9455_hw_init._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.220, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set TE_SHDN_EN bit\0A\00", [34 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.226 = internal global ptr @rt9455_hw_init._entry.224, section ".printk_index", align 4
@rt9455_hw_init._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.220, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set BATD_EN bit\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.229 = internal global ptr @rt9455_hw_init._entry.227, section ".printk_index", align 4
@rt9455_hw_init._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.220, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable Safety Timer\0A\00", [32 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.232 = internal global ptr @rt9455_hw_init._entry.230, section ".printk_index", align 4
@rt9455_ichrg_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 500000, i32 650000, i32 800000, i32 950000, i32 1100000, i32 1250000, i32 1400000, i32 1550000], [32 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.220, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set ICHRG value\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.235 = internal global ptr @rt9455_hw_init._entry.233, section ".printk_index", align 4
@rt9455_ieoc_percentage_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 30, i32 20, i32 30], [16 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.220, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set IEOC Percentage value\0A\00", [59 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.238 = internal global ptr @rt9455_hw_init._entry.236, section ".printk_index", align 4
@rt9455_hw_init._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.220, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.240 = internal global ptr @rt9455_hw_init._entry.239, section ".printk_index", align 4
@rt9455_hw_init._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.220, ptr @.str.3, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set VMREG value\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.243 = internal global ptr @rt9455_hw_init._entry.241, section ".printk_index", align 4
@rt9455_hw_init._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.220, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set MIVR value\0A\00", [38 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.246 = internal global ptr @rt9455_hw_init._entry.244, section ".printk_index", align 4
@rt9455_hw_init._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.220, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.248 = internal global ptr @rt9455_hw_init._entry.247, section ".printk_index", align 4
@rt9455_hw_init._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.220, ptr @.str.3, i32 780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set IAICR_INT bit\0A\00", [35 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.251 = internal global ptr @rt9455_hw_init._entry.249, section ".printk_index", align 4
@rt9455_hw_init._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.220, ptr @.str.3, i32 791, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to mask CHMIVRI interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@rt9455_hw_init._entry_ptr.254 = internal global ptr @rt9455_hw_init._entry.252, section ".printk_index", align 4
@rt9455_register_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set RST bit\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt9455_register_reset\00", [42 x i8] zeroinitializer }, align 32
@rt9455_register_reset._entry_ptr = internal global ptr @rt9455_register_reset._entry, section ".printk_index", align 4
@rt9455_register_reset._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read RST bit\0A\00", [40 x i8] zeroinitializer }, align 32
@rt9455_register_reset._entry_ptr.259 = internal global ptr @rt9455_register_reset._entry.257, section ".printk_index", align 4
@rt9455_charger_properties = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 2, i32 3, i32 4, i32 29, i32 30, i32 31, i32 32, i32 66, i32 68, i32 73, i32 74], [48 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RT9455\00", [25 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Richtek\00", [24 x i8] zeroinitializer }, align 32
@rt9455_charger_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.262, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt9455_charger_get_status\00", [38 x i8] zeroinitializer }, align 32
@rt9455_charger_get_status._entry_ptr = internal global ptr @rt9455_charger_get_status._entry, section ".printk_index", align 4
@rt9455_charger_get_status._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.262, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_charger_get_status._entry_ptr.264 = internal global ptr @rt9455_charger_get_status._entry.263, section ".printk_index", align 4
@rt9455_charger_get_health._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.265, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt9455_charger_get_health\00", [38 x i8] zeroinitializer }, align 32
@rt9455_charger_get_health._entry_ptr = internal global ptr @rt9455_charger_get_health._entry, section ".printk_index", align 4
@rt9455_charger_get_health._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.265, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_charger_get_health._entry_ptr.267 = internal global ptr @rt9455_charger_get_health._entry.266, section ".printk_index", align 4
@rt9455_charger_get_health._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.265, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_charger_get_health._entry_ptr.269 = internal global ptr @rt9455_charger_get_health._entry.268, section ".printk_index", align 4
@rt9455_charger_get_health._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.265, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rt9455_charger_get_health._entry_ptr.271 = internal global ptr @rt9455_charger_get_health._entry.270, section ".printk_index", align 4
@rt9455_charger_get_battery_presence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.273, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read BATAB bit\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rt9455_charger_get_battery_presence\00", [60 x i8] zeroinitializer }, align 32
@rt9455_charger_get_battery_presence._entry_ptr = internal global ptr @rt9455_charger_get_battery_presence._entry, section ".printk_index", align 4
@rt9455_charger_get_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.274, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt9455_charger_get_online\00", [38 x i8] zeroinitializer }, align 32
@rt9455_charger_get_online._entry_ptr = internal global ptr @rt9455_charger_get_online._entry, section ".printk_index", align 4
@rt9455_charger_get_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ICHRG value\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rt9455_charger_get_current\00", [37 x i8] zeroinitializer }, align 32
@rt9455_charger_get_current._entry_ptr = internal global ptr @rt9455_charger_get_current._entry, section ".printk_index", align 4
@rt9455_charger_get_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read VOREG value\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rt9455_charger_get_voltage\00", [37 x i8] zeroinitializer }, align 32
@rt9455_charger_get_voltage._entry_ptr = internal global ptr @rt9455_charger_get_voltage._entry, section ".printk_index", align 4
@rt9455_charger_get_term_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.279, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt9455_charger_get_term_current\00", [32 x i8] zeroinitializer }, align 32
@rt9455_charger_get_term_current._entry_ptr = internal global ptr @rt9455_charger_get_term_current._entry, section ".printk_index", align 4
@rt9455_charger_get_term_current._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read IEOC value\0A\00", [37 x i8] zeroinitializer }, align 32
@rt9455_charger_get_term_current._entry_ptr.282 = internal global ptr @rt9455_charger_get_term_current._entry.280, section ".printk_index", align 4
@rt9455_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.283, ptr @.str.3, i32 1708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt9455_remove\00", [18 x i8] zeroinitializer }, align 32
@rt9455_remove._entry_ptr = internal global ptr @rt9455_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.285 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 2, i64 3, i64 4, i64 29, i64 30, i64 31, i64 32, i64 66, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.286 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"rt9455_driver\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1742, i32 26 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1747, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant [16 x i8] c"rt9455_of_match\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1728, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c"rt9455_i2c_id_table\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1722, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1602, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [21 x i8] c"rt9455_regmap_config\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1575, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1612, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1615, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"rt9455_reg_fields\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 95, i32 31 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1624, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1633, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1640, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1645, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1655, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1656, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1658, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [27 x i8] c"rt9455_charger_supplied_to\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 348, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1671, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1677, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c"rt9455_charger_desc\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1542, i32 39 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1684, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1191, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1198, i32 38 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1201, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1205, i32 38 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1208, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1213, i32 12 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1216, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1220, i32 38 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1223, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1231, i32 32 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1233, i32 32 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1415, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1422, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1426, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1437, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1249, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1258, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1262, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1267, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1272, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant [20 x i8] c"rt9455_voreg_values\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 185, i32 18 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 843, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1289, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1298, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1302, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1307, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1312, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1329, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1338, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1342, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1347, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1352, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant [28 x i8] c"rt9455_boost_voltage_values\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 201, i32 18 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 817, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1369, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1378, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1382, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1387, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1392, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1453, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1458, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1462, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1466, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1488, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1492, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1505, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1524, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1532, i32 5 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 349, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1128, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1134, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1137, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1153, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1160, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1166, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 862, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 868, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 873, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 878, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 883, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 891, i32 5 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 898, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 906, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 915, i32 5 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 955, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 961, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 966, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 983, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 987, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 993, i32 6 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1007, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1011, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1018, i32 5 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1038, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1042, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1047, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1067, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1073, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1078, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1082, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1086, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1090, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1095, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1098, i32 4 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1104, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 659, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 666, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 673, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 683, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 700, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant [20 x i8] c"rt9455_ichrg_values\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 176, i32 18 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 709, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant [30 x i8] c"rt9455_ieoc_percentage_values\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 219, i32 18 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 719, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 729, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 740, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 755, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 770, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 780, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 791, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 305, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 316, i32 4 }
@___asan_gen_.962 = private unnamed_addr constant [26 x i8] c"rt9455_charger_properties\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 333, i32 35 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 640, i32 17 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 643, i32 17 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 361, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 376, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 415, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 434, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 449, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 472, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 492, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 513, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 533, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 563, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 593, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 602, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1044 = private constant [41 x i8] c"../drivers/power/supply/rt9455_charger.c\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1044, i32 1708, i32 3 }
@llvm.compiler.used = appending global [357 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_rt9455_driver_exit, ptr @__initcall__kmod_rt9455_charger__309_1752_rt9455_driver_init6, ptr @rt9455_batt_presence_work_callback._entry, ptr @rt9455_batt_presence_work_callback._entry.123, ptr @rt9455_batt_presence_work_callback._entry.126, ptr @rt9455_batt_presence_work_callback._entry_ptr, ptr @rt9455_batt_presence_work_callback._entry_ptr.125, ptr @rt9455_batt_presence_work_callback._entry_ptr.128, ptr @rt9455_charger_get_battery_presence._entry, ptr @rt9455_charger_get_battery_presence._entry_ptr, ptr @rt9455_charger_get_current._entry, ptr @rt9455_charger_get_current._entry_ptr, ptr @rt9455_charger_get_health._entry, ptr @rt9455_charger_get_health._entry.266, ptr @rt9455_charger_get_health._entry.268, ptr @rt9455_charger_get_health._entry.270, ptr @rt9455_charger_get_health._entry_ptr, ptr @rt9455_charger_get_health._entry_ptr.267, ptr @rt9455_charger_get_health._entry_ptr.269, ptr @rt9455_charger_get_health._entry_ptr.271, ptr @rt9455_charger_get_online._entry, ptr @rt9455_charger_get_online._entry_ptr, ptr @rt9455_charger_get_status._entry, ptr @rt9455_charger_get_status._entry.263, ptr @rt9455_charger_get_status._entry_ptr, ptr @rt9455_charger_get_status._entry_ptr.264, ptr @rt9455_charger_get_term_current._entry, ptr @rt9455_charger_get_term_current._entry.280, ptr @rt9455_charger_get_term_current._entry_ptr, ptr @rt9455_charger_get_term_current._entry_ptr.282, ptr @rt9455_charger_get_voltage._entry, ptr @rt9455_charger_get_voltage._entry_ptr, ptr @rt9455_discover_charger._entry, ptr @rt9455_discover_charger._entry.45, ptr @rt9455_discover_charger._entry.49, ptr @rt9455_discover_charger._entry.53, ptr @rt9455_discover_charger._entry.57, ptr @rt9455_discover_charger._entry_ptr, ptr @rt9455_discover_charger._entry_ptr.47, ptr @rt9455_discover_charger._entry_ptr.51, ptr @rt9455_discover_charger._entry_ptr.55, ptr @rt9455_discover_charger._entry_ptr.59, ptr @rt9455_driver_exit, ptr @rt9455_hw_init._entry, ptr @rt9455_hw_init._entry.221, ptr @rt9455_hw_init._entry.224, ptr @rt9455_hw_init._entry.227, ptr @rt9455_hw_init._entry.230, ptr @rt9455_hw_init._entry.233, ptr @rt9455_hw_init._entry.236, ptr @rt9455_hw_init._entry.239, ptr @rt9455_hw_init._entry.241, ptr @rt9455_hw_init._entry.244, ptr @rt9455_hw_init._entry.247, ptr @rt9455_hw_init._entry.249, ptr @rt9455_hw_init._entry.252, ptr @rt9455_hw_init._entry_ptr, ptr @rt9455_hw_init._entry_ptr.223, ptr @rt9455_hw_init._entry_ptr.226, ptr @rt9455_hw_init._entry_ptr.229, ptr @rt9455_hw_init._entry_ptr.232, ptr @rt9455_hw_init._entry_ptr.235, ptr @rt9455_hw_init._entry_ptr.238, ptr @rt9455_hw_init._entry_ptr.240, ptr @rt9455_hw_init._entry_ptr.243, ptr @rt9455_hw_init._entry_ptr.246, ptr @rt9455_hw_init._entry_ptr.248, ptr @rt9455_hw_init._entry_ptr.251, ptr @rt9455_hw_init._entry_ptr.254, ptr @rt9455_irq_handler_check_irq1_register._entry, ptr @rt9455_irq_handler_check_irq1_register._entry.146, ptr @rt9455_irq_handler_check_irq1_register._entry.148, ptr @rt9455_irq_handler_check_irq1_register._entry.151, ptr @rt9455_irq_handler_check_irq1_register._entry.154, ptr @rt9455_irq_handler_check_irq1_register._entry.157, ptr @rt9455_irq_handler_check_irq1_register._entry.160, ptr @rt9455_irq_handler_check_irq1_register._entry.163, ptr @rt9455_irq_handler_check_irq1_register._entry.166, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.147, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.150, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.153, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.156, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.159, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.162, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.165, ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.168, ptr @rt9455_irq_handler_check_irq2_register._entry, ptr @rt9455_irq_handler_check_irq2_register._entry.171, ptr @rt9455_irq_handler_check_irq2_register._entry.174, ptr @rt9455_irq_handler_check_irq2_register._entry.178, ptr @rt9455_irq_handler_check_irq2_register._entry.182, ptr @rt9455_irq_handler_check_irq2_register._entry.184, ptr @rt9455_irq_handler_check_irq2_register._entry.186, ptr @rt9455_irq_handler_check_irq2_register._entry.189, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.172, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.176, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.180, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.183, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.185, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.188, ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.192, ptr @rt9455_irq_handler_check_irq3_register._entry, ptr @rt9455_irq_handler_check_irq3_register._entry.196, ptr @rt9455_irq_handler_check_irq3_register._entry.199, ptr @rt9455_irq_handler_check_irq3_register._entry.202, ptr @rt9455_irq_handler_check_irq3_register._entry.205, ptr @rt9455_irq_handler_check_irq3_register._entry.208, ptr @rt9455_irq_handler_check_irq3_register._entry.211, ptr @rt9455_irq_handler_check_irq3_register._entry.215, ptr @rt9455_irq_handler_check_irq3_register._entry.217, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.198, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.201, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.204, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.207, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.210, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.214, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.216, ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.218, ptr @rt9455_irq_handler_thread._entry, ptr @rt9455_irq_handler_thread._entry.132, ptr @rt9455_irq_handler_thread._entry.136, ptr @rt9455_irq_handler_thread._entry.139, ptr @rt9455_irq_handler_thread._entry.142, ptr @rt9455_irq_handler_thread._entry_ptr, ptr @rt9455_irq_handler_thread._entry_ptr.134, ptr @rt9455_irq_handler_thread._entry_ptr.138, ptr @rt9455_irq_handler_thread._entry_ptr.141, ptr @rt9455_irq_handler_thread._entry_ptr.144, ptr @rt9455_max_charging_time_work_callback._entry, ptr @rt9455_max_charging_time_work_callback._entry.118, ptr @rt9455_max_charging_time_work_callback._entry_ptr, ptr @rt9455_max_charging_time_work_callback._entry_ptr.120, ptr @rt9455_probe._entry, ptr @rt9455_probe._entry.10, ptr @rt9455_probe._entry.13, ptr @rt9455_probe._entry.16, ptr @rt9455_probe._entry.19, ptr @rt9455_probe._entry.33, ptr @rt9455_probe._entry.36, ptr @rt9455_probe._entry.39, ptr @rt9455_probe._entry.7, ptr @rt9455_probe._entry_ptr, ptr @rt9455_probe._entry_ptr.12, ptr @rt9455_probe._entry_ptr.15, ptr @rt9455_probe._entry_ptr.18, ptr @rt9455_probe._entry_ptr.21, ptr @rt9455_probe._entry_ptr.35, ptr @rt9455_probe._entry_ptr.38, ptr @rt9455_probe._entry_ptr.41, ptr @rt9455_probe._entry_ptr.9, ptr @rt9455_pwr_rdy_work_callback._entry, ptr @rt9455_pwr_rdy_work_callback._entry.113, ptr @rt9455_pwr_rdy_work_callback._entry_ptr, ptr @rt9455_pwr_rdy_work_callback._entry_ptr.115, ptr @rt9455_register_reset._entry, ptr @rt9455_register_reset._entry.257, ptr @rt9455_register_reset._entry_ptr, ptr @rt9455_register_reset._entry_ptr.259, ptr @rt9455_remove._entry, ptr @rt9455_remove._entry_ptr, ptr @rt9455_set_boost_voltage_before_boost_mode._entry, ptr @rt9455_set_boost_voltage_before_boost_mode._entry_ptr, ptr @rt9455_set_voreg_before_charge_mode._entry, ptr @rt9455_set_voreg_before_charge_mode._entry_ptr, ptr @rt9455_usb_event._entry, ptr @rt9455_usb_event._entry.64, ptr @rt9455_usb_event._entry.69, ptr @rt9455_usb_event._entry_ptr, ptr @rt9455_usb_event._entry_ptr.66, ptr @rt9455_usb_event._entry_ptr.71, ptr @rt9455_usb_event_charger._entry, ptr @rt9455_usb_event_charger._entry.104, ptr @rt9455_usb_event_charger._entry.107, ptr @rt9455_usb_event_charger._entry_ptr, ptr @rt9455_usb_event_charger._entry_ptr.105, ptr @rt9455_usb_event_charger._entry_ptr.108, ptr @rt9455_usb_event_id._entry, ptr @rt9455_usb_event_id._entry.94, ptr @rt9455_usb_event_id._entry.98, ptr @rt9455_usb_event_id._entry_ptr, ptr @rt9455_usb_event_id._entry_ptr.96, ptr @rt9455_usb_event_id._entry_ptr.99, ptr @rt9455_usb_event_none._entry, ptr @rt9455_usb_event_none._entry.75, ptr @rt9455_usb_event_none._entry.79, ptr @rt9455_usb_event_none._entry_ptr, ptr @rt9455_usb_event_none._entry_ptr.77, ptr @rt9455_usb_event_none._entry_ptr.81, ptr @rt9455_usb_event_vbus._entry, ptr @rt9455_usb_event_vbus._entry.86, ptr @rt9455_usb_event_vbus._entry.89, ptr @rt9455_usb_event_vbus._entry_ptr, ptr @rt9455_usb_event_vbus._entry_ptr.87, ptr @rt9455_usb_event_vbus._entry_ptr.90, ptr @rt9455_driver, ptr @.str, ptr @rt9455_of_match, ptr @rt9455_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rt9455_probe._key, ptr @rt9455_regmap_config, ptr @.str.6, ptr @.str.8, ptr @rt9455_reg_fields, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @rt9455_probe.__key, ptr @.str.22, ptr @rt9455_probe.__key.23, ptr @.str.24, ptr @rt9455_probe.__key.25, ptr @.str.26, ptr @rt9455_probe.__key.27, ptr @.str.28, ptr @rt9455_probe.__key.29, ptr @.str.30, ptr @rt9455_probe.__key.31, ptr @.str.32, ptr @rt9455_charger_supplied_to, ptr @.str.34, ptr @.str.37, ptr @rt9455_charger_desc, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @rt9455_voreg_values, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @rt9455_boost_voltage_values, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.187, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.213, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @rt9455_ichrg_values, ptr @.str.234, ptr @rt9455_ieoc_percentage_values, ptr @.str.237, ptr @.str.242, ptr @.str.245, ptr @.str.250, ptr @.str.253, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @rt9455_charger_properties, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.265, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.281, ptr @.str.283], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_reg_fields to i32), i32 1100, i32 1376, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_discover_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_discover_charger._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_discover_charger._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_discover_charger._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_discover_charger._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_none._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_none._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_none._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_voreg_values to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_set_voreg_before_charge_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_vbus._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_vbus._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_id._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_id._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_boost_voltage_values to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_set_boost_voltage_before_boost_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_charger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_charger._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_usb_event_charger._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_pwr_rdy_work_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_pwr_rdy_work_callback._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_max_charging_time_work_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_max_charging_time_work_callback._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_batt_presence_work_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_batt_presence_work_callback._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_batt_presence_work_callback._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_thread._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_thread._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_thread._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_thread._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq1_register._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq2_register._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_irq_handler_check_irq3_register._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_ichrg_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_ieoc_percentage_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_hw_init._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_register_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_register_reset._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_properties to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_status._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_health._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_health._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_health._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_health._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_battery_presence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_term_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_charger_get_term_current._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt9455_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt9455_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt9455_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rt9455_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %rt9455_charger_config = alloca %struct.power_supply_config, align 4
  %ichrg = alloca i32, align 4
  %ieoc_percentage = alloca i32, align 4
  %mivr = alloca i32, align 4
  %iaicr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rt9455_charger_config) #7
  %2 = call ptr @memset(ptr %rt9455_charger_config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ichrg) #7
  %3 = ptrtoint ptr %ichrg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ichrg, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ieoc_percentage) #7
  %4 = ptrtoint ptr %ieoc_percentage to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ieoc_percentage, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mivr) #7
  %5 = ptrtoint ptr %mivr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mivr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iaicr) #7
  %6 = ptrtoint ptr %iaicr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %iaicr, align 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 556, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @rt9455_regmap_config, ptr noundef nonnull @rt9455_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i251 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end14, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0275 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [55 x %struct.reg_field], ptr @rt9455_reg_fields, i32 0, i32 %i.0275
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %arrayidx, align 4
  %17 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt243 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %.elt243 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack244 = load i32, ptr %.elt243, align 4
  %19 = insertvalue [5 x i32] %17, i32 %.unpack244, 1
  %.elt245 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %20 = ptrtoint ptr %.elt245 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack246 = load i32, ptr %.elt245, align 4
  %21 = insertvalue [5 x i32] %19, i32 %.unpack246, 2
  %.elt247 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %22 = ptrtoint ptr %.elt247 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack248 = load i32, ptr %.elt247, align 4
  %23 = insertvalue [5 x i32] %21, i32 %.unpack248, 3
  %.elt249 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %24 = ptrtoint ptr %.elt249 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack250 = load i32, ptr %.elt249, align 4
  %25 = insertvalue [5 x i32] %23, i32 %.unpack250, 4
  %call17 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev2, ptr noundef %15, [5 x i32] %25) #7
  %arrayidx18 = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 %i.0275
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call17, ptr %arrayidx18, align 4
  %cmp.i252 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %do.end25, label %for.inc

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11, i32 noundef %i.0275) #10
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx18, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0275, 1
  %exitcond.not = icmp eq i32 %inc, 55
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.42) #10
  br label %do.end35

if.end.i:                                         ; preds = %for.end
  %call.i.i253 = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %ichrg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253)
  %tobool2.not.i = icmp eq i32 %call.i.i253, 0
  br i1 %tobool2.not.i, label %if.end7.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.46) #10
  br label %do.end35

if.end7.i:                                        ; preds = %if.end.i
  %call.i52.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %ieoc_percentage, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool9.not.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.50) #10
  br label %do.end35

if.end14.i:                                       ; preds = %if.end7.i
  %voreg.i = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 9
  %call.i53.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.52, ptr noundef %voreg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool16.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool16.not.i, label %if.end21.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.54) #10
  br label %do.end35

if.end21.i:                                       ; preds = %if.end14.i
  %boost_voltage.i = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 10
  %call.i54.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.56, ptr noundef %boost_voltage.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool23.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool23.not.i, label %if.end36, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.58) #10
  br label %do.end35

do.end35:                                         ; preds = %do.end27.i, %do.end20.i, %do.end13.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ %call.i54.i, %do.end27.i ], [ %call.i53.i, %do.end20.i ], [ %call.i52.i, %do.end13.i ], [ %call.i.i253, %do.end6.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end21.i
  %call.i55.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %mivr, i32 noundef 1) #7
  %call.i56.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.61, ptr noundef nonnull %iaicr, i32 noundef 1) #7
  %call37 = call ptr @devm_usb_get_phy(ptr noundef %dev2, i32 noundef 1) #7
  %usb_phy = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call37, ptr %usb_phy, align 4
  %cmp.i254 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %do.end43, label %if.else

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.17) #10
  br label %do.body57

if.else:                                          ; preds = %if.end36
  %nb = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rt9455_usb_event, ptr %nb, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %call37, i32 0, i32 18
  %call.i255 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool47.not = icmp eq i32 %call.i255, 0
  br i1 %tobool47.not, label %if.else.do.body57_crit_edge, label %do.end51

if.else.do.body57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

do.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20) #10
  %36 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %nb, align 4
  br label %do.body57

do.body57:                                        ; preds = %do.end51, %if.else.do.body57_crit_edge, %do.end43
  %pwr_rdy_work = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %pwr_rdy_work, i32 noundef 0) #7
  %37 = ptrtoint ptr %pwr_rdy_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %pwr_rdy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @rt9455_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry64 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry64, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %40 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rt9455_pwr_rdy_work_callback, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 6, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.24, ptr noundef nonnull @rt9455_probe.__key.23) #7
  %max_charging_time_work = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %max_charging_time_work, i32 noundef 0) #7
  %41 = ptrtoint ptr %max_charging_time_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %max_charging_time_work, align 4
  %lockdep_map85 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map85, ptr noundef nonnull @.str.26, ptr noundef nonnull @rt9455_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry88 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i256 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry88, ptr %prev.i256, align 4
  %func91 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %44 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rt9455_max_charging_time_work_callback, ptr %func91, align 4
  %timer96 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer96, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.28, ptr noundef nonnull @rt9455_probe.__key.27) #7
  %batt_presence_work = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %batt_presence_work, i32 noundef 0) #7
  %45 = ptrtoint ptr %batt_presence_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %batt_presence_work, align 4
  %lockdep_map111 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map111, ptr noundef nonnull @.str.30, ptr noundef nonnull @rt9455_probe.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry114 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %46 = ptrtoint ptr %entry114 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry114, ptr %entry114, align 4
  %prev.i257 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry114, ptr %prev.i257, align 4
  %func117 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %48 = ptrtoint ptr %func117 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rt9455_batt_presence_work_callback, ptr %func117, align 4
  %timer122 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer122, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.32, ptr noundef nonnull @rt9455_probe.__key.31) #7
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %51 = ptrtoint ptr %rt9455_charger_config to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %rt9455_charger_config, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %rt9455_charger_config, i32 0, i32 2
  %52 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %drv_data, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %rt9455_charger_config, i32 0, i32 4
  %53 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rt9455_charger_supplied_to, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %rt9455_charger_config, i32 0, i32 5
  %54 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_supplicants, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call128 = call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %56, ptr noundef null, ptr noundef nonnull @rt9455_irq_handler_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end134, label %do.end133

do.end133:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.34) #10
  br label %put_usb_notifier

if.end134:                                        ; preds = %do.body57
  %57 = ptrtoint ptr %ichrg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ichrg, align 4
  %59 = ptrtoint ptr %ieoc_percentage to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ieoc_percentage, align 4
  %61 = ptrtoint ptr %mivr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mivr, align 4
  %63 = ptrtoint ptr %iaicr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iaicr, align 4
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %dev1.i258 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  %call.i259 = call fastcc i32 @rt9455_register_reset(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool.not.i260 = icmp eq i32 %call.i259, 0
  br i1 %tobool.not.i260, label %if.end.i262, label %if.end134.do.end140_crit_edge

if.end134.do.end140_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end.i262:                                      ; preds = %if.end134
  %arrayidx.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 7
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i261 = call i32 @regmap_field_update_bits_base(ptr noundef %68, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i261)
  %tobool3.not.i = icmp eq i32 %call.i.i261, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %if.end.i262.do.end140_crit_edge

if.end.i262.do.end140_crit_edge:                  ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end8.i:                                        ; preds = %if.end.i262
  %arrayidx10.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 5
  %69 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx10.i, align 4
  %call.i158.i = call i32 @regmap_field_update_bits_base(ptr noundef %70, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %tobool12.not.i = icmp eq i32 %call.i158.i, 0
  br i1 %tobool12.not.i, label %if.end17.i, label %if.end8.i.do.end140_crit_edge

if.end8.i.do.end140_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end17.i:                                       ; preds = %if.end8.i
  %arrayidx19.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 24
  %71 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx19.i, align 4
  %call.i159.i = call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %tobool21.not.i = icmp eq i32 %call.i159.i, 0
  br i1 %tobool21.not.i, label %if.end26.i, label %if.end17.i.do.end140_crit_edge

if.end17.i.do.end140_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end26.i:                                       ; preds = %if.end17.i
  %arrayidx28.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 17
  %73 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx28.i, align 4
  %call.i160.i = call i32 @regmap_field_update_bits_base(ptr noundef %74, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool30.not.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool30.not.i, label %for.body.i.i.preheader.i, label %if.end26.i.do.end140_crit_edge

if.end26.i.do.end140_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

for.body.i.i.preheader.i:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %58)
  %cmp1.not.i.i.i = icmp sgt i32 %58, 500000
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.preheader.i.rt9455_set_field_val.exit.i_crit_edge

for.body.i.i.preheader.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.body.i.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 650000, i32 %58)
  %cmp1.not.i.i.1.i = icmp ugt i32 %58, 650000
  br i1 %cmp1.not.i.i.1.i, label %for.inc.i.i.1.i, label %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge

for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.1.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %58)
  %cmp1.not.i.i.2.i = icmp ugt i32 %58, 800000
  br i1 %cmp1.not.i.i.2.i, label %for.inc.i.i.2.i, label %for.inc.i.i.1.i.rt9455_set_field_val.exit.i_crit_edge

for.inc.i.i.1.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.2.i:                                  ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %58)
  %cmp1.not.i.i.3.i = icmp ugt i32 %58, 950000
  br i1 %cmp1.not.i.i.3.i, label %for.inc.i.i.3.i, label %for.inc.i.i.2.i.rt9455_set_field_val.exit.i_crit_edge

for.inc.i.i.2.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.3.i:                                  ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000, i32 %58)
  %cmp1.not.i.i.4.i = icmp ugt i32 %58, 1100000
  br i1 %cmp1.not.i.i.4.i, label %for.inc.i.i.4.i, label %for.inc.i.i.3.i.rt9455_set_field_val.exit.i_crit_edge

for.inc.i.i.3.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.4.i:                                  ; preds = %for.inc.i.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %58)
  %cmp1.not.i.i.5.i = icmp ugt i32 %58, 1250000
  br i1 %cmp1.not.i.i.5.i, label %for.inc.i.i.5.i, label %for.inc.i.i.4.i.rt9455_set_field_val.exit.i_crit_edge

for.inc.i.i.4.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.5.i:                                  ; preds = %for.inc.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400000, i32 %58)
  %cmp1.not.i.i.6.i = icmp ugt i32 %58, 1400000
  %spec.select.i = select i1 %cmp1.not.i.i.6.i, i32 7, i32 6
  br label %rt9455_set_field_val.exit.i

rt9455_set_field_val.exit.i:                      ; preds = %for.inc.i.i.5.i, %for.inc.i.i.4.i.rt9455_set_field_val.exit.i_crit_edge, %for.inc.i.i.3.i.rt9455_set_field_val.exit.i_crit_edge, %for.inc.i.i.2.i.rt9455_set_field_val.exit.i_crit_edge, %for.inc.i.i.1.i.rt9455_set_field_val.exit.i_crit_edge, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, %for.body.i.i.preheader.i.rt9455_set_field_val.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.body.i.i.preheader.i.rt9455_set_field_val.exit.i_crit_edge ], [ 1, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge ], [ 2, %for.inc.i.i.1.i.rt9455_set_field_val.exit.i_crit_edge ], [ 3, %for.inc.i.i.2.i.rt9455_set_field_val.exit.i_crit_edge ], [ 4, %for.inc.i.i.3.i.rt9455_set_field_val.exit.i_crit_edge ], [ 5, %for.inc.i.i.4.i.rt9455_set_field_val.exit.i_crit_edge ], [ %spec.select.i, %for.inc.i.i.5.i ]
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 22
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %76, i32 noundef -1, i32 noundef %retval.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool37.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool37.not.i, label %for.body.i.i164.preheader.i, label %rt9455_set_field_val.exit.i.do.end140_crit_edge

rt9455_set_field_val.exit.i.do.end140_crit_edge:  ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

for.body.i.i164.preheader.i:                      ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %60)
  %cmp1.not.i.i163.i = icmp sgt i32 %60, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %60)
  %cmp1.not.i.i163.1.i = icmp ugt i32 %60, 30
  %spec.select218.i = select i1 %cmp1.not.i.i163.1.i, i32 3, i32 1
  %retval.0.i.i168.i = select i1 %cmp1.not.i.i163.i, i32 %spec.select218.i, i32 0
  %arrayidx.i169.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 20
  %77 = ptrtoint ptr %arrayidx.i169.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i169.i, align 4
  %call.i.i170.i = call i32 @regmap_field_update_bits_base(ptr noundef %78, i32 noundef -1, i32 noundef %retval.0.i.i168.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170.i)
  %tobool44.not.i = icmp eq i32 %call.i.i170.i, 0
  br i1 %tobool44.not.i, label %if.end49.i, label %for.body.i.i164.preheader.i.do.end140_crit_edge

for.body.i.i164.preheader.i.do.end140_crit_edge:  ; preds = %for.body.i.i164.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end49.i:                                       ; preds = %for.body.i.i164.preheader.i
  %79 = ptrtoint ptr %voreg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %voreg.i, align 4
  br label %for.body.i.i175.i

for.body.i.i175.i:                                ; preds = %for.inc.i.i178.i.for.body.i.i175.i_crit_edge, %if.end49.i
  %i.08.i.i172.i = phi i32 [ %inc.i.i176.i, %for.inc.i.i178.i.for.body.i.i175.i_crit_edge ], [ 0, %if.end49.i ]
  %arrayidx.i.i173.i = getelementptr i32, ptr @rt9455_voreg_values, i32 %i.08.i.i172.i
  %81 = ptrtoint ptr %arrayidx.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i173.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp1.not.i.i174.i = icmp slt i32 %82, %80
  br i1 %cmp1.not.i.i174.i, label %for.inc.i.i178.i, label %for.body.i.i175.i.rt9455_set_field_val.exit182.i_crit_edge

for.body.i.i175.i.rt9455_set_field_val.exit182.i_crit_edge: ; preds = %for.body.i.i175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit182.i

for.inc.i.i178.i:                                 ; preds = %for.body.i.i175.i
  %inc.i.i176.i = add nuw nsw i32 %i.08.i.i172.i, 1
  %exitcond.not.i.i177.i = icmp eq i32 %inc.i.i176.i, 63
  br i1 %exitcond.not.i.i177.i, label %for.inc.i.i178.i.rt9455_set_field_val.exit182.i_crit_edge, label %for.inc.i.i178.i.for.body.i.i175.i_crit_edge

for.inc.i.i178.i.for.body.i.i175.i_crit_edge:     ; preds = %for.inc.i.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i175.i

for.inc.i.i178.i.rt9455_set_field_val.exit182.i_crit_edge: ; preds = %for.inc.i.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit182.i

rt9455_set_field_val.exit182.i:                   ; preds = %for.inc.i.i178.i.rt9455_set_field_val.exit182.i_crit_edge, %for.body.i.i175.i.rt9455_set_field_val.exit182.i_crit_edge
  %retval.0.i.i179.i = phi i32 [ %i.08.i.i172.i, %for.body.i.i175.i.rt9455_set_field_val.exit182.i_crit_edge ], [ 63, %for.inc.i.i178.i.rt9455_set_field_val.exit182.i_crit_edge ]
  %arrayidx.i180.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 11
  %83 = ptrtoint ptr %arrayidx.i180.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i180.i, align 4
  %call.i.i181.i = call i32 @regmap_field_update_bits_base(ptr noundef %84, i32 noundef -1, i32 noundef %retval.0.i.i179.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181.i)
  %tobool51.not.i = icmp eq i32 %call.i.i181.i, 0
  br i1 %tobool51.not.i, label %rt9455_set_field_val.exit193.i, label %rt9455_set_field_val.exit182.i.do.end140_crit_edge

rt9455_set_field_val.exit182.i.do.end140_crit_edge: ; preds = %rt9455_set_field_val.exit182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

rt9455_set_field_val.exit193.i:                   ; preds = %rt9455_set_field_val.exit182.i
  %arrayidx.i191.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 26
  %85 = ptrtoint ptr %arrayidx.i191.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i191.i, align 4
  %call.i.i192.i = call i32 @regmap_field_update_bits_base(ptr noundef %86, i32 noundef -1, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192.i)
  %tobool59.not.i = icmp eq i32 %call.i.i192.i, 0
  br i1 %tobool59.not.i, label %if.end64.i, label %rt9455_set_field_val.exit193.i.do.end140_crit_edge

rt9455_set_field_val.exit193.i.do.end140_crit_edge: ; preds = %rt9455_set_field_val.exit193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end64.i:                                       ; preds = %rt9455_set_field_val.exit193.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i264 = icmp eq i32 %62, -1
  %spec.store.select.i = select i1 %cmp.i264, i32 4500000, i32 %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %spec.store.select.i)
  %cmp1.not.i.i196.i = icmp sgt i32 %spec.store.select.i, 4000000
  br i1 %cmp1.not.i.i196.i, label %for.inc.i.i200.i, label %if.end64.i.rt9455_set_field_val.exit204.i_crit_edge

if.end64.i.rt9455_set_field_val.exit204.i_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit204.i

for.inc.i.i200.i:                                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4250000, i32 %spec.store.select.i)
  %cmp1.not.i.i196.1.i = icmp ugt i32 %spec.store.select.i, 4250000
  br i1 %cmp1.not.i.i196.1.i, label %for.inc.i.i200.1.i, label %for.inc.i.i200.i.rt9455_set_field_val.exit204.i_crit_edge

for.inc.i.i200.i.rt9455_set_field_val.exit204.i_crit_edge: ; preds = %for.inc.i.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit204.i

for.inc.i.i200.1.i:                               ; preds = %for.inc.i.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4500000, i32 %spec.store.select.i)
  %cmp1.not.i.i196.2.i = icmp ugt i32 %spec.store.select.i, 4500000
  %spec.select219.i = select i1 %cmp1.not.i.i196.2.i, i32 3, i32 2
  br label %rt9455_set_field_val.exit204.i

rt9455_set_field_val.exit204.i:                   ; preds = %for.inc.i.i200.1.i, %for.inc.i.i200.i.rt9455_set_field_val.exit204.i_crit_edge, %if.end64.i.rt9455_set_field_val.exit204.i_crit_edge
  %retval.0.i.i201.i = phi i32 [ 0, %if.end64.i.rt9455_set_field_val.exit204.i_crit_edge ], [ 1, %for.inc.i.i200.i.rt9455_set_field_val.exit204.i_crit_edge ], [ %spec.select219.i, %for.inc.i.i200.1.i ]
  %arrayidx.i202.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 18
  %87 = ptrtoint ptr %arrayidx.i202.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i202.i, align 4
  %call.i.i203.i = call i32 @regmap_field_update_bits_base(ptr noundef %88, i32 noundef -1, i32 noundef %retval.0.i.i201.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i203.i)
  %tobool68.not.i = icmp eq i32 %call.i.i203.i, 0
  br i1 %tobool68.not.i, label %if.end73.i, label %rt9455_set_field_val.exit204.i.do.end140_crit_edge

rt9455_set_field_val.exit204.i.do.end140_crit_edge: ; preds = %rt9455_set_field_val.exit204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end73.i:                                       ; preds = %rt9455_set_field_val.exit204.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp74.i = icmp eq i32 %64, -1
  %spec.store.select104.i = select i1 %cmp74.i, i32 500000, i32 %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %spec.store.select104.i)
  %cmp1.not.i.i207.i = icmp sgt i32 %spec.store.select104.i, 100000
  br i1 %cmp1.not.i.i207.i, label %for.inc.i.i211.i, label %if.end73.i.rt9455_set_field_val.exit215.i_crit_edge

if.end73.i.rt9455_set_field_val.exit215.i_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit215.i

for.inc.i.i211.i:                                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %spec.store.select104.i)
  %cmp1.not.i.i207.1.i = icmp ugt i32 %spec.store.select104.i, 500000
  br i1 %cmp1.not.i.i207.1.i, label %for.inc.i.i211.1.i, label %for.inc.i.i211.i.rt9455_set_field_val.exit215.i_crit_edge

for.inc.i.i211.i.rt9455_set_field_val.exit215.i_crit_edge: ; preds = %for.inc.i.i211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit215.i

for.inc.i.i211.1.i:                               ; preds = %for.inc.i.i211.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %spec.store.select104.i)
  %cmp1.not.i.i207.2.i = icmp ugt i32 %spec.store.select104.i, 1000000
  %spec.select220.i = select i1 %cmp1.not.i.i207.2.i, i32 3, i32 2
  br label %rt9455_set_field_val.exit215.i

rt9455_set_field_val.exit215.i:                   ; preds = %for.inc.i.i211.1.i, %for.inc.i.i211.i.rt9455_set_field_val.exit215.i_crit_edge, %if.end73.i.rt9455_set_field_val.exit215.i_crit_edge
  %retval.0.i.i212.i = phi i32 [ 0, %if.end73.i.rt9455_set_field_val.exit215.i_crit_edge ], [ 1, %for.inc.i.i211.i.rt9455_set_field_val.exit215.i_crit_edge ], [ %spec.select220.i, %for.inc.i.i211.1.i ]
  %arrayidx.i213.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 4
  %89 = ptrtoint ptr %arrayidx.i213.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i213.i, align 4
  %call.i.i214.i = call i32 @regmap_field_update_bits_base(ptr noundef %90, i32 noundef -1, i32 noundef %retval.0.i.i212.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214.i)
  %tobool78.not.i = icmp eq i32 %call.i.i214.i, 0
  br i1 %tobool78.not.i, label %if.end83.i, label %rt9455_set_field_val.exit215.i.do.end140_crit_edge

rt9455_set_field_val.exit215.i.do.end140_crit_edge: ; preds = %rt9455_set_field_val.exit215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end83.i:                                       ; preds = %rt9455_set_field_val.exit215.i
  %arrayidx85.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 8
  %91 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx85.i, align 4
  %call.i216.i = call i32 @regmap_field_update_bits_base(ptr noundef %92, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i)
  %tobool87.not.i = icmp eq i32 %call.i216.i, 0
  br i1 %tobool87.not.i, label %if.end92.i, label %if.end83.i.do.end140_crit_edge

if.end83.i.do.end140_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

if.end92.i:                                       ; preds = %if.end83.i
  %arrayidx94.i = getelementptr %struct.rt9455_info, ptr %call.i, i32 0, i32 2, i32 50
  %93 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx94.i, align 4
  %call.i217.i = call i32 @regmap_field_update_bits_base(ptr noundef %94, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i)
  %tobool96.not.i = icmp eq i32 %call.i217.i, 0
  br i1 %tobool96.not.i, label %if.end141, label %if.end92.i.do.end140_crit_edge

if.end92.i.do.end140_crit_edge:                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

do.end140:                                        ; preds = %if.end92.i.do.end140_crit_edge, %if.end83.i.do.end140_crit_edge, %rt9455_set_field_val.exit215.i.do.end140_crit_edge, %rt9455_set_field_val.exit204.i.do.end140_crit_edge, %rt9455_set_field_val.exit193.i.do.end140_crit_edge, %rt9455_set_field_val.exit182.i.do.end140_crit_edge, %for.body.i.i164.preheader.i.do.end140_crit_edge, %rt9455_set_field_val.exit.i.do.end140_crit_edge, %if.end26.i.do.end140_crit_edge, %if.end17.i.do.end140_crit_edge, %if.end8.i.do.end140_crit_edge, %if.end.i262.do.end140_crit_edge, %if.end134.do.end140_crit_edge
  %.str.253.sink.i = phi ptr [ @.str.219, %if.end134.do.end140_crit_edge ], [ @.str.222, %if.end.i262.do.end140_crit_edge ], [ @.str.225, %if.end8.i.do.end140_crit_edge ], [ @.str.228, %if.end17.i.do.end140_crit_edge ], [ @.str.231, %if.end26.i.do.end140_crit_edge ], [ @.str.234, %rt9455_set_field_val.exit.i.do.end140_crit_edge ], [ @.str.237, %for.body.i.i164.preheader.i.do.end140_crit_edge ], [ @.str.82, %rt9455_set_field_val.exit182.i.do.end140_crit_edge ], [ @.str.242, %rt9455_set_field_val.exit193.i.do.end140_crit_edge ], [ @.str.245, %rt9455_set_field_val.exit204.i.do.end140_crit_edge ], [ @.str.80, %rt9455_set_field_val.exit215.i.do.end140_crit_edge ], [ @.str.250, %if.end83.i.do.end140_crit_edge ], [ @.str.253, %if.end92.i.do.end140_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i259, %if.end134.do.end140_crit_edge ], [ %call.i.i261, %if.end.i262.do.end140_crit_edge ], [ %call.i158.i, %if.end8.i.do.end140_crit_edge ], [ %call.i159.i, %if.end17.i.do.end140_crit_edge ], [ %call.i160.i, %if.end26.i.do.end140_crit_edge ], [ %call.i.i.i, %rt9455_set_field_val.exit.i.do.end140_crit_edge ], [ %call.i.i170.i, %for.body.i.i164.preheader.i.do.end140_crit_edge ], [ %call.i.i181.i, %rt9455_set_field_val.exit182.i.do.end140_crit_edge ], [ %call.i.i192.i, %rt9455_set_field_val.exit193.i.do.end140_crit_edge ], [ %call.i.i203.i, %rt9455_set_field_val.exit204.i.do.end140_crit_edge ], [ %call.i.i214.i, %rt9455_set_field_val.exit215.i.do.end140_crit_edge ], [ %call.i216.i, %if.end83.i.do.end140_crit_edge ], [ %call.i217.i, %if.end92.i.do.end140_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i258, ptr noundef nonnull %.str.253.sink.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.37) #10
  br label %put_usb_notifier

if.end141:                                        ; preds = %if.end92.i
  %call142 = call ptr @devm_power_supply_register(ptr noundef %dev2, ptr noundef nonnull @rt9455_charger_desc, ptr noundef nonnull %rt9455_charger_config) #7
  %charger = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 3
  %95 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call142, ptr %charger, align 4
  %cmp.i266 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %do.end148, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end148:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.40) #10
  %96 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %charger, align 4
  %98 = ptrtoint ptr %97 to i32
  br label %put_usb_notifier

put_usb_notifier:                                 ; preds = %do.end148, %do.end140, %do.end133
  %ret.0 = phi i32 [ %call128, %do.end133 ], [ %retval.0.ph.i, %do.end140 ], [ %98, %do.end148 ]
  %nb152 = getelementptr inbounds %struct.rt9455_info, ptr %call.i, i32 0, i32 5
  %99 = ptrtoint ptr %nb152 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nb152, align 4
  %tobool154.not = icmp eq ptr %100, null
  br i1 %tobool154.not, label %put_usb_notifier.cleanup_crit_edge, label %if.then155

put_usb_notifier.cleanup_crit_edge:               ; preds = %put_usb_notifier
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then155:                                       ; preds = %put_usb_notifier
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %usb_phy, align 4
  %notifier.i267 = getelementptr inbounds %struct.usb_phy, ptr %102, i32 0, i32 18
  %call.i268 = call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i267, ptr noundef %nb152) #7
  %103 = ptrtoint ptr %nb152 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %nb152, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %put_usb_notifier.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %do.end35, %do.end25, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ %29, %do.end25 ], [ %retval.0.i.ph, %do.end35 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ], [ %ret.0, %if.then155 ], [ %ret.0, %put_usb_notifier.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iaicr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mivr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ieoc_percentage) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ichrg) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rt9455_charger_config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @rt9455_register_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nb = getelementptr inbounds %struct.rt9455_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_phy = getelementptr inbounds %struct.rt9455_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_phy, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %nb) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %pwr_rdy_work = getelementptr inbounds %struct.rt9455_info, ptr %1, i32 0, i32 6
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %pwr_rdy_work) #7
  %max_charging_time_work = getelementptr inbounds %struct.rt9455_info, ptr %1, i32 0, i32 7
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %max_charging_time_work) #7
  %batt_presence_work = getelementptr inbounds %struct.rt9455_info, ptr %1, i32 0, i32 8
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %batt_presence_work) #7
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_usb_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %power) #2 align 64 {
entry:
  %opa_mode = alloca i32, align 4
  %iaicr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -236
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opa_mode) #7
  %2 = ptrtoint ptr %opa_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %opa_mode, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iaicr) #7
  %3 = ptrtoint ptr %iaicr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %iaicr, align 4, !annotation !530
  %arrayidx = getelementptr i8, ptr %nb, i32 -188
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %opa_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %nb, i32 -212
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %iaicr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65) #10
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event, %do.end21)) #7
          to label %if.then18 [label %do.end21], !srcloc !531

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef %event) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body11
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.end38 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb28
    i32 3, label %sw.bb32
  ]

sw.bb:                                            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %opa_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opa_mode, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %iaicr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iaicr, align 4
  %conv22 = trunc i32 %12 to i8
  %call23 = call fastcc i32 @rt9455_usb_event_none(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv22)
  br label %cleanup

sw.bb24:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %opa_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opa_mode, align 4
  %conv25 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %iaicr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iaicr, align 4
  %conv26 = trunc i32 %16 to i8
  %call27 = call fastcc i32 @rt9455_usb_event_vbus(ptr noundef %add.ptr, i8 noundef zeroext %conv25, i8 noundef zeroext %conv26)
  br label %cleanup

sw.bb28:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %opa_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opa_mode, align 4
  %conv29 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %iaicr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iaicr, align 4
  %conv30 = trunc i32 %20 to i8
  %call31 = call fastcc i32 @rt9455_usb_event_id(ptr noundef %add.ptr, i8 noundef zeroext %conv29, i8 noundef zeroext %conv30)
  br label %cleanup

sw.bb32:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %opa_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opa_mode, align 4
  %conv33 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %iaicr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iaicr, align 4
  %conv34 = trunc i32 %24 to i8
  %call35 = call fastcc i32 @rt9455_usb_event_charger(ptr noundef %add.ptr, i8 noundef zeroext %conv33, i8 noundef zeroext %conv34)
  br label %cleanup

do.end38:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %sw.bb32, %sw.bb28, %sw.bb24, %sw.bb, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end9 ], [ 0, %do.end38 ], [ %call35, %sw.bb32 ], [ %call31, %sw.bb28 ], [ %call27, %sw.bb24 ], [ %call23, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iaicr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opa_mode) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt9455_pwr_rdy_work_callback(ptr noundef %work) #2 align 64 {
entry:
  %pwr_rdy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -248
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr_rdy) #7
  %2 = ptrtoint ptr %pwr_rdy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pwr_rdy, align 4, !annotation !530
  %arrayidx = getelementptr i8, ptr %work, i32 -232
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %pwr_rdy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.109) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pwr_rdy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_rdy, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 0, label %do.body2
    i32 1, label %do.body15
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body2:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_pwr_rdy_work_callback, %do.end12)) #7
          to label %if.then9 [label %do.end12], !srcloc !531

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug307, ptr noundef %dev1, ptr noundef nonnull @.str.111) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body2
  %max_charging_time_work = getelementptr i8, ptr %work, i32 100
  %call13 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %max_charging_time_work) #7
  br label %sw.epilog

do.body15:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_pwr_rdy_work_callback, %do.end32)) #7
          to label %if.then29 [label %do.end32], !srcloc !531

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.112) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body15
  %arrayidx34 = getelementptr i8, ptr %work, i32 -140
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx34, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.114) #10
  br label %cleanup

if.end41:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %10 = load ptr, ptr @system_power_efficient_wq, align 4
  %max_charging_time_work42 = getelementptr i8, ptr %work, i32 100
  %call.i59 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %max_charging_time_work42, i32 noundef 2160000) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end41, %do.end12, %if.end.sw.epilog_crit_edge
  %charger = getelementptr i8, ptr %work, i32 -20
  %11 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end40, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr_rdy) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt9455_max_charging_time_work_callback(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -348
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.116) #10
  %arrayidx = getelementptr i8, ptr %work, i32 -240
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.119) #10
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt9455_batt_presence_work_callback(ptr noundef %work) #2 align 64 {
entry:
  %irq1 = alloca i32, align 4
  %mask1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -448
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq1) #7
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq1, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask1) #7
  %3 = ptrtoint ptr %mask1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask1, align 4, !annotation !530
  %regmap = getelementptr i8, ptr %work, i32 -444
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %irq1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.121) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %8 = load ptr, ptr @system_power_efficient_wq, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 6000) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %max_charging_time_work = getelementptr i8, ptr %work, i32 -100
  %call.i45 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %max_charging_time_work, i32 noundef 2160000) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %10, i32 noundef 11, ptr noundef nonnull %mask1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124) #10
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %11 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask1, align 4
  %and19 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end14.if.end29_crit_edge, label %if.then21

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then21:                                        ; preds = %if.end14
  %arrayidx = getelementptr i8, ptr %work, i32 -268
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i46 = call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool23.not = icmp eq i32 %call.i46, 0
  br i1 %tobool23.not, label %if.then21.if.end29_crit_edge, label %do.end27

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.127) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.then21.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %charger = getelementptr i8, ptr %work, i32 -220
  %15 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end13, %if.then4, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_irq_handler_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq3.i = alloca i32, align 4
  %mask3.i = alloca i32, align 4
  %irq1.i = alloca i32, align 4
  %mask1.i = alloca i32, align 4
  %mask2.i = alloca i32, align 4
  %alert_userspace = alloca i8, align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %alert_userspace) #7
  %0 = ptrtoint ptr %alert_userspace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %alert_userspace, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !530
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %irq3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp.not = icmp eq i32 %5, %irq
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.130) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %regmap_fields = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_fields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_fields, align 4
  %call = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body12, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.133) #10
  br label %cleanup

do.body12:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_irq_handler_thread.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_irq_handler_thread, %do.end21)) #7
          to label %if.then18 [label %do.end21], !srcloc !531

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_irq_handler_thread.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.135, i32 noundef %9) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq1.i) #7
  %10 = ptrtoint ptr %irq1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq1.i, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask1.i) #7
  %11 = ptrtoint ptr %mask1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %mask1.i, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask2.i) #7
  %12 = ptrtoint ptr %mask2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %mask2.i, align 4, !annotation !530
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %regmap.i = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 8, ptr noundef nonnull %irq1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end21.do.end27_crit_edge

do.end21.do.end27_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end.i:                                         ; preds = %do.end21
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 11, ptr noundef nonnull %mask1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end9.i, label %if.end.i.do.end27_crit_edge

if.end.i.do.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end9.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq1.i, align 4
  %and.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end16.i_crit_edge, label %do.end15.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.149) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end15.i, %if.end9.i.if.end16.i_crit_edge
  %21 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq1.i, align 4
  %and21.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end27.i, label %if.end27.thread.i

if.end27.i:                                       ; preds = %if.end16.i
  %and32.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end96.i, label %if.end27.i.do.end37.i_crit_edge

if.end27.i.do.end37.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

if.end27.thread.i:                                ; preds = %if.end16.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.152) #10
  %23 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq1.i, align 4
  %and32142.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32142.i)
  %tobool33.not143.i = icmp eq i32 %and32142.i, 0
  br i1 %tobool33.not143.i, label %if.end27.thread.i.if.then99.i_crit_edge, label %if.end27.thread.i.do.end37.i_crit_edge

if.end27.thread.i.do.end37.i_crit_edge:           ; preds = %if.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

if.end27.thread.i.if.then99.i_crit_edge:          ; preds = %if.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99.i

do.end37.i:                                       ; preds = %if.end27.thread.i.do.end37.i_crit_edge, %if.end27.i.do.end37.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.155) #10
  %25 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask1.i, align 4
  %and42.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp.i = icmp eq i32 %and42.i, 0
  br i1 %cmp.i, label %if.then43.i, label %do.end37.i.if.end51.i_crit_edge

do.end37.i.if.end51.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then43.i:                                      ; preds = %do.end37.i
  %arrayidx.i = getelementptr %struct.rt9455_info, ptr %data, i32 0, i32 2, i32 43
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool45.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.if.end51.i_crit_edge, label %if.then43.i.do.end27_crit_edge

if.then43.i.do.end27_crit_edge:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.then43.i.if.end51.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i.if.end51.i_crit_edge, %do.end37.i.if.end51.i_crit_edge
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call53.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 12, ptr noundef nonnull %mask2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end59.i, label %if.end51.i.do.end27_crit_edge

if.end51.i.do.end27_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end59.i:                                       ; preds = %if.end51.i
  %31 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask2.i, align 4
  %and64.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end59.i.if.end76.i_crit_edge, label %if.then66.i

if.end59.i.if.end76.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then66.i:                                      ; preds = %if.end59.i
  %arrayidx68.i = getelementptr %struct.rt9455_info, ptr %data, i32 0, i32 2, i32 46
  %33 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx68.i, align 4
  %call.i138.i = call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool70.not.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool70.not.i, label %if.then66.i.if.end76.i_crit_edge, label %if.then66.i.do.end27_crit_edge

if.then66.i.do.end27_crit_edge:                   ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.then66.i.if.end76.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then66.i.if.end76.i_crit_edge, %if.end59.i.if.end76.i_crit_edge
  %35 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask2.i, align 4
  %and81.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end76.i.if.end93.i_crit_edge, label %if.then83.i

if.end76.i.if.end93.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then83.i:                                      ; preds = %if.end76.i
  %arrayidx85.i = getelementptr %struct.rt9455_info, ptr %data, i32 0, i32 2, i32 47
  %37 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx85.i, align 4
  %call.i139.i = call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %tobool87.not.i = icmp eq i32 %call.i139.i, 0
  br i1 %tobool87.not.i, label %if.then83.i.if.end93.i_crit_edge, label %if.then83.i.do.end27_crit_edge

if.then83.i.do.end27_crit_edge:                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.then83.i.if.end93.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then83.i.if.end93.i_crit_edge, %if.end76.i.if.end93.i_crit_edge
  %max_charging_time_work.i = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 7
  %call94.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %max_charging_time_work.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %39 = load ptr, ptr @system_power_efficient_wq, align 4
  %batt_presence_work.i = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 8
  %call.i140.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %batt_presence_work.i, i32 noundef 6000) #7
  br label %if.then99.i

if.end96.i:                                       ; preds = %if.end27.i
  br i1 %tobool11.not.i, label %if.end96.i.if.end28_crit_edge, label %if.end96.i.if.then99.i_crit_edge

if.end96.i.if.then99.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99.i

if.end96.i.if.end28_crit_edge:                    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then99.i:                                      ; preds = %if.end96.i.if.then99.i_crit_edge, %if.end93.i, %if.end27.thread.i.if.then99.i_crit_edge
  %is_battery_absent.0 = phi i8 [ 0, %if.end96.i.if.then99.i_crit_edge ], [ 1, %if.end93.i ], [ 0, %if.end27.thread.i.if.then99.i_crit_edge ]
  %40 = ptrtoint ptr %alert_userspace to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %alert_userspace, align 1
  br label %if.end28

do.end27:                                         ; preds = %if.then83.i.do.end27_crit_edge, %if.then66.i.do.end27_crit_edge, %if.end51.i.do.end27_crit_edge, %if.then43.i.do.end27_crit_edge, %if.end.i.do.end27_crit_edge, %do.end21.do.end27_crit_edge
  %.str.121.sink = phi ptr [ @.str.121, %do.end21.do.end27_crit_edge ], [ @.str.124, %if.end.i.do.end27_crit_edge ], [ @.str.158, %if.then43.i.do.end27_crit_edge ], [ @.str.161, %if.end51.i.do.end27_crit_edge ], [ @.str.164, %if.then66.i.do.end27_crit_edge ], [ @.str.167, %if.then83.i.do.end27_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.121.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq1.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.137) #10
  br label %cleanup

if.end28:                                         ; preds = %if.then99.i, %if.end96.i.if.end28_crit_edge
  %is_battery_absent.1 = phi i8 [ 0, %if.end96.i.if.end28_crit_edge ], [ %is_battery_absent.0, %if.then99.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq1.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_battery_absent.1)
  %tobool29 = icmp ne i8 %is_battery_absent.1, 0
  %call30 = call fastcc i32 @rt9455_irq_handler_check_irq2_register(ptr noundef nonnull %data, i1 noundef zeroext %tobool29, ptr noundef nonnull %alert_userspace)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.140) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq3.i) #7
  %41 = ptrtoint ptr %irq3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %irq3.i, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask3.i) #7
  %42 = ptrtoint ptr %mask3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %mask3.i, align 4, !annotation !530
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %dev1.i73 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %46, i32 noundef 10, ptr noundef nonnull %irq3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i80, label %if.end36.do.end42_crit_edge

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end.i80:                                       ; preds = %if.end36
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call3.i78 = call i32 @regmap_read(ptr noundef %48, i32 noundef 13, ptr noundef nonnull %mask3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i78)
  %tobool4.not.i79 = icmp eq i32 %call3.i78, 0
  br i1 %tobool4.not.i79, label %if.end9.i84, label %if.end.i80.do.end42_crit_edge

if.end.i80.do.end42_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end9.i84:                                      ; preds = %if.end.i80
  %49 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq3.i, align 4
  %and.i82 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool11.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool11.not.i83, label %if.end9.i84.if.end16.i88_crit_edge, label %do.end15.i85

if.end9.i84.if.end16.i88_crit_edge:               ; preds = %if.end9.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i88

do.end15.i85:                                     ; preds = %if.end9.i84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull @.str.200) #10
  br label %if.end16.i88

if.end16.i88:                                     ; preds = %do.end15.i85, %if.end9.i84.if.end16.i88_crit_edge
  %51 = xor i1 %tobool11.not.i83, true
  %52 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq3.i, align 4
  %and21.i86 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i86)
  %tobool22.not.i87 = icmp eq i32 %and21.i86, 0
  br i1 %tobool22.not.i87, label %if.end16.i88.if.end27.i91_crit_edge, label %do.end26.i

if.end16.i88.if.end27.i91_crit_edge:              ; preds = %if.end16.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i91

do.end26.i:                                       ; preds = %if.end16.i88
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull @.str.203) #10
  br label %if.end27.i91

if.end27.i91:                                     ; preds = %do.end26.i, %if.end16.i88.if.end27.i91_crit_edge
  %alert_userspace.1.off0.i = phi i1 [ true, %do.end26.i ], [ %51, %if.end16.i88.if.end27.i91_crit_edge ]
  %54 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq3.i, align 4
  %and32.i89 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i89)
  %tobool33.not.i90 = icmp eq i32 %and32.i89, 0
  br i1 %tobool33.not.i90, label %if.end38.i, label %if.end38.thread.i

if.end38.i:                                       ; preds = %if.end27.i91
  %and43.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end49.i, label %if.end38.i.do.end48.i_crit_edge

if.end38.i.do.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

if.end38.thread.i:                                ; preds = %if.end27.i91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull @.str.206) #10
  %56 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq3.i, align 4
  %and4398.i = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4398.i)
  %tobool44.not99.i = icmp eq i32 %and4398.i, 0
  br i1 %tobool44.not99.i, label %if.end38.thread.i.do.end54.i_crit_edge, label %if.end38.thread.i.do.end48.i_crit_edge

if.end38.thread.i.do.end48.i_crit_edge:           ; preds = %if.end38.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

if.end38.thread.i.do.end54.i_crit_edge:           ; preds = %if.end38.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

do.end48.i:                                       ; preds = %if.end38.thread.i.do.end48.i_crit_edge, %if.end38.i.do.end48.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull @.str.209) #10
  br label %do.end54.i

if.end49.i:                                       ; preds = %if.end38.i
  br i1 %alert_userspace.1.off0.i, label %if.end49.i.do.end54.i_crit_edge, label %if.end43

if.end49.i.do.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.end49.i.do.end54.i_crit_edge, %do.end48.i, %if.end38.thread.i.do.end54.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i73, ptr noundef nonnull @.str.212) #10
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %voreg.i.i = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 9
  %60 = ptrtoint ptr %voreg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %voreg.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %do.end54.i
  %i.08.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %do.end54.i ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr @rt9455_voreg_values, i32 %i.08.i.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %61)
  %cmp1.not.i.i.i.i = icmp slt i32 %63, %61
  br i1 %cmp1.not.i.i.i.i, label %for.inc.i.i.i.i, label %for.body.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge

for.body.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.08.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i.i

rt9455_set_field_val.exit.i.i:                    ; preds = %for.inc.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge, %for.body.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %i.08.i.i.i.i, %for.body.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge ], [ 63, %for.inc.i.i.i.i.rt9455_set_field_val.exit.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.rt9455_info, ptr %data, i32 0, i32 2, i32 11
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %65, i32 noundef -1, i32 noundef %retval.0.i.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end61.i, label %do.end60.i

do.end60.i:                                       ; preds = %rt9455_set_field_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.82) #10
  br label %do.end42

if.end61.i:                                       ; preds = %rt9455_set_field_val.exit.i.i
  %arrayidx.i92 = getelementptr %struct.rt9455_info, ptr %data, i32 0, i32 2, i32 10
  %66 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i92, align 4
  %call.i.i93 = call i32 @regmap_field_update_bits_base(ptr noundef %67, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool63.not.i = icmp eq i32 %call.i.i93, 0
  br i1 %tobool63.not.i, label %if.end43.thread, label %if.end61.i.do.end42_crit_edge

if.end61.i.do.end42_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end43.thread:                                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %alert_userspace to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %alert_userspace, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq3.i) #7
  br label %if.then45

do.end42:                                         ; preds = %if.end61.i.do.end42_crit_edge, %do.end60.i, %if.end.i80.do.end42_crit_edge, %if.end36.do.end42_crit_edge
  %.str.194.sink = phi ptr [ @.str.72, %do.end60.i ], [ @.str.194, %if.end36.do.end42_crit_edge ], [ @.str.197, %if.end.i80.do.end42_crit_edge ], [ @.str.76, %if.end61.i.do.end42_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull %.str.194.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq3.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.143) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end49.i
  %69 = ptrtoint ptr %alert_userspace to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %alert_userspace, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask3.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq3.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool44.not = icmp eq i8 %.pr, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.end43.if.then45_crit_edge

if.end43.if.then45_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %if.end43.if.then45_crit_edge, %if.end43.thread
  %charger = getelementptr inbounds %struct.rt9455_info, ptr %data, i32 0, i32 3
  %70 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %charger, align 4
  %tobool46.not = icmp eq ptr %71, null
  br i1 %tobool46.not, label %if.then45.cleanup_crit_edge, label %if.then47

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  call void @power_supply_changed(ptr noundef nonnull %71) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end42, %do.end35, %do.end27, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end10 ], [ 1, %do.end27 ], [ 1, %do.end35 ], [ 1, %do.end42 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then45.cleanup_crit_edge ], [ 1, %if.then47 ], [ 1, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %alert_userspace) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt9455_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 7
  %switch.cast = trunc i32 %switch.tableidx to i8
  %switch.downshift = lshr i8 30, %switch.cast
  %1 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.masked = icmp ne i8 %1, 0
  %retval.0 = select i1 %0, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt9455_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i4
  %1 = sext i4 %switch.cast to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %switch.masked = icmp eq i4 %switch.cast, 1
  %retval.0 = or i1 %0, %switch.masked
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_usb_event_none(ptr nocapture noundef readonly %info, i8 noundef zeroext %opa_mode, i8 noundef zeroext %iaicr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %opa_mode)
  %cmp = icmp eq i8 %opa_mode, 1
  br i1 %cmp, label %if.then, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then:                                          ; preds = %entry
  %voreg.i = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 9
  %2 = ptrtoint ptr %voreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %voreg.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i.i.i = getelementptr i32, ptr @rt9455_voreg_values, i32 %i.08.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not.i.i.i = icmp slt i32 %5, %3
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge

for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

rt9455_set_field_val.exit.i:                      ; preds = %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %i.08.i.i.i, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge ], [ 63, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %retval.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4, label %do.end

do.end:                                           ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82) #10
  br label %cleanup.sink.split

do.body4:                                         ; preds = %rt9455_set_field_val.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_none.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_none, %do.end13)) #7
          to label %if.then10 [label %do.end13], !srcloc !531

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_none.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.74) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body4
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end13.do.body22_crit_edge, label %do.end13.cleanup.sink.split_crit_edge

do.end13.cleanup.sink.split_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end13.do.body22_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %do.end13.do.body22_crit_edge, %entry.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_none.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_none, %do.end39)) #7
          to label %if.then36 [label %do.end39], !srcloc !531

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_none.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.78) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iaicr)
  %cmp41.not = icmp eq i8 %iaicr, 0
  br i1 %cmp41.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  %arrayidx45 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx45, align 4
  %call.i68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool47.not = icmp eq i32 %call.i68, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then43.cleanup.sink.split_crit_edge

if.then43.cleanup.sink.split_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43.cleanup.sink.split_crit_edge, %do.end13.cleanup.sink.split_crit_edge, %do.end
  %.str.80.sink = phi ptr [ @.str.72, %do.end ], [ @.str.76, %do.end13.cleanup.sink.split_crit_edge ], [ @.str.80, %if.then43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i, %do.end ], [ 0, %do.end13.cleanup.sink.split_crit_edge ], [ 0, %if.then43.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.80.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then43.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then43.cleanup_crit_edge ], [ 1, %do.end39.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_usb_event_vbus(ptr nocapture noundef readonly %info, i8 noundef zeroext %opa_mode, i8 noundef zeroext %iaicr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %opa_mode)
  %cmp = icmp eq i8 %opa_mode, 1
  br i1 %cmp, label %if.then, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then:                                          ; preds = %entry
  %voreg.i = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 9
  %2 = ptrtoint ptr %voreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %voreg.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i.i.i = getelementptr i32, ptr @rt9455_voreg_values, i32 %i.08.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not.i.i.i = icmp slt i32 %5, %3
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge

for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

rt9455_set_field_val.exit.i:                      ; preds = %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %i.08.i.i.i, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge ], [ 63, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %retval.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4, label %do.end

do.end:                                           ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82) #10
  br label %cleanup.sink.split

do.body4:                                         ; preds = %rt9455_set_field_val.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_vbus, %do.end13)) #7
          to label %if.then10 [label %do.end13], !srcloc !531

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.85) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body4
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end13.do.body22_crit_edge, label %do.end13.cleanup.sink.split_crit_edge

do.end13.cleanup.sink.split_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end13.do.body22_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %do.end13.do.body22_crit_edge, %entry.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_vbus, %do.end39)) #7
          to label %if.then36 [label %do.end39], !srcloc !531

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug301, ptr noundef %dev1, ptr noundef nonnull @.str.88) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body22
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %iaicr)
  %cmp41.not = icmp eq i8 %iaicr, 1
  br i1 %cmp41.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  %arrayidx45 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx45, align 4
  %call.i68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool47.not = icmp eq i32 %call.i68, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then43.cleanup.sink.split_crit_edge

if.then43.cleanup.sink.split_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43.cleanup.sink.split_crit_edge, %do.end13.cleanup.sink.split_crit_edge, %do.end
  %.str.80.sink = phi ptr [ @.str.72, %do.end ], [ @.str.76, %do.end13.cleanup.sink.split_crit_edge ], [ @.str.80, %if.then43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i, %do.end ], [ 0, %do.end13.cleanup.sink.split_crit_edge ], [ 0, %if.then43.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.80.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then43.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then43.cleanup_crit_edge ], [ 1, %do.end39.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_usb_event_id(ptr nocapture noundef readonly %info, i8 noundef zeroext %opa_mode, i8 noundef zeroext %iaicr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opa_mode)
  %cmp = icmp eq i8 %opa_mode, 0
  br i1 %cmp, label %if.then, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then:                                          ; preds = %entry
  %boost_voltage.i = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 10
  %2 = ptrtoint ptr %boost_voltage.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %boost_voltage.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i.i.i = getelementptr i32, ptr @rt9455_boost_voltage_values, i32 %i.08.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not.i.i.i = icmp slt i32 %5, %3
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge

for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

rt9455_set_field_val.exit.i:                      ; preds = %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %i.08.i.i.i, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge ], [ 63, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %retval.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4, label %do.end

do.end:                                           ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.100) #10
  br label %cleanup.sink.split

do.body4:                                         ; preds = %rt9455_set_field_val.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_id.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_id, %do.end13)) #7
          to label %if.then10 [label %do.end13], !srcloc !531

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_id.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.93) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body4
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end13.do.body22_crit_edge, label %do.end13.cleanup.sink.split_crit_edge

do.end13.cleanup.sink.split_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end13.do.body22_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %do.end13.do.body22_crit_edge, %entry.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_id.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_id, %do.end39)) #7
          to label %if.then36 [label %do.end39], !srcloc !531

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_id.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.97) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iaicr)
  %cmp41.not = icmp eq i8 %iaicr, 0
  br i1 %cmp41.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  %arrayidx45 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx45, align 4
  %call.i68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool47.not = icmp eq i32 %call.i68, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then43.cleanup.sink.split_crit_edge

if.then43.cleanup.sink.split_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43.cleanup.sink.split_crit_edge, %do.end13.cleanup.sink.split_crit_edge, %do.end
  %.str.80.sink = phi ptr [ @.str.91, %do.end ], [ @.str.95, %do.end13.cleanup.sink.split_crit_edge ], [ @.str.80, %if.then43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i, %do.end ], [ 0, %do.end13.cleanup.sink.split_crit_edge ], [ 0, %if.then43.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.80.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then43.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then43.cleanup_crit_edge ], [ 1, %do.end39.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_usb_event_charger(ptr nocapture noundef readonly %info, i8 noundef zeroext %opa_mode, i8 noundef zeroext %iaicr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %opa_mode)
  %cmp = icmp eq i8 %opa_mode, 1
  br i1 %cmp, label %if.then, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then:                                          ; preds = %entry
  %voreg.i = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 9
  %2 = ptrtoint ptr %voreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %voreg.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i.i.i = getelementptr i32, ptr @rt9455_voreg_values, i32 %i.08.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.not.i.i.i = icmp slt i32 %5, %3
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge

for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_set_field_val.exit.i

rt9455_set_field_val.exit.i:                      ; preds = %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %i.08.i.i.i, %for.body.i.i.i.rt9455_set_field_val.exit.i_crit_edge ], [ 63, %for.inc.i.i.i.rt9455_set_field_val.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 11
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %retval.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4, label %do.end

do.end:                                           ; preds = %rt9455_set_field_val.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82) #10
  br label %cleanup.sink.split

do.body4:                                         ; preds = %rt9455_set_field_val.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_charger.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_charger, %do.end13)) #7
          to label %if.then10 [label %do.end13], !srcloc !531

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_charger.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.103) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body4
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end13.do.body22_crit_edge, label %do.end13.cleanup.sink.split_crit_edge

do.end13.cleanup.sink.split_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end13.do.body22_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.body22:                                        ; preds = %do.end13.do.body22_crit_edge, %entry.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_usb_event_charger.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_usb_event_charger, %do.end39)) #7
          to label %if.then36 [label %do.end39], !srcloc !531

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_usb_event_charger.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.106) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body22
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %iaicr)
  %cmp41.not = icmp eq i8 %iaicr, 3
  br i1 %cmp41.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  %arrayidx45 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx45, align 4
  %call.i68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool47.not = icmp eq i32 %call.i68, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then43.cleanup.sink.split_crit_edge

if.then43.cleanup.sink.split_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then43.cleanup.sink.split_crit_edge, %do.end13.cleanup.sink.split_crit_edge, %do.end
  %.str.80.sink = phi ptr [ @.str.72, %do.end ], [ @.str.76, %do.end13.cleanup.sink.split_crit_edge ], [ @.str.80, %if.then43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i, %do.end ], [ 0, %do.end13.cleanup.sink.split_crit_edge ], [ 0, %if.then43.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.80.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then43.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then43.cleanup_crit_edge ], [ 1, %do.end39.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_irq_handler_check_irq2_register(ptr noundef %info, i1 noundef zeroext %is_battery_absent, ptr nocapture noundef writeonly %_alert_userspace) unnamed_addr #2 align 64 {
entry:
  %irq2 = alloca i32, align 4
  %mask2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq2) #7
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq2, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask2) #7
  %1 = ptrtoint ptr %mask2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask2, align 4, !annotation !530
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %irq2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.169) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %mask2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.161) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq2, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end9.if.end25_crit_edge, label %do.body13

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body13:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_irq_handler_check_irq2_register, %do.end23)) #7
          to label %if.then20 [label %do.end23], !srcloc !531

if.then20:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.173) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %10 = load ptr, ptr @system_power_efficient_wq, align 4
  %pwr_rdy_work = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 6
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %pwr_rdy_work, i32 noundef 100) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end9.if.end25_crit_edge
  %11 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq2, align 4
  %and30 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end25.if.end36_crit_edge, label %do.end35

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.175) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %if.end25.if.end36_crit_edge
  %13 = xor i1 %tobool31.not, true
  %14 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq2, align 4
  %and41 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end36.if.end84_crit_edge, label %do.body44

if.end36.if.end84_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

do.body44:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_irq_handler_check_irq2_register, %do.end61)) #7
          to label %if.then58 [label %do.end61], !srcloc !531

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.177) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body44
  br i1 %is_battery_absent, label %do.end61.if.end84_crit_edge, label %if.then63

do.end61.if.end84_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then63:                                        ; preds = %do.end61
  %16 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask2, align 4
  %and68 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp = icmp eq i32 %and68, 0
  br i1 %cmp, label %if.then69, label %if.then63.if.end81_crit_edge

if.then63.if.end81_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then69:                                        ; preds = %if.then63
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 46
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call.i248 = call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool71.not = icmp eq i32 %call.i248, 0
  br i1 %tobool71.not, label %if.end76, label %do.end75

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.179) #10
  br label %cleanup

if.end76:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask2, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %mask2, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end76, %if.then63.if.end81_crit_edge
  %max_charging_time_work = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 7
  %call82 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %max_charging_time_work) #7
  br label %if.end84

if.end84:                                         ; preds = %if.end81, %do.end61.if.end84_crit_edge, %if.end36.if.end84_crit_edge
  %alert_userspace.1.off0 = phi i1 [ %13, %do.end61.if.end84_crit_edge ], [ true, %if.end81 ], [ %13, %if.end36.if.end84_crit_edge ]
  %22 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq2, align 4
  %and89 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end84.if.end146_crit_edge, label %do.body92

if.end84.if.end146_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

do.body92:                                        ; preds = %if.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_irq_handler_check_irq2_register, %do.end109)) #7
          to label %if.then106 [label %do.end109], !srcloc !531

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.181) #7
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.body92
  %arrayidx111 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 25
  %24 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx111, align 4
  %call.i249 = call i32 @regmap_field_update_bits_base(ptr noundef %25, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool113.not = icmp eq i32 %call.i249, 0
  br i1 %tobool113.not, label %if.end118, label %do.end117

do.end117:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.114) #10
  br label %cleanup

if.end118:                                        ; preds = %do.end109
  %26 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask2, align 4
  %and123 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end118.if.end140_crit_edge, label %if.then125

if.end118.if.end140_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then125:                                       ; preds = %if.end118
  %arrayidx127 = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 46
  %28 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx127, align 4
  %call.i250 = call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool129.not = icmp eq i32 %call.i250, 0
  br i1 %tobool129.not, label %if.end134, label %do.end133

do.end133:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.164) #10
  br label %cleanup

if.end134:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask2, align 4
  %and139 = and i32 %31, -17
  store i32 %and139, ptr %mask2, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end134, %if.end118.if.end140_crit_edge
  br i1 %is_battery_absent, label %if.end140.if.end146_crit_edge, label %if.then142

if.end140.if.end146_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %32 = load ptr, ptr @system_power_efficient_wq, align 4
  %max_charging_time_work143 = getelementptr inbounds %struct.rt9455_info, ptr %info, i32 0, i32 7
  %call.i251 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %max_charging_time_work143, i32 noundef 2160000) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %if.end140.if.end146_crit_edge, %if.end84.if.end146_crit_edge
  %alert_userspace.2.off0 = phi i1 [ %alert_userspace.1.off0, %if.end140.if.end146_crit_edge ], [ true, %if.then142 ], [ %alert_userspace.1.off0, %if.end84.if.end146_crit_edge ]
  %33 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq2, align 4
  %and151 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end146.if.end157_crit_edge, label %do.end156

if.end146.if.end157_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

do.end156:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.187) #10
  br label %if.end157

if.end157:                                        ; preds = %do.end156, %if.end146.if.end157_crit_edge
  %alert_userspace.3.off0 = phi i1 [ true, %do.end156 ], [ %alert_userspace.2.off0, %if.end146.if.end157_crit_edge ]
  %35 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq2, align 4
  %and162 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end157.if.end168_crit_edge, label %do.end167

if.end157.if.end168_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

do.end167:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.190) #10
  br label %if.end168

if.end168:                                        ; preds = %do.end167, %if.end157.if.end168_crit_edge
  %alert_userspace.4.off0 = phi i1 [ true, %do.end167 ], [ %alert_userspace.3.off0, %if.end157.if.end168_crit_edge ]
  %37 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq2, align 4
  %and173 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end168.if.end194_crit_edge, label %do.body176

if.end168.if.end194_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

do.body176:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rt9455_irq_handler_check_irq2_register, %if.end194)) #7
          to label %if.then190 [label %if.end194], !srcloc !531

if.then190:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.193) #7
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %do.body176, %if.end168.if.end194_crit_edge
  br i1 %alert_userspace.4.off0, label %if.then196, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then196:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %_alert_userspace to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %_alert_userspace, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then196, %if.end194.cleanup_crit_edge, %do.end133, %do.end117, %do.end75, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call.i249, %do.end117 ], [ %call.i250, %do.end133 ], [ %call.i248, %do.end75 ], [ 0, %if.then196 ], [ 0, %if.end194.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq2) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt9455_register_reset(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #7
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v, align 4, !annotation !530
  %arrayidx = getelementptr %struct.rt9455_info, ptr %info, i32 0, i32 2, i32 16
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %4, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %do.end

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.255) #10
  br label %cleanup

do.body2:                                         ; preds = %if.end14.do.body2_crit_edge, %entry.do.body2_crit_edge
  %limit.0 = phi i32 [ %dec, %if.end14.do.body2_crit_edge ], [ 100, %entry.do.body2_crit_edge ]
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.258) #10
  br label %cleanup

if.end11:                                         ; preds = %do.body2
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %dec = add nsw i32 %limit.0, -1
  %tobool16.not = icmp eq i32 %dec, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body2_crit_edge

if.end14.do.body2_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %do.end10 ], [ -5, %if.end14.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt9455_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %v.i18.i = alloca i32, align 4
  %v.i.i73 = alloca i32, align 4
  %v.i.i65 = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  %v.i55 = alloca i32, align 4
  %v.i47 = alloca i32, align 4
  %v.i40 = alloca i32, align 4
  %v.i = alloca i32, align 4
  %pwr_rdy.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 29, label %sw.bb8
    i32 30, label %sw.bb10
    i32 31, label %sw.bb12
    i32 32, label %sw.bb14
    i32 66, label %sw.bb16
    i32 68, label %sw.bb17
    i32 73, label %sw.bb19
    i32 74, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #7
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v.i, align 4, !annotation !530
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwr_rdy.i) #7
  %2 = ptrtoint ptr %pwr_rdy.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pwr_rdy.i, align 4, !annotation !530
  %regmap_fields.i = getelementptr inbounds %struct.rt9455_info, ptr %call, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %pwr_rdy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.109) #10
  br label %rt9455_charger_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %pwr_rdy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %val, align 4
  br label %rt9455_charger_get_status.exit

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %regmap_fields.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_fields.i, align 4
  %call6.i = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %v.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end14.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.133) #10
  br label %rt9455_charger_get_status.exit

if.end14.i:                                       ; preds = %if.end3.i
  %14 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %15, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %val, align 4
  br label %rt9455_charger_get_status.exit

sw.bb15.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val, align 4
  br label %rt9455_charger_get_status.exit

sw.bb16.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %val, align 4
  br label %rt9455_charger_get_status.exit

sw.default.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  br label %rt9455_charger_get_status.exit

rt9455_charger_get_status.exit:                   ; preds = %sw.default.i, %sw.bb16.i, %sw.bb15.i, %sw.bb.i, %do.end11.i, %if.then2.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call6.i, %do.end11.i ], [ 0, %sw.default.i ], [ 0, %sw.bb16.i ], [ 0, %sw.bb15.i ], [ 0, %sw.bb.i ], [ 0, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwr_rdy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i40) #7
  %23 = ptrtoint ptr %v.i40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %v.i40, align 4, !annotation !530
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %val, align 4
  %regmap.i = getelementptr inbounds %struct.rt9455_info, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i41 = call i32 @regmap_read(ptr noundef %26, i32 noundef 8, ptr noundef nonnull %v.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i44, label %do.end.i43

do.end.i43:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.121) #10
  br label %rt9455_charger_get_health.exit

if.end.i44:                                       ; preds = %sw.bb2
  %27 = ptrtoint ptr %v.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v.i40, align 4
  %and.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end5.i:                                        ; preds = %if.end.i44
  %and10.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end13.i:                                       ; preds = %if.end5.i
  %and18.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end21.i:                                       ; preds = %if.end13.i
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call23.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 9, ptr noundef nonnull %v.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end29.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.169) #10
  br label %rt9455_charger_get_health.exit

if.end29.i:                                       ; preds = %if.end21.i
  %34 = ptrtoint ptr %v.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v.i40, align 4
  %and34.i = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end37.i:                                       ; preds = %if.end29.i
  %and42.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end45.i:                                       ; preds = %if.end37.i
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call47.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 10, ptr noundef nonnull %v.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end53.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.194) #10
  br label %rt9455_charger_get_health.exit

if.end53.i:                                       ; preds = %if.end45.i
  %40 = ptrtoint ptr %v.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v.i40, align 4
  %and58.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end61.i:                                       ; preds = %if.end53.i
  %and66.i = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end69.i:                                       ; preds = %if.end61.i
  %and74.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end77.i:                                       ; preds = %if.end69.i
  %and82.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

if.end85.i:                                       ; preds = %if.end77.i
  %regmap_fields.i45 = getelementptr inbounds %struct.rt9455_info, ptr %call, i32 0, i32 2
  %46 = ptrtoint ptr %regmap_fields.i45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap_fields.i45, align 4
  %call86.i = call i32 @regmap_field_read(ptr noundef %47, ptr noundef nonnull %v.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end92.i, label %do.end91.i

do.end91.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.133) #10
  br label %rt9455_charger_get_health.exit

if.end92.i:                                       ; preds = %if.end85.i
  %48 = ptrtoint ptr %v.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %v.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp.i = icmp eq i32 %49, 3
  br i1 %cmp.i, label %if.then93.i, label %if.end92.i.rt9455_charger_get_health.exit_crit_edge

if.end92.i.rt9455_charger_get_health.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt9455_charger_get_health.exit

if.then93.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %val, align 4
  br label %rt9455_charger_get_health.exit

rt9455_charger_get_health.exit:                   ; preds = %if.then93.i, %if.end92.i.rt9455_charger_get_health.exit_crit_edge, %do.end91.i, %if.then84.i, %if.then76.i, %if.then68.i, %if.then60.i, %do.end52.i, %if.then44.i, %if.then36.i, %do.end28.i, %if.then20.i, %if.then12.i, %if.then4.i, %do.end.i43
  %retval.0.i46 = phi i32 [ %call.i41, %do.end.i43 ], [ 0, %if.then4.i ], [ 0, %if.then12.i ], [ 0, %if.then20.i ], [ %call23.i, %do.end28.i ], [ 0, %if.then36.i ], [ 0, %if.then44.i ], [ %call47.i, %do.end52.i ], [ 0, %if.then60.i ], [ 0, %if.then68.i ], [ 0, %if.then76.i ], [ 0, %if.then84.i ], [ %call86.i, %do.end91.i ], [ 0, %if.then93.i ], [ 0, %if.end92.i.rt9455_charger_get_health.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i40) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i47) #7
  %51 = ptrtoint ptr %v.i47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %v.i47, align 4, !annotation !530
  %arrayidx.i48 = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 29
  %52 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i48, align 4
  %call.i49 = call i32 @regmap_field_read(ptr noundef %53, ptr noundef nonnull %v.i47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %if.end.i54, label %do.end.i52

do.end.i52:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  %dev.i51 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51, ptr noundef nonnull @.str.272) #10
  br label %rt9455_charger_get_battery_presence.exit

if.end.i54:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %v.i47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %v.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool1.not.i53 = icmp eq i32 %57, 0
  %lnot.ext.i = zext i1 %tobool1.not.i53 to i32
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %lnot.ext.i, ptr %val, align 4
  br label %rt9455_charger_get_battery_presence.exit

rt9455_charger_get_battery_presence.exit:         ; preds = %if.end.i54, %do.end.i52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i47) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i55) #7
  %59 = ptrtoint ptr %v.i55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %v.i55, align 4, !annotation !530
  %arrayidx.i56 = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i56, align 4
  %call.i57 = call i32 @regmap_field_read(ptr noundef %61, ptr noundef nonnull %v.i55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i61, label %do.end.i60

do.end.i60:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call, align 4
  %dev.i59 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59, ptr noundef nonnull @.str.109) #10
  br label %rt9455_charger_get_online.exit

if.end.i61:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %v.i55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v.i55, align 4
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %val, align 4
  br label %rt9455_charger_get_online.exit

rt9455_charger_get_online.exit:                   ; preds = %if.end.i61, %do.end.i60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i55) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #7
  %67 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %v.i.i, align 4, !annotation !530
  %arrayidx.i.i = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 22
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %69, ptr noundef nonnull %v.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i64, label %do.end.i63

do.end.i63:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #7
  %70 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call, align 4
  %dev.i62 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i62, ptr noundef nonnull @.str.275) #10
  br label %cleanup

if.end.i64:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %v.i.i, align 4
  %74 = call i32 @llvm.umin.i32(i32 %73, i32 7) #7
  %arrayidx1.i.i = getelementptr i32, ptr @rt9455_ichrg_values, i32 %74
  %75 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #7
  %77 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1550000, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i65) #7
  %79 = ptrtoint ptr %v.i.i65 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %v.i.i65, align 4, !annotation !530
  %arrayidx.i.i66 = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 11
  %80 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i66, align 4
  %call.i.i67 = call i32 @regmap_field_read(ptr noundef %81, ptr noundef nonnull %v.i.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i.i68, label %if.end.i72, label %do.end.i70

do.end.i70:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i65) #7
  %82 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call, align 4
  %dev.i69 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i69, ptr noundef nonnull @.str.277) #10
  br label %cleanup

if.end.i72:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %v.i.i65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %v.i.i65, align 4
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 63) #7
  %arrayidx1.i.i71 = getelementptr i32, ptr @rt9455_voreg_values, i32 %86
  %87 = ptrtoint ptr %arrayidx1.i.i71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx1.i.i71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i65) #7
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4450000, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %92 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call, align 4
  %dev1.i74 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i73) #7
  %94 = ptrtoint ptr %v.i.i73 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %v.i.i73, align 4, !annotation !530
  %arrayidx.i.i75 = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 22
  %95 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i75, align 4
  %call.i.i76 = call i32 @regmap_field_read(ptr noundef %96, ptr noundef nonnull %v.i.i73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %call.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i80, label %do.end.i78

do.end.i78:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i73) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i74, ptr noundef nonnull @.str.275) #10
  br label %cleanup

if.end.i80:                                       ; preds = %sw.bb17
  %97 = ptrtoint ptr %v.i.i73 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %v.i.i73, align 4
  %99 = call i32 @llvm.umin.i32(i32 %98, i32 7) #7
  %arrayidx1.i.i79 = getelementptr i32, ptr @rt9455_ichrg_values, i32 %99
  %100 = ptrtoint ptr %arrayidx1.i.i79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx1.i.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i73) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i18.i) #7
  %102 = ptrtoint ptr %v.i18.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %v.i18.i, align 4, !annotation !530
  %arrayidx.i19.i = getelementptr %struct.rt9455_info, ptr %call, i32 0, i32 2, i32 20
  %103 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i19.i, align 4
  %call.i20.i = call i32 @regmap_field_read(ptr noundef %104, ptr noundef nonnull %v.i18.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i18.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i74, ptr noundef nonnull @.str.281) #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %v.i18.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %v.i18.i, align 4
  %107 = call i32 @llvm.umin.i32(i32 %106, i32 3) #7
  %arrayidx1.i24.i = getelementptr i32, ptr @rt9455_ieoc_percentage_values, i32 %107
  %108 = ptrtoint ptr %arrayidx1.i24.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx1.i24.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i18.i) #7
  %mul.i = mul i32 %109, %101
  %div.i = sdiv i32 %mul.i, 100
  %110 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div.i, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.260, ptr %val, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.261, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb19, %if.end8.i, %do.end7.i, %do.end.i78, %sw.bb16, %sw.bb14, %if.end.i72, %do.end.i70, %sw.bb10, %if.end.i64, %do.end.i63, %rt9455_charger_get_online.exit, %rt9455_charger_get_battery_presence.exit, %rt9455_charger_get_health.exit, %rt9455_charger_get_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb20 ], [ 0, %sw.bb19 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ %call.i57, %rt9455_charger_get_online.exit ], [ %call.i49, %rt9455_charger_get_battery_presence.exit ], [ %retval.0.i46, %rt9455_charger_get_health.exit ], [ %retval.0.i, %rt9455_charger_get_status.exit ], [ -61, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i63 ], [ 0, %if.end.i64 ], [ %call.i.i67, %do.end.i70 ], [ 0, %if.end.i72 ], [ %call.i.i76, %do.end.i78 ], [ %call.i20.i, %do.end7.i ], [ 0, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !213, !214, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !316, !317, !319, !320, !322, !323, !324, !326, !327, !329, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !352, !354, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !382, !384, !385, !387, !388, !390, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !444, !446, !447, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !469, !470, !472, !473, !475, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !500, !502, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !519}
!llvm.module.flags = !{!521, !522, !523, !524, !525, !526, !527, !528}
!llvm.ident = !{!529}

!0 = !{ptr @__initcall__kmod_rt9455_charger__309_1752_rt9455_driver_init6, !1, !"__initcall__kmod_rt9455_charger__309_1752_rt9455_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1752, i32 1}
!2 = !{ptr @__exitcall_rt9455_driver_exit, !1, !"__exitcall_rt9455_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file310, !4, !"__UNIQUE_ID_file310", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1754, i32 1}
!5 = !{ptr @__UNIQUE_ID_license311, !4, !"__UNIQUE_ID_license311", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author312, !7, !"__UNIQUE_ID_author312", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1755, i32 1}
!8 = !{ptr @__UNIQUE_ID_description313, !9, !"__UNIQUE_ID_description313", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1756, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1747, i32 12}
!12 = !{ptr @rt9455_driver, !13, !"rt9455_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1742, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1602, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rt9455_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rt9455_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rt9455_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1612, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1615, i32 3}
!27 = !{ptr @rt9455_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt9455_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1624, i32 4}
!31 = !{ptr @rt9455_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rt9455_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1633, i32 3}
!35 = !{ptr @rt9455_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rt9455_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1640, i32 3}
!39 = !{ptr @rt9455_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rt9455_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1645, i32 4}
!43 = !{ptr @rt9455_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rt9455_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rt9455_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1655, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rt9455_probe.__key.23, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rt9455_probe.__key.25, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1656, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rt9455_probe.__key.27, !51, !"__key", i1 false, i1 false}
!54 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rt9455_probe.__key.29, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1658, i32 2}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rt9455_probe.__key.31, !56, !"__key", i1 false, i1 false}
!59 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1671, i32 3}
!62 = !{ptr @rt9455_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rt9455_probe._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1677, i32 3}
!66 = !{ptr @rt9455_probe._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rt9455_probe._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1684, i32 3}
!70 = !{ptr @rt9455_probe._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rt9455_probe._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @rt9455_regmap_config, !73, !"rt9455_regmap_config", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1575, i32 35}
!74 = !{ptr @rt9455_reg_fields, !75, !"rt9455_reg_fields", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/rt9455_charger.c", i32 95, i32 31}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1191, i32 3}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rt9455_discover_charger._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rt9455_discover_charger._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1198, i32 38}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1201, i32 3}
!85 = !{ptr @rt9455_discover_charger._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rt9455_discover_charger._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1205, i32 38}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1208, i32 3}
!91 = !{ptr @rt9455_discover_charger._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rt9455_discover_charger._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1213, i32 12}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1216, i32 3}
!97 = !{ptr @rt9455_discover_charger._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rt9455_discover_charger._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1220, i32 38}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1223, i32 3}
!103 = !{ptr @rt9455_discover_charger._entry.57, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rt9455_discover_charger._entry_ptr.59, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1231, i32 32}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1233, i32 32}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1415, i32 3}
!111 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rt9455_usb_event._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @rt9455_usb_event._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1422, i32 3}
!116 = !{ptr @rt9455_usb_event._entry.64, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @rt9455_usb_event._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1426, i32 2}
!120 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rt9455_usb_event.__UNIQUE_ID_ddebug306, !119, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1437, i32 3}
!124 = !{ptr @rt9455_usb_event._entry.69, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @rt9455_usb_event._entry_ptr.71, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1249, i32 4}
!128 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rt9455_usb_event_none._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rt9455_usb_event_none._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1258, i32 3}
!133 = !{ptr @rt9455_usb_event_none.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!134 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1262, i32 4}
!136 = !{ptr @rt9455_usb_event_none._entry.75, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @rt9455_usb_event_none._entry_ptr.77, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1267, i32 2}
!140 = !{ptr @rt9455_usb_event_none.__UNIQUE_ID_ddebug299, !139, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1272, i32 4}
!143 = !{ptr @rt9455_usb_event_none._entry.79, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @rt9455_usb_event_none._entry_ptr.81, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/rt9455_charger.c", i32 843, i32 3}
!147 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @rt9455_set_voreg_before_charge_mode._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @rt9455_set_voreg_before_charge_mode._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @rt9455_voreg_values, !151, !"rt9455_voreg_values", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/rt9455_charger.c", i32 185, i32 18}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1289, i32 4}
!154 = !{ptr @rt9455_usb_event_vbus._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @rt9455_usb_event_vbus._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1298, i32 3}
!158 = !{ptr @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug300, !157, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!159 = !{ptr @rt9455_usb_event_vbus._entry.86, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1302, i32 4}
!161 = !{ptr @rt9455_usb_event_vbus._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1307, i32 2}
!164 = !{ptr @rt9455_usb_event_vbus.__UNIQUE_ID_ddebug301, !163, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!165 = !{ptr @rt9455_usb_event_vbus._entry.89, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1312, i32 4}
!167 = !{ptr @rt9455_usb_event_vbus._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1329, i32 4}
!170 = !{ptr @.str.92, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rt9455_usb_event_id._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @rt9455_usb_event_id._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1338, i32 3}
!175 = !{ptr @rt9455_usb_event_id.__UNIQUE_ID_ddebug302, !174, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1342, i32 4}
!178 = !{ptr @rt9455_usb_event_id._entry.94, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @rt9455_usb_event_id._entry_ptr.96, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1347, i32 2}
!182 = !{ptr @rt9455_usb_event_id.__UNIQUE_ID_ddebug303, !181, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!183 = !{ptr @rt9455_usb_event_id._entry.98, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1352, i32 4}
!185 = !{ptr @rt9455_usb_event_id._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/rt9455_charger.c", i32 817, i32 3}
!188 = !{ptr @.str.101, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @rt9455_set_boost_voltage_before_boost_mode._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @rt9455_set_boost_voltage_before_boost_mode._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @rt9455_boost_voltage_values, !192, !"rt9455_boost_voltage_values", i1 false, i1 false}
!192 = !{!"../drivers/power/supply/rt9455_charger.c", i32 201, i32 18}
!193 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1369, i32 4}
!195 = !{ptr @rt9455_usb_event_charger._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rt9455_usb_event_charger._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1378, i32 3}
!199 = !{ptr @rt9455_usb_event_charger.__UNIQUE_ID_ddebug304, !198, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!200 = !{ptr @rt9455_usb_event_charger._entry.104, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1382, i32 4}
!202 = !{ptr @rt9455_usb_event_charger._entry_ptr.105, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1387, i32 2}
!205 = !{ptr @rt9455_usb_event_charger.__UNIQUE_ID_ddebug305, !204, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!206 = !{ptr @rt9455_usb_event_charger._entry.107, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1392, i32 4}
!208 = !{ptr @rt9455_usb_event_charger._entry_ptr.108, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1453, i32 3}
!211 = !{ptr @.str.110, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @rt9455_pwr_rdy_work_callback._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @rt9455_pwr_rdy_work_callback._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1458, i32 3}
!216 = !{ptr @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug307, !215, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1462, i32 3}
!219 = !{ptr @rt9455_pwr_rdy_work_callback.__UNIQUE_ID_ddebug308, !218, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!220 = !{ptr @.str.114, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1466, i32 4}
!222 = !{ptr @rt9455_pwr_rdy_work_callback._entry.113, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @rt9455_pwr_rdy_work_callback._entry_ptr.115, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1488, i32 2}
!226 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @rt9455_max_charging_time_work_callback._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @rt9455_max_charging_time_work_callback._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1492, i32 3}
!231 = !{ptr @rt9455_max_charging_time_work_callback._entry.118, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @rt9455_max_charging_time_work_callback._entry_ptr.120, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.121, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1505, i32 3}
!235 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @rt9455_batt_presence_work_callback._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @rt9455_batt_presence_work_callback._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.124, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1524, i32 4}
!240 = !{ptr @rt9455_batt_presence_work_callback._entry.123, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @rt9455_batt_presence_work_callback._entry_ptr.125, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1532, i32 5}
!244 = !{ptr @rt9455_batt_presence_work_callback._entry.126, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @rt9455_batt_presence_work_callback._entry_ptr.128, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.129, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/power/supply/rt9455_charger.c", i32 349, i32 2}
!248 = !{ptr @rt9455_charger_supplied_to, !249, !"rt9455_charger_supplied_to", i1 false, i1 false}
!249 = !{!"../drivers/power/supply/rt9455_charger.c", i32 348, i32 14}
!250 = !{ptr @.str.130, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1128, i32 3}
!252 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @rt9455_irq_handler_thread._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @rt9455_irq_handler_thread._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.133, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1134, i32 3}
!257 = !{ptr @rt9455_irq_handler_thread._entry.132, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @rt9455_irq_handler_thread._entry_ptr.134, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.135, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1137, i32 2}
!261 = !{ptr @rt9455_irq_handler_thread.__UNIQUE_ID_ddebug297, !260, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!262 = !{ptr @.str.137, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1153, i32 3}
!264 = !{ptr @rt9455_irq_handler_thread._entry.136, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @rt9455_irq_handler_thread._entry_ptr.138, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1160, i32 3}
!268 = !{ptr @rt9455_irq_handler_thread._entry.139, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @rt9455_irq_handler_thread._entry_ptr.141, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.143, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1166, i32 3}
!272 = !{ptr @rt9455_irq_handler_thread._entry.142, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @rt9455_irq_handler_thread._entry_ptr.144, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.145, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/power/supply/rt9455_charger.c", i32 862, i32 3}
!276 = !{ptr @rt9455_irq_handler_check_irq1_register._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.146, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/power/supply/rt9455_charger.c", i32 868, i32 3}
!280 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.147, !279, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.149, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/power/supply/rt9455_charger.c", i32 873, i32 3}
!283 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.148, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.150, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.152, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/power/supply/rt9455_charger.c", i32 878, i32 3}
!287 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.151, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.153, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.155, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/power/supply/rt9455_charger.c", i32 883, i32 3}
!291 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.154, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.156, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.158, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/power/supply/rt9455_charger.c", i32 891, i32 5}
!295 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.157, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.159, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.161, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/power/supply/rt9455_charger.c", i32 898, i32 4}
!299 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.160, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.162, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.164, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/power/supply/rt9455_charger.c", i32 906, i32 5}
!303 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.163, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.165, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.167, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/power/supply/rt9455_charger.c", i32 915, i32 5}
!307 = !{ptr @rt9455_irq_handler_check_irq1_register._entry.166, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @rt9455_irq_handler_check_irq1_register._entry_ptr.168, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.169, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/power/supply/rt9455_charger.c", i32 955, i32 3}
!311 = !{ptr @.str.170, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @rt9455_irq_handler_check_irq2_register._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.171, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/power/supply/rt9455_charger.c", i32 961, i32 3}
!316 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.172, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.173, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/power/supply/rt9455_charger.c", i32 966, i32 3}
!319 = !{ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug293, !318, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!320 = !{ptr @.str.175, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/power/supply/rt9455_charger.c", i32 983, i32 3}
!322 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.174, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.176, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.177, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/power/supply/rt9455_charger.c", i32 987, i32 3}
!326 = !{ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug294, !325, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!327 = !{ptr @.str.179, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/power/supply/rt9455_charger.c", i32 993, i32 6}
!329 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.178, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.180, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.181, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1007, i32 3}
!333 = !{ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug295, !332, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!334 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.182, !335, !"_entry", i1 false, i1 false}
!335 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1011, i32 4}
!336 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.183, !335, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.184, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1018, i32 5}
!339 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.185, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.187, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1038, i32 3}
!342 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.186, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.188, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.190, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1042, i32 3}
!346 = !{ptr @.str.191, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @rt9455_irq_handler_check_irq2_register._entry.189, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @rt9455_irq_handler_check_irq2_register._entry_ptr.192, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.193, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1047, i32 3}
!351 = !{ptr @rt9455_irq_handler_check_irq2_register.__UNIQUE_ID_ddebug296, !350, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!352 = !{ptr @.str.194, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1067, i32 3}
!354 = !{ptr @.str.195, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @rt9455_irq_handler_check_irq3_register._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.197, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1073, i32 3}
!359 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.196, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.198, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.200, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1078, i32 3}
!363 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.199, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.201, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.203, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1082, i32 3}
!367 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.202, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.204, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.206, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1086, i32 3}
!371 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.205, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.207, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.209, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1090, i32 3}
!375 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.208, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.210, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.212, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1095, i32 3}
!379 = !{ptr @.str.213, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.211, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.214, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.215, !383, !"_entry", i1 false, i1 false}
!383 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1098, i32 4}
!384 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.216, !383, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @rt9455_irq_handler_check_irq3_register._entry.217, !386, !"_entry", i1 false, i1 false}
!386 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1104, i32 4}
!387 = !{ptr @rt9455_irq_handler_check_irq3_register._entry_ptr.218, !386, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.219, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/power/supply/rt9455_charger.c", i32 659, i32 3}
!390 = !{ptr @.str.220, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @rt9455_hw_init._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @rt9455_hw_init._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.222, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/power/supply/rt9455_charger.c", i32 666, i32 3}
!395 = !{ptr @rt9455_hw_init._entry.221, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @rt9455_hw_init._entry_ptr.223, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.225, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/power/supply/rt9455_charger.c", i32 673, i32 3}
!399 = !{ptr @rt9455_hw_init._entry.224, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @rt9455_hw_init._entry_ptr.226, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.228, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/power/supply/rt9455_charger.c", i32 683, i32 3}
!403 = !{ptr @rt9455_hw_init._entry.227, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @rt9455_hw_init._entry_ptr.229, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.231, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/power/supply/rt9455_charger.c", i32 700, i32 3}
!407 = !{ptr @rt9455_hw_init._entry.230, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @rt9455_hw_init._entry_ptr.232, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.234, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/power/supply/rt9455_charger.c", i32 709, i32 3}
!411 = !{ptr @rt9455_hw_init._entry.233, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @rt9455_hw_init._entry_ptr.235, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.237, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/power/supply/rt9455_charger.c", i32 719, i32 3}
!415 = !{ptr @rt9455_hw_init._entry.236, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @rt9455_hw_init._entry_ptr.238, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @rt9455_hw_init._entry.239, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/power/supply/rt9455_charger.c", i32 729, i32 3}
!419 = !{ptr @rt9455_hw_init._entry_ptr.240, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.242, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/power/supply/rt9455_charger.c", i32 740, i32 3}
!422 = !{ptr @rt9455_hw_init._entry.241, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @rt9455_hw_init._entry_ptr.243, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.245, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/power/supply/rt9455_charger.c", i32 755, i32 3}
!426 = !{ptr @rt9455_hw_init._entry.244, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @rt9455_hw_init._entry_ptr.246, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @rt9455_hw_init._entry.247, !429, !"_entry", i1 false, i1 false}
!429 = !{!"../drivers/power/supply/rt9455_charger.c", i32 770, i32 3}
!430 = !{ptr @rt9455_hw_init._entry_ptr.248, !429, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.250, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/power/supply/rt9455_charger.c", i32 780, i32 3}
!433 = !{ptr @rt9455_hw_init._entry.249, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @rt9455_hw_init._entry_ptr.251, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.253, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/power/supply/rt9455_charger.c", i32 791, i32 3}
!437 = !{ptr @rt9455_hw_init._entry.252, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @rt9455_hw_init._entry_ptr.254, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.255, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/power/supply/rt9455_charger.c", i32 305, i32 3}
!441 = !{ptr @.str.256, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @rt9455_register_reset._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @rt9455_register_reset._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.258, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/power/supply/rt9455_charger.c", i32 316, i32 4}
!446 = !{ptr @rt9455_register_reset._entry.257, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @rt9455_register_reset._entry_ptr.259, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @rt9455_ichrg_values, !449, !"rt9455_ichrg_values", i1 false, i1 false}
!449 = !{!"../drivers/power/supply/rt9455_charger.c", i32 176, i32 18}
!450 = !{ptr @rt9455_ieoc_percentage_values, !451, !"rt9455_ieoc_percentage_values", i1 false, i1 false}
!451 = !{!"../drivers/power/supply/rt9455_charger.c", i32 219, i32 18}
!452 = distinct !{null, !453, !"rt9455_vmreg_values", i1 false, i1 false}
!453 = !{!"../drivers/power/supply/rt9455_charger.c", i32 213, i32 18}
!454 = distinct !{null, !455, !"rt9455_mivr_values", i1 false, i1 false}
!455 = !{!"../drivers/power/supply/rt9455_charger.c", i32 224, i32 18}
!456 = distinct !{null, !457, !"rt9455_iaicr_values", i1 false, i1 false}
!457 = !{!"../drivers/power/supply/rt9455_charger.c", i32 229, i32 18}
!458 = !{ptr @rt9455_charger_desc, !459, !"rt9455_charger_desc", i1 false, i1 false}
!459 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1542, i32 39}
!460 = !{ptr @rt9455_charger_properties, !461, !"rt9455_charger_properties", i1 false, i1 false}
!461 = !{!"../drivers/power/supply/rt9455_charger.c", i32 333, i32 35}
!462 = !{ptr @.str.260, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/power/supply/rt9455_charger.c", i32 640, i32 17}
!464 = !{ptr @.str.261, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/power/supply/rt9455_charger.c", i32 643, i32 17}
!466 = !{ptr @.str.262, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/power/supply/rt9455_charger.c", i32 361, i32 3}
!468 = !{ptr @rt9455_charger_get_status._entry, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @rt9455_charger_get_status._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @rt9455_charger_get_status._entry.263, !471, !"_entry", i1 false, i1 false}
!471 = !{!"../drivers/power/supply/rt9455_charger.c", i32 376, i32 3}
!472 = !{ptr @rt9455_charger_get_status._entry_ptr.264, !471, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.265, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/power/supply/rt9455_charger.c", i32 415, i32 3}
!475 = !{ptr @rt9455_charger_get_health._entry, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @rt9455_charger_get_health._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @rt9455_charger_get_health._entry.266, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/power/supply/rt9455_charger.c", i32 434, i32 3}
!479 = !{ptr @rt9455_charger_get_health._entry_ptr.267, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @rt9455_charger_get_health._entry.268, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/power/supply/rt9455_charger.c", i32 449, i32 3}
!482 = !{ptr @rt9455_charger_get_health._entry_ptr.269, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @rt9455_charger_get_health._entry.270, !484, !"_entry", i1 false, i1 false}
!484 = !{!"../drivers/power/supply/rt9455_charger.c", i32 472, i32 3}
!485 = !{ptr @rt9455_charger_get_health._entry_ptr.271, !484, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.272, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/power/supply/rt9455_charger.c", i32 492, i32 3}
!488 = !{ptr @.str.273, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @rt9455_charger_get_battery_presence._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @rt9455_charger_get_battery_presence._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.274, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/power/supply/rt9455_charger.c", i32 513, i32 3}
!493 = !{ptr @rt9455_charger_get_online._entry, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @rt9455_charger_get_online._entry_ptr, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.275, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/power/supply/rt9455_charger.c", i32 533, i32 3}
!497 = !{ptr @.str.276, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @rt9455_charger_get_current._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @rt9455_charger_get_current._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.277, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/power/supply/rt9455_charger.c", i32 563, i32 3}
!502 = !{ptr @.str.278, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @rt9455_charger_get_voltage._entry, !501, !"_entry", i1 false, i1 false}
!504 = !{ptr @rt9455_charger_get_voltage._entry_ptr, !501, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.279, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/power/supply/rt9455_charger.c", i32 593, i32 3}
!507 = !{ptr @rt9455_charger_get_term_current._entry, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @rt9455_charger_get_term_current._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.281, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/power/supply/rt9455_charger.c", i32 602, i32 3}
!511 = !{ptr @rt9455_charger_get_term_current._entry.280, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @rt9455_charger_get_term_current._entry_ptr.282, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.283, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1708, i32 3}
!515 = !{ptr @rt9455_remove._entry, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @rt9455_remove._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @rt9455_of_match, !518, !"rt9455_of_match", i1 false, i1 false}
!518 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1728, i32 34}
!519 = !{ptr @rt9455_i2c_id_table, !520, !"rt9455_i2c_id_table", i1 false, i1 false}
!520 = !{!"../drivers/power/supply/rt9455_charger.c", i32 1722, i32 35}
!521 = !{i32 1, !"wchar_size", i32 2}
!522 = !{i32 1, !"min_enum_size", i32 4}
!523 = !{i32 8, !"branch-target-enforcement", i32 0}
!524 = !{i32 8, !"sign-return-address", i32 0}
!525 = !{i32 8, !"sign-return-address-all", i32 0}
!526 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!527 = !{i32 7, !"uwtable", i32 1}
!528 = !{i32 7, !"frame-pointer", i32 2}
!529 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!530 = !{!"auto-init"}
!531 = !{i64 2149000770, i64 2149000775, i64 2149000788, i64 2149000832, i64 2149000866, i64 2149000887}
