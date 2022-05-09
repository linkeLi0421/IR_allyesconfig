; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp8860.c_pt.bc'
source_filename = "../drivers/leds/leds-lp8860.c"
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
%struct.reg_default = type { i32, i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.lp8860_led = type { %struct.mutex, ptr, %struct.led_classdev, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_lp8860__288_489_lp8860_driver_init6 = internal global ptr @lp8860_driver_init, section ".initcall6.init", align 4
@lp8860_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp8860_probe, ptr @lp8860_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp8860_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp8860_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp8860_driver_exit = internal global ptr @lp8860_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"leds_lp8860.description=Texas Instruments LP8860 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"leds_lp8860.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_lp8860.file=drivers/leds/leds-lp8860\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"leds_lp8860.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp8860\00", [25 x i8] zeroinitializer }, align 32
@of_lp8860_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8860\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp8860_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8860\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lp8860_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get enable gpio: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp8860_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp8860.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8860_probe._entry_ptr = internal global ptr @lp8860_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@lp8860_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lp8860_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp8860_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp8860_reg_defs, i32 17, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"leds_lp8860:414:(&lp8860_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@lp8860_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lp8860_probe._entry_ptr.12 = internal global ptr @lp8860_probe._entry.10, section ".printk_index", align 4
@lp8860_probe._key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp8860_eeprom_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 120, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp8860_eeprom_defs, i32 25, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"leds_lp8860:422:(&lp8860_eeprom_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@lp8860_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lp8860_probe._entry_ptr.16 = internal global ptr @lp8860_probe._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c":display_cluster\00", [47 x i8] zeroinitializer }, align 32
@lp8860_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lp8860_probe._entry_ptr.20 = internal global ptr @lp8860_probe._entry.18, section ".printk_index", align 4
@lp8860_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot read/clear faults\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lp8860_brightness_set\00", [42 x i8] zeroinitializer }, align 32
@lp8860_brightness_set._entry_ptr = internal global ptr @lp8860_brightness_set._entry, section ".printk_index", align 4
@lp8860_brightness_set._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot write CL1 MSB\0A\00", [42 x i8] zeroinitializer }, align 32
@lp8860_brightness_set._entry_ptr.25 = internal global ptr @lp8860_brightness_set._entry.23, section ".printk_index", align 4
@lp8860_brightness_set._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot write CL1 LSB\0A\00", [42 x i8] zeroinitializer }, align 32
@lp8860_brightness_set._entry_ptr.28 = internal global ptr @lp8860_brightness_set._entry.26, section ".printk_index", align 4
@lp8860_reg_defs = internal constant { [17 x %struct.reg_default], [56 x i8] } { [17 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 25, i32 128 }, %struct.reg_default { i32 26, i32 0 }], [56 x i8] zeroinitializer }, align 32
@lp8860_eeprom_defs = internal constant { [25 x %struct.reg_default], [56 x i8] } { [25 x %struct.reg_default] [%struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }], [56 x i8] zeroinitializer }, align 32
@lp8860_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp8860_init\00", [20 x i8] zeroinitializer }, align 32
@lp8860_init._entry_ptr = internal global ptr @lp8860_init._entry, section ".printk_index", align 4
@lp8860_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed unlocking EEPROM\0A\00", [39 x i8] zeroinitializer }, align 32
@lp8860_init._entry_ptr.33 = internal global ptr @lp8860_init._entry.31, section ".printk_index", align 4
@lp8860_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed writing EEPROM\0A\00", [41 x i8] zeroinitializer }, align 32
@lp8860_init._entry_ptr.36 = internal global ptr @lp8860_init._entry.34, section ".printk_index", align 4
@lp8860_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed programming EEPROM\0A\00", [37 x i8] zeroinitializer }, align 32
@lp8860_init._entry_ptr.39 = internal global ptr @lp8860_init._entry.37, section ".printk_index", align 4
@lp8860_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.4, i32 304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@lp8860_init._entry_ptr.42 = internal global ptr @lp8860_init._entry.40, section ".printk_index", align 4
@lp8860_unlock_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EEPROM Unlock failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lp8860_unlock_eeprom\00", [43 x i8] zeroinitializer }, align 32
@lp8860_unlock_eeprom._entry_ptr = internal global ptr @lp8860_unlock_eeprom._entry, section ".printk_index", align 4
@lp8860_unlock_eeprom._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lp8860_unlock_eeprom._entry_ptr.46 = internal global ptr @lp8860_unlock_eeprom._entry.45, section ".printk_index", align 4
@lp8860_unlock_eeprom._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lp8860_unlock_eeprom._entry_ptr.48 = internal global ptr @lp8860_unlock_eeprom._entry.47, section ".printk_index", align 4
@lp8860_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.49, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lp8860_remove\00", [18 x i8] zeroinitializer }, align 32
@lp8860_remove._entry_ptr = internal global ptr @lp8860_remove._entry, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"lp8860_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 480, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 482, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"of_lp8860_leds_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 474, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"lp8860_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 468, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 396, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 399, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 403, i32 52 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 410, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"lp8860_regmap_config\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 330, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 414, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 417, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"lp8860_eeprom_regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 368, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 422, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 425, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 436, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 441, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 217, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 224, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 231, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"lp8860_reg_defs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 310, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"lp8860_eeprom_defs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 340, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 247, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 266, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 276, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 289, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 303, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 151, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 159, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 166, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [30 x i8] c"../drivers/leds/leds-lp8860.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 459, i32 4 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8860_driver_exit, ptr @__initcall__kmod_leds_lp8860__288_489_lp8860_driver_init6, ptr @lp8860_brightness_set._entry, ptr @lp8860_brightness_set._entry.23, ptr @lp8860_brightness_set._entry.26, ptr @lp8860_brightness_set._entry_ptr, ptr @lp8860_brightness_set._entry_ptr.25, ptr @lp8860_brightness_set._entry_ptr.28, ptr @lp8860_driver_exit, ptr @lp8860_init._entry, ptr @lp8860_init._entry.31, ptr @lp8860_init._entry.34, ptr @lp8860_init._entry.37, ptr @lp8860_init._entry.40, ptr @lp8860_init._entry_ptr, ptr @lp8860_init._entry_ptr.33, ptr @lp8860_init._entry_ptr.36, ptr @lp8860_init._entry_ptr.39, ptr @lp8860_init._entry_ptr.42, ptr @lp8860_probe._entry, ptr @lp8860_probe._entry.10, ptr @lp8860_probe._entry.15, ptr @lp8860_probe._entry.18, ptr @lp8860_probe._entry_ptr, ptr @lp8860_probe._entry_ptr.12, ptr @lp8860_probe._entry_ptr.16, ptr @lp8860_probe._entry_ptr.20, ptr @lp8860_remove._entry, ptr @lp8860_remove._entry_ptr, ptr @lp8860_unlock_eeprom._entry, ptr @lp8860_unlock_eeprom._entry.45, ptr @lp8860_unlock_eeprom._entry.47, ptr @lp8860_unlock_eeprom._entry_ptr, ptr @lp8860_unlock_eeprom._entry_ptr.46, ptr @lp8860_unlock_eeprom._entry_ptr.48, ptr @lp8860_driver, ptr @.str, ptr @of_lp8860_leds_match, ptr @lp8860_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lp8860_probe.__key, ptr @.str.8, ptr @lp8860_probe._key, ptr @lp8860_regmap_config, ptr @.str.9, ptr @.str.11, ptr @lp8860_probe._key.13, ptr @lp8860_eeprom_regmap_config, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @lp8860_reg_defs, ptr @lp8860_eeprom_defs, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.49], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp8860_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_eeprom_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_brightness_set._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_brightness_set._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_reg_defs to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_eeprom_defs to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_unlock_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_unlock_eeprom._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_unlock_eeprom._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8860_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8860_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp8860_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8860_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lp8860_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8860_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %read_buf.i.i = alloca i32, align 4
  %read_buf.i = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #5
  %2 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %call3 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %enable_gpio = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  %regulator = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 6
  %cmp.i113 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i113, ptr null, ptr %call17
  %5 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select, ptr %regulator, align 4
  %client23 = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %client23 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client23, align 4
  %led_dev = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 2
  %brightness_set_blocking = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lp8860_brightness_set, ptr %brightness_set_blocking, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @lp8860_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call27 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lp8860_regmap_config, ptr noundef nonnull @lp8860_probe._key, ptr noundef nonnull @.str.9) #5
  %regmap = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %regmap, align 4
  %cmp.i114 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %10) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end15
  %call39 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lp8860_eeprom_regmap_config, ptr noundef nonnull @lp8860_probe._key.13, ptr noundef nonnull @.str.14) #5
  %eeprom_regmap = getelementptr inbounds %struct.lp8860_led, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call39, ptr %eeprom_regmap, align 4
  %cmp.i115 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %12) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i) #5
  %13 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %read_buf.i, align 4, !annotation !120
  %14 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regulator, align 4
  %tobool.not.i116 = icmp eq ptr %15, null
  br i1 %tobool.not.i116, label %if.end49.if.end4.i_crit_edge, label %if.then.i

