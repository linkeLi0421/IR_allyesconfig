; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq24190_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq24190_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.bq24190_sysfs_field_info = type { %struct.device_attribute, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bq24190_dev_info = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, [20 x i8], i8, i8, i16, i16, i16, %struct.mutex, i8, i8, i8 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_bq24190_charger__296_1980_bq24190_driver_init6 = internal global ptr @bq24190_driver_init, section ".initcall6.init", align 4
@bq24190_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq24190_probe, ptr @bq24190_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq24190_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq24190_pm_ops, ptr null, ptr null }, ptr @bq24190_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq24190_driver_exit = internal global ptr @bq24190_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file297 = internal constant [58 x i8] c"bq24190_charger.file=drivers/power/supply/bq24190_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"bq24190_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [62 x i8] c"bq24190_charger.author=Mark A. Greer <mgreer@animalcreek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [54 x i8] c"bq24190_charger.description=TI BQ24190 Charger Driver\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24190-charger\00", [16 x i8] zeroinitializer }, align 32
@bq24190_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24190\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24192\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24192i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24196\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bq24190_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bq24190_pm_suspend, ptr @bq24190_pm_resume, ptr @bq24190_pm_suspend, ptr @bq24190_pm_resume, ptr @bq24190_pm_suspend, ptr @bq24190_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq24190_runtime_suspend, ptr @bq24190_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@bq24190_i2c_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq24190\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq24192\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq24192i\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq24196\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@bq24190_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq24190_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq24190_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr = internal global ptr @bq24190_probe._entry, section ".printk_index", align 4
@bq24190_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't alloc bdi struct\0A\00", [40 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.8 = internal global ptr @bq24190_probe._entry.6, section ".printk_index", align 4
@bq24190_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bdi->f_reg_lock\00", [47 x i8] zeroinitializer }, align 32
@bq24190_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&bdi->input_current_limit_work)->work)\00", [37 x i8] zeroinitializer }, align 32
@bq24190_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&bdi->input_current_limit_work)->timer\00", [55 x i8] zeroinitializer }, align 32
@bq24190_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't get irq info\0A\00", [44 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.16 = internal global ptr @bq24190_probe._entry.14, section ".printk_index", align 4
@bq24190_usb_extcon_cable = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@bq24190_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm_runtime_get failed: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.19 = internal global ptr @bq24190_probe._entry.17, section ".printk_index", align 4
@bq24190_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bq24190_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bq24190_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@bq24190_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @bq24190_charger_properties, i32 15, ptr @bq24190_charger_get_property, ptr @bq24190_charger_set_property, ptr @bq24190_charger_property_is_writeable, ptr @bq24190_charger_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq24190_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't register charger\0A\00", [40 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.22 = internal global ptr @bq24190_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omit-battery-class\00", [45 x i8] zeroinitializer }, align 32
@bq24190_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.84, i32 1, ptr null, i32 0, ptr @bq24190_battery_properties, i32 6, ptr @bq24190_battery_get_property, ptr @bq24190_battery_set_property, ptr @bq24190_battery_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq24190_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't register battery\0A\00", [40 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.26 = internal global ptr @bq24190_probe._entry.24, section ".printk_index", align 4
@bq24190_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't get devicetree config\0A\00", [35 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.29 = internal global ptr @bq24190_probe._entry.27, section ".printk_index", align 4
@bq24190_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1798, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hardware init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.32 = internal global ptr @bq24190_probe._entry.30, section ".printk_index", align 4
@bq24190_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set up irq handler\0A\00", [38 x i8] zeroinitializer }, align 32
@bq24190_probe._entry_ptr.35 = internal global ptr @bq24190_probe._entry.33, section ".printk_index", align 4
@bq24190_sysfs_field_tbl = internal global { [41 x %struct.bq24190_sysfs_field_info], [320 x i8] } { [41 x %struct.bq24190_sysfs_field_info] [%struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 0, i8 -128, i8 7 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 0, i8 120, i8 3 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 0, i8 7, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 1, i8 48, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 1, i8 14, i8 1 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 1, i8 1, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 2, i8 -4, i8 2 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 2, i8 1, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 3, i8 -16, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 3, i8 15, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 4, i8 -4, i8 2 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 4, i8 2, i8 1 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 4, i8 1, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 5, i8 -128, i8 7 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 5, i8 64, i8 6 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 5, i8 48, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 5, i8 8, i8 3 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 5, i8 6, i8 1 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 5, i8 1, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 6, i8 -32, i8 5 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 6, i8 28, i8 2 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 6, i8 3, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 7, i8 -128, i8 7 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 7, i8 64, i8 6 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 7, i8 32, i8 5 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr @bq24190_sysfs_store }, i8 7, i8 16, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 7, i8 3, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 -64, i8 6 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 48, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 8, i8 3 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 4, i8 2 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 2, i8 1 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 8, i8 1, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 9, i8 -128, i8 7 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 9, i8 64, i8 6 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 9, i8 48, i8 4 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 9, i8 8, i8 3 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 9, i8 7, i8 0 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 10, i8 56, i8 3 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 10, i8 4, i8 2 }, %struct.bq24190_sysfs_field_info { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24190_sysfs_show, ptr null }, i8 10, i8 3, i8 0 }], [320 x i8] zeroinitializer }, align 32
@bq24190_sysfs_attrs = internal global { [42 x ptr], [56 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f_en_hiz\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f_vindpm\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f_iinlim\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_chg_config\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_sys_min\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_boost_lim\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f_ichg\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f_force_20_pct\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_iprechg\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f_iterm\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f_vreg\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_batlowv\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f_vrechg\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_en_term\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_term_stat\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_watchdog\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_en_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_chg_timer\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_jeta_iset\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_bat_comp\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"f_vclamp\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f_treg\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_dpdm_en\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_tmr2x_en\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f_batfet_disable\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_jeita_vset\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_int_mask\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_vbus_stat\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_chrg_stat\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_dpm_stat\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_pg_stat\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_therm_stat\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_vsys_stat\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"f_watchdog_fault\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_boost_fault\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_chrg_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_bat_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"f_ntc_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"f_pn\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_ts_profile\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_dev_reg\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%hhx\0A\00", [26 x i8] zeroinitializer }, align 32
@bq24190_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bq24190_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@bq24190_charger_properties = internal global { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 2, i32 4, i32 0, i32 56, i32 67, i32 68, i32 29, i32 30, i32 31, i32 32, i32 38, i32 66, i32 73, i32 74], [36 x i8] zeroinitializer }, align 32
@bq24190_charger_get_property.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 1, i8 13, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24190_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bq24190_charger_get_property\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prop: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@bq24190_ictrc_treg_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 600, i32 800, i32 1000, i32 1200], [16 x i8] zeroinitializer }, align 32
@bq24190_ccc_ichg_values = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 512000, i32 576000, i32 640000, i32 704000, i32 768000, i32 832000, i32 896000, i32 960000, i32 1024000, i32 1088000, i32 1152000, i32 1216000, i32 1280000, i32 1344000, i32 1408000, i32 1472000, i32 1536000, i32 1600000, i32 1664000, i32 1728000, i32 1792000, i32 1856000, i32 1920000, i32 1984000, i32 2048000, i32 2112000, i32 2176000, i32 2240000, i32 2304000, i32 2368000, i32 2432000, i32 2496000, i32 2560000, i32 2624000, i32 2688000, i32 2752000, i32 2816000, i32 2880000, i32 2944000, i32 3008000, i32 3072000, i32 3136000, i32 3200000, i32 3264000, i32 3328000, i32 3392000, i32 3456000, i32 3520000, i32 3584000, i32 3648000, i32 3712000, i32 3776000, i32 3840000, i32 3904000, i32 3968000, i32 4032000, i32 4096000, i32 4160000, i32 4224000, i32 4288000, i32 4352000, i32 4416000, i32 4480000, i32 4544000], [64 x i8] zeroinitializer }, align 32
@bq24190_cvc_vreg_values = internal constant { [57 x i32], [60 x i8] } { [57 x i32] [i32 3504000, i32 3520000, i32 3536000, i32 3552000, i32 3568000, i32 3584000, i32 3600000, i32 3616000, i32 3632000, i32 3648000, i32 3664000, i32 3680000, i32 3696000, i32 3712000, i32 3728000, i32 3744000, i32 3760000, i32 3776000, i32 3792000, i32 3808000, i32 3824000, i32 3840000, i32 3856000, i32 3872000, i32 3888000, i32 3904000, i32 3920000, i32 3936000, i32 3952000, i32 3968000, i32 3984000, i32 4000000, i32 4016000, i32 4032000, i32 4048000, i32 4064000, i32 4080000, i32 4096000, i32 4112000, i32 4128000, i32 4144000, i32 4160000, i32 4176000, i32 4192000, i32 4208000, i32 4224000, i32 4240000, i32 4256000, i32 4272000, i32 4288000, i32 4304000, i32 4320000, i32 4336000, i32 4352000, i32 4368000, i32 4384000, i32 4400000], [60 x i8] zeroinitializer }, align 32
@bq24190_isc_iinlim_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 100000, i32 150000, i32 500000, i32 900000, i32 1200000, i32 1500000, i32 2000000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@bq24190_charger_set_property.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.83, ptr @.str.3, ptr @.str.81, i8 1, i8 31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bq24190_charger_set_property\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24190-battery\00", [16 x i8] zeroinitializer }, align 32
@bq24190_battery_properties = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 4, i32 6, i32 56, i32 66], [40 x i8] zeroinitializer }, align 32
@bq24190_battery_get_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1413, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"warning: /sys/class/power_supply/bq24190-battery is deprecated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bq24190_battery_get_property\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq24190_battery_get_property._entry_ptr = internal global ptr @bq24190_battery_get_property._entry, section ".printk_index", align 4
@bq24190_battery_get_property.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.86, ptr @.str.3, ptr @.str.81, i8 1, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@bq24190_battery_set_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.88, ptr @.str.3, i32 1461, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bq24190_battery_set_property\00", [35 x i8] zeroinitializer }, align 32
@bq24190_battery_set_property._entry_ptr = internal global ptr @bq24190_battery_set_property._entry, section ".printk_index", align 4
@bq24190_battery_set_property.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.88, ptr @.str.3, ptr @.str.81, i8 1, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti,system-minimum-microvolt\00", [36 x i8] zeroinitializer }, align 32
@bq24190_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1682, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid value for %s: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bq24190_get_config\00", [45 x i8] zeroinitializer }, align 32
@bq24190_get_config._entry_ptr = internal global ptr @bq24190_get_config._entry, section ".printk_index", align 4
@bq24190_get_config._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 1693, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid value for battery:precharge-current-microamp: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bq24190_get_config._entry_ptr.94 = internal global ptr @bq24190_get_config._entry.92, section ".printk_index", align 4
@bq24190_get_config._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.3, i32 1701, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"invalid value for battery:charge-term-current-microamp: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bq24190_get_config._entry_ptr.97 = internal global ptr @bq24190_get_config._entry.95, section ".printk_index", align 4
@bq24190_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 1655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error unknown model: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24190_hw_init\00", [16 x i8] zeroinitializer }, align 32
@bq24190_hw_init._entry_ptr = internal global ptr @bq24190_hw_init._entry, section ".printk_index", align 4
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable-reset\00", [18 x i8] zeroinitializer }, align 32
@bq24190_configure_usb_otg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 1532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't set extcon state to %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq24190_configure_usb_otg\00", [38 x i8] zeroinitializer }, align 32
@bq24190_configure_usb_otg._entry_ptr = internal global ptr @bq24190_configure_usb_otg._entry, section ".printk_index", align 4
@bq24190_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.103, ptr @.str.3, i32 1624, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bq24190_irq_handler_thread\00", [37 x i8] zeroinitializer }, align 32
@bq24190_irq_handler_thread._entry_ptr = internal global ptr @bq24190_irq_handler_thread._entry, section ".printk_index", align 4
@bq24190_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 1548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't read SS reg: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bq24190_check_status\00", [43 x i8] zeroinitializer }, align 32
@bq24190_check_status._entry_ptr = internal global ptr @bq24190_check_status._entry, section ".printk_index", align 4
@bq24190_check_status._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 1556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't read F reg: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bq24190_check_status._entry_ptr.108 = internal global ptr @bq24190_check_status._entry.106, section ".printk_index", align 4
@bq24190_check_status._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.3, i32 1572, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Fault: boost %d, charge %d, battery %d, ntc %d\0A\00", [48 x i8] zeroinitializer }, align 32
@bq24190_check_status._entry_ptr.111 = internal global ptr @bq24190_check_status._entry.109, section ".printk_index", align 4
@bq24190_check_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.3, i32 1596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't access ISC reg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bq24190_check_status._entry_ptr.114 = internal global ptr @bq24190_check_status._entry.112, section ".printk_index", align 4
@bq24190_check_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.105, ptr @.str.3, ptr @.str.115, i8 1, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ss_reg: 0x%02x, f_reg: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@bq24190_vbus_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.119, ptr null, ptr @.str.120, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @bq24190_vbus_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@bq24190_register_vbus_regulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't register regulator: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bq24190_register_vbus_regulator\00", [32 x i8] zeroinitializer }, align 32
@bq24190_register_vbus_regulator._entry_ptr = internal global ptr @bq24190_register_vbus_regulator._entry, section ".printk_index", align 4
@bq24190_vbus_init_data = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_otg_vbus\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-otg-vbus\00", [19 x i8] zeroinitializer }, align 32
@bq24190_vbus_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq24190_vbus_enable, ptr @bq24190_vbus_disable, ptr @bq24190_vbus_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bq24190_set_charge_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.121, ptr @.str.3, i32 508, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq24190_set_charge_mode\00", [40 x i8] zeroinitializer }, align 32
@bq24190_set_charge_mode._entry_ptr = internal global ptr @bq24190_set_charge_mode._entry, section ".printk_index", align 4
@bq24190_vbus_is_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.122, ptr @.str.3, i32 541, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq24190_vbus_is_enabled\00", [40 x i8] zeroinitializer }, align 32
@bq24190_vbus_is_enabled._entry_ptr = internal global ptr @bq24190_vbus_is_enabled._entry, section ".printk_index", align 4
@bq24190_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.123, ptr @.str.3, i32 1847, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bq24190_remove\00", [17 x i8] zeroinitializer }, align 32
@bq24190_remove._entry_ptr = internal global ptr @bq24190_remove._entry, section ".printk_index", align 4
@bq24190_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.124, ptr @.str.3, i32 1900, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bq24190_pm_suspend\00", [45 x i8] zeroinitializer }, align 32
@bq24190_pm_suspend._entry_ptr = internal global ptr @bq24190_pm_suspend._entry, section ".printk_index", align 4
@bq24190_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.125, ptr @.str.3, i32 1925, ptr @.str.87, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bq24190_pm_resume\00", [46 x i8] zeroinitializer }, align 32
@bq24190_pm_resume._entry_ptr = internal global ptr @bq24190_pm_resume._entry, section ".printk_index", align 4
@bq24190_runtime_suspend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.126, ptr @.str.3, ptr @.str.127, i8 1, i8 -45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq24190_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bq24190_runtime_resume.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.128, ptr @.str.3, ptr @.str.129, i8 1, i8 -41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bq24190_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"checking events on possible wakeirq\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.bq24190_charger_get_property = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 2, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.bq24190_charger_get_property.130 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 1, i32 1, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.bq24190_battery_get_property = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 1, i32 1, i32 4], [16 x i8] zeroinitializer }, align 32
@switch.table.bq24190_battery_get_property.131 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 6, i32 2, i32 6, i32 2, i32 6, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 4, i64 29, i64 30, i64 31, i64 32, i64 38, i64 56, i64 66, i64 67, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.132 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.133 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 4, i64 29, i64 31, i64 38, i64 56]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 4, i64 29, i64 31, i64 38, i64 56]
@__sancov_gen_cov_switch_values.136 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 6, i64 56, i64 66]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 56]
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"bq24190_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1970, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1975, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"bq24190_of_match\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1961, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"bq24190_pm_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1946, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"bq24190_i2c_ids\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1952, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1717, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1723, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1730, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1733, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1739, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"bq24190_usb_extcon_cable\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 174, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1756, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"bq24190_sysfs_groups\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [28 x i8] c"bq24190_charger_supplied_to\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1248, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"bq24190_charger_desc\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1252, i32 39 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1772, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1779, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"bq24190_battery_desc\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1513, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1784, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1792, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1798, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1813, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [24 x i8] c"bq24190_sysfs_field_tbl\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 359, i32 40 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"bq24190_sysfs_attrs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 405, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 361, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 362, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 363, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 364, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 365, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 366, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 367, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 368, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 369, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 370, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 371, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 372, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 373, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 374, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 375, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 376, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 377, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 378, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 379, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 380, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 381, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 382, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 383, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 384, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 385, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 386, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 387, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 388, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 389, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 390, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 391, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 392, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 393, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 394, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 395, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 396, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 397, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 398, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 399, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 400, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 401, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 458, i32 37 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"bq24190_sysfs_group\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 407, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1249, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [27 x i8] c"bq24190_charger_properties\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1230, i32 35 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1077, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1131, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"bq24190_ictrc_treg_values\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 217, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant [24 x i8] c"bq24190_ccc_ichg_values\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 193, i32 18 }
@___asan_gen_.414 = private unnamed_addr constant [24 x i8] c"bq24190_cvc_vreg_values\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 205, i32 18 }
@___asan_gen_.417 = private unnamed_addr constant [26 x i8] c"bq24190_isc_iinlim_values\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 188, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1151, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1514, i32 12 }
@___asan_gen_.426 = private unnamed_addr constant [27 x i8] c"bq24190_battery_properties\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1504, i32 35 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1413, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1461, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1672, i32 25 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1682, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1692, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1700, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1655, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 680, i32 42 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1531, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1624, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1548, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1556, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1567, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1595, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1613, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [18 x i8] c"bq24190_vbus_desc\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 562, i32 36 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 594, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant [23 x i8] c"bq24190_vbus_init_data\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 572, i32 41 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 563, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 564, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant [17 x i8] c"bq24190_vbus_ops\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 556, i32 35 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 508, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 541, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1847, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1900, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1925, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1871, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [42 x i8] c"../drivers/power/supply/bq24190_charger.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1885, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant [42 x i8] c"switch.table.bq24190_charger_get_property\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [46 x i8] c"switch.table.bq24190_charger_get_property.130\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [42 x i8] c"switch.table.bq24190_battery_get_property\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [46 x i8] c"switch.table.bq24190_battery_get_property.131\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bq24190_driver_exit, ptr @__initcall__kmod_bq24190_charger__296_1980_bq24190_driver_init6, ptr @bq24190_battery_get_property._entry, ptr @bq24190_battery_get_property._entry_ptr, ptr @bq24190_battery_set_property._entry, ptr @bq24190_battery_set_property._entry_ptr, ptr @bq24190_check_status._entry, ptr @bq24190_check_status._entry.106, ptr @bq24190_check_status._entry.109, ptr @bq24190_check_status._entry.112, ptr @bq24190_check_status._entry_ptr, ptr @bq24190_check_status._entry_ptr.108, ptr @bq24190_check_status._entry_ptr.111, ptr @bq24190_check_status._entry_ptr.114, ptr @bq24190_configure_usb_otg._entry, ptr @bq24190_configure_usb_otg._entry_ptr, ptr @bq24190_driver_exit, ptr @bq24190_get_config._entry, ptr @bq24190_get_config._entry.92, ptr @bq24190_get_config._entry.95, ptr @bq24190_get_config._entry_ptr, ptr @bq24190_get_config._entry_ptr.94, ptr @bq24190_get_config._entry_ptr.97, ptr @bq24190_hw_init._entry, ptr @bq24190_hw_init._entry_ptr, ptr @bq24190_irq_handler_thread._entry, ptr @bq24190_irq_handler_thread._entry_ptr, ptr @bq24190_pm_resume._entry, ptr @bq24190_pm_resume._entry_ptr, ptr @bq24190_pm_suspend._entry, ptr @bq24190_pm_suspend._entry_ptr, ptr @bq24190_probe._entry, ptr @bq24190_probe._entry.14, ptr @bq24190_probe._entry.17, ptr @bq24190_probe._entry.20, ptr @bq24190_probe._entry.24, ptr @bq24190_probe._entry.27, ptr @bq24190_probe._entry.30, ptr @bq24190_probe._entry.33, ptr @bq24190_probe._entry.6, ptr @bq24190_probe._entry_ptr, ptr @bq24190_probe._entry_ptr.16, ptr @bq24190_probe._entry_ptr.19, ptr @bq24190_probe._entry_ptr.22, ptr @bq24190_probe._entry_ptr.26, ptr @bq24190_probe._entry_ptr.29, ptr @bq24190_probe._entry_ptr.32, ptr @bq24190_probe._entry_ptr.35, ptr @bq24190_probe._entry_ptr.8, ptr @bq24190_register_vbus_regulator._entry, ptr @bq24190_register_vbus_regulator._entry_ptr, ptr @bq24190_remove._entry, ptr @bq24190_remove._entry_ptr, ptr @bq24190_set_charge_mode._entry, ptr @bq24190_set_charge_mode._entry_ptr, ptr @bq24190_vbus_is_enabled._entry, ptr @bq24190_vbus_is_enabled._entry_ptr, ptr @bq24190_driver, ptr @.str, ptr @bq24190_of_match, ptr @bq24190_pm_ops, ptr @bq24190_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @bq24190_probe.__key, ptr @.str.9, ptr @bq24190_probe.__key.10, ptr @.str.11, ptr @bq24190_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @bq24190_usb_extcon_cable, ptr @.str.18, ptr @bq24190_sysfs_groups, ptr @bq24190_charger_supplied_to, ptr @bq24190_charger_desc, ptr @.str.21, ptr @.str.23, ptr @bq24190_battery_desc, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @bq24190_sysfs_field_tbl, ptr @bq24190_sysfs_attrs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @bq24190_sysfs_group, ptr @.str.78, ptr @bq24190_charger_properties, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @bq24190_ictrc_treg_values, ptr @bq24190_ccc_ichg_values, ptr @bq24190_cvc_vreg_values, ptr @bq24190_isc_iinlim_values, ptr @.str.83, ptr @.str.84, ptr @bq24190_battery_properties, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @bq24190_vbus_desc, ptr @.str.116, ptr @.str.117, ptr @bq24190_vbus_init_data, ptr @.str.119, ptr @.str.120, ptr @bq24190_vbus_ops, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @switch.table.bq24190_charger_get_property, ptr @switch.table.bq24190_charger_get_property.130, ptr @switch.table.bq24190_battery_get_property, ptr @switch.table.bq24190_battery_get_property.131], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_i2c_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_usb_extcon_cable to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_sysfs_field_tbl to i32), i32 1312, i32 1632, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_sysfs_attrs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_charger_properties to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_ictrc_treg_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_ccc_ichg_values to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_cvc_vreg_values to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_isc_iinlim_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_battery_properties to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_battery_get_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_battery_set_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_get_config._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_get_config._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_configure_usb_otg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_check_status._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_check_status._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_check_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_vbus_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_register_vbus_regulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_vbus_init_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_vbus_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_set_charge_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_vbus_is_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24190_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq24190_charger_get_property to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq24190_charger_get_property.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq24190_battery_get_property to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bq24190_battery_get_property.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq24190_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq24190_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @bq24190_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %cfg.i = alloca %struct.regulator_config, align 4
  %info.i = alloca ptr, align 4
  %v.i = alloca i32, align 4
  %charger_cfg = alloca %struct.power_supply_config, align 4
  %battery_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %charger_cfg) #10
  %2 = call ptr @memset(ptr %charger_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %battery_cfg) #10
  %3 = call ptr @memset(ptr %battery_cfg, i32 0, i32 24)
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 244, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %dev11 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev2, ptr %dev11, align 4
  %model_name = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 6
  %call13 = tail call ptr @strncpy(ptr noundef %model_name, ptr noundef %id, i32 noundef 20)
  %f_reg_lock = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %f_reg_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @bq24190_probe.__key) #10
  %f_reg = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %f_reg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %f_reg, align 4
  %ss_reg = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %ss_reg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -64, ptr %ss_reg, align 1
  %input_current_limit_work = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %input_current_limit_work, i32 noundef 0) #10
  %12 = ptrtoint ptr %input_current_limit_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %input_current_limit_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @bq24190_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry25 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bq24190_input_current_limit_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @bq24190_probe.__key.12) #10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp slt i32 %18, 1
  br i1 %cmp, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end9
  %call41 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev2, ptr noundef nonnull @bq24190_usb_extcon_cable) #10
  %edev = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %edev, align 4
  %cmp.i207 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %call49 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev2, ptr noundef %call41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end47.cleanup_crit_edge, label %if.end52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  tail call void @pm_runtime_enable(ptr noundef %dev2) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev2, i1 noundef zeroext true) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev2, i32 noundef 600) #10
  %call.i208 = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp54 = icmp slt i32 %call.i208, 0
  br i1 %cmp54, label %do.end58, label %if.end52.for.body.i_crit_edge

