; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/adp8870_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/adp8870_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adp8870_bl = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.adp8870_backlight_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.adp8870_led = type { %struct.led_classdev, %struct.work_struct, ptr, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_info = type { ptr, ptr, i32 }

@__initcall__kmod_adp8870_bl__301_983_adp8870_driver_init6 = internal global ptr @adp8870_driver_init, section ".initcall6.init", align 4
@adp8870_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp8870_probe, ptr @adp8870_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp8870_i2c_pm_ops, ptr null, ptr null }, ptr @adp8870_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp8870_driver_exit = internal global ptr @adp8870_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [51 x i8] c"adp8870_bl.file=drivers/video/backlight/adp8870_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [26 x i8] c"adp8870_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [67 x i8] c"adp8870_bl.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [48 x i8] c"adp8870_bl.description=ADP8870 Backlight driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adp8870_bl\00", [21 x i8] zeroinitializer }, align 32
@adp8870_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp8870_i2c_suspend, ptr @adp8870_i2c_resume, ptr @adp8870_i2c_suspend, ptr @adp8870_i2c_resume, ptr @adp8870_i2c_suspend, ptr @adp8870_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp8870_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp8870\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adp8870_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Byte Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp8870_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/adp8870_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr = internal global ptr @adp8870_probe._entry, section ".printk_index", align 4
@adp8870_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr.8 = internal global ptr @adp8870_probe._entry.6, section ".printk_index", align 4
@adp8870_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to probe\0A\00", [47 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr.11 = internal global ptr @adp8870_probe._entry.9, section ".printk_index", align 4
@adp8870_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adp8870_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @adp8870_bl_update_status, ptr @adp8870_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@adp8870_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr.15 = internal global ptr @adp8870_probe._entry.13, section ".printk_index", align 4
@adp8870_bl_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adp8870_bl_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adp8870_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register sysfs\0A\00", [38 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr.18 = internal global ptr @adp8870_probe._entry.16, section ".printk_index", align 4
@adp8870_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 913, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rev.%d Backlight\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adp8870_probe._entry_ptr.22 = internal global ptr @adp8870_probe._entry.19, section ".printk_index", align 4
@adp8870_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed reading at 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp8870_read\00", [19 x i8] zeroinitializer }, align 32
@adp8870_read._entry_ptr = internal global ptr @adp8870_read._entry, section ".printk_index", align 4
@adp8870_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp8870_write\00", [18 x i8] zeroinitializer }, align 32
@adp8870_write._entry_ptr = internal global ptr @adp8870_write._entry, section ".printk_index", align 4
@adp8870_bl_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_l5_dark_max, ptr @dev_attr_l5_dark_dim, ptr @dev_attr_l4_indoor_max, ptr @dev_attr_l4_indoor_dim, ptr @dev_attr_l3_office_max, ptr @dev_attr_l3_office_dim, ptr @dev_attr_l2_bright_max, ptr @dev_attr_l2_bright_dim, ptr @dev_attr_l1_daylight_max, ptr @dev_attr_l1_daylight_dim, ptr @dev_attr_ambient_light_level, ptr @dev_attr_ambient_light_zone, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_l5_dark_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l5_dark_max_show, ptr @adp8870_bl_l5_dark_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l5_dark_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l5_dark_dim_show, ptr @adp8870_bl_l5_dark_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l4_indoor_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l4_indoor_max_show, ptr @adp8870_bl_l4_indoor_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l4_indoor_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l4_indoor_dim_show, ptr @adp8870_bl_l4_indoor_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l3_office_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l3_office_max_show, ptr @adp8870_bl_l3_office_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l3_office_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l3_office_dim_show, ptr @adp8870_bl_l3_office_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l2_bright_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l2_bright_max_show, ptr @adp8870_bl_l2_bright_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l2_bright_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l2_bright_dim_show, ptr @adp8870_bl_l2_bright_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_daylight_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l1_daylight_max_show, ptr @adp8870_bl_l1_daylight_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_daylight_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_l1_daylight_dim_show, ptr @adp8870_bl_l1_daylight_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ambient_light_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_ambient_light_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ambient_light_zone = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8870_bl_ambient_light_zone_show, ptr @adp8870_bl_ambient_light_zone_store }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l5_dark_max\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l5_dark_dim\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l4_indoor_max\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l4_indoor_dim\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_office_max\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_office_dim\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2_bright_max\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2_bright_dim\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l1_daylight_max\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l1_daylight_dim\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ambient_light_level\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ambient_light_zone\00", [45 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid LED ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp8870_led_probe\00", [46 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry_ptr = internal global ptr @adp8870_led_probe._entry, section ".printk_index", align 4
@adp8870_led_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LED %d used by Backlight\0A\00", [38 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry_ptr.44 = internal global ptr @adp8870_led_probe._entry.42, section ".printk_index", align 4
@adp8870_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&led_dat->work)\00", [62 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry_ptr.48 = internal global ptr @adp8870_led_probe._entry.46, section ".printk_index", align 4
@adp8870_led_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.41, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@adp8870_led_probe._entry_ptr.50 = internal global ptr @adp8870_led_probe._entry.49, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"adp8870_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 973, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 975, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"adp8870_i2c_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 964, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"adp8870_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 967, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 852, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 857, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 866, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 881, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"adp8870_bl_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 412, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 890, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"adp8870_bl_attr_group\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 835, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 900, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 913, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 134, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 148, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"adp8870_bl_attributes\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 817, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"dev_attr_l5_dark_max\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"dev_attr_l5_dark_dim\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"dev_attr_l4_indoor_max\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"dev_attr_l4_indoor_dim\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"dev_attr_l3_office_max\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"dev_attr_l3_office_dim\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [23 x i8] c"dev_attr_l2_bright_max\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"dev_attr_l2_bright_dim\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"dev_attr_l1_daylight_max\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [25 x i8] c"dev_attr_l1_daylight_dim\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [29 x i8] c"dev_attr_ambient_light_level\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"dev_attr_ambient_light_zone\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 587, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 555, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 667, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 602, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 682, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 618, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 698, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 632, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 713, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 652, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 728, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 758, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 812, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 274, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 281, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 294, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 298, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private constant [40 x i8] c"../drivers/video/backlight/adp8870_bl.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 305, i32 4 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_adp8870_driver_exit, ptr @__initcall__kmod_adp8870_bl__301_983_adp8870_driver_init6, ptr @adp8870_driver_exit, ptr @adp8870_led_probe._entry, ptr @adp8870_led_probe._entry.42, ptr @adp8870_led_probe._entry.46, ptr @adp8870_led_probe._entry.49, ptr @adp8870_led_probe._entry_ptr, ptr @adp8870_led_probe._entry_ptr.44, ptr @adp8870_led_probe._entry_ptr.48, ptr @adp8870_led_probe._entry_ptr.50, ptr @adp8870_probe._entry, ptr @adp8870_probe._entry.13, ptr @adp8870_probe._entry.16, ptr @adp8870_probe._entry.19, ptr @adp8870_probe._entry.6, ptr @adp8870_probe._entry.9, ptr @adp8870_probe._entry_ptr, ptr @adp8870_probe._entry_ptr.11, ptr @adp8870_probe._entry_ptr.15, ptr @adp8870_probe._entry_ptr.18, ptr @adp8870_probe._entry_ptr.22, ptr @adp8870_probe._entry_ptr.8, ptr @adp8870_read._entry, ptr @adp8870_read._entry_ptr, ptr @adp8870_write._entry, ptr @adp8870_write._entry_ptr, ptr @adp8870_driver, ptr @.str, ptr @adp8870_i2c_pm_ops, ptr @adp8870_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @adp8870_probe.__key, ptr @.str.12, ptr @adp8870_bl_ops, ptr @.str.14, ptr @adp8870_bl_attr_group, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @adp8870_bl_attributes, ptr @dev_attr_l5_dark_max, ptr @dev_attr_l5_dark_dim, ptr @dev_attr_l4_indoor_max, ptr @dev_attr_l4_indoor_dim, ptr @dev_attr_l3_office_max, ptr @dev_attr_l3_office_dim, ptr @dev_attr_l2_bright_max, ptr @dev_attr_l2_bright_dim, ptr @dev_attr_l1_daylight_max, ptr @dev_attr_l1_daylight_dim, ptr @dev_attr_ambient_light_level, ptr @dev_attr_ambient_light_zone, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @adp8870_led_probe.__key, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_bl_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_bl_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l5_dark_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l5_dark_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l4_indoor_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l4_indoor_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l3_office_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l3_office_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l2_bright_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l2_bright_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_daylight_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_daylight_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ambient_light_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ambient_light_zone to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_led_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_led_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8870_led_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp8870_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp8870_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adp8870_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i126 = icmp slt i32 %call.i, 0
  br i1 %cmp.i126, label %adp8870_read.exit.thread, label %if.end12