if.end49.if.end4.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end49
  %call.i117 = tail call i32 @regulator_enable(ptr noundef nonnull %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool2.not.i = icmp eq i32 %call.i117, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %do.end.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client23, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #8
  br label %lp8860_init.exit.thread

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end49.if.end4.i_crit_edge
  %18 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_gpio, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then6.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %19, i32 noundef 1) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end9.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  %20 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %read_buf.i.i, align 4, !annotation !120
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 16, ptr noundef nonnull %read_buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.lp8860_fault_check.exit.thread.i_crit_edge

if.end9.i.lp8860_fault_check.exit.thread.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8860_fault_check.exit.thread.i

if.end.i.i:                                       ; preds = %if.end9.i
  %23 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read_buf.i.i, align 4
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 15, ptr noundef nonnull %read_buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.lp8860_fault_check.exit.thread.i_crit_edge

if.end.i.i.lp8860_fault_check.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8860_fault_check.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %27 = ptrtoint ptr %read_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_buf.i.i, align 4
  %or.i.i = or i32 %28, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool6.not.i.i = icmp eq i32 %or.i.i, 0
  br i1 %tobool6.not.i.i, label %lp8860_fault_check.exit.thread117.i, label %lp8860_fault_check.exit.i

lp8860_fault_check.exit.thread117.i:              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  br label %if.end13.i

