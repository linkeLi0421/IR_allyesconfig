; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/adp8860_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/adp8860_bl.c"
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
%struct.adp8860_backlight_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8, i8, i8, i8, i8 }
%struct.adp8860_bl = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.adp8860_led = type { %struct.led_classdev, %struct.work_struct, ptr, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_info = type { ptr, ptr, i32 }

@__initcall__kmod_adp8860_bl__301_813_adp8860_driver_init6 = internal global ptr @adp8860_driver_init, section ".initcall6.init", align 4
@adp8860_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp8860_probe, ptr @adp8860_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp8860_i2c_pm_ops, ptr null, ptr null }, ptr @adp8860_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp8860_driver_exit = internal global ptr @adp8860_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [51 x i8] c"adp8860_bl.file=drivers/video/backlight/adp8860_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [26 x i8] c"adp8860_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [67 x i8] c"adp8860_bl.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [48 x i8] c"adp8860_bl.description=ADP8860 Backlight driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adp8860_bl\00", [21 x i8] zeroinitializer }, align 32
@adp8860_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp8860_i2c_suspend, ptr @adp8860_i2c_resume, ptr @adp8860_i2c_suspend, ptr @adp8860_i2c_resume, ptr @adp8860_i2c_suspend, ptr @adp8860_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp8860_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp8860\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adp8861\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adp8863\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@adp8860_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Byte Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp8860_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/adp8860_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr = internal global ptr @adp8860_probe._entry, section ".printk_index", align 4
@adp8860_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr.8 = internal global ptr @adp8860_probe._entry.6, section ".printk_index", align 4
@adp8860_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to probe\0A\00", [47 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr.11 = internal global ptr @adp8860_probe._entry.9, section ".printk_index", align 4
@adp8860_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adp8860_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @adp8860_bl_update_status, ptr @adp8860_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@adp8860_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr.15 = internal global ptr @adp8860_probe._entry.13, section ".printk_index", align 4
@adp8860_bl_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adp8860_bl_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adp8860_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register sysfs\0A\00", [38 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr.18 = internal global ptr @adp8860_probe._entry.16, section ".printk_index", align 4
@adp8860_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Rev.%d Backlight\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adp8860_probe._entry_ptr.22 = internal global ptr @adp8860_probe._entry.19, section ".printk_index", align 4
@adp8860_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed reading at 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp8860_read\00", [19 x i8] zeroinitializer }, align 32
@adp8860_read._entry_ptr = internal global ptr @adp8860_read._entry, section ".printk_index", align 4
@adp8860_bl_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_l3_dark_max, ptr @dev_attr_l3_dark_dim, ptr @dev_attr_l2_office_max, ptr @dev_attr_l2_office_dim, ptr @dev_attr_l1_daylight_max, ptr @dev_attr_l1_daylight_dim, ptr @dev_attr_ambient_light_level, ptr @dev_attr_ambient_light_zone, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_l3_dark_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l3_dark_max_show, ptr @adp8860_bl_l3_dark_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l3_dark_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l3_dark_dim_show, ptr @adp8860_bl_l3_dark_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l2_office_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l2_office_max_show, ptr @adp8860_bl_l2_office_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l2_office_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l2_office_dim_show, ptr @adp8860_bl_l2_office_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_daylight_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l1_daylight_max_show, ptr @adp8860_bl_l1_daylight_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_l1_daylight_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_l1_daylight_dim_show, ptr @adp8860_bl_l1_daylight_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ambient_light_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_ambient_light_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ambient_light_zone = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp8860_bl_ambient_light_zone_show, ptr @adp8860_bl_ambient_light_zone_store }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l3_dark_max\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l3_dark_dim\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2_office_max\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2_office_dim\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l1_daylight_max\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l1_daylight_dim\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ambient_light_level\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ambient_light_zone\00", [45 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp8860_led_probe\00", [46 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry_ptr = internal global ptr @adp8860_led_probe._entry, section ".printk_index", align 4
@adp8860_led_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid LED ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry_ptr.38 = internal global ptr @adp8860_led_probe._entry.36, section ".printk_index", align 4
@adp8860_led_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LED %d used by Backlight\0A\00", [38 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry_ptr.41 = internal global ptr @adp8860_led_probe._entry.39, section ".printk_index", align 4
@adp8860_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&led_dat->work)\00", [62 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry_ptr.45 = internal global ptr @adp8860_led_probe._entry.43, section ".printk_index", align 4
@adp8860_led_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@adp8860_led_probe._entry_ptr.47 = internal global ptr @adp8860_led_probe._entry.46, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"adp8860_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 803, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 805, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"adp8860_i2c_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 792, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"adp8860_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 795, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 664, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 669, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 692, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 709, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"adp8860_bl_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 374, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 715, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"adp8860_bl_attr_group\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 647, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 728, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 740, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 125, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"adp8860_bl_attributes\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 633, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"dev_attr_l3_dark_max\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"dev_attr_l3_dark_dim\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"dev_attr_l2_office_max\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"dev_attr_l2_office_dim\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"dev_attr_l1_daylight_max\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [25 x i8] c"dev_attr_l1_daylight_dim\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"dev_attr_ambient_light_level\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"dev_attr_ambient_light_zone\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 467, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 434, i32 22 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 516, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 481, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 531, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 501, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 546, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 574, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 628, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 237, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 248, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 255, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 268, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 272, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private constant [40 x i8] c"../drivers/video/backlight/adp8860_bl.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 279, i32 4 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_adp8860_driver_exit, ptr @__initcall__kmod_adp8860_bl__301_813_adp8860_driver_init6, ptr @adp8860_driver_exit, ptr @adp8860_led_probe._entry, ptr @adp8860_led_probe._entry.36, ptr @adp8860_led_probe._entry.39, ptr @adp8860_led_probe._entry.43, ptr @adp8860_led_probe._entry.46, ptr @adp8860_led_probe._entry_ptr, ptr @adp8860_led_probe._entry_ptr.38, ptr @adp8860_led_probe._entry_ptr.41, ptr @adp8860_led_probe._entry_ptr.45, ptr @adp8860_led_probe._entry_ptr.47, ptr @adp8860_probe._entry, ptr @adp8860_probe._entry.13, ptr @adp8860_probe._entry.16, ptr @adp8860_probe._entry.19, ptr @adp8860_probe._entry.6, ptr @adp8860_probe._entry.9, ptr @adp8860_probe._entry_ptr, ptr @adp8860_probe._entry_ptr.11, ptr @adp8860_probe._entry_ptr.15, ptr @adp8860_probe._entry_ptr.18, ptr @adp8860_probe._entry_ptr.22, ptr @adp8860_probe._entry_ptr.8, ptr @adp8860_read._entry, ptr @adp8860_read._entry_ptr, ptr @adp8860_driver, ptr @.str, ptr @adp8860_i2c_pm_ops, ptr @adp8860_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @adp8860_probe.__key, ptr @.str.12, ptr @adp8860_bl_ops, ptr @.str.14, ptr @adp8860_bl_attr_group, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @adp8860_bl_attributes, ptr @dev_attr_l3_dark_max, ptr @dev_attr_l3_dark_dim, ptr @dev_attr_l2_office_max, ptr @dev_attr_l2_office_dim, ptr @dev_attr_l1_daylight_max, ptr @dev_attr_l1_daylight_dim, ptr @dev_attr_ambient_light_level, ptr @dev_attr_ambient_light_zone, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @adp8860_led_probe.__key, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_bl_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_bl_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l3_dark_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l3_dark_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l2_office_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l2_office_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_daylight_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_l1_daylight_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ambient_light_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ambient_light_zone to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp8860_led_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp8860_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp8860_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adp8860_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
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
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i165 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %adp8860_read.exit.thread, label %if.end17