adp8870_read.exit.thread:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 0) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %.mask167 = and i32 %call.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %.mask167)
  %cmp13.not = icmp eq i32 %.mask167, 48
  br i1 %cmp13.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call.i127 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #9
  %cmp23 = icmp eq ptr %call.i127, null
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %10 = and i32 %call.i, 15
  %revid = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 7
  %11 = ptrtoint ptr %revid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %revid, align 4
  %12 = ptrtoint ptr %call.i127 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %call.i127, align 4
  %pdata29 = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 3
  %13 = ptrtoint ptr %pdata29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %pdata29, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %id30 = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 6
  %16 = ptrtoint ptr %id30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id30, align 4
  %current_brightness = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 8
  %17 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %current_brightness, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i127, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @adp8870_probe.__key) #9
  %19 = getelementptr inbounds i8, ptr %props, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 20)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %1, align 4
  %22 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 127, ptr %props, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 127, ptr %0, align 4
  %call36 = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %call38 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %call36, ptr noundef %dev, ptr noundef nonnull %call.i127, ptr noundef nonnull @adp8870_bl_ops, ptr noundef nonnull %props) #9
  %cmp.i128 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  %24 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end26
  %bl47 = getelementptr inbounds %struct.adp8870_bl, ptr %call.i127, i32 0, i32 1
  %25 = ptrtoint ptr %bl47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38, ptr %bl47, align 4
  %en_ambl_sens = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %en_ambl_sens, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool48.not = icmp eq i8 %27, 0
  br i1 %tobool48.not, label %if.end46.if.end59_crit_edge, label %if.then49

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then49:                                        ; preds = %if.end46
  %dev50 = getelementptr inbounds %struct.backlight_device, ptr %call38, i32 0, i32 6
  %call51 = call i32 @sysfs_create_group(ptr noundef %dev50, ptr noundef nonnull @adp8870_bl_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then49.if.end59_crit_edge, label %do.end56

if.then49.if.end59_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end59:                                         ; preds = %if.then49.if.end59_crit_edge, %if.end46.if.end59_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call38, i32 0, i32 6, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %pdata2.i = getelementptr inbounds %struct.adp8870_bl, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata2.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %neg.i = xor i8 %35, -1
  %call.i.i129 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 5, i8 noundef zeroext %neg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %tobool.not.i.i = icmp eq i32 %call.i.i129, 0
  br i1 %tobool.not.i.i, label %if.end.i130, label %if.end59.if.then62.sink.split_crit_edge

if.end59.if.then62.sink.split_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end.i130:                                      ; preds = %if.end59
  %pwm_assign.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %pwm_assign.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pwm_assign.i, align 1
  %call.i223.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 6, i8 noundef zeroext %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i)
  %tobool.not.i224.i = icmp eq i32 %call.i223.i, 0
  br i1 %tobool.not.i224.i, label %if.end8.i, label %if.end.i130.if.then62.sink.split_crit_edge