lp8860_fault_check.exit.thread.i:                 ; preds = %if.end.i.i.lp8860_fault_check.exit.thread.i_crit_edge, %if.end9.i.lp8860_fault_check.exit.thread.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ %call2.i.i, %if.end.i.i.lp8860_fault_check.exit.thread.i_crit_edge ], [ %call.i.i, %if.end9.i.lp8860_fault_check.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  br label %if.then53.i

lp8860_fault_check.exit.i:                        ; preds = %if.end5.i.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call9.i.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 17, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool11.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool11.not.i, label %lp8860_fault_check.exit.i.if.end13.i_crit_edge, label %lp8860_fault_check.exit.i.if.then53.i_crit_edge

lp8860_fault_check.exit.i.if.then53.i_crit_edge:  ; preds = %lp8860_fault_check.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53.i

lp8860_fault_check.exit.i.if.end13.i_crit_edge:   ; preds = %lp8860_fault_check.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %lp8860_fault_check.exit.i.if.end13.i_crit_edge, %lp8860_fault_check.exit.thread117.i
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call14.i = call i32 @regmap_read(ptr noundef %32, i32 noundef 14, ptr noundef nonnull %read_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.if.then53.i_crit_edge

if.end13.i.if.then53.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53.i

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = call fastcc i32 @lp8860_unlock_eeprom(ptr noundef nonnull %call.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %for.cond.preheader.i, label %do.end23.i

for.cond.preheader.i:                             ; preds = %if.end17.i
  %33 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eeprom_regmap, align 4
  %call29.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 96, i32 noundef 237) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %for.cond.i, label %for.cond.preheader.i.do.end34.i_crit_edge

for.cond.preheader.i.do.end34.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client23, align 4
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.32) #8
  br label %if.then53.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %37 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %eeprom_regmap, align 4
  %call29.1.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 97, i32 noundef 223) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1.i)
  %tobool30.not.1.i = icmp eq i32 %call29.1.i, 0
  br i1 %tobool30.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end34.i_crit_edge

for.cond.i.do.end34.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %39 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eeprom_regmap, align 4
  %call29.2.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 98, i32 noundef 220) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2.i)
  %tobool30.not.2.i = icmp eq i32 %call29.2.i, 0
  br i1 %tobool30.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end34.i_crit_edge