adp8860_read.exit.thread:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 0) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %10 = lshr i32 %call.i165, 4
  %11 = and i32 %10, 15
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end50 [
    i32 2, label %sw.bb
    i32 0, label %if.end17.sw.bb21_crit_edge
    i32 4, label %sw.bb34
  ]

if.end17.sw.bb21_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %gdwn_dis = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %gdwn_dis to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gdwn_dis, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  %gdwn_dis20 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %gdwn_dis20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %gdwn_dis20, align 4
  %bf.shl = select i1 %tobool18.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %gdwn_dis20, align 4
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb, %if.end17.sw.bb21_crit_edge
  %en_ambl_sens = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %en_ambl_sens, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  %en_ambl_sens27 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %en_ambl_sens27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load28 = load i8, ptr %en_ambl_sens27, align 4
  %bf.shl30 = select i1 %tobool22.not, i8 0, i8 -128
  %bf.clear31 = and i8 %bf.load28, 127
  %bf.set32 = or i8 %bf.clear31, %bf.shl30
  store i8 %bf.set32, ptr %en_ambl_sens27, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %gdwn_dis35 = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %gdwn_dis35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gdwn_dis35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool36.not = icmp eq i8 %20, 0
  %gdwn_dis41 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %gdwn_dis41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load42 = load i8, ptr %gdwn_dis41, align 4
  %bf.shl44 = select i1 %tobool36.not, i8 0, i8 64
  %bf.clear45 = and i8 %bf.load42, -65
  %bf.set46 = or i8 %bf.clear45, %bf.shl44
  store i8 %bf.set46, ptr %gdwn_dis41, align 4
  br label %sw.epilog

do.end50:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb21
  %22 = and i32 %call.i165, 15
  %revid = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %revid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %revid, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client, ptr %call.i, align 4
  %pdata54 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %pdata54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %pdata54, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  %id55 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %id55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %id55, align 4
  %current_brightness = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %current_brightness, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %31 = call ptr @memset(ptr %props, i32 0, i32 28)
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %3, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 127, ptr %2, align 4
  %lock = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @adp8860_probe.__key) #9
  %call61 = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %call63 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %call61, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @adp8860_bl_ops, ptr noundef nonnull %props) #9
  %cmp.i167 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end68, label %if.end71

do.end68:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  %34 = ptrtoint ptr %call63 to i32
  br label %cleanup

if.end71:                                         ; preds = %sw.epilog
  %35 = ptrtoint ptr %call63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 127, ptr %call63, align 8
  %bl73 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %bl73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call63, ptr %bl73, align 4
  %en_ambl_sens74 = getelementptr inbounds %struct.adp8860_bl, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %en_ambl_sens74 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load75 = load i8, ptr %en_ambl_sens74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load75)
  %tobool76.not = icmp sgt i8 %bf.load75, -1
  br i1 %tobool76.not, label %if.end71.if.end87_crit_edge, label %if.end80

if.end71.if.end87_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.end80:                                         ; preds = %if.end71
  %dev78 = getelementptr inbounds %struct.backlight_device, ptr %call63, i32 0, i32 6
  %call79 = call i32 @sysfs_create_group(ptr noundef %dev78, ptr noundef nonnull @adp8860_bl_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool81.not = icmp eq i32 %call79, 0
  br i1 %tobool81.not, label %if.end80.if.end87_crit_edge, label %do.end85

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end87:                                         ; preds = %if.end80.if.end87_crit_edge, %if.end71.if.end87_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call63, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %pdata2.i = getelementptr inbounds %struct.adp8860_bl, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata2.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %neg.i = xor i8 %45, -1
  %call.i.i168 = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 5, i8 noundef zeroext %neg.i) #9
  %l1_daylight_max.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %l1_daylight_max.i, align 2
  %call.i105.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 9, i8 noundef zeroext %47) #9
  %or6.i = or i32 %call.i105.i, %call.i.i168
  %l1_daylight_dim.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 7
  %48 = ptrtoint ptr %l1_daylight_dim.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %l1_daylight_dim.i, align 1
  %call.i106.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 10, i8 noundef zeroext %49) #9
  %or8.i = or i32 %or6.i, %call.i106.i
  %en_ambl_sens.i = getelementptr inbounds %struct.adp8860_bl, ptr %39, i32 0, i32 9
  %50 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %en_ambl_sens.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end87.if.end.i169_crit_edge, label %if.then.i