if.end.i130.if.then62.sink.split_crit_edge:       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end8.i:                                        ; preds = %if.end.i130
  %l1_daylight_max.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 7
  %38 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %l1_daylight_max.i, align 1
  %call.i228.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 10, i8 noundef zeroext %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228.i)
  %tobool.not.i229.i = icmp eq i32 %call.i228.i, 0
  br i1 %tobool.not.i229.i, label %if.end12.i, label %if.end8.i.if.then62.sink.split_crit_edge

if.end8.i.if.then62.sink.split_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end12.i:                                       ; preds = %if.end8.i
  %l1_daylight_dim.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 8
  %40 = ptrtoint ptr %l1_daylight_dim.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %l1_daylight_dim.i, align 4
  %call.i233.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 11, i8 noundef zeroext %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233.i)
  %tobool.not.i234.i = icmp eq i32 %call.i233.i, 0
  br i1 %tobool.not.i234.i, label %if.end16.i, label %if.end12.i.if.then62.sink.split_crit_edge

if.end12.i.if.then62.sink.split_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end16.i:                                       ; preds = %if.end12.i
  %en_ambl_sens.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 5
  %42 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %en_ambl_sens.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool17.not.i = icmp eq i8 %43, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end95.i_crit_edge, label %if.then18.i

if.end16.i.if.end95.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then18.i:                                      ; preds = %if.end16.i
  %44 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %l1_daylight_max.i, align 1
  %conv20.i = zext i8 %45 to i32
  %cached_daylight_max.i = getelementptr inbounds %struct.adp8870_bl, ptr %29, i32 0, i32 5
  %46 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv20.i, ptr %cached_daylight_max.i, align 4
  %l2_bright_max.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 9
  %47 = ptrtoint ptr %l2_bright_max.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %l2_bright_max.i, align 1
  %call.i155 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 12, i8 noundef zeroext %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %if.end24.i, label %if.then18.i.if.then62.sink.split_crit_edge

if.then18.i.if.then62.sink.split_crit_edge:       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end24.i:                                       ; preds = %if.then18.i
  %l2_bright_dim.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 10
  %49 = ptrtoint ptr %l2_bright_dim.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %l2_bright_dim.i, align 2
  %call.i149 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 13, i8 noundef zeroext %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.end28.i, label %if.end24.i.if.then62.sink.split_crit_edge

if.end24.i.if.then62.sink.split_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end28.i:                                       ; preds = %if.end24.i
  %l3_office_max.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 11
  %51 = ptrtoint ptr %l3_office_max.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %l3_office_max.i, align 1
  %call.i143 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 14, i8 noundef zeroext %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end32.i, label %if.end28.i.if.then62.sink.split_crit_edge

if.end28.i.if.then62.sink.split_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end32.i:                                       ; preds = %if.end28.i
  %l3_office_dim.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 12
  %53 = ptrtoint ptr %l3_office_dim.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %l3_office_dim.i, align 4
  %call33.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 15, i8 noundef zeroext %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.if.then62_crit_edge

if.end32.i.if.then62_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end36.i:                                       ; preds = %if.end32.i
  %l4_indoor_max.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 13
  %55 = ptrtoint ptr %l4_indoor_max.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %l4_indoor_max.i, align 1
  %call37.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 16, i8 noundef zeroext %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.if.then62_crit_edge

if.end36.i.if.then62_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end40.i:                                       ; preds = %if.end36.i
  %l4_indor_dim.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 14
  %57 = ptrtoint ptr %l4_indor_dim.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %l4_indor_dim.i, align 2
  %call41.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 17, i8 noundef zeroext %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.if.then62_crit_edge

if.end40.i.if.then62_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end44.i:                                       ; preds = %if.end40.i
  %l5_dark_max.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 15
  %59 = ptrtoint ptr %l5_dark_max.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %l5_dark_max.i, align 1
  %call45.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 18, i8 noundef zeroext %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end44.i.if.then62_crit_edge

if.end44.i.if.then62_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end48.i:                                       ; preds = %if.end44.i
  %l5_dark_dim.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 16
  %61 = ptrtoint ptr %l5_dark_dim.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %l5_dark_dim.i, align 4
  %call49.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 19, i8 noundef zeroext %62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end48.i.if.then62_crit_edge

if.end48.i.if.then62_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end52.i:                                       ; preds = %if.end48.i
  %l2_trip.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 17
  %63 = ptrtoint ptr %l2_trip.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %l2_trip.i, align 1
  %call53.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 50, i8 noundef zeroext %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.if.then62_crit_edge

if.end52.i.if.then62_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end56.i:                                       ; preds = %if.end52.i
  %l2_hyst.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 18
  %65 = ptrtoint ptr %l2_hyst.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %l2_hyst.i, align 2
  %call57.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 51, i8 noundef zeroext %66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.if.then62_crit_edge

if.end56.i.if.then62_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end60.i:                                       ; preds = %if.end56.i
  %l3_trip.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 19
  %67 = ptrtoint ptr %l3_trip.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %l3_trip.i, align 1
  %call61.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 52, i8 noundef zeroext %68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end60.i.if.then62_crit_edge

if.end60.i.if.then62_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end64.i:                                       ; preds = %if.end60.i
  %l3_hyst.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 20
  %69 = ptrtoint ptr %l3_hyst.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %l3_hyst.i, align 4
  %call65.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 53, i8 noundef zeroext %70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.if.then62_crit_edge

if.end64.i.if.then62_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end68.i:                                       ; preds = %if.end64.i
  %l4_trip.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 21
  %71 = ptrtoint ptr %l4_trip.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %l4_trip.i, align 1
  %call69.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 54, i8 noundef zeroext %72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end68.i.if.then62_crit_edge

if.end68.i.if.then62_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end72.i:                                       ; preds = %if.end68.i
  %l4_hyst.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 22
  %73 = ptrtoint ptr %l4_hyst.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %l4_hyst.i, align 2
  %call73.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 55, i8 noundef zeroext %74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end72.i.if.then62_crit_edge