for.cond.1.i.do.end34.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %41 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %eeprom_regmap, align 4
  %call29.3.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 99, i32 noundef 240) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3.i)
  %tobool30.not.3.i = icmp eq i32 %call29.3.i, 0
  br i1 %tobool30.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end34.i_crit_edge

for.cond.2.i.do.end34.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %43 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %eeprom_regmap, align 4
  %call29.4.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 100, i32 noundef 223) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.4.i)
  %tobool30.not.4.i = icmp eq i32 %call29.4.i, 0
  br i1 %tobool30.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.end34.i_crit_edge

for.cond.3.i.do.end34.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %45 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %eeprom_regmap, align 4
  %call29.5.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 101, i32 noundef 229) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.5.i)
  %tobool30.not.5.i = icmp eq i32 %call29.5.i, 0
  br i1 %tobool30.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.end34.i_crit_edge

for.cond.4.i.do.end34.i_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %47 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %eeprom_regmap, align 4
  %call29.6.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 102, i32 noundef 242) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.6.i)
  %tobool30.not.6.i = icmp eq i32 %call29.6.i, 0
  br i1 %tobool30.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.end34.i_crit_edge

for.cond.5.i.do.end34.i_crit_edge:                ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %49 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %eeprom_regmap, align 4
  %call29.7.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 103, i32 noundef 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.7.i)
  %tobool30.not.7.i = icmp eq i32 %call29.7.i, 0
  br i1 %tobool30.not.7.i, label %for.cond.7.i, label %for.cond.6.i.do.end34.i_crit_edge

for.cond.6.i.do.end34.i_crit_edge:                ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %51 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %eeprom_regmap, align 4
  %call29.8.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 104, i32 noundef 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.8.i)
  %tobool30.not.8.i = icmp eq i32 %call29.8.i, 0
  br i1 %tobool30.not.8.i, label %for.cond.8.i, label %for.cond.7.i.do.end34.i_crit_edge

for.cond.7.i.do.end34.i_crit_edge:                ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %53 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %eeprom_regmap, align 4
  %call29.9.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 105, i32 noundef 113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.9.i)
  %tobool30.not.9.i = icmp eq i32 %call29.9.i, 0
  br i1 %tobool30.not.9.i, label %for.cond.9.i, label %for.cond.8.i.do.end34.i_crit_edge

for.cond.8.i.do.end34.i_crit_edge:                ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %55 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %eeprom_regmap, align 4
  %call29.10.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 106, i32 noundef 63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.10.i)
  %tobool30.not.10.i = icmp eq i32 %call29.10.i, 0
  br i1 %tobool30.not.10.i, label %for.cond.10.i, label %for.cond.9.i.do.end34.i_crit_edge

for.cond.9.i.do.end34.i_crit_edge:                ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %57 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eeprom_regmap, align 4
  %call29.11.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 107, i32 noundef 183) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.11.i)
  %tobool30.not.11.i = icmp eq i32 %call29.11.i, 0
  br i1 %tobool30.not.11.i, label %for.cond.11.i, label %for.cond.10.i.do.end34.i_crit_edge

for.cond.10.i.do.end34.i_crit_edge:               ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  call void @mutex_lock_nested(ptr noundef nonnull %call.i, i32 noundef 0) #5
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call24.i.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 26, i32 noundef 0) #5
  call void @mutex_unlock(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool39.not.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %for.cond.11.i.if.then53.i_crit_edge

for.cond.11.i.if.then53.i_crit_edge:              ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53.i

do.end34.i:                                       ; preds = %for.cond.10.i.do.end34.i_crit_edge, %for.cond.9.i.do.end34.i_crit_edge, %for.cond.8.i.do.end34.i_crit_edge, %for.cond.7.i.do.end34.i_crit_edge, %for.cond.6.i.do.end34.i_crit_edge, %for.cond.5.i.do.end34.i_crit_edge, %for.cond.4.i.do.end34.i_crit_edge, %for.cond.3.i.do.end34.i_crit_edge, %for.cond.2.i.do.end34.i_crit_edge, %for.cond.1.i.do.end34.i_crit_edge, %for.cond.i.do.end34.i_crit_edge, %for.cond.preheader.i.do.end34.i_crit_edge
  %call29.lcssa.i = phi i32 [ %call29.i, %for.cond.preheader.i.do.end34.i_crit_edge ], [ %call29.1.i, %for.cond.i.do.end34.i_crit_edge ], [ %call29.2.i, %for.cond.1.i.do.end34.i_crit_edge ], [ %call29.3.i, %for.cond.2.i.do.end34.i_crit_edge ], [ %call29.4.i, %for.cond.3.i.do.end34.i_crit_edge ], [ %call29.5.i, %for.cond.4.i.do.end34.i_crit_edge ], [ %call29.6.i, %for.cond.5.i.do.end34.i_crit_edge ], [ %call29.7.i, %for.cond.6.i.do.end34.i_crit_edge ], [ %call29.8.i, %for.cond.7.i.do.end34.i_crit_edge ], [ %call29.9.i, %for.cond.8.i.do.end34.i_crit_edge ], [ %call29.10.i, %for.cond.9.i.do.end34.i_crit_edge ], [ %call29.11.i, %for.cond.10.i.do.end34.i_crit_edge ]
  %61 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client23, align 4
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.35) #8
  br label %if.then53.i