if.end87.if.end.i169_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i169

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %l1_daylight_max.i, align 2
  %conv10.i = zext i8 %52 to i32
  %cached_daylight_max.i = getelementptr inbounds %struct.adp8860_bl, ptr %39, i32 0, i32 5
  %53 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv10.i, ptr %cached_daylight_max.i, align 4
  %l2_office_max.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 8
  %54 = ptrtoint ptr %l2_office_max.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %l2_office_max.i, align 4
  %call.i107.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 11, i8 noundef zeroext %55) #9
  %or12.i = or i32 %call.i107.i, %or8.i
  %l2_office_dim.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 9
  %56 = ptrtoint ptr %l2_office_dim.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %l2_office_dim.i, align 1
  %call.i108.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 12, i8 noundef zeroext %57) #9
  %or14.i = or i32 %or12.i, %call.i108.i
  %l3_dark_max.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 10
  %58 = ptrtoint ptr %l3_dark_max.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %l3_dark_max.i, align 2
  %call.i109.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 13, i8 noundef zeroext %59) #9
  %or16.i = or i32 %or14.i, %call.i109.i
  %l3_dark_dim.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 11
  %60 = ptrtoint ptr %l3_dark_dim.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %l3_dark_dim.i, align 1
  %call.i110.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 14, i8 noundef zeroext %61) #9
  %or18.i = or i32 %or16.i, %call.i110.i
  %l2_trip.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 12
  %62 = ptrtoint ptr %l2_trip.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %l2_trip.i, align 4
  %call.i111.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 29, i8 noundef zeroext %63) #9
  %or20.i = or i32 %or18.i, %call.i111.i
  %l2_hyst.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 13
  %64 = ptrtoint ptr %l2_hyst.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %l2_hyst.i, align 1
  %call.i112.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 30, i8 noundef zeroext %65) #9
  %or22.i = or i32 %or20.i, %call.i112.i
  %l3_trip.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 14
  %66 = ptrtoint ptr %l3_trip.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %l3_trip.i, align 2
  %call.i113.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 31, i8 noundef zeroext %67) #9
  %or24.i = or i32 %or22.i, %call.i113.i
  %l3_hyst.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 15
  %68 = ptrtoint ptr %l3_hyst.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %l3_hyst.i, align 1
  %call.i114.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 32, i8 noundef zeroext %69) #9
  %or26.i = or i32 %or24.i, %call.i114.i
  %abml_filt.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 5
  %70 = ptrtoint ptr %abml_filt.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %abml_filt.i, align 1
  %72 = shl i8 %71, 5
  %73 = or i8 %72, 3
  %call.i115.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 27, i8 noundef zeroext %73) #9
  %or31.i = or i32 %or26.i, %call.i115.i
  br label %if.end.i169

if.end.i169:                                      ; preds = %if.then.i, %if.end87.if.end.i169_crit_edge
  %ret.0.i = phi i32 [ %or31.i, %if.then.i ], [ %or8.i, %if.end87.if.end.i169_crit_edge ]
  %bl_fade_law.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 3
  %74 = ptrtoint ptr %bl_fade_law.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bl_fade_law.i, align 1
  %76 = shl i8 %75, 1
  %77 = and i8 %76, 6
  %call.i116.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 4, i8 noundef zeroext %77) #9
  %bl_fade_in.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 1
  %78 = ptrtoint ptr %bl_fade_in.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bl_fade_in.i, align 1
  %80 = and i8 %79, 15
  %bl_fade_out.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %43, i32 0, i32 2
  %81 = ptrtoint ptr %bl_fade_out.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bl_fade_out.i, align 2
  %83 = shl i8 %82, 4
  %or44104.i = or i8 %83, %80
  %call.i117.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 8, i8 noundef zeroext %or44104.i) #9
  %84 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load48.i = load i8, ptr %en_ambl_sens.i, align 4
  %85 = lshr i8 %bf.load48.i, 3
  %86 = and i8 %85, 8
  %87 = or i8 %86, 49
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.adp8860_bl, ptr %89, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %call.i.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %adp8860_read.exit.i.i, label %land.lhs.true.i.i

adp8860_read.exit.i.i:                            ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_bl_setup.exit

land.lhs.true.i.i:                                ; preds = %if.end.i169
  %conv2.i.i.i = trunc i32 %call.i.i.i to i8
  %and18.i.i = and i8 %87, %conv2.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i.i, i8 %87)
  %cmp.not.i.i = icmp eq i8 %and18.i.i, %87
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.adp8860_bl_setup.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.adp8860_bl_setup.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_bl_setup.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i.i = or i8 %87, %conv2.i.i.i
  %call.i20.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 1, i8 noundef zeroext %or19.i.i) #9
  br label %adp8860_bl_setup.exit

adp8860_bl_setup.exit:                            ; preds = %if.then.i.i, %land.lhs.true.i.i.adp8860_bl_setup.exit_crit_edge, %adp8860_read.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %adp8860_read.exit.i.i ], [ %call.i20.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.adp8860_bl_setup.exit_crit_edge ]
  %or38.i = or i32 %call.i116.i, %ret.0.i
  %or47.i = or i32 %or38.i, %call.i117.i
  call void @mutex_unlock(ptr noundef %lock.i.i) #9
  %or55.i = or i32 %or47.i, %ret.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or55.i)
  %tobool89.not = icmp eq i32 %or55.i, 0
  br i1 %tobool89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %adp8860_bl_setup.exit
  %90 = ptrtoint ptr %en_ambl_sens74 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load103 = load i8, ptr %en_ambl_sens74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load103)
  %tobool106.not = icmp sgt i8 %bf.load103, -1
  br i1 %tobool106.not, label %if.then90.cleanup_crit_edge, label %if.then107

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %adp8860_bl_setup.exit
  call fastcc void @backlight_update_status(ptr noundef %call63)
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %91 = ptrtoint ptr %revid to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %revid, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %92) #12
  %num_leds = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 16
  %93 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool98.not = icmp eq i32 %94, 0
  br i1 %tobool98.not, label %if.end91.cleanup_crit_edge, label %if.then99

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @adp8860_led_probe(ptr noundef %client)
  br label %cleanup

if.then107:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %bl73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bl73, align 4
  %dev109 = getelementptr inbounds %struct.backlight_device, ptr %96, i32 0, i32 6
  call void @sysfs_remove_group(ptr noundef %dev109, ptr noundef nonnull @adp8860_bl_attr_group) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.then99, %if.end91.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %do.end85, %do.end68, %do.end50, %adp8860_read.exit.thread, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end50 ], [ %34, %do.end68 ], [ %call79, %do.end85 ], [ -22, %do.end7 ], [ -5, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %if.end91.cleanup_crit_edge ], [ -5, %if.then107 ], [ -5, %if.then90.cleanup_crit_edge ], [ %call.i165, %adp8860_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.i, label %land.lhs.true.i

adp8860_read.exit.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_clr_bits.exit

land.lhs.true.i:                                  ; preds = %entry
  %conv2.i.i = trunc i32 %call.i.i to i8
  %and1.i = and i8 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %tobool3.not.i = icmp eq i8 %and1.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.adp8860_clr_bits.exit_crit_edge, label %if.then.i

land.lhs.true.i.adp8860_clr_bits.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_clr_bits.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i = and i8 %conv2.i.i, -33
  %call.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %and6.i) #9
  br label %adp8860_clr_bits.exit

adp8860_clr_bits.exit:                            ; preds = %if.then.i, %land.lhs.true.i.adp8860_clr_bits.exit_crit_edge, %adp8860_read.exit.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %led = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %adp8860_clr_bits.exit.if.end_crit_edge, label %if.then