if.end72.i.if.then62_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end76.i:                                       ; preds = %if.end72.i
  %l5_trip.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 23
  %75 = ptrtoint ptr %l5_trip.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %l5_trip.i, align 1
  %call77.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 56, i8 noundef zeroext %76) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end76.i.if.then62_crit_edge

if.end76.i.if.then62_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end80.i:                                       ; preds = %if.end76.i
  %l5_hyst.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 24
  %77 = ptrtoint ptr %l5_hyst.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %l5_hyst.i, align 4
  %call81.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 57, i8 noundef zeroext %78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end80.i.if.then62_crit_edge

if.end80.i.if.then62_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end84.i:                                       ; preds = %if.end80.i
  %call85.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 46, i8 noundef zeroext 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %if.end84.i.if.then62_crit_edge

if.end84.i.if.then62_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end88.i:                                       ; preds = %if.end84.i
  %abml_filt.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 6
  %79 = ptrtoint ptr %abml_filt.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %abml_filt.i, align 2
  %81 = shl i8 %80, 1
  %82 = and i8 %81, 14
  %call91.i = call fastcc i32 @adp8870_write(ptr noundef %31, i8 noundef zeroext 45, i8 noundef zeroext %82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end88.i.if.end95.i_crit_edge, label %if.end88.i.if.then62_crit_edge

if.end88.i.if.then62_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.end88.i.if.end95.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.end88.i.if.end95.i_crit_edge, %if.end16.i.if.end95.i_crit_edge
  %bl_fade_law.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 4
  %83 = ptrtoint ptr %bl_fade_law.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bl_fade_law.i, align 4
  %85 = shl i8 %84, 1
  %86 = and i8 %85, 6
  %call.i137 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 4, i8 noundef zeroext %86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end103.i, label %if.end95.i.if.then62.sink.split_crit_edge

if.end95.i.if.then62.sink.split_crit_edge:        ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

if.end103.i:                                      ; preds = %if.end95.i
  %bl_fade_in.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 2
  %87 = ptrtoint ptr %bl_fade_in.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bl_fade_in.i, align 2
  %89 = and i8 %88, 15
  %bl_fade_out.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %33, i32 0, i32 3
  %90 = ptrtoint ptr %bl_fade_out.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bl_fade_out.i, align 1
  %92 = shl i8 %91, 4
  %or109222.i = or i8 %92, %89
  %call.i133 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 9, i8 noundef zeroext %or109222.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i, label %adp8870_bl_setup.exit, label %if.end103.i.if.then62.sink.split_crit_edge

if.end103.i.if.then62.sink.split_crit_edge:       ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.sink.split

adp8870_bl_setup.exit:                            ; preds = %if.end103.i
  %revid.i = getelementptr inbounds %struct.adp8870_bl, ptr %29, i32 0, i32 7
  %93 = ptrtoint ptr %revid.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %revid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i131 = icmp eq i32 %94, 0
  %conv117.i = select i1 %cmp.i131, i8 57, i8 49
  %call118.i = call fastcc i32 @adp8870_set_bits(ptr noundef %31, i32 noundef 1, i8 noundef zeroext %conv117.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool61.not = icmp eq i32 %call118.i, 0
  br i1 %tobool61.not, label %if.end63, label %adp8870_bl_setup.exit.if.then62_crit_edge

adp8870_bl_setup.exit.if.then62_crit_edge:        ; preds = %adp8870_bl_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62

if.then62.sink.split:                             ; preds = %if.end103.i.if.then62.sink.split_crit_edge, %if.end95.i.if.then62.sink.split_crit_edge, %if.end28.i.if.then62.sink.split_crit_edge, %if.end24.i.if.then62.sink.split_crit_edge, %if.then18.i.if.then62.sink.split_crit_edge, %if.end12.i.if.then62.sink.split_crit_edge, %if.end8.i.if.then62.sink.split_crit_edge, %if.end.i130.if.then62.sink.split_crit_edge, %if.end59.if.then62.sink.split_crit_edge
  %dev.i134 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.25) #12
  br label %if.then62

if.then62:                                        ; preds = %if.then62.sink.split, %adp8870_bl_setup.exit.if.then62_crit_edge, %if.end88.i.if.then62_crit_edge, %if.end84.i.if.then62_crit_edge, %if.end80.i.if.then62_crit_edge, %if.end76.i.if.then62_crit_edge, %if.end72.i.if.then62_crit_edge, %if.end68.i.if.then62_crit_edge, %if.end64.i.if.then62_crit_edge, %if.end60.i.if.then62_crit_edge, %if.end56.i.if.then62_crit_edge, %if.end52.i.if.then62_crit_edge, %if.end48.i.if.then62_crit_edge, %if.end44.i.if.then62_crit_edge, %if.end40.i.if.then62_crit_edge, %if.end36.i.if.then62_crit_edge, %if.end32.i.if.then62_crit_edge
  %95 = ptrtoint ptr %pdata29 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdata29, align 4
  %en_ambl_sens75 = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %en_ambl_sens75 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %en_ambl_sens75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool76.not = icmp eq i8 %98, 0
  br i1 %tobool76.not, label %if.then62.cleanup_crit_edge, label %if.then77

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %adp8870_bl_setup.exit
  call fastcc void @backlight_update_status(ptr noundef %call38)
  %99 = ptrtoint ptr %revid to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %revid, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %100) #12
  %num_leds = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %3, i32 0, i32 25
  %101 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool70.not = icmp eq i32 %102, 0
  br i1 %tobool70.not, label %if.end63.cleanup_crit_edge, label %if.then71

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @adp8870_led_probe(ptr noundef %client)
  br label %cleanup