if.end52.for.body.i_crit_edge:                    ; preds = %if.end52
  br label %for.body.i

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %call.i208) #13
  br label %out_pmrt

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end52.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end52.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.08.i
  %arrayidx2.i = getelementptr [42 x ptr], ptr @bq24190_sysfs_attrs, i32 0, i32 %i.08.i
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.i, ptr %arrayidx2.i, align 4
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %bq24190_sysfs_init_attrs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

bq24190_sysfs_init_attrs.exit:                    ; preds = %for.body.i
  store ptr null, ptr getelementptr inbounds ([42 x ptr], ptr @bq24190_sysfs_attrs, i32 0, i32 41), align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 3
  %22 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bq24190_sysfs_groups, ptr %attr_grp, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %26 = ptrtoint ptr %charger_cfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %charger_cfg, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 4
  %27 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bq24190_charger_supplied_to, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 5
  %28 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %num_supplicants, align 4
  %call61 = call ptr @power_supply_register(ptr noundef %dev2, ptr noundef nonnull @bq24190_charger_desc, ptr noundef nonnull %charger_cfg) #10
  %charger = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call61, ptr %charger, align 4
  %cmp.i209 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end67, label %if.end70

do.end67:                                         ; preds = %bq24190_sysfs_init_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #13
  %30 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %charger, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %out_pmrt

if.end70:                                         ; preds = %bq24190_sysfs_init_attrs.exit
  %call.i210 = call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.23) #10
  br i1 %call.i210, label %if.end70.if.end84_crit_edge, label %if.then72

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then72:                                        ; preds = %if.end70
  %drv_data73 = getelementptr inbounds %struct.power_supply_config, ptr %battery_cfg, i32 0, i32 2
  %33 = ptrtoint ptr %drv_data73 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %drv_data73, align 4
  %call74 = call ptr @power_supply_register(ptr noundef %dev2, ptr noundef nonnull @bq24190_battery_desc, ptr noundef nonnull %battery_cfg) #10
  %battery = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call74, ptr %battery, align 4
  %cmp.i211 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %do.end80, label %if.then72.if.end84_crit_edge

if.then72.if.end84_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end80:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25) #13
  %35 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %battery, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %out_charger

if.end84:                                         ; preds = %if.then72.if.end84_crit_edge, %if.end70.if.end84_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #10
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %info.i, align 4, !annotation !312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #10
  %39 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %v.i, align 4, !annotation !312
  %40 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev11, align 4
  %call.i.i212 = call i32 @device_property_read_u32_array(ptr noundef %41, ptr noundef nonnull @.str.89, ptr noundef nonnull %v.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp.i213 = icmp eq i32 %call.i.i212, 0
  br i1 %cmp.i213, label %if.then.i, label %if.end84.if.end5.i_crit_edge

if.end84.if.end5.i_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end84
  %42 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %v.i, align 4
  %div.i = sdiv i32 %43, 1000
  store i32 %div.i, ptr %v.i, align 4
  %44 = add i32 %43, -3000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 701000, i32 %44)
  %45 = icmp ult i32 %44, 701000
  br i1 %45, label %if.then3.i, label %do.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i214 = trunc i32 %div.i to i16
  %sys_min.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 9
  %46 = ptrtoint ptr %sys_min.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i214, ptr %sys_min.i, align 2
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %div.i) #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.then3.i, %if.end84.if.end5.i_crit_edge
  %49 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev11, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end5.i.bq24190_get_config.exit_crit_edge, label %land.lhs.true7.i