adp8860_clr_bits.exit.if.end_crit_edge:           ; preds = %adp8860_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %adp8860_clr_bits.exit
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %num_leds.i = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %led.i = getelementptr inbounds %struct.adp8860_bl, ptr %9, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %led.i, align 4
  %arrayidx.i = getelementptr %struct.adp8860_led, ptr %11, i32 %i.02.i
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.i) #9
  %12 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led.i, align 4
  %work.i = getelementptr %struct.adp8860_led, ptr %13, i32 %i.02.i, i32 1
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #9
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %14 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_leds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %adp8860_clr_bits.exit.if.end_crit_edge
  %en_ambl_sens = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %en_ambl_sens, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bl = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bl, align 4
  %dev = getelementptr inbounds %struct.backlight_device, ptr %18, i32 0, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adp8860_bl_attr_group) #9
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
define internal fastcc void @adp8860_led_probe(ptr noundef %client) unnamed_addr #2 align 64 {
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
  %num_leds = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_leds, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 460) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !119

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
  %led_fade_law = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %led_fade_law to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %led_fade_law, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 15, i8 noundef zeroext %10) #9
  %led_on_time = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %led_on_time to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %led_on_time, align 1
  %13 = shl i8 %12, 6
  %call.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 17, i8 noundef zeroext %13) #9
  %led_fade_in = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %led_fade_in to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %led_fade_in, align 4
  %16 = and i8 %15, 15
  %led_fade_out = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %led_fade_out to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %led_fade_out, align 1
  %19 = shl i8 %18, 4
  %or1 = or i8 %19, %16
  %call.i3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 19, i8 noundef zeroext %or1) #9
  %or14 = or i32 %call.i3, %call.i2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or14)
  %tobool.not = icmp eq i32 %or14, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  %20 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1917 = icmp sgt i32 %21, 0
  br i1 %cmp1917, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %leds = getelementptr inbounds %struct.adp8860_backlight_platform_data, ptr %1, i32 0, i32 17
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc84, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.led_info, ptr %23, i32 %i.018
  %arrayidx21 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018
  %flags = getelementptr %struct.led_info, ptr %23, i32 %i.018, i32 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and22 = and i32 %25, 255
  %id = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and22, ptr %id, align 4
  %27 = add nsw i32 %and22, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %27)
  %28 = icmp ult i32 %27, -7
  br i1 %28, label %do.end32, label %if.end35

do.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %and22) #12
  br label %err

if.end35:                                         ; preds = %for.body
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 4
  %conv36 = zext i8 %30 to i32
  %sub = add nsw i32 %and22, -1
  %shl38 = shl nuw nsw i32 1, %sub
  %and39 = and i32 %shl38, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %and22) #12
  br label %err

if.end47:                                         ; preds = %if.end35
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx21, align 4
  %default_trigger = getelementptr %struct.led_info, ptr %23, i32 %i.018, i32 1
  %34 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %default_trigger, align 4
  %default_trigger50 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx21, i32 0, i32 14
  %36 = ptrtoint ptr %default_trigger50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %default_trigger50, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %arrayidx21, i32 0, i32 5
  %37 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @adp8860_led_set, ptr %brightness_set, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx21, i32 0, i32 1
  %38 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %brightness, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %shr = ashr i32 %40, 8
  %flags54 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 5
  %41 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %flags54, align 4
  %client55 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 2
  %42 = ptrtoint ptr %client55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %client, ptr %client55, align 4
  %new_brightness = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 3
  %43 = ptrtoint ptr %new_brightness to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %new_brightness, align 4
  %work = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %44 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.42, ptr noundef nonnull @adp8860_led_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry61 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 1, i32 1
  %45 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry61, ptr %prev.i, align 4
  %func = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.018, i32 1, i32 2
  %47 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @adp8860_led_work, ptr %func, align 4
  %call.i4 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx21, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool68.not = icmp eq i32 %call.i4, 0
  br i1 %tobool68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %49) #12
  br label %err

if.end75:                                         ; preds = %if.end47
  %50 = ptrtoint ptr %client55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client55, align 4
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %54 = trunc i32 %53 to i8
  %conv.i = sub i8 27, %54
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #9
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  %sub3.i = add i32 %56, -1
  %shl.i = shl nuw i32 1, %sub3.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4, i32 8
  %57 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.adp8860_bl, ptr %58, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %adp8860_read.exit.i.i, label %land.lhs.true.i.i

adp8860_read.exit.i.i:                            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.23, i32 noundef 16) #12
  br label %adp8860_set_bits.exit.i

land.lhs.true.i.i:                                ; preds = %if.end75
  %conv4.i = trunc i32 %shl.i to i8
  %and18.i66.i = and i32 %call.i.i.i, %shl.i
  %and18.i.i = trunc i32 %and18.i66.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i.i, i8 %conv4.i)
  %cmp.not.i.i = icmp eq i8 %and18.i.i, %conv4.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.adp8860_set_bits.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.adp8860_set_bits.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_set_bits.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i67.i = or i32 %call.i.i.i, %shl.i
  %or19.i.i = trunc i32 %or19.i67.i to i8
  %call.i20.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 16, i8 noundef zeroext %or19.i.i) #9
  br label %adp8860_set_bits.exit.i

adp8860_set_bits.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true.i.i.adp8860_set_bits.exit.i_crit_edge, %adp8860_read.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %adp8860_read.exit.i.i ], [ %call.i20.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.adp8860_set_bits.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #9
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp.i = icmp sgt i32 %60, 4
  %61 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags54, align 4
  %and.i = and i32 %62, 3
  %sub9.i = shl i32 %60, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %adp8860_set_bits.exit.i
  %mul.i = add i32 %sub9.i, -10
  %shl10.i = shl i32 %and.i, %mul.i
  %63 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i37.i = getelementptr inbounds %struct.adp8860_bl, ptr %64, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i37.i, i32 noundef 0) #9
  %call.i.i38.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38.i)
  %cmp.i.i39.i = icmp slt i32 %call.i.i38.i, 0
  br i1 %cmp.i.i39.i, label %adp8860_read.exit.i41.i, label %land.lhs.true.i45.i

adp8860_read.exit.i41.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i40.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i40.i, ptr noundef nonnull @.str.23, i32 noundef 17) #12
  br label %adp8860_led_setup.exit

land.lhs.true.i45.i:                              ; preds = %if.then.i
  %conv11.i = trunc i32 %shl10.i to i8
  %and18.i4370.i = and i32 %call.i.i38.i, %shl10.i
  %and18.i43.i = trunc i32 %and18.i4370.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i43.i, i8 %conv11.i)
  %cmp.not.i44.i = icmp eq i8 %and18.i43.i, %conv11.i
  br i1 %cmp.not.i44.i, label %land.lhs.true.i45.i.adp8860_led_setup.exit_crit_edge, label %if.then.i48.i

land.lhs.true.i45.i.adp8860_led_setup.exit_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_led_setup.exit