if.then77:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %bl47 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bl47, align 4
  %dev79 = getelementptr inbounds %struct.backlight_device, ptr %104, i32 0, i32 6
  call void @sysfs_remove_group(ptr noundef %dev79, ptr noundef nonnull @adp8870_bl_attr_group) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.then71, %if.end63.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %do.end56, %do.end43, %if.end20.cleanup_crit_edge, %do.end18, %adp8870_read.exit.thread, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end18 ], [ %24, %do.end43 ], [ %call51, %do.end56 ], [ -22, %do.end7 ], [ -5, %do.end ], [ -12, %if.end20.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.end63.cleanup_crit_edge ], [ -5, %if.then77 ], [ -5, %if.then62.cleanup_crit_edge ], [ -5, %adp8870_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = tail call fastcc i32 @adp8870_clr_bits(ptr noundef %client, i8 noundef zeroext 32)
  %led = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %led, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i.i, align 8
  %num_leds.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %led.i = getelementptr inbounds %struct.adp8870_bl, ptr %10, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.adp8870_led, ptr %12, i32 %i.02.i
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.i) #9
  %13 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %led.i, align 4
  %work.i = getelementptr %struct.adp8870_led, ptr %14, i32 %i.02.i, i32 1
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #9
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %15 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_leds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pdata = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 4
  %en_ambl_sens = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %en_ambl_sens, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not = icmp eq i8 %20, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bl = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bl, align 4
  %dev = getelementptr inbounds %struct.backlight_device, ptr %22, i32 0, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adp8870_bl_attr_group) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @backlight_update_status(ptr noundef %bd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %ops = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %update_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_status, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %bd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adp8870_led_probe(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %num_leds = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_leds, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 460) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !132

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call5.i.i, null
  br i1 %cmp, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %led_fade_law = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %led_fade_law to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %led_fade_law, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 26, i8 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6, label %adp8870_write.exit

adp8870_write.exit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %led_on_time = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %led_on_time to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %led_on_time, align 1
  %13 = shl i8 %12, 6
  %call.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 28, i8 noundef zeroext %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %if.end11, label %adp8870_write.exit6

adp8870_write.exit6:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %led_fade_in = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %led_fade_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %led_fade_in, align 4
  %16 = and i8 %15, 15
  %led_fade_out = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %led_fade_out to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %led_fade_out, align 1
  %19 = shl i8 %18, 4
  %or1 = or i8 %19, %16
  %call.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 30, i8 noundef zeroext %or1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %for.cond.preheader, label %adp8870_write.exit11.thread

for.cond.preheader:                               ; preds = %if.end11
  %20 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2332 = icmp sgt i32 %21, 0
  br i1 %cmp2332, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %leds = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %1, i32 0, i32 26
  br label %for.body

adp8870_write.exit11.thread:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc85, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.led_info, ptr %23, i32 %i.033
  %arrayidx25 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033
  %flags = getelementptr %struct.led_info, ptr %23, i32 %i.033, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and26 = and i32 %25, 255
  %id = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and26, ptr %id, align 4
  %27 = add nsw i32 %and26, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %27)
  %28 = icmp ult i32 %27, -7
  br i1 %28, label %do.end, label %if.end36

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %and26) #12
  br label %err

if.end36:                                         ; preds = %for.body
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %conv37 = zext i8 %30 to i32
  %sub = add nsw i32 %and26, -1
  %shl39 = shl nuw nsw i32 1, %sub
  %and40 = and i32 %shl39, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %and26) #12
  br label %err

if.end48:                                         ; preds = %if.end36
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx25, align 4
  %default_trigger = getelementptr %struct.led_info, ptr %23, i32 %i.033, i32 1
  %34 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %default_trigger, align 4
  %default_trigger51 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx25, i32 0, i32 14
  %36 = ptrtoint ptr %default_trigger51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %default_trigger51, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %arrayidx25, i32 0, i32 5
  %37 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @adp8870_led_set, ptr %brightness_set, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx25, i32 0, i32 1
  %38 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %brightness, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %shr = ashr i32 %40, 8
  %flags55 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 5
  %41 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %flags55, align 4
  %client56 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 2
  %42 = ptrtoint ptr %client56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %client, ptr %client56, align 4
  %new_brightness = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 3
  %43 = ptrtoint ptr %new_brightness to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %new_brightness, align 4
  %work = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %44 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.45, ptr noundef nonnull @adp8870_led_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry62 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 1, i32 1
  %45 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry62, ptr %prev.i, align 4
  %func = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.033, i32 1, i32 2
  %47 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @adp8870_led_work, ptr %func, align 4
  %call.i12 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx25, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool69.not = icmp eq i32 %call.i12, 0
  br i1 %tobool69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %49) #12
  br label %err

if.end76:                                         ; preds = %if.end48
  %50 = ptrtoint ptr %client56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client56, align 4
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %54 = trunc i32 %53 to i8
  %conv.i = add i8 %54, 30
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %do.end82