if.end5.i.bq24190_get_config.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_get_config.exit

land.lhs.true7.i:                                 ; preds = %if.end5.i
  %53 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %charger, align 4
  %call8.i = call i32 @power_supply_get_battery_info(ptr noundef %54, ptr noundef nonnull %info.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %land.lhs.true7.i.bq24190_get_config.exit_crit_edge

land.lhs.true7.i.bq24190_get_config.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_get_config.exit

if.then10.i:                                      ; preds = %land.lhs.true7.i
  %55 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info.i, align 4
  %precharge_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %precharge_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %precharge_current_ua.i, align 4
  %div11.i = sdiv i32 %58, 1000
  %59 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div11.i, ptr %v.i, align 4
  %60 = add i32 %58, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921000, i32 %60)
  %61 = icmp ult i32 %60, 1921000
  br i1 %61, label %if.then17.i, label %do.end22.i

if.then17.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv18.i = trunc i32 %div11.i to i16
  %iprechg.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 10
  %62 = ptrtoint ptr %iprechg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv18.i, ptr %iprechg.i, align 4
  br label %if.end24.i

do.end22.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.93, i32 noundef %div11.i) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end22.i, %if.then17.i
  %65 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %info.i, align 4
  %charge_term_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %charge_term_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %charge_term_current_ua.i, align 4
  %div25.i = sdiv i32 %68, 1000
  %69 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div25.i, ptr %v.i, align 4
  %70 = add i32 %68, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921000, i32 %70)
  %71 = icmp ult i32 %70, 1921000
  br i1 %71, label %if.then31.i, label %do.end36.i

if.then31.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv32.i = trunc i32 %div25.i to i16
  %iterm.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 11
  %72 = ptrtoint ptr %iterm.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv32.i, ptr %iterm.i, align 2
  br label %bq24190_get_config.exit

do.end36.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.96, i32 noundef %div25.i) #13
  br label %bq24190_get_config.exit

bq24190_get_config.exit:                          ; preds = %do.end36.i, %if.then31.i, %land.lhs.true7.i.bq24190_get_config.exit_crit_edge, %if.end5.i.bq24190_get_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #10
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %call.i.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %bq24190_get_config.exit.do.end97_crit_edge, label %if.end.i

bq24190_get_config.exit.do.end97_crit_edge:       ; preds = %bq24190_get_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.end.i:                                         ; preds = %bq24190_get_config.exit
  %77 = trunc i32 %call.i.i.i to i8
  %78 = lshr i8 %77, 3
  %conv5.i.i = and i8 %78, 7
  %.off.i = add nsw i8 %conv5.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %sw.epilog.i, label %do.end.i217

do.end.i217:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i215 = zext i8 %conv5.i.i to i32
  %79 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.98, i32 noundef %conv.i215) #13
  br label %do.end97

sw.epilog.i:                                      ; preds = %if.end.i
  %call2.i = call fastcc i32 @bq24190_register_reset(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %sw.epilog.i.do.end97_crit_edge, label %if.end6.i

sw.epilog.i.do.end97_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.end6.i:                                        ; preds = %sw.epilog.i
  %call7.i = call fastcc i32 @bq24190_set_config(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.do.end97_crit_edge, label %if.end11.i

if.end6.i.do.end97_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.end11.i:                                       ; preds = %if.end6.i
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %call.i.i218 = call i32 @i2c_smbus_read_byte_data(ptr noundef %82, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i218)
  %cmp.i.i = icmp slt i32 %call.i.i218, 0
  br i1 %cmp.i.i, label %if.end11.i.do.end97_crit_edge, label %if.end98

if.end11.i.do.end97_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

do.end97:                                         ; preds = %if.end11.i.do.end97_crit_edge, %if.end6.i.do.end97_crit_edge, %sw.epilog.i.do.end97_crit_edge, %do.end.i217, %bq24190_get_config.exit.do.end97_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %bq24190_get_config.exit.do.end97_crit_edge ], [ %call.i.i218, %if.end11.i.do.end97_crit_edge ], [ %call7.i, %if.end6.i.do.end97_crit_edge ], [ %call2.i, %sw.epilog.i.do.end97_crit_edge ], [ -19, %do.end.i217 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.31) #13
  br label %out_charger

if.end98:                                         ; preds = %if.end11.i
  %conv.i.i = trunc i32 %call.i.i218 to i8
  %83 = ptrtoint ptr %ss_reg to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i.i, ptr %ss_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %conv.i.i)
  %tobool.i = icmp ugt i8 %conv.i.i, 63
  %84 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %edev, align 4
  %call.i219 = call i32 @extcon_set_state_sync(ptr noundef %85, i32 noundef 1, i1 noundef zeroext %tobool.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp.i220 = icmp slt i32 %call.i219, 0
  br i1 %cmp.i220, label %bq24190_configure_usb_otg.exit.thread, label %if.end103

bq24190_configure_usb_otg.exit.thread:            ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev11, align 4
  %conv5.i = zext i1 %tobool.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.101, i32 noundef %conv5.i, i32 noundef %call.i219) #13
  br label %out_charger

if.end103:                                        ; preds = %if.end98
  %initialized = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 7
  %88 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %initialized, align 4
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %call105 = call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %90, ptr noundef null, ptr noundef nonnull @bq24190_irq_handler_thread, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end110, label %if.end111

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.34) #13
  br label %out_charger

if.end111:                                        ; preds = %if.end103
  %91 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev11, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #10
  %95 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %96 = getelementptr inbounds i8, ptr %cfg.i, i32 12
  %97 = call ptr @memset(ptr %96, i32 0, i32 12)
  %98 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %92, ptr %cfg.i, align 4
  %tobool.not.i225 = icmp eq ptr %94, null
  br i1 %tobool.not.i225, label %if.end111.if.else.i_crit_edge, label %land.lhs.true.i

if.end111.if.else.i_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end111
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %94, align 4
  %tobool3.not.i = icmp eq ptr %100, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end.i228_crit_edge

land.lhs.true.i.if.end.i228_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i228

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end111.if.else.i_crit_edge
  br label %if.end.i228

if.end.i228:                                      ; preds = %if.else.i, %land.lhs.true.i.if.end.i228_crit_edge
  %bq24190_vbus_init_data.sink.i = phi ptr [ @bq24190_vbus_init_data, %if.else.i ], [ %100, %land.lhs.true.i.if.end.i228_crit_edge ]
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %bq24190_vbus_init_data.sink.i, ptr %95, align 4
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %cfg.i, i32 0, i32 2
  %102 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call.i226 = call ptr @devm_regulator_register(ptr noundef %92, ptr noundef nonnull @bq24190_vbus_desc, ptr noundef nonnull %cfg.i) #10
  %cmp.i.i227 = icmp ugt ptr %call.i226, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i227, label %bq24190_register_vbus_regulator.exit, label %bq24190_register_vbus_regulator.exit.thread

bq24190_register_vbus_regulator.exit.thread:      ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #10
  br label %if.end115

bq24190_register_vbus_regulator.exit:             ; preds = %if.end.i228
  %103 = ptrtoint ptr %call.i226 to i32
  %104 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.116, i32 noundef %103) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #10
  %cmp113 = icmp slt ptr %call.i226, null
  br i1 %cmp113, label %bq24190_register_vbus_regulator.exit.out_charger_crit_edge, label %bq24190_register_vbus_regulator.exit.if.end115_crit_edge

bq24190_register_vbus_regulator.exit.if.end115_crit_edge: ; preds = %bq24190_register_vbus_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

bq24190_register_vbus_regulator.exit.out_charger_crit_edge: ; preds = %bq24190_register_vbus_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_charger

if.end115:                                        ; preds = %bq24190_register_vbus_regulator.exit.if.end115_crit_edge, %bq24190_register_vbus_regulator.exit.thread
  %106 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq, align 4
  %call.i230 = call i32 @irq_set_irq_wake(i32 noundef %107, i32 noundef 1) #10
  %call.i231 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 22
  %108 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store volatile i64 %call.i231, ptr %last_busy.i, align 8
  %call.i232 = call i32 @__pm_runtime_suspend(ptr noundef %dev2, i32 noundef 13) #10
  br label %cleanup

out_charger:                                      ; preds = %bq24190_register_vbus_regulator.exit.out_charger_crit_edge, %do.end110, %bq24190_configure_usb_otg.exit.thread, %do.end97, %do.end80
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end97 ], [ %call105, %do.end110 ], [ %103, %bq24190_register_vbus_regulator.exit.out_charger_crit_edge ], [ %37, %do.end80 ], [ %call.i219, %bq24190_configure_usb_otg.exit.thread ]
  %battery119 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call.i, i32 0, i32 4
  %109 = ptrtoint ptr %battery119 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %battery119, align 4
  %tobool.not.i233 = icmp eq ptr %110, null
  %cmp.i234 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i233, %cmp.i234
  br i1 %spec.select.i, label %out_charger.if.end123_crit_edge, label %if.then121

out_charger.if.end123_crit_edge:                  ; preds = %out_charger
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then121:                                       ; preds = %out_charger
  call void @__sanitizer_cov_trace_pc() #12
  call void @power_supply_unregister(ptr noundef nonnull %110) #10
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %out_charger.if.end123_crit_edge
  %111 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %charger, align 4
  call void @power_supply_unregister(ptr noundef %112) #10
  br label %out_pmrt

out_pmrt:                                         ; preds = %if.end123, %do.end67, %do.end58
  %ret.1 = phi i32 [ %call.i208, %do.end58 ], [ %32, %do.end67 ], [ %ret.0, %if.end123 ]
  %call.i235 = call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 4) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev2, i1 noundef zeroext false) #10
  call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %out_pmrt, %if.end115, %if.end47.cleanup_crit_edge, %if.then44, %do.end39, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end39 ], [ %20, %if.then44 ], [ %ret.1, %out_pmrt ], [ 0, %if.end115 ], [ -12, %do.end8 ], [ -19, %do.end ], [ %call49, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %battery_cfg) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.if.end_crit_edge, label %do.end11.i.i.i.i

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call fastcc i32 @bq24190_register_reset(ptr noundef %1)
  %battery = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %battery, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @power_supply_unregister(ptr noundef nonnull %10) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %charger = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charger, align 4
  tail call void @power_supply_unregister(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp8 = icmp sgt i32 %call.i, -1
  br i1 %cmp8, label %if.then9, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i26 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 4) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %16, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq24190_input_current_limit_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %charger = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger, align 4
  %call = tail call i32 @power_supply_set_input_current_limit_from_supplier(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_irq_handler_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_event = getelementptr inbounds %struct.bq24190_dev_info, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %irq_event to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %irq_event, align 1
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @bq24190_check_status(ptr noundef %data)
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i16 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i16, ptr %last_busy.i, align 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i17 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #10
  %13 = ptrtoint ptr %irq_event to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %irq_event, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_input_current_limit_from_supplier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_sysfs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #10
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.013.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %i.013.i)
  %cmp3.i = icmp ugt i32 %i.013.i, 40
  %tobool.not = icmp eq ptr %arrayidx.i, null
  %or.cond = or i1 %cmp3.i, %tobool.not
  br i1 %or.cond, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %dev4 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %call.i32 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp = icmp slt i32 %call.i32, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then6.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %reg = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 1
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 4
  %mask = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 2
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask, align 1
  %shift = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 2
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end8.if.end13_crit_edge, label %if.else

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %call.i.i to i8
  %and8.i = and i8 %14, %conv.i.i
  %conv3.i = zext i8 %16 to i32
  %conv4.i = zext i8 %and8.i to i32
  %shr.i = lshr i32 %conv4.i, %conv3.i
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, i32 noundef %shr.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end8.if.end13_crit_edge
  %count.0 = phi i32 [ %call12, %if.else ], [ %call.i.i, %if.end8.if.end13_crit_edge ]
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev4, align 4
  %call.i33 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i33, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  %call.i34 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end11.i.i.i.i, %if.then6.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %if.end13 ], [ %call.i32, %if.then6.cleanup_crit_edge ], [ %call.i32, %do.end11.i.i.i.i ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_sysfs_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #10
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %v, align 1, !annotation !312
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.013.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %i.013.i)
  %cmp3.i = icmp ugt i32 %i.013.i, 40
  %tobool.not = icmp eq ptr %arrayidx.i, null
  %or.cond = or i1 %cmp3.i, %tobool.not
  br i1 %or.cond, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %call4 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %v) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 4
  %call.i36 = call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp9 = icmp slt i32 %call.i36, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then10.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %reg = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg, align 4
  %mask = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 2
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask, align 1
  %shift = getelementptr [41 x %struct.bq24190_sysfs_field_info], ptr @bq24190_sysfs_field_tbl, i32 0, i32 %i.013.i, i32 3
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift, align 2
  %18 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %v, align 1
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %call.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end12.bq24190_write_mask.exit_crit_edge, label %if.end.i

if.end12.bq24190_write_mask.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_write_mask.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %call.i.i to i8
  %neg.i = xor i8 %15, -1
  %and.i = and i8 %conv.i.i, %neg.i
  %conv3.i = zext i8 %19 to i32
  %conv4.i = zext i8 %17 to i32
  %shl.i = shl i32 %conv3.i, %conv4.i
  %22 = trunc i32 %shl.i to i8
  %23 = and i8 %15, %22
  %conv8.i = or i8 %and.i, %23
  %24 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call1, align 4
  %call.i15.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %13, i8 noundef zeroext %conv8.i) #10
  br label %bq24190_write_mask.exit

