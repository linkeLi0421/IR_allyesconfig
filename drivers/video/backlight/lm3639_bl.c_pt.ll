; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lm3639_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/lm3639_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.lm3639_chip_data = type { ptr, ptr, ptr, %struct.led_classdev, %struct.led_classdev, ptr, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lm3639_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_lm3639_bl__301_421_lm3639_i2c_driver_init6 = internal global ptr @lm3639_i2c_driver_init, section ".initcall6.init", align 4
@lm3639_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3639_probe, ptr @lm3639_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3639_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3639_i2c_driver_exit = internal global ptr @lm3639_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [78 x i8] c"lm3639_bl.description=Texas Instruments Backlight+Flash LED driver for LM3639\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [55 x i8] c"lm3639_bl.author=Daniel Jeong <gshark.jeong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [47 x i8] c"lm3639_bl.author=Ldd Mlp <ldd-mlp@list.ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [49 x i8] c"lm3639_bl.file=drivers/video/backlight/lm3639_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"lm3639_bl.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lm3639_bl\00", [22 x i8] zeroinitializer }, align 32
@lm3639_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3639_bl\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3639_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c functionality check fail.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3639_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/lm3639_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr = internal global ptr @lm3639_probe._entry, section ".printk_index", align 4
@lm3639_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Needs Platform Data.\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.8 = internal global ptr @lm3639_probe._entry.6, section ".printk_index", align 4
@lm3639_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3639_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lm3639_bl:325:(&lm3639_regmap)->lock\00", [59 x i8] zeroinitializer }, align 32
@lm3639_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail : allocate register map: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.12 = internal global ptr @lm3639_probe._entry.10, section ".printk_index", align 4
@lm3639_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fail : chip init\0A\00", [46 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.15 = internal global ptr @lm3639_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3639_bled\00", [20 x i8] zeroinitializer }, align 32
@lm3639_bled_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @lm3639_bled_update_status, ptr @lm3639_bled_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@lm3639_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail : backlight register\0A\00", [37 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.19 = internal global ptr @lm3639_probe._entry.17, section ".printk_index", align 4
@dev_attr_bled_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @lm3639_bled_mode_store }, [36 x i8] zeroinitializer }, align 32
@lm3639_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed : add sysfs entries\0A\00", [36 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.22 = internal global ptr @lm3639_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3639_flash\00", [19 x i8] zeroinitializer }, align 32
@lm3639_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail : flash register\0A\00", [41 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.26 = internal global ptr @lm3639_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3639_torch\00", [19 x i8] zeroinitializer }, align 32
@lm3639_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail : torch register\0A\00", [41 x i8] zeroinitializer }, align 32
@lm3639_probe._entry_ptr.30 = internal global ptr @lm3639_probe._entry.28, section ".printk_index", align 4
@lm3639_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c failed to access register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3639_chip_init\00", [47 x i8] zeroinitializer }, align 32
@lm3639_chip_init._entry_ptr = internal global ptr @lm3639_chip_init._entry, section ".printk_index", align 4
@lm3639_bled_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 106, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last flag is 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lm3639_bled_update_status\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm3639_bled_update_status._entry_ptr = internal global ptr @lm3639_bled_update_status._entry, section ".printk_index", align 4
@lm3639_bled_update_status._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No pwm control func. in plat-data\0A\00", [61 x i8] zeroinitializer }, align 32
@lm3639_bled_update_status._entry_ptr.38 = internal global ptr @lm3639_bled_update_status._entry.36, section ".printk_index", align 4
@lm3639_bled_update_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c failed to access registers\0A\00", [32 x i8] zeroinitializer }, align 32
@lm3639_bled_update_status._entry_ptr.41 = internal global ptr @lm3639_bled_update_status._entry.39, section ".printk_index", align 4
@lm3639_bled_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.42, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lm3639_bled_get_brightness\00", [37 x i8] zeroinitializer }, align 32
@lm3639_bled_get_brightness._entry_ptr = internal global ptr @lm3639_bled_get_brightness._entry, section ".printk_index", align 4
@lm3639_bled_get_brightness._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.42, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lm3639_bled_get_brightness._entry_ptr.44 = internal global ptr @lm3639_bled_get_brightness._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bled_mode\00", [22 x i8] zeroinitializer }, align 32
@lm3639_bled_mode_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:i2c access fail to register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lm3639_bled_mode_store\00", [41 x i8] zeroinitializer }, align 32
@lm3639_bled_mode_store._entry_ptr = internal global ptr @lm3639_bled_mode_store._entry, section ".printk_index", align 4
@lm3639_bled_mode_store._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:input conversion fail\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3639_bled_mode_store._entry_ptr.50 = internal global ptr @lm3639_bled_mode_store._entry.48, section ".printk_index", align 4
@lm3639_flash_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.51, ptr @.str.3, i32 269, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lm3639_flash_brightness_set\00", [36 x i8] zeroinitializer }, align 32
@lm3639_flash_brightness_set._entry_ptr = internal global ptr @lm3639_flash_brightness_set._entry, section ".printk_index", align 4
@lm3639_flash_brightness_set._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.51, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lm3639_flash_brightness_set._entry_ptr.53 = internal global ptr @lm3639_flash_brightness_set._entry.52, section ".printk_index", align 4
@lm3639_torch_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.54, ptr @.str.3, i32 232, ptr @.str.35, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lm3639_torch_brightness_set\00", [36 x i8] zeroinitializer }, align 32
@lm3639_torch_brightness_set._entry_ptr = internal global ptr @lm3639_torch_brightness_set._entry, section ".printk_index", align 4
@lm3639_torch_brightness_set._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.54, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lm3639_torch_brightness_set._entry_ptr.56 = internal global ptr @lm3639_torch_brightness_set._entry.55, section ".printk_index", align 4
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"lm3639_i2c_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 412, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 414, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"lm3639_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 406, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 308, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 313, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"lm3639_regmap\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 293, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 325, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 328, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 337, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 346, i32 49 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"lm3639_bled_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 173, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 350, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"dev_attr_bled_mode\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 357, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 362, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 368, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 373, i32 27 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 379, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 89, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 106, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 114, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 136, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 151, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 169, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 216, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 207, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 211, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 269, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 290, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 232, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private constant [39 x i8] c"../drivers/video/backlight/lm3639_bl.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 252, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_lm3639_i2c_driver_exit, ptr @__initcall__kmod_lm3639_bl__301_421_lm3639_i2c_driver_init6, ptr @lm3639_bled_get_brightness._entry, ptr @lm3639_bled_get_brightness._entry.43, ptr @lm3639_bled_get_brightness._entry_ptr, ptr @lm3639_bled_get_brightness._entry_ptr.44, ptr @lm3639_bled_mode_store._entry, ptr @lm3639_bled_mode_store._entry.48, ptr @lm3639_bled_mode_store._entry_ptr, ptr @lm3639_bled_mode_store._entry_ptr.50, ptr @lm3639_bled_update_status._entry, ptr @lm3639_bled_update_status._entry.36, ptr @lm3639_bled_update_status._entry.39, ptr @lm3639_bled_update_status._entry_ptr, ptr @lm3639_bled_update_status._entry_ptr.38, ptr @lm3639_bled_update_status._entry_ptr.41, ptr @lm3639_chip_init._entry, ptr @lm3639_chip_init._entry_ptr, ptr @lm3639_flash_brightness_set._entry, ptr @lm3639_flash_brightness_set._entry.52, ptr @lm3639_flash_brightness_set._entry_ptr, ptr @lm3639_flash_brightness_set._entry_ptr.53, ptr @lm3639_i2c_driver_exit, ptr @lm3639_probe._entry, ptr @lm3639_probe._entry.10, ptr @lm3639_probe._entry.13, ptr @lm3639_probe._entry.17, ptr @lm3639_probe._entry.20, ptr @lm3639_probe._entry.24, ptr @lm3639_probe._entry.28, ptr @lm3639_probe._entry.6, ptr @lm3639_probe._entry_ptr, ptr @lm3639_probe._entry_ptr.12, ptr @lm3639_probe._entry_ptr.15, ptr @lm3639_probe._entry_ptr.19, ptr @lm3639_probe._entry_ptr.22, ptr @lm3639_probe._entry_ptr.26, ptr @lm3639_probe._entry_ptr.30, ptr @lm3639_probe._entry_ptr.8, ptr @lm3639_torch_brightness_set._entry, ptr @lm3639_torch_brightness_set._entry.55, ptr @lm3639_torch_brightness_set._entry_ptr, ptr @lm3639_torch_brightness_set._entry_ptr.56, ptr @lm3639_i2c_driver, ptr @.str, ptr @lm3639_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lm3639_probe._key, ptr @lm3639_regmap, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @lm3639_bled_ops, ptr @.str.18, ptr @dev_attr_bled_mode, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.54], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bled_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_update_status._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_update_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_get_brightness._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_mode_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_bled_mode_store._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_flash_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_flash_brightness_set._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_torch_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3639_torch_brightness_set._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3639_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3639_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3639_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #5
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %props, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 20)
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %7) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 828, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %pdata14 = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %pdata14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %pdata14, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %call.i, align 4
  %call17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3639_regmap, ptr noundef nonnull @lm3639_probe._key, ptr noundef nonnull @.str.9) #5
  %regmap = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %15) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %pdata14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata14, align 4
  %pin_pwm.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %pin_pwm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin_pwm.i, align 4
  %call.i.i141 = tail call i32 @regmap_update_bits_base(ptr noundef %call17, i32 noundef 2, i32 noundef 8, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %cmp.i142 = icmp slt i32 %call.i.i141, 0
  br i1 %cmp.i142, label %if.end27.do.end33_crit_edge, label %if.end.i

if.end27.do.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

if.end.i:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %pin_pwm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin_pwm.i, align 4
  %and.i143 = and i32 %22, 64
  %pin_strobe.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %pin_strobe.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pin_strobe.i, align 4
  %or.i = or i32 %and.i143, %24
  %pin_tx.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %pin_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_tx.i, align 4
  %or3.i = or i32 %or.i, %26
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i60.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 9, i32 noundef 124, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %cmp6.i = icmp slt i32 %call.i60.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end33_crit_edge, label %if.end8.i

if.end.i.do.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

if.end8.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %init_brt_led.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 1
  %31 = ptrtoint ptr %init_brt_led.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %init_brt_led.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 5, i32 noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end8.i.do.end33_crit_edge, label %if.end13.i

if.end8.i.do.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

if.end13.i:                                       ; preds = %if.end8.i
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %35 = ptrtoint ptr %init_brt_led.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %init_brt_led.i, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 4, i32 noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end13.i.do.end33_crit_edge, label %if.end19.i

if.end13.i.do.end33_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

if.end19.i:                                       ; preds = %if.end13.i
  %37 = ptrtoint ptr %init_brt_led.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %init_brt_led.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp ne i32 %38, 0
  %fled_pins.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 5
  %39 = ptrtoint ptr %fled_pins.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fled_pins.i, align 4
  %bled_pins.i = getelementptr inbounds %struct.lm3639_platform_data, ptr %18, i32 0, i32 6
  %41 = ptrtoint ptr %bled_pins.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bled_pins.i, align 4
  %or25.i = or i32 %42, %40
  %or26.i = zext i1 %tobool.not.i to i32
  %reg_val.0.i = or i32 %or25.i, %or26.i
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 10, i32 noundef 121, i32 noundef %reg_val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp30.i = icmp slt i32 %call.i61.i, 0
  br i1 %cmp30.i, label %if.end19.i.do.end33_crit_edge, label %if.end35

if.end19.i.do.end33_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

do.end33:                                         ; preds = %if.end19.i.do.end33_crit_edge, %if.end13.i.do.end33_crit_edge, %if.end8.i.do.end33_crit_edge, %if.end.i.do.end33_crit_edge, %if.end27.do.end33_crit_edge
  %ret.0.i = phi i32 [ %call.i.i141, %if.end27.do.end33_crit_edge ], [ %call.i60.i, %if.end.i.do.end33_crit_edge ], [ %call10.i, %if.end8.i.do.end33_crit_edge ], [ %call16.i, %if.end13.i.do.end33_crit_edge ], [ %call.i61.i, %if.end19.i.do.end33_crit_edge ]
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.31) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end19.i
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %3, align 4
  %init_brt_led = getelementptr inbounds %struct.lm3639_platform_data, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %init_brt_led to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %init_brt_led, align 4
  %50 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %props, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %2, align 4
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %call38 = call ptr @devm_backlight_device_register(ptr noundef %55, ptr noundef nonnull @.str.16, ptr noundef %55, ptr noundef nonnull %call.i, ptr noundef nonnull @lm3639_bled_ops, ptr noundef nonnull %props) #5
  %bled = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %bled to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call38, ptr %bled, align 4
  %cmp.i144 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %57 = ptrtoint ptr %bled to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bled, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end35
  %dev50 = getelementptr inbounds %struct.backlight_device, ptr %call38, i32 0, i32 6
  %call51 = call i32 @device_create_file(ptr noundef %dev50, ptr noundef nonnull @dev_attr_bled_mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %cdev_flash = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 3
  %60 = ptrtoint ptr %cdev_flash to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.23, ptr %cdev_flash, align 4
  %max_brightness60 = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %max_brightness60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 16, ptr %max_brightness60, align 4
  %brightness_set = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 3, i32 5
  %62 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @lm3639_flash_brightness_set, ptr %brightness_set, align 4
  %call.i145 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_flash, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp65 = icmp slt i32 %call.i145, 0
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %err_flash

if.end71:                                         ; preds = %if.end58
  %cdev_torch = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %cdev_torch to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.27, ptr %cdev_torch, align 4
  %max_brightness74 = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 4, i32 2
  %64 = ptrtoint ptr %max_brightness74 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %max_brightness74, align 4
  %brightness_set76 = getelementptr inbounds %struct.lm3639_chip_data, ptr %call.i, i32 0, i32 4, i32 5
  %65 = ptrtoint ptr %brightness_set76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @lm3639_torch_brightness_set, ptr %brightness_set76, align 4
  %call.i146 = call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_torch, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp80 = icmp slt i32 %call.i146, 0
  br i1 %cmp80, label %do.end84, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end84:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  call void @led_classdev_unregister(ptr noundef %cdev_flash) #5
  br label %err_flash

err_flash:                                        ; preds = %do.end84, %do.end69
  %ret.0 = phi i32 [ %call.i145, %do.end69 ], [ %call.i146, %do.end84 ]
  %66 = ptrtoint ptr %bled to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bled, align 4
  %dev89 = getelementptr inbounds %struct.backlight_device, ptr %67, i32 0, i32 6
  call void @device_remove_file(ptr noundef %dev89, ptr noundef nonnull @dev_attr_bled_mode) #5
  br label %cleanup

cleanup:                                          ; preds = %err_flash, %if.end71.cleanup_crit_edge, %do.end56, %do.end44, %do.end33, %if.then20, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -61, %do.end6 ], [ %15, %if.then20 ], [ -95, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ %ret.0.i, %do.end33 ], [ %59, %do.end44 ], [ %call51, %do.end56 ], [ %ret.0, %err_flash ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.lm3639_chip_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 10, i32 noundef 0) #5
  %cdev_torch = getelementptr inbounds %struct.lm3639_chip_data, ptr %1, i32 0, i32 4
  tail call void @led_classdev_unregister(ptr noundef %cdev_torch) #5
  %cdev_flash = getelementptr inbounds %struct.lm3639_chip_data, ptr %1, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %cdev_flash) #5
  %bled = getelementptr inbounds %struct.lm3639_chip_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bled, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_bled_mode) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm3639_flash_brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !128
  %add.ptr = getelementptr i8, ptr %cdev, i32 -12
  %regmap = getelementptr i8, ptr %cdev, i32 800
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 11, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end23_crit_edge, label %if.end

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %4) #8
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 10, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end3.do.end23_crit_edge, label %if.end8