if.end.i:                                         ; preds = %if.end76
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  %sub3.i = add i32 %56, -1
  %shl.i = shl nuw i32 1, %sub3.i
  %conv4.i = trunc i32 %shl.i to i8
  %call5.i = tail call fastcc i32 @adp8870_set_bits(ptr noundef %51, i32 noundef 27, i8 noundef zeroext %conv4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.do.end82_crit_edge

if.end.i.do.end82_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.end8.i:                                        ; preds = %if.end.i
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp.i = icmp sgt i32 %58, 4
  %59 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags55, align 4
  %and.i = and i32 %60, 3
  %sub13.i = shl i32 %58, 1
  %. = select i1 %cmp.i, i32 -10, i32 -2
  %.74 = select i1 %cmp.i, i32 28, i32 29
  %mul.i = add i32 %sub13.i, %.
  %shl14.i = shl i32 %and.i, %mul.i
  %conv15.i = trunc i32 %shl14.i to i8
  %call16.i = tail call fastcc i32 @adp8870_set_bits(ptr noundef %51, i32 noundef %.74, i8 noundef zeroext %conv15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool78.not = icmp eq i32 %call16.i, 0
  br i1 %tobool78.not, label %for.inc, label %if.end8.i.do.end82_crit_edge

if.end8.i.do.end82_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

do.end82:                                         ; preds = %if.end8.i.do.end82_crit_edge, %if.end.i.do.end82_crit_edge, %adp8870_write.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  %inc = add nuw nsw i32 %i.033, 1
  br label %err

for.inc:                                          ; preds = %if.end8.i
  %inc85 = add nuw nsw i32 %i.033, 1
  %61 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_leds, align 4
  %cmp23 = icmp slt i32 %inc85, %62
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %led86 = getelementptr inbounds %struct.adp8870_bl, ptr %3, i32 0, i32 2
  %63 = ptrtoint ptr %led86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call5.i.i, ptr %led86, align 4
  br label %cleanup

err:                                              ; preds = %do.end82, %do.end73, %do.end45, %do.end
  %i.1 = phi i32 [ %i.033, %do.end ], [ %i.033, %do.end45 ], [ %i.033, %do.end73 ], [ %inc, %do.end82 ]
  %i.234 = add i32 %i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.234)
  %cmp8935 = icmp sgt i32 %i.234, -1
  br i1 %cmp8935, label %err.for.body91_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err.for.body91_crit_edge:                         ; preds = %err
  br label %for.body91

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %err.for.body91_crit_edge
  %i.236 = phi i32 [ %i.2, %for.body91.for.body91_crit_edge ], [ %i.234, %err.for.body91_crit_edge ]
  %arrayidx92 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.236
  tail call void @led_classdev_unregister(ptr noundef %arrayidx92) #9
  %work95 = getelementptr %struct.adp8870_led, ptr %call5.i.i, i32 %i.236, i32 1
  %call96 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work95) #9
  %i.2 = add nsw i32 %i.236, -1
  %cmp89.not = icmp eq i32 %i.236, 0
  br i1 %cmp89.not, label %for.body91.cleanup_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body91

for.body91.cleanup_crit_edge:                     ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body91.cleanup_crit_edge, %err.cleanup_crit_edge, %for.end, %adp8870_write.exit11.thread, %adp8870_write.exit6, %adp8870_write.exit, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %pdata.i = getelementptr inbounds %struct.adp8870_bl, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %en_ambl_sens.i = getelementptr inbounds %struct.adp8870_backlight_platform_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %en_ambl_sens.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else21.i, label %if.then.i

if.then.i:                                        ; preds = %backlight_get_brightness.exit
  %16 = add i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %16)
  %17 = icmp ult i32 %16, 126
  br i1 %17, label %if.then3.i, label %if.else.i3