bq24190_write_mask.exit:                          ; preds = %if.end.i, %if.end12.bq24190_write_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i15.i, %if.end.i ], [ %call.i.i, %if.end12.bq24190_write_mask.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool14.not, i32 %count, i32 %retval.0.i
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %call.i37 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %29 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev7, align 4
  %call.i38 = call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %bq24190_write_mask.exit, %do.end11.i.i.i.i, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %bq24190_write_mask.exit ], [ %call4, %if.end.cleanup_crit_edge ], [ %call.i36, %if.then10.cleanup_crit_edge ], [ %call.i36, %do.end11.i.i.i.i ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_charger_get_property.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_charger_get_property, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !316

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_charger_get_property.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %psp) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %7 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %if.end9.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb13
    i32 0, label %sw.bb15
    i32 56, label %sw.bb17
    i32 67, label %sw.bb19
    i32 68, label %sw.bb21
    i32 29, label %sw.bb23
    i32 30, label %sw.bb25
    i32 31, label %sw.bb27
    i32 32, label %sw.bb29
    i32 38, label %sw.bb31
    i32 66, label %sw.bb33
    i32 73, label %sw.bb34
    i32 74, label %sw.bb35
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call.i.i.i74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i74, 0
  br i1 %cmp.i.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %10 = and i32 %call.i.i.i74, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.else.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call.i.i14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %cmp.i.i15.i = icmp slt i32 %call.i.i14.i, 0
  br i1 %cmp.i.i15.i, label %if.else.i.sw.epilog_crit_edge, label %if.end5.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i1729.i = and i32 %call.i.i14.i, 1
  %13 = xor i32 %and8.i1729.i, 3
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end5.i, %if.end.i.if.end7.i_crit_edge
  %type.0.i = phi i32 [ %13, %if.end5.i ], [ 1, %if.end.i.if.end7.i_crit_edge ]
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type.0.i, ptr %val, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  %f_reg_lock.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %f_reg_lock.i, i32 noundef 0) #10
  %f_reg.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %f_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %f_reg.i, align 4
  tail call void @mutex_unlock(ptr noundef %f_reg_lock.i) #10
  %conv.i = zext i8 %16 to i32
  %and.i = and i32 %conv.i, 7
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %if.else.i76
    i32 1, label %sw.bb11.bq24190_charger_get_health.exit_crit_edge
    i32 3, label %sw.bb11.bq24190_charger_get_health.exit_crit_edge121
    i32 5, label %sw.bb11.bq24190_charger_get_health.exit_crit_edge122
    i32 2, label %sw.bb11.sw.bb4.i_crit_edge
    i32 4, label %sw.bb11.sw.bb4.i_crit_edge123
    i32 6, label %sw.bb11.sw.bb4.i_crit_edge124
  ]

sw.bb11.sw.bb4.i_crit_edge124:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb11.sw.bb4.i_crit_edge123:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb11.sw.bb4.i_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

sw.bb11.bq24190_charger_get_health.exit_crit_edge122: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

sw.bb11.bq24190_charger_get_health.exit_crit_edge121: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

sw.bb11.bq24190_charger_get_health.exit_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

sw.bb4.i:                                         ; preds = %sw.bb11.sw.bb4.i_crit_edge, %sw.bb11.sw.bb4.i_crit_edge123, %sw.bb11.sw.bb4.i_crit_edge124
  br label %bq24190_charger_get_health.exit

sw.default.i:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

if.else.i76:                                      ; preds = %sw.bb11
  %and6.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else9.i, label %if.else.i76.bq24190_charger_get_health.exit_crit_edge

if.else.i76.bq24190_charger_get_health.exit_crit_edge: ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

if.else9.i:                                       ; preds = %if.else.i76
  %and11.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else22.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else9.i
  %18 = lshr i32 %conv.i, 4
  %and16.i = and i32 %18, 3
  %switch.tableidx = add nsw i32 %and16.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %if.then13.i.bq24190_charger_get_health.exit_crit_edge

if.then13.i.bq24190_charger_get_health.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_charger_get_health.exit

if.else22.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %and24.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %..i = select i1 %tobool25.not.i, i32 1, i32 4
  br label %bq24190_charger_get_health.exit

switch.lookup:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.bq24190_charger_get_property, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bq24190_charger_get_health.exit

bq24190_charger_get_health.exit:                  ; preds = %switch.lookup, %if.else22.i, %if.then13.i.bq24190_charger_get_health.exit_crit_edge, %if.else.i76.bq24190_charger_get_health.exit_crit_edge, %sw.default.i, %sw.bb4.i, %sw.bb11.bq24190_charger_get_health.exit_crit_edge, %sw.bb11.bq24190_charger_get_health.exit_crit_edge121, %sw.bb11.bq24190_charger_get_health.exit_crit_edge122
  %health.0.i = phi i32 [ 0, %sw.default.i ], [ 2, %sw.bb4.i ], [ 6, %sw.bb11.bq24190_charger_get_health.exit_crit_edge ], [ 6, %sw.bb11.bq24190_charger_get_health.exit_crit_edge121 ], [ 6, %sw.bb11.bq24190_charger_get_health.exit_crit_edge122 ], [ 4, %if.else.i76.bq24190_charger_get_health.exit_crit_edge ], [ %..i, %if.else22.i ], [ %switch.load, %switch.lookup ], [ -1, %if.then13.i.bq24190_charger_get_health.exit_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %health.0.i, ptr %val, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end9
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %call.i.i.i77 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77)
  %cmp.i.i.i78 = icmp slt i32 %call.i.i.i77, 0
  br i1 %cmp.i.i.i78, label %sw.bb13.sw.epilog_crit_edge, label %if.end.i79

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i79:                                       ; preds = %sw.bb13
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %call.i.i12.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %cmp.i.i13.i = icmp slt i32 %call.i.i12.i, 0
  br i1 %cmp.i.i13.i, label %if.end.i79.sw.epilog_crit_edge, label %if.end4.i

if.end.i79.sw.epilog_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  %26 = and i32 %call.i.i.i77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i80 = icmp eq i32 %26, 0
  %27 = lshr i32 %call.i.i12.i, 5
  %.lobit.i = and i32 %27, 1
  %28 = xor i32 %.lobit.i, 1
  %29 = select i1 %tobool.not.i80, i32 0, i32 %28
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9
  %f_reg_lock.i.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %f_reg_lock.i.i, i32 noundef 0) #10
  %f_reg.i.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 13
  %31 = ptrtoint ptr %f_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %f_reg.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %f_reg_lock.i.i) #10
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  %call.i.i.i82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82)
  %cmp.i.i.i83 = icmp slt i32 %call.i.i.i82, 0
  br i1 %cmp.i.i.i83, label %sw.bb15.sw.epilog_crit_edge, label %if.end.i.i

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb15
  %35 = and i32 %call.i.i.i82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp ne i32 %35, 0
  %36 = and i8 %32, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not.i.i = icmp eq i8 %36, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool9.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.end.i.i.if.then22.i.i_crit_edge

if.end.i.i.if.then22.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i.i = lshr i32 %call.i.i.i82, 4
  %37 = and i32 %and12.i.i, 3
  %switch.gep119 = getelementptr inbounds [4 x i32], ptr @switch.table.bq24190_charger_get_property.130, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  br label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.else.i.i, %if.end.i.i.if.then22.i.i_crit_edge
  %status.0.i.i = phi i32 [ 2, %if.end.i.i.if.then22.i.i_crit_edge ], [ %switch.load120, %if.else.i.i ]
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %status.0.i.i, ptr %val, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end9
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %call.i.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i.i84

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i84:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i.i.i.i = and i32 %call.i.i.i.i.i, 3
  %arrayidx.i.i.i = getelementptr i32, ptr @bq24190_ictrc_treg_values, i32 %and8.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end9
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  %call.i.i.i86 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %46, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i86)
  %cmp.i.i.i87 = icmp slt i32 %call.i.i.i86, 0
  br i1 %cmp.i.i.i87, label %sw.bb19.sw.epilog_crit_edge, label %if.end.i89

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i89:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %47 = trunc i32 %call.i.i.i86 to i8
  %48 = lshr i8 %47, 4
  %inc.i = add nuw nsw i8 %48, 1
  %conv.i88 = zext i8 %inc.i to i32
  %mul1.i = mul nuw nsw i32 %conv.i88, 128000
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul1.i, ptr %val, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end9
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %call.i.i.i91 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i91)
  %cmp.i.i.i92 = icmp slt i32 %call.i.i.i91, 0
  br i1 %cmp.i.i.i92, label %sw.bb21.sw.epilog_crit_edge, label %if.end.i94

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i94:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i.i = and i32 %call.i.i.i91, 15
  %52 = mul nuw nsw i32 %and8.i.i, 128000
  %mul1.i93 = add nuw nsw i32 %52, 128000
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul1.i93, ptr %val, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end9
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %sw.bb23.sw.epilog_crit_edge, label %if.end.i98

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i98:                                       ; preds = %sw.bb23
  %and8.i.i.i = lshr i32 %call.i.i.i.i, 2
  %shr.i.i.i = and i32 %and8.i.i.i, 63
  %arrayidx.i.i = getelementptr i32, ptr @bq24190_ccc_ichg_values, i32 %shr.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i, align 4
  %58 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call, align 4
  %call.i.i.i96 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96)
  %cmp.i.i.i97 = icmp slt i32 %call.i.i.i96, 0
  br i1 %cmp.i.i.i97, label %if.end.i98.sw.epilog_crit_edge, label %if.end4.i100

if.end.i98.sw.epilog_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end4.i100:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i22.i = and i32 %call.i.i.i96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i22.i)
  %tobool.not.i99 = icmp eq i32 %and8.i22.i, 0
  %div.i = sdiv i32 %57, 5
  %spec.select.i = select i1 %tobool.not.i99, i32 %57, i32 %div.i
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select.i, ptr %val, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4544000, ptr %val, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end9
  %62 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call, align 4
  %call.i.i.i.i102 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i102)
  %cmp.i.i.i.i103 = icmp slt i32 %call.i.i.i.i102, 0
  br i1 %cmp.i.i.i.i103, label %sw.bb27.sw.epilog_crit_edge, label %if.end.i107

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i107:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i.i.i104 = lshr i32 %call.i.i.i.i102, 2
  %shr.i.i.i105 = and i32 %and8.i.i.i104, 63
  %64 = tail call i32 @llvm.umin.i32(i32 %shr.i.i.i105, i32 56) #10
  %arrayidx.i.i106 = getelementptr i32, ptr @bq24190_cvc_vreg_values, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i106, align 4
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4400000, ptr %val, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end9
  %69 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call, align 4
  %call.i.i.i.i109 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i109)
  %cmp.i.i.i.i110 = icmp slt i32 %call.i.i.i.i109, 0
  br i1 %cmp.i.i.i.i110, label %sw.bb31.sw.epilog_crit_edge, label %if.end.i113

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i113:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i.i.i111 = and i32 %call.i.i.i.i109, 7
  %arrayidx.i.i112 = getelementptr i32, ptr @bq24190_isc_iinlim_values, i32 %and8.i.i.i111
  %71 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i112, align 4
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %val, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %model_name = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 6
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %model_name, ptr %val, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.82, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb34, %sw.bb33, %if.end.i113, %sw.bb31.sw.epilog_crit_edge, %sw.bb29, %if.end.i107, %sw.bb27.sw.epilog_crit_edge, %sw.bb25, %if.end4.i100, %if.end.i98.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %if.end.i94, %sw.bb21.sw.epilog_crit_edge, %if.end.i89, %sw.bb19.sw.epilog_crit_edge, %if.end.i.i84, %sw.bb17.sw.epilog_crit_edge, %if.then22.i.i, %sw.bb15.sw.epilog_crit_edge, %if.end4.i, %if.end.i79.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %bq24190_charger_get_health.exit, %if.end7.i, %if.else.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb35 ], [ 0, %sw.bb34 ], [ 0, %sw.bb33 ], [ 0, %sw.bb29 ], [ 0, %sw.bb25 ], [ 0, %bq24190_charger_get_health.exit ], [ -61, %if.end9.sw.epilog_crit_edge ], [ 0, %if.end7.i ], [ %call.i.i.i74, %sw.bb.sw.epilog_crit_edge ], [ %call.i.i14.i, %if.else.i.sw.epilog_crit_edge ], [ 0, %if.end4.i ], [ %call.i.i.i77, %sw.bb13.sw.epilog_crit_edge ], [ %call.i.i12.i, %if.end.i79.sw.epilog_crit_edge ], [ 0, %if.then22.i.i ], [ %call.i.i.i82, %sw.bb15.sw.epilog_crit_edge ], [ 0, %if.end.i.i84 ], [ %call.i.i.i.i.i, %sw.bb17.sw.epilog_crit_edge ], [ 0, %if.end.i89 ], [ %call.i.i.i86, %sw.bb19.sw.epilog_crit_edge ], [ 0, %if.end.i94 ], [ %call.i.i.i91, %sw.bb21.sw.epilog_crit_edge ], [ 0, %if.end4.i100 ], [ %call.i.i.i.i, %sw.bb23.sw.epilog_crit_edge ], [ %call.i.i.i96, %if.end.i98.sw.epilog_crit_edge ], [ 0, %if.end.i107 ], [ %call.i.i.i.i102, %sw.bb27.sw.epilog_crit_edge ], [ 0, %if.end.i113 ], [ %call.i.i.i.i109, %sw.bb31.sw.epilog_crit_edge ]
  %77 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev5, align 4
  %call.i115 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 12, i32 22
  %79 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store volatile i64 %call.i115, ptr %last_busy.i, align 8
  %80 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev5, align 4
  %call.i116 = tail call i32 @__pm_runtime_suspend(ptr noundef %81, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11.i.i.i.i, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_charger_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_charger_set_property.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_charger_set_property, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !316

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_charger_set_property.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %psp) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then7.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %7 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %psp, label %if.end9.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 56, label %sw.bb11
    i32 1, label %sw.bb13
    i32 29, label %sw.bb15
    i32 31, label %sw.bb17
    i32 38, label %sw.bb19
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %and.i.i.i = and i8 %conv.i.i.i.i, -33
  %12 = select i1 %tobool.not.i.i, i8 32, i8 0
  %conv8.i.i.i = or i8 %and.i.i.i, %12
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %call.i15.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 7, i8 noundef zeroext %conv8.i.i.i) #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %16)
  %cmp1.i.i.i.i = icmp slt i32 %16, 800
  br i1 %cmp1.i.i.i.i, label %sw.bb11.bq24190_find_idx.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i