if.end41.i:                                       ; preds = %for.cond.11.i
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call43.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 25, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.cond.end_crit_edge, label %do.end48.i

if.end41.i.cond.end_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

do.end48.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client23, align 4
  %dev50.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50.i, ptr noundef nonnull @.str.38) #8
  br label %if.then53.i

if.then53.i:                                      ; preds = %do.end48.i, %do.end34.i, %for.cond.11.i.if.then53.i_crit_edge, %do.end23.i, %if.end13.i.if.then53.i_crit_edge, %lp8860_fault_check.exit.i.if.then53.i_crit_edge, %lp8860_fault_check.exit.thread.i
  %ret.0.i = phi i32 [ %call9.i.i, %lp8860_fault_check.exit.i.if.then53.i_crit_edge ], [ %call14.i, %if.end13.i.if.then53.i_crit_edge ], [ %call18.i, %do.end23.i ], [ %call29.lcssa.i, %do.end34.i ], [ %call24.i.i, %for.cond.11.i.if.then53.i_crit_edge ], [ %call43.i, %do.end48.i ], [ %ret.0.i.ph.i, %lp8860_fault_check.exit.thread.i ]
  %67 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %enable_gpio, align 4
  %tobool55.not.i = icmp eq ptr %68, null
  br i1 %tobool55.not.i, label %if.then53.i.if.end60.i_crit_edge, label %if.then56.i

if.then53.i.if.end60.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  %call58.i = call i32 @gpiod_direction_output(ptr noundef nonnull %68, i32 noundef 0) #5
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.then53.i.if.end60.i_crit_edge
  %69 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regulator, align 4
  %tobool62.not.i = icmp eq ptr %70, null
  br i1 %tobool62.not.i, label %if.end60.i.lp8860_init.exit.thread_crit_edge, label %if.then63.i

if.end60.i.lp8860_init.exit.thread_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8860_init.exit.thread

if.then63.i:                                      ; preds = %if.end60.i
  %call65.i = call i32 @regulator_disable(ptr noundef nonnull %70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then63.i.cond.end_crit_edge, label %do.end70.i

if.then63.i.cond.end_crit_edge:                   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

do.end70.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client23, align 4
  %dev72.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72.i, ptr noundef nonnull @.str.41) #8
  br label %lp8860_init.exit.thread