if.then3.i:                                       ; preds = %if.then.i
  %call4.i = tail call fastcc i32 @adp8870_clr_bits(ptr noundef %11, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then3.i.adp8870_bl_set.exit_crit_edge

if.then3.i.adp8870_bl_set.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_bl_set.exit

if.end.i:                                         ; preds = %if.then3.i
  %conv.i = trunc i32 %retval.0.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 10, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end27.thread.i, label %adp8870_write.exit.i

if.end27.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %current_brightness90.i = getelementptr inbounds %struct.adp8870_bl, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %current_brightness90.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_brightness90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not91.i = icmp ne i32 %19, 0
  br label %if.else34.i

adp8870_write.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_bl_set.exit

if.else.i3:                                       ; preds = %if.then.i
  %cached_daylight_max.i = getelementptr inbounds %struct.adp8870_bl, ptr %9, i32 0, i32 5
  %20 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cached_daylight_max.i, align 4
  %conv11.i = trunc i32 %21 to i8
  %call.i80.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 10, i8 noundef zeroext %conv11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %if.end15.i, label %adp8870_write.exit84.i

adp8870_write.exit84.i:                           ; preds = %if.else.i3
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i82.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_bl_set.exit

if.end15.i:                                       ; preds = %if.else.i3
  %call16.i = tail call fastcc i32 @adp8870_set_bits(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end27.i_crit_edge, label %if.end15.i.adp8870_bl_set.exit_crit_edge

if.end15.i.adp8870_bl_set.exit_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_bl_set.exit

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.else21.i:                                      ; preds = %backlight_get_brightness.exit
  %conv22.i = trunc i32 %retval.0.i to i8
  %call.i85.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 10, i8 noundef zeroext %conv22.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool.not.i86.i, label %if.else21.i.if.end27.i_crit_edge, label %adp8870_write.exit89.i

if.else21.i.if.end27.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

adp8870_write.exit89.i:                           ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i87.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i87.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_bl_set.exit

if.end27.i:                                       ; preds = %if.else21.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %current_brightness.i = getelementptr inbounds %struct.adp8870_bl, ptr %9, i32 0, i32 8
  %22 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not.i = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp30.i = icmp eq i32 %retval.0.i, 0
  %or.cond78.i = and i1 %cmp30.i, %tobool28.not.i
  br i1 %or.cond78.i, label %if.then32.i, label %if.end27.i.if.else34.i_crit_edge

if.end27.i.if.else34.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = tail call fastcc i32 @adp8870_set_bits(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 16) #9
  br label %if.end43.i

if.else34.i:                                      ; preds = %if.end27.i.if.else34.i_crit_edge, %if.end27.thread.i
  %cmp3097.i = phi i1 [ false, %if.end27.thread.i ], [ %cmp30.i, %if.end27.i.if.else34.i_crit_edge ]
  %tobool28.not96.i = phi i1 [ %tobool28.not91.i, %if.end27.thread.i ], [ %tobool28.not.i, %if.end27.i.if.else34.i_crit_edge ]
  %current_brightness95.i = phi ptr [ %current_brightness90.i, %if.end27.thread.i ], [ %current_brightness.i, %if.end27.i.if.else34.i_crit_edge ]
  %or.cond79.i = or i1 %cmp3097.i, %tobool28.not96.i
  br i1 %or.cond79.i, label %if.else34.i.if.then45.i_crit_edge, label %if.then40.i

if.else34.i.if.then45.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i

if.then40.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = tail call fastcc i32 @adp8870_clr_bits(ptr noundef %11, i8 noundef zeroext 16) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.then32.i
  %current_brightness94.i = phi ptr [ %current_brightness.i, %if.then32.i ], [ %current_brightness95.i, %if.then40.i ]
  %ret.1.i = phi i32 [ %call33.i, %if.then32.i ], [ %call41.i, %if.then40.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool44.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool44.not.i, label %if.end43.i.if.then45.i_crit_edge, label %if.end43.i.adp8870_bl_set.exit_crit_edge

if.end43.i.adp8870_bl_set.exit_crit_edge:         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_bl_set.exit

if.end43.i.if.then45.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.end43.i.if.then45.i_crit_edge, %if.else34.i.if.then45.i_crit_edge
  %current_brightness94101.i = phi ptr [ %current_brightness94.i, %if.end43.i.if.then45.i_crit_edge ], [ %current_brightness95.i, %if.else34.i.if.then45.i_crit_edge ]
  %24 = ptrtoint ptr %current_brightness94101.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %current_brightness94101.i, align 4
  br label %adp8870_bl_set.exit

adp8870_bl_set.exit:                              ; preds = %if.then45.i, %if.end43.i.adp8870_bl_set.exit_crit_edge, %adp8870_write.exit89.i, %if.end15.i.adp8870_bl_set.exit_crit_edge, %adp8870_write.exit84.i, %adp8870_write.exit.i, %if.then3.i.adp8870_bl_set.exit_crit_edge
  %retval.0.i4 = phi i32 [ %call4.i, %if.then3.i.adp8870_bl_set.exit_crit_edge ], [ %call.i.i, %adp8870_write.exit.i ], [ %call.i80.i, %adp8870_write.exit84.i ], [ %call16.i, %if.end15.i.adp8870_bl_set.exit_crit_edge ], [ %call.i85.i, %adp8870_write.exit89.i ], [ 0, %if.then45.i ], [ %ret.1.i, %if.end43.i.adp8870_bl_set.exit_crit_edge ]
  ret i32 %retval.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adp8870_bl_get_brightness(ptr nocapture noundef readonly %bl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_brightness = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_brightness, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adp8870_clr_bits(ptr noundef %client, i8 noundef zeroext %bit_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adp8870_read.exit, label %land.lhs.true

adp8870_read.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %and1 = and i8 %conv2.i, %bit_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1)
  %tobool3.not = icmp eq i8 %and1, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %neg = xor i8 %bit_mask, -1
  %and6 = and i8 %conv2.i, %neg
  %call.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %and6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.end.i4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i4:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i3, ptr noundef nonnull @.str.25) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i4, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %adp8870_read.exit
  %ret.0 = phi i32 [ %call.i, %adp8870_read.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ %call.i2, %do.end.i4 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adp8870_write(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adp8870_set_bits(ptr noundef %client, i32 noundef %reg, i8 noundef zeroext %bit_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %conv.i = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adp8870_read.exit, label %land.lhs.true

adp8870_read.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %reg) #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %and18 = and i8 %conv2.i, %bit_mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and18, i8 %bit_mask)
  %cmp.not = icmp eq i8 %and18, %bit_mask
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %or19 = or i8 %conv2.i, %bit_mask
  %call.i20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i, i8 noundef zeroext %or19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.end.i22

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i22:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i21 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str.25) #12
  br label %if.end

if.end:                                           ; preds = %do.end.i22, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %adp8870_read.exit
  %ret.0 = phi i32 [ %call.i, %adp8870_read.exit ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ %call.i20, %do.end.i22 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l5_dark_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 18) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l5_dark_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 18, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l5_dark_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 19) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l5_dark_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 19, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l4_indoor_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 16) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l4_indoor_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l4_indoor_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 17) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l4_indoor_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 17, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l3_office_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 14) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l3_office_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l3_office_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 15) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l3_office_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 15, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l2_bright_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 12) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l2_bright_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 12, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l2_bright_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 13) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l2_bright_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 13, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l1_daylight_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 10) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l1_daylight_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cached_daylight_max = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef %cached_daylight_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.adp8870_store.exit_crit_edge

if.end.adp8870_store.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %8 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 10, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %if.end.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %if.end.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %adp8870_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %adp8870_store.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l1_daylight_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8870_read.exit.thread.i, label %if.end.i

adp8870_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 11) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv.i) #9
  br label %adp8870_show.exit

adp8870_show.exit:                                ; preds = %if.end.i, %adp8870_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8870_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_l1_daylight_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !133
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8870_store.exit_crit_edge

entry.adp8870_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_store.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext %conv2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.adp8870_write.exit.i_crit_edge, label %do.end.i.i

if.end.i.adp8870_write.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit.i

adp8870_write.exit.i:                             ; preds = %do.end.i.i, %if.end.i.adp8870_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8870_store.exit

adp8870_store.exit:                               ; preds = %adp8870_write.exit.i, %entry.adp8870_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %adp8870_write.exit.i ], [ %call.i.i, %entry.adp8870_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_ambient_light_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 64) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %adp8870_read.exit33.thread, label %if.end9

adp8870_read.exit33.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i28 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.23, i32 noundef 65) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %6 = shl i32 %call.i26, 8
  %shl = and i32 %6, 7936
  %conv11 = and i32 %call.i, 255
  %add = or i32 %shl, %conv11
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %adp8870_read.exit33.thread, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call14, %if.end9 ], [ %call.i26, %adp8870_read.exit33.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_ambient_light_zone_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adp8870_read.exit.thread, label %if.end

adp8870_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 4) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %4 = lshr i32 %call.i, 3
  %5 = and i32 %4, 7
  %narrow = add nuw nsw i32 %5, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %narrow)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adp8870_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %adp8870_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_bl_ambient_light_zone_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !133
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %land.lhs.true

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call fastcc i32 @adp8870_set_bits(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 2)
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp5 = icmp ult i32 %4, 6
  br i1 %cmp5, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = call fastcc i32 @adp8870_clr_bits(ptr noundef %8, i8 noundef zeroext 2)
  %lock = getelementptr inbounds %struct.adp8870_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp.i = icmp slt i32 %call.i32, 0
  br i1 %cmp.i, label %adp8870_read.exit, label %if.then12