if.then.i48.i:                                    ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i4671.i = or i32 %call.i.i38.i, %shl10.i
  %or19.i46.i = trunc i32 %or19.i4671.i to i8
  %call.i20.i47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 17, i8 noundef zeroext %or19.i46.i) #9
  br label %adp8860_led_setup.exit

if.else.i:                                        ; preds = %adp8860_set_bits.exit.i
  %mul18.i = add i32 %sub9.i, -2
  %shl19.i = shl i32 %and.i, %mul18.i
  %65 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i52.i = getelementptr inbounds %struct.adp8860_bl, ptr %66, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i52.i, i32 noundef 0) #9
  %call.i.i53.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp.i.i54.i = icmp slt i32 %call.i.i53.i, 0
  br i1 %cmp.i.i54.i, label %adp8860_read.exit.i56.i, label %land.lhs.true.i60.i

adp8860_read.exit.i56.i:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i55.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i55.i, ptr noundef nonnull @.str.23, i32 noundef 18) #12
  br label %adp8860_led_setup.exit

land.lhs.true.i60.i:                              ; preds = %if.else.i
  %conv20.i = trunc i32 %shl19.i to i8
  %and18.i5868.i = and i32 %call.i.i53.i, %shl19.i
  %and18.i58.i = trunc i32 %and18.i5868.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i58.i, i8 %conv20.i)
  %cmp.not.i59.i = icmp eq i8 %and18.i58.i, %conv20.i
  br i1 %cmp.not.i59.i, label %land.lhs.true.i60.i.adp8860_led_setup.exit_crit_edge, label %if.then.i63.i

land.lhs.true.i60.i.adp8860_led_setup.exit_crit_edge: ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_led_setup.exit

if.then.i63.i:                                    ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i6169.i = or i32 %call.i.i53.i, %shl19.i
  %or19.i61.i = trunc i32 %or19.i6169.i to i8
  %call.i20.i62.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 18, i8 noundef zeroext %or19.i61.i) #9
  br label %adp8860_led_setup.exit

adp8860_led_setup.exit:                           ; preds = %if.then.i63.i, %land.lhs.true.i60.i.adp8860_led_setup.exit_crit_edge, %adp8860_read.exit.i56.i, %if.then.i48.i, %land.lhs.true.i45.i.adp8860_led_setup.exit_crit_edge, %adp8860_read.exit.i41.i
  %lock.i52.sink.i = phi ptr [ %lock.i37.i, %adp8860_read.exit.i41.i ], [ %lock.i37.i, %land.lhs.true.i45.i.adp8860_led_setup.exit_crit_edge ], [ %lock.i37.i, %if.then.i48.i ], [ %lock.i52.i, %adp8860_read.exit.i56.i ], [ %lock.i52.i, %land.lhs.true.i60.i.adp8860_led_setup.exit_crit_edge ], [ %lock.i52.i, %if.then.i63.i ]
  %call12.pn.i = phi i32 [ %call.i.i38.i, %adp8860_read.exit.i41.i ], [ 0, %land.lhs.true.i45.i.adp8860_led_setup.exit_crit_edge ], [ %call.i20.i47.i, %if.then.i48.i ], [ %call.i.i53.i, %adp8860_read.exit.i56.i ], [ 0, %land.lhs.true.i60.i.adp8860_led_setup.exit_crit_edge ], [ %call.i20.i62.i, %if.then.i63.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i52.sink.i) #9
  %or.i = or i32 %ret.0.i.i, %call.i.i
  %ret.0.i = or i32 %or.i, %call12.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool77.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool77.not, label %for.inc, label %do.end81

do.end81:                                         ; preds = %adp8860_led_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  %inc = add nuw nsw i32 %i.018, 1
  br label %err

for.inc:                                          ; preds = %adp8860_led_setup.exit
  %inc84 = add nuw nsw i32 %i.018, 1
  %67 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_leds, align 4
  %cmp19 = icmp slt i32 %inc84, %68
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %led85 = getelementptr inbounds %struct.adp8860_bl, ptr %3, i32 0, i32 2
  %69 = ptrtoint ptr %led85 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call5.i.i, ptr %led85, align 4
  br label %cleanup

err:                                              ; preds = %do.end81, %do.end72, %do.end44, %do.end32
  %i.1 = phi i32 [ %i.018, %do.end32 ], [ %i.018, %do.end44 ], [ %i.018, %do.end72 ], [ %inc, %do.end81 ]
  %i.219 = add i32 %i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.219)
  %cmp8820 = icmp sgt i32 %i.219, -1
  br i1 %cmp8820, label %err.for.body90_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err.for.body90_crit_edge:                         ; preds = %err
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %err.for.body90_crit_edge
  %i.221 = phi i32 [ %i.2, %for.body90.for.body90_crit_edge ], [ %i.219, %err.for.body90_crit_edge ]
  %arrayidx91 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.221
  tail call void @led_classdev_unregister(ptr noundef %arrayidx91) #9
  %work94 = getelementptr %struct.adp8860_led, ptr %call5.i.i, i32 %i.221, i32 1
  %call95 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work94) #9
  %i.2 = add nsw i32 %i.221, -1
  %cmp88.not = icmp eq i32 %i.221, 0
  br i1 %cmp88.not, label %for.body90.cleanup_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90

for.body90.cleanup_crit_edge:                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body90.cleanup_crit_edge, %err.cleanup_crit_edge, %for.end, %do.end, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
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
  %en_ambl_sens.i = getelementptr inbounds %struct.adp8860_bl, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %en_ambl_sens.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %backlight_get_brightness.exit
  %13 = add i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %13)
  %14 = icmp ult i32 %13, 126
  br i1 %14, label %if.then3.i, label %if.else.i3

if.then3.i:                                       ; preds = %if.then.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.adp8860_bl, ptr %16, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %adp8860_read.exit.i.i, label %land.lhs.true.i.i

adp8860_read.exit.i.i:                            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %if.end16.thread.i

land.lhs.true.i.i:                                ; preds = %if.then3.i
  %conv2.i.i.i = trunc i32 %call.i.i.i to i8
  %and1.i.i = and i8 %conv2.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i.i)
  %tobool3.not.i.i = icmp eq i8 %and1.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end16.thread.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end16.thread.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i = and i8 %conv2.i.i.i, -3
  %call.i2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %and6.i.i) #9
  br label %if.end16.thread.i