lp8860_init.exit.thread:                          ; preds = %do.end70.i, %if.end60.i.lp8860_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i118.ph = phi i32 [ %ret.0.i, %if.end60.i.lp8860_init.exit.thread_crit_edge ], [ %call65.i, %do.end70.i ], [ %call.i117, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #5
  br label %cleanup

cond.end:                                         ; preds = %if.then63.i.cond.end_crit_edge, %if.end41.i.cond.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #5
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call3, i32 0, i32 3
  %73 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fwnode, ptr %init_data, align 4
  %devicename = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 2
  %74 = ptrtoint ptr %devicename to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str, ptr %devicename, align 4
  %default_label = getelementptr inbounds %struct.led_init_data, ptr %init_data, i32 0, i32 1
  %75 = ptrtoint ptr %default_label to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.17, ptr %default_label, align 4
  %call59 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_dev, ptr noundef nonnull %init_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cond.end.cleanup_crit_edge, label %do.end64

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end64:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call59) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %cond.end.cleanup_crit_edge, %lp8860_init.exit.thread, %if.then42, %if.then30, %if.then11, %if.end.cleanup_crit_edge, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %10, %if.then30 ], [ %12, %if.then42 ], [ %call59, %do.end64 ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ %retval.0.i118.ph, %lp8860_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8860_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enable_gpio = getelementptr inbounds %struct.lp8860_led, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %3, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regulator = getelementptr inbounds %struct.lp8860_led, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end11_crit_edge, label %do.end

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %client9 = getelementptr inbounds %struct.lp8860_led, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client9, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @mutex_destroy(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8860_brightness_set(ptr noundef %led_cdev, i32 noundef %brt_val) #2 align 64 {
entry:
  %read_buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -96
  %mul = mul i32 %brt_val, 255
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i) #5
  %0 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_buf.i, align 4, !annotation !120
  %regmap.i = getelementptr i8, ptr %led_cdev, i32 400
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %read_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lp8860_fault_check.exit.thread_crit_edge

entry.lp8860_fault_check.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8860_fault_check.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_buf.i, align 4
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %read_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.lp8860_fault_check.exit.thread_crit_edge

if.end.i.lp8860_fault_check.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8860_fault_check.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_buf.i, align 4
  %or.i = or i32 %8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool6.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool6.not.i, label %lp8860_fault_check.exit.thread36, label %lp8860_fault_check.exit

lp8860_fault_check.exit.thread36:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #5
  br label %if.end

lp8860_fault_check.exit.thread:                   ; preds = %if.end.i.lp8860_fault_check.exit.thread_crit_edge, %entry.lp8860_fault_check.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call2.i, %if.end.i.lp8860_fault_check.exit.thread_crit_edge ], [ %call.i, %entry.lp8860_fault_check.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #5
  br label %out.sink.split

lp8860_fault_check.exit:                          ; preds = %if.end5.i
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 17, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %lp8860_fault_check.exit.if.end_crit_edge, label %lp8860_fault_check.exit.out.sink.split_crit_edge

lp8860_fault_check.exit.out.sink.split_crit_edge: ; preds = %lp8860_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

lp8860_fault_check.exit.if.end_crit_edge:         ; preds = %lp8860_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %lp8860_fault_check.exit.if.end_crit_edge, %lp8860_fault_check.exit.thread36
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %and = lshr i32 %mul, 8
  %13 = and i32 %and, 255
  %call1 = call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end9:                                          ; preds = %if.end
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %and11 = and i32 %mul, 255
  %call12 = call i32 @regmap_write(ptr noundef %15, i32 noundef 1, i32 noundef %and11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.out_crit_edge, label %if.end9.out.sink.split_crit_edge

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.sink.split:                                   ; preds = %if.end9.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge, %lp8860_fault_check.exit.out.sink.split_crit_edge, %lp8860_fault_check.exit.thread
  %.str.27.sink = phi ptr [ @.str.21, %lp8860_fault_check.exit.thread ], [ @.str.21, %lp8860_fault_check.exit.out.sink.split_crit_edge ], [ @.str.24, %if.end.out.sink.split_crit_edge ], [ @.str.27, %if.end9.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %ret.0.i.ph, %lp8860_fault_check.exit.thread ], [ %call9.i, %lp8860_fault_check.exit.out.sink.split_crit_edge ], [ %call1, %if.end.out.sink.split_crit_edge ], [ %call12, %if.end9.out.sink.split_crit_edge ]
  %client18 = getelementptr i8, ptr %led_cdev, i32 -4
  %16 = ptrtoint ptr %client18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client18, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull %.str.27.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end9.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %add.ptr) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp8860_unlock_eeprom(ptr noundef %led, i32 noundef %lock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %led, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lock)
  %cmp = icmp eq i32 %lock, 1
  %regmap = getelementptr inbounds %struct.lp8860_led, ptr %led, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 26, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.lp8860_led, ptr %led, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #8
  br label %out

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 26, i32 noundef 186) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %client10 = getelementptr inbounds %struct.lp8860_led, ptr %led, i32 0, i32 1
  %6 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client10, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.43) #8
  br label %out