adp8870_read.exit:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 4) #12
  br label %if.end18

if.then12:                                        ; preds = %if.then6
  %conv2.i = trunc i32 %call.i32 to i8
  %12 = and i8 %conv2.i, -57
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 3
  %16 = add i8 %15, -8
  %conv15 = or i8 %16, %12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 4, i8 noundef zeroext %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i, label %if.then12.if.end18_crit_edge, label %do.end.i35

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end.i35:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.25) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end.i35, %if.then12.if.end18_crit_edge, %adp8870_read.exit
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.end18 ], [ %count, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp8870_led_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %new_brightness = getelementptr inbounds %struct.adp8870_led, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %new_brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %new_brightness, align 4
  %work = getelementptr inbounds %struct.adp8870_led, ptr %led_cdev, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp8870_led_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %id = getelementptr i8, ptr %work, i32 52
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 30
  %new_brightness = getelementptr i8, ptr %work, i32 48
  %5 = ptrtoint ptr %new_brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_brightness, align 4
  %shr = lshr i32 %6, 1
  %conv1 = trunc i32 %shr to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.adp8870_write.exit_crit_edge, label %do.end.i

entry.adp8870_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8870_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25) #12
  br label %adp8870_write.exit

adp8870_write.exit:                               ; preds = %do.end.i, %entry.adp8870_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %0 = tail call fastcc i32 @adp8870_clr_bits(ptr noundef %add.ptr, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8870_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call fastcc i32 @adp8870_set_bits(ptr noundef %add.ptr, i32 noundef 1, i8 noundef zeroext 33)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_adp8870_bl__301_983_adp8870_driver_init6, !1, !"__initcall__kmod_adp8870_bl__301_983_adp8870_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 983, i32 1}
!2 = !{ptr @__exitcall_adp8870_driver_exit, !1, !"__exitcall_adp8870_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file302, !4, !"__UNIQUE_ID_file302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 985, i32 1}
!5 = !{ptr @__UNIQUE_ID_license303, !4, !"__UNIQUE_ID_license303", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 986, i32 1}
!8 = !{ptr @__UNIQUE_ID_description305, !9, !"__UNIQUE_ID_description305", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 987, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 975, i32 11}
!12 = !{ptr @adp8870_driver, !13, !"adp8870_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 973, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 852, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp8870_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp8870_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 857, i32 3}
!24 = !{ptr @adp8870_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adp8870_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 866, i32 3}
!28 = !{ptr @adp8870_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adp8870_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @adp8870_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 881, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 890, i32 3}
!35 = !{ptr @adp8870_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @adp8870_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 900, i32 4}
!39 = !{ptr @adp8870_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @adp8870_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 913, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @adp8870_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @adp8870_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 134, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @adp8870_read._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @adp8870_read._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @adp8870_bl_ops, !52, !"adp8870_bl_ops", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 412, i32 35}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 148, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @adp8870_write._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @adp8870_write._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @adp8870_bl_attr_group, !59, !"adp8870_bl_attr_group", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 835, i32 37}
!60 = !{ptr @adp8870_bl_attributes, !61, !"adp8870_bl_attributes", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 817, i32 26}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 587, i32 8}
!64 = !{ptr @dev_attr_l5_dark_max, !63, !"dev_attr_l5_dark_max", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 555, i32 22}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 667, i32 8}
!69 = !{ptr @dev_attr_l5_dark_dim, !68, !"dev_attr_l5_dark_dim", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 602, i32 8}
!72 = !{ptr @dev_attr_l4_indoor_max, !71, !"dev_attr_l4_indoor_max", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 682, i32 8}
!75 = !{ptr @dev_attr_l4_indoor_dim, !74, !"dev_attr_l4_indoor_dim", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 618, i32 8}
!78 = !{ptr @dev_attr_l3_office_max, !77, !"dev_attr_l3_office_max", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 698, i32 8}
!81 = !{ptr @dev_attr_l3_office_dim, !80, !"dev_attr_l3_office_dim", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 632, i32 8}
!84 = !{ptr @dev_attr_l2_bright_max, !83, !"dev_attr_l2_bright_max", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 713, i32 8}
!87 = !{ptr @dev_attr_l2_bright_dim, !86, !"dev_attr_l2_bright_dim", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 652, i32 8}
!90 = !{ptr @dev_attr_l1_daylight_max, !89, !"dev_attr_l1_daylight_max", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 728, i32 8}
!93 = !{ptr @dev_attr_l1_daylight_dim, !92, !"dev_attr_l1_daylight_dim", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 758, i32 8}
!96 = !{ptr @dev_attr_ambient_light_level, !95, !"dev_attr_ambient_light_level", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 812, i32 8}
!99 = !{ptr @dev_attr_ambient_light_zone, !98, !"dev_attr_ambient_light_zone", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 274, i32 4}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @adp8870_led_probe._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @adp8870_led_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 281, i32 4}
!107 = !{ptr @adp8870_led_probe._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @adp8870_led_probe._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @adp8870_led_probe.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 294, i32 3}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 298, i32 4}
!114 = !{ptr @adp8870_led_probe._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @adp8870_led_probe._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @adp8870_led_probe._entry.49, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 305, i32 4}
!118 = !{ptr @adp8870_led_probe._entry_ptr.50, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @adp8870_i2c_pm_ops, !120, !"adp8870_i2c_pm_ops", i1 false, i1 false}
!120 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 964, i32 8}
!121 = !{ptr @adp8870_id, !122, !"adp8870_id", i1 false, i1 false}
!122 = !{!"../drivers/video/backlight/adp8870_bl.c", i32 967, i32 35}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{!"auto-init"}