sw.bb11.bq24190_find_idx.exit.i.i.i_crit_edge:    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %16)
  %cmp1.i.i.1.i.i = icmp ult i32 %16, 1000
  br i1 %cmp1.i.i.1.i.i, label %for.inc.i.i.i.i.bq24190_find_idx.exit.i.i.i_crit_edge, label %for.inc.i.i.1.i.i

for.inc.i.i.i.i.bq24190_find_idx.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i.i

for.inc.i.i.1.i.i:                                ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %16)
  %cmp1.i.i.2.i.i = icmp ult i32 %16, 1200
  %spec.select.i.i = select i1 %cmp1.i.i.2.i.i, i8 2, i8 3
  br label %bq24190_find_idx.exit.i.i.i

bq24190_find_idx.exit.i.i.i:                      ; preds = %for.inc.i.i.1.i.i, %for.inc.i.i.i.i.bq24190_find_idx.exit.i.i.i_crit_edge, %sw.bb11.bq24190_find_idx.exit.i.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i8 [ 0, %sw.bb11.bq24190_find_idx.exit.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.i.bq24190_find_idx.exit.i.i.i_crit_edge ], [ %spec.select.i.i, %for.inc.i.i.1.i.i ]
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %call.i.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %bq24190_find_idx.exit.i.i.i.sw.epilog_crit_edge, label %if.end.i.i.i.i

bq24190_find_idx.exit.i.i.i.sw.epilog_crit_edge:  ; preds = %bq24190_find_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i.i:                                   ; preds = %bq24190_find_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = trunc i32 %call.i.i.i.i.i to i8
  %and.i.i.i.i = and i8 %conv.i.i.i.i.i, -4
  %conv8.i.i.i.i = or i8 %and.i.i.i.i, %i.0.lcssa.i.i.i.i
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %call.i15.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 6, i8 noundef zeroext %conv8.i.i.i.i) #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %22, label %sw.bb13.sw.epilog_crit_edge [
    i32 1, label %sw.bb13.if.end8.i_crit_edge
    i32 2, label %sw.bb13.if.then.i_crit_edge
    i32 3, label %sw.bb2.i
  ]

sw.bb13.if.then.i_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sw.bb13.if.end8.i_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i, %sw.bb13.if.then.i_crit_edge
  %force_20pct.0.ph.i = phi i8 [ 0, %sw.bb2.i ], [ 1, %sw.bb13.if.then.i_crit_edge ]
  %en_term.0.ph.i = phi i8 [ -128, %sw.bb2.i ], [ 0, %sw.bb13.if.then.i_crit_edge ]
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %call.i.i.i43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i43, 0
  br i1 %cmp.i.i.i, label %if.then.i.sw.epilog_crit_edge, label %bq24190_write_mask.exit.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

bq24190_write_mask.exit.i:                        ; preds = %if.then.i
  %conv.i.i.i = trunc i32 %call.i.i.i43 to i8
  %and.i.i = and i8 %conv.i.i.i, -2
  %conv8.i.i = or i8 %and.i.i, %force_20pct.0.ph.i
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %call.i15.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 2, i8 noundef zeroext %conv8.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %cmp.i = icmp slt i32 %call.i15.i.i, 0
  br i1 %cmp.i, label %bq24190_write_mask.exit.i.sw.epilog_crit_edge, label %if.end.i

bq24190_write_mask.exit.i.sw.epilog_crit_edge:    ; preds = %bq24190_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %bq24190_write_mask.exit.i
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %call.i.i19.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i)
  %cmp.i.i20.i = icmp slt i32 %call.i.i19.i, 0
  br i1 %cmp.i.i20.i, label %if.end.i.sw.epilog_crit_edge, label %bq24190_write_mask.exit28.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

bq24190_write_mask.exit28.i:                      ; preds = %if.end.i
  %conv.i.i21.i = trunc i32 %call.i.i19.i to i8
  %and.i22.i = and i8 %conv.i.i21.i, 127
  %conv8.i24.i = or i8 %and.i22.i, %en_term.0.ph.i
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  %call.i15.i25.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 5, i8 noundef zeroext %conv8.i24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i25.i)
  %cmp5.i = icmp slt i32 %call.i15.i25.i, 0
  br i1 %cmp5.i, label %bq24190_write_mask.exit28.i.sw.epilog_crit_edge, label %bq24190_write_mask.exit28.i.if.end8.i_crit_edge

bq24190_write_mask.exit28.i.if.end8.i_crit_edge:  ; preds = %bq24190_write_mask.exit28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

bq24190_write_mask.exit28.i.sw.epilog_crit_edge:  ; preds = %bq24190_write_mask.exit28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end8.i:                                        ; preds = %bq24190_write_mask.exit28.i.if.end8.i_crit_edge, %sw.bb13.if.end8.i_crit_edge
  %chg_config.045.i = phi i8 [ 16, %bq24190_write_mask.exit28.i.if.end8.i_crit_edge ], [ 0, %sw.bb13.if.end8.i_crit_edge ]
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  %call.i.i29.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %cmp.i.i30.i = icmp slt i32 %call.i.i29.i, 0
  br i1 %cmp.i.i30.i, label %if.end8.i.sw.epilog_crit_edge, label %if.end.i37.i

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i37.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i31.i = trunc i32 %call.i.i29.i to i8
  %and.i32.i = and i8 %conv.i.i31.i, -49
  %conv8.i35.i = or i8 %and.i32.i, %chg_config.045.i
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %call.i15.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 1, i8 noundef zeroext %conv8.i35.i) #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %call.i.i.i45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i45)
  %cmp.i.i.i46 = icmp slt i32 %call.i.i.i45, 0
  br i1 %cmp.i.i.i46, label %sw.bb15.sw.epilog_crit_edge, label %if.end.i47

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i47:                                       ; preds = %sw.bb15
  %and8.i13.i = and i32 %call.i.i.i45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i13.i)
  %tobool.not.i = icmp eq i32 %and8.i13.i, 0
  %mul.i = mul i32 %37, 5
  %spec.select.i = select i1 %tobool.not.i, i32 %37, i32 %mul.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i47
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %if.end.i47 ]
  %arrayidx.i.i.i = getelementptr i32, ptr @bq24190_ccc_ichg_values, i32 %i.06.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %spec.select.i)
  %cmp1.i.i.i = icmp sgt i32 %41, %spec.select.i
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.bq24190_find_idx.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.bq24190_find_idx.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i

bq24190_find_idx.exit.i.i:                        ; preds = %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge, %for.body.i.i.i.bq24190_find_idx.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 64, %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge ], [ %i.06.i.i.i, %for.body.i.i.i.bq24190_find_idx.exit.i.i_crit_edge ]
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %call.i.i.i.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp slt i32 %call.i.i.i.i48, 0
  br i1 %cmp.i.i.i.i49, label %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge, label %if.end.i.i.i54

bq24190_find_idx.exit.i.i.sw.epilog_crit_edge:    ; preds = %bq24190_find_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i54:                                   ; preds = %bq24190_find_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i50 = trunc i32 %call.i.i.i.i48 to i8
  %and.i.i.i51 = and i8 %conv.i.i.i.i50, 3
  %i.0.lcssa.i.i.tr.i = trunc i32 %i.0.lcssa.i.i.i to i8
  %44 = shl i8 %i.0.lcssa.i.i.tr.i, 2
  %45 = add i8 %44, -4
  %conv8.i.i.i52 = or i8 %and.i.i.i51, %45
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %call.i15.i.i.i53 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 2, i8 noundef zeroext %conv8.i.i.i52) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  br label %for.body.i.i.i59

for.body.i.i.i59:                                 ; preds = %for.inc.i.i.i62.for.body.i.i.i59_crit_edge, %sw.bb17
  %i.06.i.i.i56 = phi i32 [ %inc.i.i.i60, %for.inc.i.i.i62.for.body.i.i.i59_crit_edge ], [ 1, %sw.bb17 ]
  %arrayidx.i.i.i57 = getelementptr i32, ptr @bq24190_cvc_vreg_values, i32 %i.06.i.i.i56
  %50 = ptrtoint ptr %arrayidx.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp1.i.i.i58 = icmp sgt i32 %51, %49
  br i1 %cmp1.i.i.i58, label %for.body.i.i.i59.bq24190_find_idx.exit.i.i66_crit_edge, label %for.inc.i.i.i62

for.body.i.i.i59.bq24190_find_idx.exit.i.i66_crit_edge: ; preds = %for.body.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i66

for.inc.i.i.i62:                                  ; preds = %for.body.i.i.i59
  %inc.i.i.i60 = add nuw nsw i32 %i.06.i.i.i56, 1
  %exitcond.not.i.i.i61 = icmp eq i32 %inc.i.i.i60, 57
  br i1 %exitcond.not.i.i.i61, label %for.inc.i.i.i62.bq24190_find_idx.exit.i.i66_crit_edge, label %for.inc.i.i.i62.for.body.i.i.i59_crit_edge

for.inc.i.i.i62.for.body.i.i.i59_crit_edge:       ; preds = %for.inc.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i59

for.inc.i.i.i62.bq24190_find_idx.exit.i.i66_crit_edge: ; preds = %for.inc.i.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i66

bq24190_find_idx.exit.i.i66:                      ; preds = %for.inc.i.i.i62.bq24190_find_idx.exit.i.i66_crit_edge, %for.body.i.i.i59.bq24190_find_idx.exit.i.i66_crit_edge
  %i.0.lcssa.i.i.i63 = phi i32 [ 57, %for.inc.i.i.i62.bq24190_find_idx.exit.i.i66_crit_edge ], [ %i.06.i.i.i56, %for.body.i.i.i59.bq24190_find_idx.exit.i.i66_crit_edge ]
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %call.i.i.i.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %53, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i64)
  %cmp.i.i.i.i65 = icmp slt i32 %call.i.i.i.i64, 0
  br i1 %cmp.i.i.i.i65, label %bq24190_find_idx.exit.i.i66.sw.epilog_crit_edge, label %if.end.i.i.i72

bq24190_find_idx.exit.i.i66.sw.epilog_crit_edge:  ; preds = %bq24190_find_idx.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i72:                                   ; preds = %bq24190_find_idx.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i67 = trunc i32 %call.i.i.i.i64 to i8
  %and.i.i.i68 = and i8 %conv.i.i.i.i67, 3
  %i.0.lcssa.i.i.tr.i69 = trunc i32 %i.0.lcssa.i.i.i63 to i8
  %54 = shl i8 %i.0.lcssa.i.i.tr.i69, 2
  %55 = add i8 %54, -4
  %conv8.i.i.i70 = or i8 %and.i.i.i68, %55
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  %call.i15.i.i.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 4, i8 noundef zeroext %conv8.i.i.i70) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end9
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %59)
  %cmp1.i.i.i74 = icmp slt i32 %59, 150000
  br i1 %cmp1.i.i.i74, label %sw.bb19.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.i75

sw.bb19.bq24190_find_idx.exit.i.i80_crit_edge:    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.i75:                                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %59)
  %cmp1.i.i.1.i = icmp ult i32 %59, 500000
  br i1 %cmp1.i.i.1.i, label %for.inc.i.i.i75.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.1.i

for.inc.i.i.i75.bq24190_find_idx.exit.i.i80_crit_edge: ; preds = %for.inc.i.i.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.1.i:                                  ; preds = %for.inc.i.i.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %59)
  %cmp1.i.i.2.i = icmp ult i32 %59, 900000
  br i1 %cmp1.i.i.2.i, label %for.inc.i.i.1.i.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.2.i

for.inc.i.i.1.i.bq24190_find_idx.exit.i.i80_crit_edge: ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.2.i:                                  ; preds = %for.inc.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %59)
  %cmp1.i.i.3.i = icmp ult i32 %59, 1200000
  br i1 %cmp1.i.i.3.i, label %for.inc.i.i.2.i.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.3.i

for.inc.i.i.2.i.bq24190_find_idx.exit.i.i80_crit_edge: ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.3.i:                                  ; preds = %for.inc.i.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %59)
  %cmp1.i.i.4.i = icmp ult i32 %59, 1500000
  br i1 %cmp1.i.i.4.i, label %for.inc.i.i.3.i.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.4.i

for.inc.i.i.3.i.bq24190_find_idx.exit.i.i80_crit_edge: ; preds = %for.inc.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.4.i:                                  ; preds = %for.inc.i.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %59)
  %cmp1.i.i.5.i = icmp ult i32 %59, 2000000
  br i1 %cmp1.i.i.5.i, label %for.inc.i.i.4.i.bq24190_find_idx.exit.i.i80_crit_edge, label %for.inc.i.i.5.i

for.inc.i.i.4.i.bq24190_find_idx.exit.i.i80_crit_edge: ; preds = %for.inc.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i80

for.inc.i.i.5.i:                                  ; preds = %for.inc.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %59)
  %cmp1.i.i.6.i = icmp ult i32 %59, 3000000
  %spec.select.i76 = select i1 %cmp1.i.i.6.i, i8 6, i8 7
  br label %bq24190_find_idx.exit.i.i80