if.end16.thread.i:                                ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end16.thread.i_crit_edge, %adp8860_read.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %adp8860_read.exit.i.i ], [ %call.i2.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.if.end16.thread.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #9
  %conv.i = trunc i32 %retval.0.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 9, i8 noundef zeroext %conv.i) #9
  %or6.i = or i32 %call.i.i, %ret.0.i.i
  %current_brightness109.i = getelementptr inbounds %struct.adp8860_bl, ptr %9, i32 0, i32 8
  %17 = ptrtoint ptr %current_brightness109.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_brightness109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not110.i = icmp ne i32 %18, 0
  br label %if.else24.i

if.else.i3:                                       ; preds = %if.then.i
  %cached_daylight_max.i = getelementptr inbounds %struct.adp8860_bl, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cached_daylight_max.i, align 4
  %conv7.i = trunc i32 %20 to i8
  %call.i66.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 9, i8 noundef zeroext %conv7.i) #9
  %driver_data.i.i.i67.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i67.i, align 4
  %lock.i68.i = getelementptr inbounds %struct.adp8860_bl, ptr %22, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i68.i, i32 noundef 0) #9
  %call.i.i69.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %cmp.i.i70.i = icmp slt i32 %call.i.i69.i, 0
  br i1 %cmp.i.i70.i, label %adp8860_read.exit.i72.i, label %land.lhs.true.i74.i

adp8860_read.exit.i72.i:                          ; preds = %if.else.i3
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i71.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i71.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_set_bits.exit.i

land.lhs.true.i74.i:                              ; preds = %if.else.i3
  %conv2.i.i73.i = trunc i32 %call.i.i69.i to i8
  %and18.i.i = and i8 %conv2.i.i73.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i.i)
  %cmp.not.i.not.i = icmp eq i8 %and18.i.i, 0
  br i1 %cmp.not.i.not.i, label %if.then.i75.i, label %land.lhs.true.i74.i.adp8860_set_bits.exit.i_crit_edge

land.lhs.true.i74.i.adp8860_set_bits.exit.i_crit_edge: ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_set_bits.exit.i

if.then.i75.i:                                    ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i.i = or i8 %conv2.i.i73.i, 2
  %call.i20.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %or19.i.i) #9
  br label %adp8860_set_bits.exit.i

adp8860_set_bits.exit.i:                          ; preds = %if.then.i75.i, %land.lhs.true.i74.i.adp8860_set_bits.exit.i_crit_edge, %adp8860_read.exit.i72.i
  %ret.0.i76.i = phi i32 [ %call.i.i69.i, %adp8860_read.exit.i72.i ], [ %call.i20.i.i, %if.then.i75.i ], [ 0, %land.lhs.true.i74.i.adp8860_set_bits.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i68.i) #9
  %or11.i = or i32 %ret.0.i76.i, %call.i66.i
  br label %if.end16.i

if.else12.i:                                      ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i = trunc i32 %retval.0.i to i8
  %call.i77.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 9, i8 noundef zeroext %conv13.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else12.i, %adp8860_set_bits.exit.i
  %ret.0.i = phi i32 [ %or11.i, %adp8860_set_bits.exit.i ], [ %call.i77.i, %if.else12.i ]
  %current_brightness.i = getelementptr inbounds %struct.adp8860_bl, ptr %9, i32 0, i32 8
  %23 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19.i = icmp eq i32 %retval.0.i, 0
  %or.cond64.i = and i1 %cmp19.i, %tobool17.not.i
  br i1 %or.cond64.i, label %if.then21.i, label %if.end16.i.if.else24.i_crit_edge

if.end16.i.if.else24.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else24.i

if.then21.i:                                      ; preds = %if.end16.i
  %driver_data.i.i.i78.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i78.i, align 4
  %lock.i79.i = getelementptr inbounds %struct.adp8860_bl, ptr %26, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i79.i, i32 noundef 0) #9
  %call.i.i80.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp.i.i81.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp.i.i81.i, label %adp8860_read.exit.i83.i, label %land.lhs.true.i87.i

adp8860_read.exit.i83.i:                          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i82.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i82.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_set_bits.exit92.i

land.lhs.true.i87.i:                              ; preds = %if.then21.i
  %conv2.i.i84.i = trunc i32 %call.i.i80.i to i8
  %and18.i85.i = and i8 %conv2.i.i84.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i85.i)
  %cmp.not.i86.not.i = icmp eq i8 %and18.i85.i, 0
  br i1 %cmp.not.i86.not.i, label %if.then.i90.i, label %land.lhs.true.i87.i.adp8860_set_bits.exit92.i_crit_edge

land.lhs.true.i87.i.adp8860_set_bits.exit92.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_set_bits.exit92.i

if.then.i90.i:                                    ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i88.i = or i8 %conv2.i.i84.i, 16
  %call.i20.i89.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %or19.i88.i) #9
  br label %adp8860_set_bits.exit92.i

adp8860_set_bits.exit92.i:                        ; preds = %if.then.i90.i, %land.lhs.true.i87.i.adp8860_set_bits.exit92.i_crit_edge, %adp8860_read.exit.i83.i
  %ret.0.i91.i = phi i32 [ %call.i.i80.i, %adp8860_read.exit.i83.i ], [ %call.i20.i89.i, %if.then.i90.i ], [ 0, %land.lhs.true.i87.i.adp8860_set_bits.exit92.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i79.i) #9
  %or23.i = or i32 %ret.0.i91.i, %ret.0.i
  br label %if.end34.i

if.else24.i:                                      ; preds = %if.end16.i.if.else24.i_crit_edge, %if.end16.thread.i
  %cmp19117.i = phi i1 [ false, %if.end16.thread.i ], [ %cmp19.i, %if.end16.i.if.else24.i_crit_edge ]
  %tobool17.not116.i = phi i1 [ %tobool17.not110.i, %if.end16.thread.i ], [ %tobool17.not.i, %if.end16.i.if.else24.i_crit_edge ]
  %current_brightness115.i = phi ptr [ %current_brightness109.i, %if.end16.thread.i ], [ %current_brightness.i, %if.end16.i.if.else24.i_crit_edge ]
  %ret.0113.i = phi i32 [ %or6.i, %if.end16.thread.i ], [ %ret.0.i, %if.end16.i.if.else24.i_crit_edge ]
  %or.cond65.i = or i1 %cmp19117.i, %tobool17.not116.i
  br i1 %or.cond65.i, label %if.else24.i.if.end34.i_crit_edge, label %if.then30.i

if.else24.i.if.end34.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.else24.i
  %driver_data.i.i.i93.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i93.i, align 4
  %lock.i94.i = getelementptr inbounds %struct.adp8860_bl, ptr %28, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i94.i, i32 noundef 0) #9
  %call.i.i95.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95.i)
  %cmp.i.i96.i = icmp slt i32 %call.i.i95.i, 0
  br i1 %cmp.i.i96.i, label %adp8860_read.exit.i98.i, label %land.lhs.true.i102.i