if.end3.do.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %sub = add i32 %brightness, -1
  %call.i36 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 15, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp13 = icmp slt i32 %call.i36, 0
  br i1 %cmp13, label %if.end10.do.end23_crit_edge, label %if.end15

if.end10.do.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end15:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i37 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 10, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp18 = icmp slt i32 %call.i37, 0
  br i1 %cmp18, label %if.end15.do.end23_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.do.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end23:                                         ; preds = %if.end15.do.end23_crit_edge, %if.end10.do.end23_crit_edge, %if.end3.do.end23_crit_edge, %entry.do.end23_crit_edge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm3639_torch_brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !128
  %add.ptr = getelementptr i8, ptr %cdev, i32 -412
  %regmap = getelementptr i8, ptr %cdev, i32 400
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 11, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end23_crit_edge, label %if.end

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %4) #8
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end3
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 10, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then4.do.end23_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.do.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end10:                                         ; preds = %if.end3
  %sub = shl i32 %brightness, 4
  %shl = add i32 %sub, -16
  %call.i36 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 6, i32 noundef 112, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp13 = icmp slt i32 %call.i36, 0
  br i1 %cmp13, label %if.end10.do.end23_crit_edge, label %if.end15

if.end10.do.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i37 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 10, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp18 = icmp slt i32 %call.i37, 0
  br i1 %cmp18, label %if.end15.do.end23_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.do.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