bq24190_find_idx.exit.i.i80:                      ; preds = %for.inc.i.i.5.i, %for.inc.i.i.4.i.bq24190_find_idx.exit.i.i80_crit_edge, %for.inc.i.i.3.i.bq24190_find_idx.exit.i.i80_crit_edge, %for.inc.i.i.2.i.bq24190_find_idx.exit.i.i80_crit_edge, %for.inc.i.i.1.i.bq24190_find_idx.exit.i.i80_crit_edge, %for.inc.i.i.i75.bq24190_find_idx.exit.i.i80_crit_edge, %sw.bb19.bq24190_find_idx.exit.i.i80_crit_edge
  %i.0.lcssa.i.i.i77 = phi i8 [ 0, %sw.bb19.bq24190_find_idx.exit.i.i80_crit_edge ], [ 1, %for.inc.i.i.i75.bq24190_find_idx.exit.i.i80_crit_edge ], [ 2, %for.inc.i.i.1.i.bq24190_find_idx.exit.i.i80_crit_edge ], [ 3, %for.inc.i.i.2.i.bq24190_find_idx.exit.i.i80_crit_edge ], [ 4, %for.inc.i.i.3.i.bq24190_find_idx.exit.i.i80_crit_edge ], [ 5, %for.inc.i.i.4.i.bq24190_find_idx.exit.i.i80_crit_edge ], [ %spec.select.i76, %for.inc.i.i.5.i ]
  %60 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call, align 4
  %call.i.i.i.i78 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i78)
  %cmp.i.i.i.i79 = icmp slt i32 %call.i.i.i.i78, 0
  br i1 %cmp.i.i.i.i79, label %bq24190_find_idx.exit.i.i80.sw.epilog_crit_edge, label %if.end.i.i.i85

bq24190_find_idx.exit.i.i80.sw.epilog_crit_edge:  ; preds = %bq24190_find_idx.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i85:                                   ; preds = %bq24190_find_idx.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i81 = trunc i32 %call.i.i.i.i78 to i8
  %and.i.i.i82 = and i8 %conv.i.i.i.i81, -8
  %conv8.i.i.i83 = or i8 %and.i.i.i82, %i.0.lcssa.i.i.i77
  %62 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call, align 4
  %call.i15.i.i.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 0, i8 noundef zeroext %conv8.i.i.i83) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i.i.i85, %bq24190_find_idx.exit.i.i80.sw.epilog_crit_edge, %if.end.i.i.i72, %bq24190_find_idx.exit.i.i66.sw.epilog_crit_edge, %if.end.i.i.i54, %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %if.end.i37.i, %if.end8.i.sw.epilog_crit_edge, %bq24190_write_mask.exit28.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %bq24190_write_mask.exit.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %if.end.i.i.i.i, %bq24190_find_idx.exit.i.i.i.sw.epilog_crit_edge, %if.end.i.i.i, %sw.bb.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end9.sw.epilog_crit_edge ], [ %call.i15.i.i.i, %if.end.i.i.i ], [ %call.i.i.i.i, %sw.bb.sw.epilog_crit_edge ], [ %call.i15.i.i.i.i, %if.end.i.i.i.i ], [ %call.i.i.i.i.i, %bq24190_find_idx.exit.i.i.i.sw.epilog_crit_edge ], [ -22, %sw.bb13.sw.epilog_crit_edge ], [ %call.i15.i.i, %bq24190_write_mask.exit.i.sw.epilog_crit_edge ], [ %call.i15.i25.i, %bq24190_write_mask.exit28.i.sw.epilog_crit_edge ], [ %call.i15.i36.i, %if.end.i37.i ], [ %call.i.i29.i, %if.end8.i.sw.epilog_crit_edge ], [ %call.i.i.i43, %if.then.i.sw.epilog_crit_edge ], [ %call.i.i19.i, %if.end.i.sw.epilog_crit_edge ], [ %call.i15.i.i.i53, %if.end.i.i.i54 ], [ %call.i.i.i.i48, %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge ], [ %call.i.i.i45, %sw.bb15.sw.epilog_crit_edge ], [ %call.i15.i.i.i71, %if.end.i.i.i72 ], [ %call.i.i.i.i64, %bq24190_find_idx.exit.i.i66.sw.epilog_crit_edge ], [ %call.i15.i.i.i84, %if.end.i.i.i85 ], [ %call.i.i.i.i78, %bq24190_find_idx.exit.i.i80.sw.epilog_crit_edge ]
  %64 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev5, align 4
  %call.i87 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 12, i32 22
  %66 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store volatile i64 %call.i87, ptr %last_busy.i, align 8
  %67 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev5, align 4
  %call.i88 = tail call i32 @__pm_runtime_suspend(ptr noundef %68, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11.i.i.i.i, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %if.then7.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq24190_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %psp, label %sw.default [
    i32 4, label %entry.return_crit_edge
    i32 56, label %entry.return_crit_edge1
    i32 1, label %entry.return_crit_edge2
    i32 29, label %entry.return_crit_edge3
    i32 31, label %entry.return_crit_edge4
    i32 38, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq24190_charger_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %input_current_limit_work = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %input_current_limit_work, i32 noundef 30) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.85) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_battery_get_property.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_battery_get_property, %do.end8)) #10
          to label %if.then [label %do.end8], !srcloc !316

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_battery_get_property.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.81, i32 noundef %psp) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then11.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  %9 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %psp, label %if.end13.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb15
    i32 4, label %sw.bb17
    i32 6, label %if.end13.sw.epilog.sink.split_crit_edge
    i32 56, label %sw.bb20
    i32 66, label %sw.bb22
  ]

if.end13.sw.epilog.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  %f_reg_lock.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %f_reg_lock.i, i32 noundef 0) #10
  %f_reg.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %f_reg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %f_reg.i, align 4
  tail call void @mutex_unlock(ptr noundef %f_reg_lock.i) #10
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %14 = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp ne i32 %14, 0
  %15 = and i8 %11, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not.i = icmp eq i8 %15, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool9.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = lshr i32 %call.i.i, 4
  %16 = and i32 %and12.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.bq24190_battery_get_property, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end13
  %f_reg_lock.i45 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %f_reg_lock.i45, i32 noundef 0) #10
  %f_reg.i46 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %f_reg.i46 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %f_reg.i46, align 4
  tail call void @mutex_unlock(ptr noundef %f_reg_lock.i45) #10
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i47 = icmp eq i8 %20, 0
  br i1 %tobool.not.i47, label %if.else.i48, label %sw.bb15.sw.epilog.sink.split_crit_edge

sw.bb15.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.else.i48:                                      ; preds = %sw.bb15
  %and3.i = and i8 %19, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and3.i)
  %.not = icmp eq i8 %and3.i, 7
  br i1 %.not, label %if.else.i48.sw.epilog.sink.split_crit_edge, label %switch.lookup58

if.else.i48.sw.epilog.sink.split_crit_edge:       ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end13
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %call.i.i.i50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i50, 0
  br i1 %cmp.i.i.i, label %sw.bb17.sw.epilog_crit_edge, label %if.end.i51

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i51:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %23 = lshr i32 %call.i.i.i50, 5
  %.lobit.i = and i32 %23, 1
  %24 = xor i32 %.lobit.i, 1
  br label %sw.epilog.sink.split

sw.bb20:                                          ; preds = %if.end13
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %sw.bb20.sw.epilog_crit_edge, label %if.end.i53

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i53:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %and8.i.i.i = and i32 %call.i.i.i.i, 3
  %arrayidx.i.i = getelementptr i32, ptr @bq24190_ictrc_treg_values, i32 %and8.i.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

switch.lookup58:                                  ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #12
  %conv5.i = zext i8 %and3.i to i32
  %switch.gep59 = getelementptr inbounds [7 x i32], ptr @switch.table.bq24190_battery_get_property.131, i32 0, i32 %conv5.i
  %29 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %switch.lookup58, %sw.bb22, %if.end.i53, %if.end.i51, %if.else.i48.sw.epilog.sink.split_crit_edge, %sw.bb15.sw.epilog.sink.split_crit_edge, %if.else.i, %if.end.i.sw.epilog.sink.split_crit_edge, %if.end13.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %28, %if.end.i53 ], [ %24, %if.end.i51 ], [ 1, %sw.bb22 ], [ 2, %if.end.i.sw.epilog.sink.split_crit_edge ], [ 4, %sw.bb15.sw.epilog.sink.split_crit_edge ], [ 0, %if.end13.sw.epilog.sink.split_crit_edge ], [ %switch.load, %if.else.i ], [ %switch.load60, %switch.lookup58 ], [ 0, %if.else.i48.sw.epilog.sink.split_crit_edge ]
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb20.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -61, %if.end13.sw.epilog_crit_edge ], [ %call.i.i, %sw.bb.sw.epilog_crit_edge ], [ %call.i.i.i50, %sw.bb17.sw.epilog_crit_edge ], [ %call.i.i.i.i, %sw.bb20.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i55 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i55, ptr %last_busy.i, align 8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %call.i56 = tail call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11.i.i.i.i, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %if.then11.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_battery_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #10
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.85) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_battery_set_property.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_battery_set_property, %do.end8)) #10
          to label %if.then [label %do.end8], !srcloc !316

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_battery_set_property.__UNIQUE_ID_ddebug292, ptr noundef %3, ptr noundef nonnull @.str.81, i32 noundef %psp) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then11.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  %9 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %psp, label %if.end13.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 56, label %sw.bb15
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %call.i.i.i32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i32, 0
  br i1 %cmp.i.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %conv.i.i.i = trunc i32 %call.i.i.i32 to i8
  %and.i.i = and i8 %conv.i.i.i, -33
  %14 = select i1 %tobool.not.i, i8 32, i8 0
  %conv8.i.i = or i8 %and.i.i, %14
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %call.i15.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext %conv8.i.i) #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %18)
  %cmp1.i.i.i = icmp slt i32 %18, 800
  br i1 %cmp1.i.i.i, label %sw.bb15.bq24190_find_idx.exit.i.i_crit_edge, label %for.inc.i.i.i

sw.bb15.bq24190_find_idx.exit.i.i_crit_edge:      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i

for.inc.i.i.i:                                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %18)
  %cmp1.i.i.1.i = icmp ult i32 %18, 1000
  br i1 %cmp1.i.i.1.i, label %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge, label %for.inc.i.i.1.i

for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_find_idx.exit.i.i

for.inc.i.i.1.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %18)
  %cmp1.i.i.2.i = icmp ult i32 %18, 1200
  %spec.select.i = select i1 %cmp1.i.i.2.i, i8 2, i8 3
  br label %bq24190_find_idx.exit.i.i

bq24190_find_idx.exit.i.i:                        ; preds = %for.inc.i.i.1.i, %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge, %sw.bb15.bq24190_find_idx.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i8 [ 0, %sw.bb15.bq24190_find_idx.exit.i.i_crit_edge ], [ 1, %for.inc.i.i.i.bq24190_find_idx.exit.i.i_crit_edge ], [ %spec.select.i, %for.inc.i.i.1.i ]
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge, label %if.end.i.i.i

bq24190_find_idx.exit.i.i.sw.epilog_crit_edge:    ; preds = %bq24190_find_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %bq24190_find_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %and.i.i.i = and i8 %conv.i.i.i.i, -4
  %conv8.i.i.i = or i8 %and.i.i.i, %i.0.lcssa.i.i.i
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %call.i15.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 6, i8 noundef zeroext %conv8.i.i.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i.i.i, %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge, %if.end.i.i, %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end13.sw.epilog_crit_edge ], [ %call.i15.i.i, %if.end.i.i ], [ %call.i.i.i32, %sw.bb.sw.epilog_crit_edge ], [ %call.i15.i.i.i, %if.end.i.i.i ], [ %call.i.i.i.i, %bq24190_find_idx.exit.i.i.sw.epilog_crit_edge ]
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i33 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i33, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i34 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11.i.i.i.i, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %if.then11.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq24190_battery_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 56
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24190_register_reset(ptr nocapture noundef readonly %bdi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.100) #10
  br i1 %call.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdi, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %bq24190_write_mask.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bq24190_write_mask.exit:                          ; preds = %if.end
  %conv.i.i = trunc i32 %call.i.i to i8
  %conv8.i = or i8 %conv.i.i, -128
  %4 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdi, align 4
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %conv8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp = icmp slt i32 %call.i15.i, 0
  br i1 %cmp, label %bq24190_write_mask.exit.cleanup_crit_edge, label %bq24190_write_mask.exit.do.body_crit_edge

bq24190_write_mask.exit.do.body_crit_edge:        ; preds = %bq24190_write_mask.exit
  br label %do.body

bq24190_write_mask.exit.cleanup_crit_edge:        ; preds = %bq24190_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %bq24190_write_mask.exit.do.body_crit_edge
  %limit.0 = phi i32 [ %dec, %if.end11.do.body_crit_edge ], [ 100, %bq24190_write_mask.exit.do.body_crit_edge ]
  %6 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdi, align 4
  %call.i.i19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i.i20, label %do.body.cleanup_crit_edge, label %if.end7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %do.body
  %8 = and i32 %call.i.i19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %dec = add nsw i32 %limit.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.body.cleanup_crit_edge, %bq24190_write_mask.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i15.i, %bq24190_write_mask.exit.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i.i19, %do.body.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24190_set_config(ptr nocapture noundef %bdi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdi, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = trunc i32 %call.i to i8
  %2 = lshr i8 %conv.i, 4
  %3 = and i8 %2, 3
  %watchdog = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 15
  %4 = ptrtoint ptr %watchdog to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %watchdog, align 2
  %5 = and i8 %conv.i, -49
  %6 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdi, align 4
  %call.i69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 5, i8 noundef zeroext %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp6 = icmp slt i32 %call.i69, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %sys_min = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 9
  %8 = ptrtoint ptr %sys_min to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sys_min, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end9.if.end19_crit_edge, label %if.then10

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then10:                                        ; preds = %if.end9
  %10 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdi, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then10.cleanup_crit_edge, label %bq24190_write_mask.exit

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bq24190_write_mask.exit:                          ; preds = %if.then10
  %12 = udiv i16 %9, 100
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -15
  %.tr = trunc i16 %12 to i8
  %13 = shl i8 %.tr, 1
  %14 = add i8 %13, 4
  %15 = and i8 %14, 14
  %conv8.i = or i8 %and.i, %15
  %16 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdi, align 4
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext %conv8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp15 = icmp slt i32 %call.i15.i, 0
  br i1 %cmp15, label %bq24190_write_mask.exit.cleanup_crit_edge, label %bq24190_write_mask.exit.if.end19_crit_edge

bq24190_write_mask.exit.if.end19_crit_edge:       ; preds = %bq24190_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

bq24190_write_mask.exit.cleanup_crit_edge:        ; preds = %bq24190_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %bq24190_write_mask.exit.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %iprechg = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 10
  %18 = ptrtoint ptr %iprechg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %iprechg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool20.not = icmp eq i16 %19, 0
  br i1 %tobool20.not, label %if.end19.if.end32_crit_edge, label %if.then21

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then21:                                        ; preds = %if.end19
  %20 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdi, align 4
  %call.i.i72 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp.i.i73 = icmp slt i32 %call.i.i72, 0
  br i1 %cmp.i.i73, label %if.then21.cleanup_crit_edge, label %bq24190_write_mask.exit82

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bq24190_write_mask.exit82:                        ; preds = %if.then21
  %conv.i.i74 = trunc i32 %call.i.i72 to i8
  %and.i75 = and i8 %conv.i.i74, 15
  %22 = lshr i16 %19, 3
  %23 = trunc i16 %22 to i8
  %24 = add i8 %23, -16
  %25 = and i8 %24, -16
  %conv8.i78 = or i8 %and.i75, %25
  %26 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdi, align 4
  %call.i15.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 3, i8 noundef zeroext %conv8.i78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i79)
  %cmp28 = icmp slt i32 %call.i15.i79, 0
  br i1 %cmp28, label %bq24190_write_mask.exit82.cleanup_crit_edge, label %bq24190_write_mask.exit82.if.end32_crit_edge