adp8860_read.exit.i98.i:                          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i97.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i97.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_clr_bits.exit107.i

land.lhs.true.i102.i:                             ; preds = %if.then30.i
  %conv2.i.i99.i = trunc i32 %call.i.i95.i to i8
  %and1.i100.i = and i8 %conv2.i.i99.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i100.i)
  %tobool3.not.i101.i = icmp eq i8 %and1.i100.i, 0
  br i1 %tobool3.not.i101.i, label %land.lhs.true.i102.i.adp8860_clr_bits.exit107.i_crit_edge, label %if.then.i105.i

land.lhs.true.i102.i.adp8860_clr_bits.exit107.i_crit_edge: ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_clr_bits.exit107.i

if.then.i105.i:                                   ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i103.i = and i8 %conv2.i.i99.i, -17
  %call.i2.i104.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %and6.i103.i) #9
  br label %adp8860_clr_bits.exit107.i

adp8860_clr_bits.exit107.i:                       ; preds = %if.then.i105.i, %land.lhs.true.i102.i.adp8860_clr_bits.exit107.i_crit_edge, %adp8860_read.exit.i98.i
  %ret.0.i106.i = phi i32 [ %call.i.i95.i, %adp8860_read.exit.i98.i ], [ %call.i2.i104.i, %if.then.i105.i ], [ 0, %land.lhs.true.i102.i.adp8860_clr_bits.exit107.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i94.i) #9
  %or32.i = or i32 %ret.0.i106.i, %ret.0113.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %adp8860_clr_bits.exit107.i, %if.else24.i.if.end34.i_crit_edge, %adp8860_set_bits.exit92.i
  %current_brightness114.i = phi ptr [ %current_brightness.i, %adp8860_set_bits.exit92.i ], [ %current_brightness115.i, %adp8860_clr_bits.exit107.i ], [ %current_brightness115.i, %if.else24.i.if.end34.i_crit_edge ]
  %ret.1.i = phi i32 [ %or23.i, %adp8860_set_bits.exit92.i ], [ %or32.i, %adp8860_clr_bits.exit107.i ], [ %ret.0113.i, %if.else24.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool35.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end34.i.adp8860_bl_set.exit_crit_edge

if.end34.i.adp8860_bl_set.exit_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_bl_set.exit

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %current_brightness114.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %current_brightness114.i, align 4
  br label %adp8860_bl_set.exit

adp8860_bl_set.exit:                              ; preds = %if.then36.i, %if.end34.i.adp8860_bl_set.exit_crit_edge
  ret i32 %ret.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adp8860_bl_get_brightness(ptr nocapture noundef readonly %bl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_brightness = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_brightness, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l3_dark_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 13) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l3_dark_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8860_store.exit_crit_edge

entry.adp8860_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 13, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %entry.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l3_dark_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 14) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l3_dark_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8860_store.exit_crit_edge

entry.adp8860_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %entry.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l2_office_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 11) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l2_office_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8860_store.exit_crit_edge

entry.adp8860_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 11, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %entry.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l2_office_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 12) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l2_office_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8860_store.exit_crit_edge

entry.adp8860_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 12, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %entry.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l1_daylight_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 9) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l1_daylight_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cached_daylight_max = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 5
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.adp8860_store.exit_crit_edge

if.end.adp8860_store.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %8 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 9, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %if.end.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %if.end.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

cleanup:                                          ; preds = %adp8860_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %adp8860_store.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l1_daylight_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.thread.i, label %if.end.i

adp8860_read.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 10) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv.i = and i32 %call.i.i, 255
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #9
  br label %adp8860_show.exit

adp8860_show.exit:                                ; preds = %if.end.i, %adp8860_read.exit.thread.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i.i, %adp8860_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_l1_daylight_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp8860_store.exit_crit_edge

entry.adp8860_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 10, i8 noundef zeroext %conv2.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %adp8860_store.exit

adp8860_store.exit:                               ; preds = %if.end.i, %entry.adp8860_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp8860_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_ambient_light_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 33) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp.i23, label %if.end, label %if.end7

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24, ptr noundef nonnull @.str.23, i32 noundef 34) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast42 = and i32 %call.i, 255
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %6 = shl i32 %call.i22, 8
  %shl = and i32 %6, 7936
  %add = or i32 %shl, %phi.cast42
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.end.thread
  %retval.0 = phi i32 [ %call12, %if.end7 ], [ %call.i22, %if.end ], [ %call.i, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_ambient_light_zone_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adp8860_read.exit.thread, label %if.end

adp8860_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 4) #12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %4 = lshr i32 %call.i, 3
  %5 = and i32 %4, 3
  %narrow = add nuw nsw i32 %5, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %narrow)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adp8860_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %adp8860_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_bl_ambient_light_zone_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !120
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
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %8, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.i, label %land.lhs.true.i

adp8860_read.exit.i:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %if.then2
  %conv2.i.i = trunc i32 %call.i.i to i8
  %and18.i = and i8 %conv2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18.i)
  %cmp.not.i.not = icmp eq i8 %and18.i, 0
  br i1 %cmp.not.i.not, label %if.then.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i = or i8 %conv2.i.i, 2
  %call.i20.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %or19.i) #9
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp5 = icmp ult i32 %4, 4
  br i1 %cmp5, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %driver_data.i.i.i32 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i32, align 4
  %lock.i33 = getelementptr inbounds %struct.adp8860_bl, ptr %12, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i33, i32 noundef 0) #9
  %call.i.i34 = call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i.i35, label %adp8860_read.exit.i37, label %land.lhs.true.i39

adp8860_read.exit.i37:                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i36 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i36, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_clr_bits.exit

land.lhs.true.i39:                                ; preds = %if.then6
  %conv2.i.i38 = trunc i32 %call.i.i34 to i8
  %and1.i = and i8 %conv2.i.i38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %tobool3.not.i = icmp eq i8 %and1.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i39.adp8860_clr_bits.exit_crit_edge, label %if.then.i40

land.lhs.true.i39.adp8860_clr_bits.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_clr_bits.exit

if.then.i40:                                      ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i = and i8 %conv2.i.i38, -3
  %call.i2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext %and6.i) #9
  br label %adp8860_clr_bits.exit

adp8860_clr_bits.exit:                            ; preds = %if.then.i40, %land.lhs.true.i39.adp8860_clr_bits.exit_crit_edge, %adp8860_read.exit.i37
  call void @mutex_unlock(ptr noundef %lock.i33) #9
  %lock = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i = icmp slt i32 %call.i42, 0
  br i1 %cmp.i, label %adp8860_read.exit, label %if.then12

adp8860_read.exit:                                ; preds = %adp8860_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef 4) #12
  br label %cleanup.sink.split