do.end23:                                         ; preds = %if.end15.do.end23_crit_edge, %if.end10.do.end23_crit_edge, %if.then4.do.end23_crit_edge, %entry.do.end23_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end15.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_bled_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !128
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.lm3639_chip_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata1, align 4
  %regmap = getelementptr inbounds %struct.lm3639_chip_data, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 11, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.do.end49_crit_edge, label %if.end

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.not = icmp eq i32 %8, 0
  br i1 %cmp3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %8) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %pin_pwm = getelementptr inbounds %struct.lm3639_platform_data, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %pin_pwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pin_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %if.end5
  %pwm_set_intensity = getelementptr inbounds %struct.lm3639_platform_data, ptr %4, i32 0, i32 8
  %13 = ptrtoint ptr %pwm_set_intensity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_set_intensity, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %do.end12, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bl, align 8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  call void %14(i32 noundef %16, i32 noundef %18) #5
  br label %cleanup

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.37) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bl, align 8
  %call21 = call i32 @regmap_write(ptr noundef %22, i32 noundef 5, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end17.do.end49_crit_edge, label %if.end24

if.end17.do.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

if.end24:                                         ; preds = %if.end17
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bl, align 8
  %call28 = call i32 @regmap_write(ptr noundef %26, i32 noundef 4, i32 noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end24.do.end49_crit_edge, label %if.end31

if.end24.do.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

if.end31:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool34.not = icmp ne i32 %30, 0
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %. = zext i1 %tobool34.not to i32
  %call.i78 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 10, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp42 = icmp slt i32 %call.i78, 0
  br i1 %cmp42, label %if.end31.do.end49_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31.do.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

do.end49:                                         ; preds = %if.end31.do.end49_crit_edge, %if.end24.do.end49_crit_edge, %if.end17.do.end49_crit_edge, %entry.do.end49_crit_edge
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.40) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end31.cleanup_crit_edge, %do.end12, %if.then8
  %35 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.0 = load i32, ptr %bl, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_bled_get_brightness(ptr nocapture noundef %bl) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !128
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.lm3639_chip_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata1, align 4
  %pin_pwm = getelementptr inbounds %struct.lm3639_platform_data, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pin_pwm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %pwm_get_intensity = getelementptr inbounds %struct.lm3639_platform_data, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %pwm_get_intensity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwm_get_intensity, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %8() #5
  %9 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %bl, align 8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then3
  %12 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bl, align 8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.lm3639_chip_data, ptr %2, i32 0, i32 5
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %15, i32 noundef 2, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.do.end29_crit_edge, label %if.end11

if.end8.do.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

if.end11:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_val, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %. = select i1 %tobool12.not, i32 4, i32 5
  %call18 = call i32 @regmap_read(ptr noundef %19, i32 noundef %., ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 0
  br i1 %cmp20, label %if.end11.do.end29_crit_edge, label %if.end22

if.end11.do.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_val, align 4
  %22 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bl, align 8
  br label %cleanup

do.end29:                                         ; preds = %if.end11.do.end29_crit_edge, %if.end8.do.end29_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.31) #8
  %25 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bl, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end22, %if.end
  %retval.0 = phi i32 [ %13, %if.end ], [ %26, %do.end29 ], [ %21, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3639_bled_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devAttr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %state, align 4, !annotation !128
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %regmap = getelementptr inbounds %struct.lm3639_chip_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %. = select i1 %tobool2.not, i32 0, i32 16
  %call.i23 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2, i32 noundef 16, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp = icmp slt i32 %call.i23, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %if.end.cleanup.sink.split_crit_edge ], [ @.str.49, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i23, %if.end.cleanup.sink.split_crit_edge ], [ %call1, %entry.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %.str.49.sink, ptr noundef nonnull @.str.47) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_lm3639_bl__301_421_lm3639_i2c_driver_init6, !1, !"__initcall__kmod_lm3639_bl__301_421_lm3639_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 421, i32 1}
!2 = !{ptr @__exitcall_lm3639_i2c_driver_exit, !1, !"__exitcall_lm3639_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 423, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 424, i32 1}
!7 = !{ptr @__UNIQUE_ID_author304, !8, !"__UNIQUE_ID_author304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 425, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 426, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 414, i32 14}
!14 = !{ptr @lm3639_i2c_driver, !15, !"lm3639_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 412, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 308, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm3639_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm3639_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 313, i32 3}
!26 = !{ptr @lm3639_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lm3639_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @lm3639_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 325, i32 18}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 328, i32 3}
!33 = !{ptr @lm3639_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lm3639_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 337, i32 3}
!37 = !{ptr @lm3639_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lm3639_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 346, i32 49}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 350, i32 3}
!43 = !{ptr @lm3639_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lm3639_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 357, i32 3}
!47 = !{ptr @lm3639_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lm3639_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 362, i32 27}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 368, i32 3}
!53 = !{ptr @lm3639_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lm3639_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 373, i32 27}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 379, i32 3}
!59 = !{ptr @lm3639_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lm3639_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @lm3639_regmap, !62, !"lm3639_regmap", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 293, i32 35}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 89, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lm3639_chip_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lm3639_chip_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lm3639_bled_ops, !69, !"lm3639_bled_ops", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 173, i32 35}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 106, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @lm3639_bled_update_status._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @lm3639_bled_update_status._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 114, i32 4}
!78 = !{ptr @lm3639_bled_update_status._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lm3639_bled_update_status._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 136, i32 2}
!82 = !{ptr @lm3639_bled_update_status._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lm3639_bled_update_status._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 151, i32 4}
!86 = !{ptr @lm3639_bled_get_brightness._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @lm3639_bled_get_brightness._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @lm3639_bled_get_brightness._entry.43, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 169, i32 2}
!90 = !{ptr @lm3639_bled_get_brightness._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 216, i32 8}
!93 = !{ptr @dev_attr_bled_mode, !92, !"dev_attr_bled_mode", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 207, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lm3639_bled_mode_store._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lm3639_bled_mode_store._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 211, i32 2}
!101 = !{ptr @lm3639_bled_mode_store._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lm3639_bled_mode_store._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 269, i32 3}
!105 = !{ptr @lm3639_flash_brightness_set._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lm3639_flash_brightness_set._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @lm3639_flash_brightness_set._entry.52, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 290, i32 2}
!109 = !{ptr @lm3639_flash_brightness_set._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 232, i32 3}
!112 = !{ptr @lm3639_torch_brightness_set._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @lm3639_torch_brightness_set._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @lm3639_torch_brightness_set._entry.55, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 252, i32 2}
!116 = !{ptr @lm3639_torch_brightness_set._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @lm3639_id, !118, !"lm3639_id", i1 false, i1 false}
!118 = !{!"../drivers/video/backlight/lm3639_bl.c", i32 406, i32 35}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