bq24190_write_mask.exit82.if.end32_crit_edge:     ; preds = %bq24190_write_mask.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

bq24190_write_mask.exit82.cleanup_crit_edge:      ; preds = %bq24190_write_mask.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %bq24190_write_mask.exit82.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  %iterm = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 11
  %28 = ptrtoint ptr %iterm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %iterm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool33.not = icmp eq i16 %29, 0
  br i1 %tobool33.not, label %if.end32.if.end45_crit_edge, label %if.then34

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then34:                                        ; preds = %if.end32
  %30 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdi, align 4
  %call.i.i83 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %cmp.i.i84 = icmp slt i32 %call.i.i83, 0
  br i1 %cmp.i.i84, label %if.then34.cleanup_crit_edge, label %bq24190_write_mask.exit92

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bq24190_write_mask.exit92:                        ; preds = %if.then34
  %32 = lshr i16 %29, 7
  %div37 = trunc i16 %32 to i8
  %sub38 = add i8 %div37, 15
  %conv.i.i85 = trunc i32 %call.i.i83 to i8
  %and.i86 = and i8 %conv.i.i85, -16
  %33 = and i8 %sub38, 15
  %conv8.i88 = or i8 %and.i86, %33
  %34 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bdi, align 4
  %call.i15.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 3, i8 noundef zeroext %conv8.i88) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i89)
  %cmp41 = icmp slt i32 %call.i15.i89, 0
  br i1 %cmp41, label %bq24190_write_mask.exit92.cleanup_crit_edge, label %bq24190_write_mask.exit92.if.end45_crit_edge

bq24190_write_mask.exit92.if.end45_crit_edge:     ; preds = %bq24190_write_mask.exit92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

bq24190_write_mask.exit92.cleanup_crit_edge:      ; preds = %bq24190_write_mask.exit92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %bq24190_write_mask.exit92.if.end45_crit_edge, %if.end32.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %bq24190_write_mask.exit92.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %bq24190_write_mask.exit82.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %bq24190_write_mask.exit.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ %call.i69, %if.end.cleanup_crit_edge ], [ %call.i15.i, %bq24190_write_mask.exit.cleanup_crit_edge ], [ %call.i15.i79, %bq24190_write_mask.exit82.cleanup_crit_edge ], [ %call.i15.i89, %bq24190_write_mask.exit92.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then10.cleanup_crit_edge ], [ %call.i.i72, %if.then21.cleanup_crit_edge ], [ %call.i.i83, %if.then34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq24190_check_status(ptr noundef %bdi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdi, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %bq24190_read.exit

bq24190_read.exit:                                ; preds = %entry
  %conv.i = trunc i32 %call.i to i8
  %2 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdi, align 4
  %call.i196 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %cmp.i197 = icmp slt i32 %call.i196, 0
  br i1 %cmp.i197, label %bq24190_read.exit.do.end7_crit_edge, label %do.cond10

bq24190_read.exit.do.end7_crit_edge:              ; preds = %bq24190_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.104, i32 noundef %call.i) #13
  br label %cleanup

do.end7:                                          ; preds = %do.body1.1.do.end7_crit_edge, %bq24190_read.exit.do.end7_crit_edge
  %call.i196.lcssa = phi i32 [ %call.i196, %bq24190_read.exit.do.end7_crit_edge ], [ %call.i196.1, %do.body1.1.do.end7_crit_edge ]
  %dev8 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.107, i32 noundef %call.i196.lcssa) #13
  br label %cleanup

do.cond10:                                        ; preds = %bq24190_read.exit
  %conv.i198 = trunc i32 %call.i196 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i198)
  %tobool.not = icmp eq i8 %conv.i198, 0
  br i1 %tobool.not, label %do.cond10.do.end13_crit_edge, label %do.body1.1

do.cond10.do.end13_crit_edge:                     ; preds = %do.cond10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.body1.1:                                       ; preds = %do.cond10
  %8 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdi, align 4
  %call.i196.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196.1)
  %cmp.i197.1 = icmp slt i32 %call.i196.1, 0
  br i1 %cmp.i197.1, label %do.body1.1.do.end7_crit_edge, label %do.body1.1.do.end13_crit_edge

do.body1.1.do.end13_crit_edge:                    ; preds = %do.body1.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.body1.1.do.end7_crit_edge:                     ; preds = %do.body1.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end13:                                         ; preds = %do.body1.1.do.end13_crit_edge, %do.cond10.do.end13_crit_edge
  %call.i196.lcssa241 = phi i32 [ %call.i196, %do.cond10.do.end13_crit_edge ], [ %call.i196.1, %do.body1.1.do.end13_crit_edge ]
  %conv.i198.le = trunc i32 %call.i196.lcssa241 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i198.le)
  %cmp15 = icmp eq i8 %conv.i198.le, 16
  %10 = shl i8 %conv.i, 2
  %11 = and i8 %10, 16
  %f_reg.2 = select i1 %cmp15, i8 %11, i8 %conv.i198.le
  %f_reg22 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 13
  %12 = ptrtoint ptr %f_reg22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %f_reg22, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %f_reg.2, i8 %13)
  %cmp24.not = icmp eq i8 %f_reg.2, %13
  br i1 %cmp24.not, label %do.end13.if.end76_crit_edge, label %do.end29

do.end13.if.end76_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.end29:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = zext i8 %f_reg.2 to i32
  %dev30 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %14 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev30, align 4
  %and32 = lshr i32 %conv21, 6
  %and32.lobit = and i32 %and32, 1
  %and36 = and i32 %conv21, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %lnot.ext41 = zext i1 %tobool37 to i32
  %and43 = lshr i32 %conv21, 3
  %and43.lobit = and i32 %and43, 1
  %and50 = and i32 %conv21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51 = icmp ne i32 %and50, 0
  %lnot.ext55 = zext i1 %tobool51 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.110, i32 noundef %and32.lobit, i32 noundef %lnot.ext41, i32 noundef %and43.lobit, i32 noundef %lnot.ext55) #13
  %f_reg_lock = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %f_reg_lock, i32 noundef 0) #10
  %16 = ptrtoint ptr %f_reg22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %f_reg22, align 4
  %18 = xor i8 %17, %f_reg.2
  %19 = and i8 %18, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp61 = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp70 = icmp ugt i8 %18, 15
  %20 = ptrtoint ptr %f_reg22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %f_reg.2, ptr %f_reg22, align 4
  tail call void @mutex_unlock(ptr noundef %f_reg_lock) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end29, %do.end13.if.end76_crit_edge
  %alert_battery.1.off0 = phi i1 [ %cmp61, %do.end29 ], [ false, %do.end13.if.end76_crit_edge ]
  %alert_charger.1.off0 = phi i1 [ %cmp70, %do.end29 ], [ false, %do.end13.if.end76_crit_edge ]
  %ss_reg78 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 14
  %21 = ptrtoint ptr %ss_reg78 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ss_reg78, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %conv.i)
  %cmp80.not = icmp eq i8 %22, %conv.i
  br i1 %cmp80.not, label %if.end76.if.end121_crit_edge, label %if.then82

if.end76.if.end121_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then82:                                        ; preds = %if.end76
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool86.not = icmp ne i8 %23, 0
  %24 = and i8 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool90.not = icmp eq i8 %24, 0
  %or.cond = select i1 %tobool86.not, i1 %tobool90.not, i1 false
  br i1 %or.cond, label %if.then91, label %if.then82.if.end101_crit_edge

if.then82.if.end101_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then91:                                        ; preds = %if.then82
  %25 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdi, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then91.do.end98_crit_edge, label %bq24190_write_mask.exit

if.then91.do.end98_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

bq24190_write_mask.exit:                          ; preds = %if.then91
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, 127
  %27 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdi, align 4
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp93 = icmp slt i32 %call.i15.i, 0
  br i1 %cmp93, label %bq24190_write_mask.exit.do.end98_crit_edge, label %bq24190_write_mask.exit.if.end101_crit_edge

bq24190_write_mask.exit.if.end101_crit_edge:      ; preds = %bq24190_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

bq24190_write_mask.exit.do.end98_crit_edge:       ; preds = %bq24190_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end98:                                         ; preds = %bq24190_write_mask.exit.do.end98_crit_edge, %if.then91.do.end98_crit_edge
  %retval.0.i203232 = phi i32 [ %call.i15.i, %bq24190_write_mask.exit.do.end98_crit_edge ], [ %call.i.i, %if.then91.do.end98_crit_edge ]
  %dev99 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %29 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev99, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.113, i32 noundef %retval.0.i203232) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end98, %bq24190_write_mask.exit.if.end101_crit_edge, %if.then82.if.end101_crit_edge
  %31 = ptrtoint ptr %ss_reg78 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ss_reg78, align 1
  %33 = xor i8 %32, %conv.i
  %34 = and i8 %33, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp107.not = icmp ne i8 %34, 0
  %spec.select = select i1 %cmp107.not, i1 true, i1 %alert_battery.1.off0
  %35 = and i8 %33, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp116.not = icmp ne i8 %35, 0
  %alert_charger.2.off0 = select i1 %cmp116.not, i1 true, i1 %alert_charger.1.off0
  %36 = ptrtoint ptr %ss_reg78 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %ss_reg78, align 1
  br label %if.end121

if.end121:                                        ; preds = %if.end101, %if.end76.if.end121_crit_edge
  %alert_battery.3.off0 = phi i1 [ %spec.select, %if.end101 ], [ %alert_battery.1.off0, %if.end76.if.end121_crit_edge ]
  %alert_charger.3.off0 = phi i1 [ %alert_charger.2.off0, %if.end101 ], [ %alert_charger.1.off0, %if.end76.if.end121_crit_edge ]
  %brmerge194 = select i1 %alert_charger.3.off0, i1 true, i1 %alert_battery.3.off0
  br i1 %brmerge194, label %if.then126, label %if.end121.if.end128_crit_edge

if.end121.if.end128_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then126:                                       ; preds = %if.end121
  %charger = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 3
  %37 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %conv.i)
  %tobool.i = icmp ugt i8 %conv.i, 63
  %edev.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 2
  %39 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edev.i, align 4
  %call.i204 = tail call i32 @extcon_set_state_sync(ptr noundef %40, i32 noundef 1, i1 noundef zeroext %tobool.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %cmp.i205 = icmp slt i32 %call.i204, 0
  br i1 %cmp.i205, label %do.end.i, label %if.then126.if.end128_crit_edge

if.then126.if.end128_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

do.end.i:                                         ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %conv5.i = zext i1 %tobool.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.101, i32 noundef %conv5.i, i32 noundef %call.i204) #13
  br label %if.end128

if.end128:                                        ; preds = %do.end.i, %if.then126.if.end128_crit_edge, %if.end121.if.end128_crit_edge
  br i1 %alert_battery.3.off0, label %land.lhs.true131, label %if.end128.do.body136_crit_edge

if.end128.do.body136_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136

land.lhs.true131:                                 ; preds = %if.end128
  %battery = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 4
  %43 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %battery, align 4
  %tobool132.not = icmp eq ptr %44, null
  br i1 %tobool132.not, label %land.lhs.true131.do.body136_crit_edge, label %if.then133

land.lhs.true131.do.body136_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136

if.then133:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @power_supply_changed(ptr noundef nonnull %44) #10
  br label %do.body136

do.body136:                                       ; preds = %if.then133, %land.lhs.true131.do.body136_crit_edge, %if.end128.do.body136_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_check_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_check_status, %cleanup)) #10
          to label %if.then146 [label %cleanup], !srcloc !316

if.then146:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #12
  %dev147 = getelementptr inbounds %struct.bq24190_dev_info, ptr %bdi, i32 0, i32 1
  %45 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev147, align 4
  %conv148 = and i32 %call.i, 255
  %conv149 = zext i8 %f_reg.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_check_status.__UNIQUE_ID_ddebug293, ptr noundef %46, ptr noundef nonnull @.str.115, i32 noundef %conv148, i32 noundef %conv149) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %do.body136, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_vbus_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bq24190_set_charge_mode(ptr noundef %dev, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_vbus_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bq24190_set_charge_mode(ptr noundef %dev, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_vbus_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #10
  %dev1 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 1) #10
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0)
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %call.i22 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i22, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = and i32 %call.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp924 = icmp eq i32 %15, 32
  %conv10 = zext i1 %cmp924 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %cond.false ], [ %9, %if.end.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24190_set_charge_mode(ptr noundef %dev, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #10
  %dev1 = getelementptr inbounds %struct.bq24190_dev_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.bq24190_write_mask.exit_crit_edge, label %if.end.i

if.end.bq24190_write_mask.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_write_mask.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -49
  %shl.i = shl i8 %val, 4
  %9 = and i8 %shl.i, 48
  %conv8.i = or i8 %and.i, %9
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %conv8.i) #10
  br label %bq24190_write_mask.exit

bq24190_write_mask.exit:                          ; preds = %if.end.i, %if.end.bq24190_write_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i15.i, %if.end.i ], [ %call.i.i, %if.end.bq24190_write_mask.exit_crit_edge ]
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %bq24190_write_mask.exit, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %bq24190_write_mask.exit ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.then7

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.if.end.thread_crit_edge, label %do.end11.i.i.i.i