if.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 26, i32 noundef 239) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.out_crit_edge, label %do.end19

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %client20 = getelementptr inbounds %struct.lp8860_led, ptr %led, i32 0, i32 1
  %10 = ptrtoint ptr %client20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client20, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.43) #8
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 26, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %if.else, %do.end19, %if.end12.out_crit_edge, %do.end9, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call14, %do.end19 ], [ 0, %if.end12.out_crit_edge ], [ %call24, %if.else ]
  tail call void @mutex_unlock(ptr noundef %led) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !103, !105, !106, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_leds_lp8860__288_489_lp8860_driver_init6, !1, !"__initcall__kmod_leds_lp8860__288_489_lp8860_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp8860.c", i32 489, i32 1}
!2 = !{ptr @__exitcall_lp8860_driver_exit, !1, !"__exitcall_lp8860_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp8860.c", i32 491, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp8860.c", i32 492, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp8860.c", i32 493, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp8860.c", i32 482, i32 11}
!12 = !{ptr @lp8860_driver, !13, !"lp8860_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp8860.c", i32 480, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp8860.c", i32 396, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lp8860.c", i32 399, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp8860_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp8860_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-lp8860.c", i32 403, i32 52}
!26 = !{ptr @lp8860_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-lp8860.c", i32 410, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lp8860_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-lp8860.c", i32 414, i32 16}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lp8860.c", i32 417, i32 3}
!34 = !{ptr @lp8860_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lp8860_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lp8860_probe._key.13, !37, !"_key", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lp8860.c", i32 422, i32 23}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lp8860_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-lp8860.c", i32 425, i32 3}
!41 = !{ptr @lp8860_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lp8860.c", i32 436, i32 28}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-lp8860.c", i32 441, i32 3}
!46 = !{ptr @lp8860_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lp8860_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-lp8860.c", i32 217, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lp8860_brightness_set._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @lp8860_brightness_set._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-lp8860.c", i32 224, i32 3}
!55 = !{ptr @lp8860_brightness_set._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lp8860_brightness_set._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-lp8860.c", i32 231, i32 3}
!59 = !{ptr @lp8860_brightness_set._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lp8860_brightness_set._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @lp8860_regmap_config, !62, !"lp8860_regmap_config", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-lp8860.c", i32 330, i32 35}
!63 = !{ptr @lp8860_reg_defs, !64, !"lp8860_reg_defs", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-lp8860.c", i32 310, i32 33}
!65 = !{ptr @lp8860_eeprom_regmap_config, !66, !"lp8860_eeprom_regmap_config", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-lp8860.c", i32 368, i32 35}
!67 = !{ptr @lp8860_eeprom_defs, !68, !"lp8860_eeprom_defs", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-lp8860.c", i32 340, i32 33}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lp8860.c", i32 247, i32 4}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @lp8860_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @lp8860_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-lp8860.c", i32 266, i32 3}
!76 = !{ptr @lp8860_init._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lp8860_init._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lp8860.c", i32 276, i32 4}
!80 = !{ptr @lp8860_init._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lp8860_init._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lp8860.c", i32 289, i32 3}
!84 = !{ptr @lp8860_init._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lp8860_init._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-lp8860.c", i32 303, i32 4}
!88 = !{ptr @lp8860_init._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lp8860_init._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-lp8860.c", i32 151, i32 4}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @lp8860_unlock_eeprom._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @lp8860_unlock_eeprom._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @lp8860_unlock_eeprom._entry.45, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/leds/leds-lp8860.c", i32 159, i32 4}
!97 = !{ptr @lp8860_unlock_eeprom._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @lp8860_unlock_eeprom._entry.47, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/leds/leds-lp8860.c", i32 166, i32 4}
!100 = !{ptr @lp8860_unlock_eeprom._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"lp8860_eeprom_disp_regs", i1 false, i1 false}
!102 = !{!"../drivers/leds/leds-lp8860.c", i32 112, i32 33}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/leds/leds-lp8860.c", i32 459, i32 4}
!105 = !{ptr @lp8860_remove._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lp8860_remove._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @of_lp8860_leds_match, !108, !"of_lp8860_leds_match", i1 false, i1 false}
!108 = !{!"../drivers/leds/leds-lp8860.c", i32 474, i32 34}
!109 = !{ptr @lp8860_id, !110, !"lp8860_id", i1 false, i1 false}
!110 = !{!"../drivers/leds/leds-lp8860.c", i32 468, i32 35}
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