if.then12:                                        ; preds = %adp8860_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i = trunc i32 %call.i42 to i8
  %15 = and i8 %conv2.i, -25
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %.tr = trunc i32 %17 to i8
  %18 = shl i8 %.tr, 3
  %19 = add i8 %18, -8
  %conv15 = or i8 %19, %15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i43 = call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 4, i8 noundef zeroext %conv15) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %adp8860_read.exit, %if.then.i, %land.lhs.true.i.cleanup.sink.split_crit_edge, %adp8860_read.exit.i
  %lock.i.sink = phi ptr [ %lock.i, %adp8860_read.exit.i ], [ %lock.i, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ %lock.i, %if.then.i ], [ %lock, %adp8860_read.exit ], [ %lock, %if.then12 ]
  call void @mutex_unlock(ptr noundef %lock.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp8860_led_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %new_brightness = getelementptr inbounds %struct.adp8860_led, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %new_brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %new_brightness, align 4
  %work = getelementptr inbounds %struct.adp8860_led, ptr %led_cdev, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp8860_led_work(ptr nocapture noundef readonly %work) #2 align 64 {
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
  %conv = sub i8 27, %4
  %new_brightness = getelementptr i8, ptr %work, i32 48
  %5 = ptrtoint ptr %new_brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_brightness, align 4
  %shr = lshr i32 %6, 1
  %conv1 = trunc i32 %shr to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #9
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
define internal i32 @adp8860_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.i, label %land.lhs.true.i

adp8860_read.exit.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_clr_bits.exit

land.lhs.true.i:                                  ; preds = %entry
  %conv2.i.i = trunc i32 %call.i.i to i8
  %and1.i = and i8 %conv2.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %tobool3.not.i = icmp eq i8 %and1.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.adp8860_clr_bits.exit_crit_edge, label %if.then.i

land.lhs.true.i.adp8860_clr_bits.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_clr_bits.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i = and i8 %conv2.i.i, -33
  %call.i2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %and6.i) #9
  br label %adp8860_clr_bits.exit

adp8860_clr_bits.exit:                            ; preds = %if.then.i, %land.lhs.true.i.adp8860_clr_bits.exit_crit_edge, %adp8860_read.exit.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp8860_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.adp8860_bl, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp8860_read.exit.i, label %land.lhs.true.i

adp8860_read.exit.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 1) #12
  br label %adp8860_set_bits.exit

land.lhs.true.i:                                  ; preds = %entry
  %conv2.i.i = trunc i32 %call.i.i to i8
  %and18.i = and i8 %conv2.i.i, 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %and18.i)
  %cmp.not.i = icmp eq i8 %and18.i, 33
  br i1 %cmp.not.i, label %land.lhs.true.i.adp8860_set_bits.exit_crit_edge, label %if.then.i

land.lhs.true.i.adp8860_set_bits.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adp8860_set_bits.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i = or i8 %conv2.i.i, 33
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %or19.i) #9
  br label %adp8860_set_bits.exit

adp8860_set_bits.exit:                            ; preds = %if.then.i, %land.lhs.true.i.adp8860_set_bits.exit_crit_edge, %adp8860_read.exit.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_adp8860_bl__301_813_adp8860_driver_init6, !1, !"__initcall__kmod_adp8860_bl__301_813_adp8860_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 813, i32 1}
!2 = !{ptr @__exitcall_adp8860_driver_exit, !1, !"__exitcall_adp8860_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file302, !4, !"__UNIQUE_ID_file302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 815, i32 1}
!5 = !{ptr @__UNIQUE_ID_license303, !4, !"__UNIQUE_ID_license303", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 816, i32 1}
!8 = !{ptr @__UNIQUE_ID_description305, !9, !"__UNIQUE_ID_description305", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 817, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 805, i32 11}
!12 = !{ptr @adp8860_driver, !13, !"adp8860_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 803, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 664, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp8860_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp8860_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 669, i32 3}
!24 = !{ptr @adp8860_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adp8860_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 692, i32 3}
!28 = !{ptr @adp8860_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adp8860_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @adp8860_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 709, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 715, i32 3}
!35 = !{ptr @adp8860_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @adp8860_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 728, i32 3}
!39 = !{ptr @adp8860_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @adp8860_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 740, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @adp8860_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @adp8860_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 125, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @adp8860_read._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @adp8860_read._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @adp8860_bl_ops, !52, !"adp8860_bl_ops", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 374, i32 35}
!53 = !{ptr @adp8860_bl_attr_group, !54, !"adp8860_bl_attr_group", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 647, i32 37}
!55 = !{ptr @adp8860_bl_attributes, !56, !"adp8860_bl_attributes", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 633, i32 26}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 467, i32 8}
!59 = !{ptr @dev_attr_l3_dark_max, !58, !"dev_attr_l3_dark_max", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 434, i32 22}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 516, i32 8}
!64 = !{ptr @dev_attr_l3_dark_dim, !63, !"dev_attr_l3_dark_dim", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 481, i32 8}
!67 = !{ptr @dev_attr_l2_office_max, !66, !"dev_attr_l2_office_max", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 531, i32 8}
!70 = !{ptr @dev_attr_l2_office_dim, !69, !"dev_attr_l2_office_dim", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 501, i32 8}
!73 = !{ptr @dev_attr_l1_daylight_max, !72, !"dev_attr_l1_daylight_max", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 546, i32 8}
!76 = !{ptr @dev_attr_l1_daylight_dim, !75, !"dev_attr_l1_daylight_dim", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 574, i32 8}
!79 = !{ptr @dev_attr_ambient_light_level, !78, !"dev_attr_ambient_light_level", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 628, i32 8}
!82 = !{ptr @dev_attr_ambient_light_zone, !81, !"dev_attr_ambient_light_zone", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 237, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @adp8860_led_probe._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @adp8860_led_probe._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 248, i32 4}
!90 = !{ptr @adp8860_led_probe._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @adp8860_led_probe._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 255, i32 4}
!94 = !{ptr @adp8860_led_probe._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @adp8860_led_probe._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @adp8860_led_probe.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 268, i32 3}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 272, i32 4}
!101 = !{ptr @adp8860_led_probe._entry.43, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @adp8860_led_probe._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @adp8860_led_probe._entry.46, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 279, i32 4}
!105 = !{ptr @adp8860_led_probe._entry_ptr.47, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @adp8860_i2c_pm_ops, !107, !"adp8860_i2c_pm_ops", i1 false, i1 false}
!107 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 792, i32 8}
!108 = !{ptr @adp8860_id, !109, !"adp8860_id", i1 false, i1 false}
!109 = !{!"../drivers/video/backlight/adp8860_bl.c", i32 795, i32 35}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"auto-init"}