do.end.if.end.thread_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %if.end.thread

if.end.thread:                                    ; preds = %do.end11.i.i.i.i, %do.end.if.end.thread_crit_edge
  %call521 = tail call fastcc i32 @bq24190_register_reset(ptr noundef %1)
  br label %if.end11

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @bq24190_register_reset(ptr noundef %1)
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %call.i19 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i19, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %f_reg = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %f_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %f_reg, align 4
  %ss_reg = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %ss_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %ss_reg, align 1
  %dev1 = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %call.i) #13
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !314
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.if.end_crit_edge, label %do.end11.i.i.i.i

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !315
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = tail call fastcc i32 @bq24190_register_reset(ptr noundef %1)
  %call6 = tail call fastcc i32 @bq24190_set_config(ptr noundef %1)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i = icmp slt i32 %call.i33, 0
  br i1 %cmp.i, label %if.end.bq24190_read.exit_crit_edge, label %if.end.i

if.end.bq24190_read.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bq24190_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %call.i33 to i8
  %13 = ptrtoint ptr %ss_reg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %ss_reg, align 1
  br label %bq24190_read.exit

bq24190_read.exit:                                ; preds = %if.end.i, %if.end.bq24190_read.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp9 = icmp sgt i32 %call.i, -1
  br i1 %cmp9, label %if.then10, label %bq24190_read.exit.if.end14_crit_edge

bq24190_read.exit.if.end14_crit_edge:             ; preds = %bq24190_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then10:                                        ; preds = %bq24190_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %call.i34 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i34, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %bq24190_read.exit.if.end14_crit_edge
  %charger = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %20) #10
  %battery = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %battery, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end14.if.end17_crit_edge, label %if.then15

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @power_supply_changed(ptr noundef nonnull %22) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end14.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %initialized = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_runtime_suspend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_runtime_suspend, %cleanup)) #10
          to label %if.then7 [label %cleanup], !srcloc !316

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev8 = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_runtime_suspend.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.126) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24190_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %initialized = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_event = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_event to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_event, align 1, !range !317
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24190_runtime_resume.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24190_runtime_resume, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !316

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.bq24190_dev_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24190_runtime_resume.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.129) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call fastcc void @bq24190_check_status(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !189, !191, !192, !193, !194, !195, !197, !199, !200, !201, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !259, !261, !263, !265, !267, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @__initcall__kmod_bq24190_charger__296_1980_bq24190_driver_init6, !1, !"__initcall__kmod_bq24190_charger__296_1980_bq24190_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1980, i32 1}
!2 = !{ptr @__exitcall_bq24190_driver_exit, !1, !"__exitcall_bq24190_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file297, !4, !"__UNIQUE_ID_file297", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1982, i32 1}
!5 = !{ptr @__UNIQUE_ID_license298, !4, !"__UNIQUE_ID_license298", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author299, !7, !"__UNIQUE_ID_author299", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1983, i32 1}
!8 = !{ptr @__UNIQUE_ID_description300, !9, !"__UNIQUE_ID_description300", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1984, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1975, i32 12}
!12 = !{ptr @bq24190_driver, !13, !"bq24190_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1970, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1717, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bq24190_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bq24190_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1723, i32 3}
!24 = !{ptr @bq24190_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bq24190_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bq24190_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1730, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bq24190_probe.__key.10, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1733, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bq24190_probe.__key.12, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1739, i32 3}
!36 = !{ptr @bq24190_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bq24190_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1756, i32 3}
!40 = !{ptr @bq24190_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bq24190_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1772, i32 3}
!44 = !{ptr @bq24190_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @bq24190_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1779, i32 38}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1784, i32 4}
!50 = !{ptr @bq24190_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bq24190_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1792, i32 3}
!54 = !{ptr @bq24190_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bq24190_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1798, i32 3}
!58 = !{ptr @bq24190_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bq24190_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1813, i32 3}
!62 = !{ptr @bq24190_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bq24190_probe._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @bq24190_usb_extcon_cable, !65, !"bq24190_usb_extcon_cable", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/bq24190_charger.c", i32 174, i32 27}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/bq24190_charger.c", i32 361, i32 2}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/bq24190_charger.c", i32 362, i32 2}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/bq24190_charger.c", i32 363, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/bq24190_charger.c", i32 364, i32 2}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/bq24190_charger.c", i32 365, i32 2}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/bq24190_charger.c", i32 366, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/bq24190_charger.c", i32 367, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/bq24190_charger.c", i32 368, i32 2}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/bq24190_charger.c", i32 369, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/bq24190_charger.c", i32 370, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/bq24190_charger.c", i32 371, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/bq24190_charger.c", i32 372, i32 2}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/bq24190_charger.c", i32 373, i32 2}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/bq24190_charger.c", i32 374, i32 2}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/bq24190_charger.c", i32 375, i32 2}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/bq24190_charger.c", i32 376, i32 2}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/bq24190_charger.c", i32 377, i32 2}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/bq24190_charger.c", i32 378, i32 2}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/bq24190_charger.c", i32 379, i32 2}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/bq24190_charger.c", i32 380, i32 2}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/bq24190_charger.c", i32 381, i32 2}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/bq24190_charger.c", i32 382, i32 2}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/bq24190_charger.c", i32 383, i32 2}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/bq24190_charger.c", i32 384, i32 2}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/bq24190_charger.c", i32 385, i32 2}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/bq24190_charger.c", i32 386, i32 2}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/bq24190_charger.c", i32 387, i32 2}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/bq24190_charger.c", i32 388, i32 2}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/bq24190_charger.c", i32 389, i32 2}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/bq24190_charger.c", i32 390, i32 2}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/bq24190_charger.c", i32 391, i32 2}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/bq24190_charger.c", i32 392, i32 2}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/bq24190_charger.c", i32 393, i32 2}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/bq24190_charger.c", i32 394, i32 2}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/bq24190_charger.c", i32 395, i32 2}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/bq24190_charger.c", i32 396, i32 2}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/bq24190_charger.c", i32 397, i32 2}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/bq24190_charger.c", i32 398, i32 2}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/bq24190_charger.c", i32 399, i32 2}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/bq24190_charger.c", i32 400, i32 2}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/bq24190_charger.c", i32 401, i32 2}
!148 = !{ptr @bq24190_sysfs_field_tbl, !149, !"bq24190_sysfs_field_tbl", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/bq24190_charger.c", i32 359, i32 40}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/power/supply/bq24190_charger.c", i32 458, i32 37}
!152 = !{ptr @bq24190_sysfs_attrs, !153, !"bq24190_sysfs_attrs", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/bq24190_charger.c", i32 405, i32 2}
!154 = !{ptr @bq24190_sysfs_groups, !155, !"bq24190_sysfs_groups", i1 false, i1 false}
!155 = !{!"../drivers/power/supply/bq24190_charger.c", i32 407, i32 1}
!156 = !{ptr @bq24190_sysfs_group, !155, !"bq24190_sysfs_group", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1249, i32 2}
!159 = !{ptr @bq24190_charger_supplied_to, !160, !"bq24190_charger_supplied_to", i1 false, i1 false}
!160 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1248, i32 14}
!161 = !{ptr @bq24190_charger_desc, !162, !"bq24190_charger_desc", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1252, i32 39}
!163 = !{ptr @bq24190_charger_properties, !164, !"bq24190_charger_properties", i1 false, i1 false}
!164 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1230, i32 35}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1077, i32 2}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bq24190_charger_get_property.__UNIQUE_ID_ddebug289, !166, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1131, i32 17}
!172 = !{ptr @bq24190_ictrc_treg_values, !173, !"bq24190_ictrc_treg_values", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/bq24190_charger.c", i32 217, i32 18}
!174 = !{ptr @bq24190_ccc_ichg_values, !175, !"bq24190_ccc_ichg_values", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/bq24190_charger.c", i32 193, i32 18}
!176 = !{ptr @bq24190_cvc_vreg_values, !177, !"bq24190_cvc_vreg_values", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/bq24190_charger.c", i32 205, i32 18}
!178 = !{ptr @bq24190_isc_iinlim_values, !179, !"bq24190_isc_iinlim_values", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/bq24190_charger.c", i32 188, i32 18}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1151, i32 2}
!182 = !{ptr @bq24190_charger_set_property.__UNIQUE_ID_ddebug290, !181, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1514, i32 12}
!185 = !{ptr @bq24190_battery_desc, !186, !"bq24190_battery_desc", i1 false, i1 false}
!186 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1513, i32 39}
!187 = !{ptr @bq24190_battery_properties, !188, !"bq24190_battery_properties", i1 false, i1 false}
!188 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1504, i32 35}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1413, i32 2}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @bq24190_battery_get_property._entry, !190, !"_entry", i1 false, i1 false}
!194 = !{ptr @bq24190_battery_get_property._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @bq24190_battery_get_property.__UNIQUE_ID_ddebug291, !196, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!196 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1414, i32 2}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1461, i32 2}
!199 = !{ptr @bq24190_battery_set_property._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @bq24190_battery_set_property._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @bq24190_battery_set_property.__UNIQUE_ID_ddebug292, !202, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!202 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1462, i32 2}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1672, i32 25}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1682, i32 4}
!207 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @bq24190_get_config._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @bq24190_get_config._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1692, i32 4}
!212 = !{ptr @bq24190_get_config._entry.92, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @bq24190_get_config._entry_ptr.94, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1700, i32 4}
!216 = !{ptr @bq24190_get_config._entry.95, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bq24190_get_config._entry_ptr.97, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1655, i32 3}
!220 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @bq24190_hw_init._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @bq24190_hw_init._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/power/supply/bq24190_charger.c", i32 680, i32 42}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1531, i32 3}
!227 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @bq24190_configure_usb_otg._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @bq24190_configure_usb_otg._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.103, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1624, i32 3}
!232 = !{ptr @bq24190_irq_handler_thread._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @bq24190_irq_handler_thread._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1548, i32 3}
!236 = !{ptr @.str.105, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @bq24190_check_status._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @bq24190_check_status._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1556, i32 4}
!241 = !{ptr @bq24190_check_status._entry.106, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @bq24190_check_status._entry_ptr.108, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1567, i32 3}
!245 = !{ptr @bq24190_check_status._entry.109, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @bq24190_check_status._entry_ptr.111, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1595, i32 5}
!249 = !{ptr @bq24190_check_status._entry.112, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @bq24190_check_status._entry_ptr.114, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1613, i32 2}
!253 = !{ptr @bq24190_check_status.__UNIQUE_ID_ddebug293, !252, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/power/supply/bq24190_charger.c", i32 594, i32 3}
!256 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @bq24190_register_vbus_regulator._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @bq24190_register_vbus_regulator._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @bq24190_vbus_init_data, !260, !"bq24190_vbus_init_data", i1 false, i1 false}
!260 = !{!"../drivers/power/supply/bq24190_charger.c", i32 572, i32 41}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/power/supply/bq24190_charger.c", i32 563, i32 10}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/power/supply/bq24190_charger.c", i32 564, i32 14}
!265 = !{ptr @bq24190_vbus_desc, !266, !"bq24190_vbus_desc", i1 false, i1 false}
!266 = !{!"../drivers/power/supply/bq24190_charger.c", i32 562, i32 36}
!267 = !{ptr @bq24190_vbus_ops, !268, !"bq24190_vbus_ops", i1 false, i1 false}
!268 = !{!"../drivers/power/supply/bq24190_charger.c", i32 556, i32 35}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/power/supply/bq24190_charger.c", i32 508, i32 3}
!271 = !{ptr @bq24190_set_charge_mode._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @bq24190_set_charge_mode._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/power/supply/bq24190_charger.c", i32 541, i32 3}
!275 = !{ptr @bq24190_vbus_is_enabled._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @bq24190_vbus_is_enabled._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1847, i32 3}
!279 = !{ptr @bq24190_remove._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @bq24190_remove._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @bq24190_of_match, !282, !"bq24190_of_match", i1 false, i1 false}
!282 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1961, i32 34}
!283 = !{ptr @bq24190_pm_ops, !284, !"bq24190_pm_ops", i1 false, i1 false}
!284 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1946, i32 32}
!285 = !{ptr @.str.124, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1900, i32 3}
!287 = !{ptr @bq24190_pm_suspend._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @bq24190_pm_suspend._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1925, i32 3}
!291 = !{ptr @bq24190_pm_resume._entry, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @bq24190_pm_resume._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.126, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1871, i32 2}
!295 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @bq24190_runtime_suspend.__UNIQUE_ID_ddebug294, !294, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1885, i32 3}
!299 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @bq24190_runtime_resume.__UNIQUE_ID_ddebug295, !298, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!301 = !{ptr @bq24190_i2c_ids, !302, !"bq24190_i2c_ids", i1 false, i1 false}
!302 = !{!"../drivers/power/supply/bq24190_charger.c", i32 1952, i32 35}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{!"auto-init"}
!313 = !{i64 2148437480}
!314 = !{i64 923100, i64 923125, i64 923147, i64 923163, i64 923175, i64 923195, i64 923219, i64 923235, i64 923247}
!315 = !{i64 2148437668}
!316 = !{i64 2149051124, i64 2149051129, i64 2149051142, i64 2149051186, i64 2149051220, i64 2149051241}
!317 = !{i8 0, i8 2}
