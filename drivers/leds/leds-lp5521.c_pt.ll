; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp5521.c_pt.bc'
source_filename = "../drivers/leds/leds-lp5521.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lp55xx_device_config = type { %struct.lp55xx_reg, %struct.lp55xx_reg, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lp55xx_reg = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.lp55xx_chip = type { ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, [3 x %struct.lp55xx_engine], ptr }
%struct.lp55xx_engine = type { i32, i16 }
%struct.lp55xx_platform_data = type { ptr, i8, ptr, i8, ptr, ptr, i32, i32 }
%struct.lp55xx_led = type { i32, %struct.led_classdev, %struct.led_classdev_mc, i8, i8, i8, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.mc_subled = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_leds_lp5521__288_618_lp5521_driver_init6 = internal global ptr @lp5521_driver_init, section ".initcall6.init", align 4
@lp5521_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp5521_probe, ptr @lp5521_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp5521_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp5521_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp5521_driver_exit = internal global ptr @lp5521_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"leds_lp5521.author=Mathias Nyman, Yuri Zaporozhets, Samu Onkalo\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [46 x i8] c"leds_lp5521.author=Milo Kim <milo.kim@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"leds_lp5521.description=LP5521 LED engine\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [42 x i8] c"leds_lp5521.file=drivers/leds/leds-lp5521\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"leds_lp5521.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp5521\00", [25 x i8] zeroinitializer }, align 32
@of_lp5521_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lp5521\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp5521_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp5521\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp5521_cfg = internal global { %struct.lp55xx_device_config, [60 x i8] } { %struct.lp55xx_device_config { %struct.lp55xx_reg { i8 13, i8 -1 }, %struct.lp55xx_reg { i8 0, i8 -64 }, i32 3, ptr @lp5521_post_init_device, ptr @lp5521_led_brightness, ptr @lp5521_multicolor_brightness, ptr @lp5521_set_led_current, ptr @lp5521_firmware_loaded, ptr @lp5521_run_engine, ptr @lp5521_group }, [60 x i8] zeroinitializer }, align 32
@lp5521_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp5521_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp5521.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp5521_probe._entry_ptr = internal global ptr @lp5521_probe._entry, section ".printk_index", align 4
@lp5521_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@lp5521_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 562, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s programmable led chip found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lp5521_probe._entry_ptr.10 = internal global ptr @lp5521_probe._entry.7, section ".printk_index", align 4
@lp5521_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering sysfs failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lp5521_probe._entry_ptr.13 = internal global ptr @lp5521_probe._entry.11, section ".printk_index", align 4
@lp5521_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp5521_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp5521_post_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error in resetting chip\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lp5521_post_init_device\00", [40 x i8] zeroinitializer }, align 32
@lp5521_post_init_device._entry_ptr = internal global ptr @lp5521_post_init_device._entry, section ".printk_index", align 4
@lp5521_post_init_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unexpected data in register (expected 0x%x got 0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@lp5521_post_init_device._entry_ptr.18 = internal global ptr @lp5521_post_init_device._entry.16, section ".printk_index", align 4
@lp5521_firmware_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware data size overflow: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp5521_firmware_loaded\00", [41 x i8] zeroinitializer }, align 32
@lp5521_firmware_loaded._entry_ptr = internal global ptr @lp5521_firmware_loaded._entry, section ".printk_index", align 4
@lp5521_load_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp5521_load_engine.val = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\04\01", [28 x i8] zeroinitializer }, align 32
@lp5521_update_program_memory.addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\100P", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%2s%n \00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%2x\00", [28 x i8] zeroinitializer }, align 32
@lp5521_update_program_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong pattern format\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lp5521_update_program_memory\00", [35 x i8] zeroinitializer }, align 32
@lp5521_update_program_memory._entry_ptr = internal global ptr @lp5521_update_program_memory._entry, section ".printk_index", align 4
@lp5521_stop_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp5521_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_engine1_mode, ptr @dev_attr_engine2_mode, ptr @dev_attr_engine3_mode, ptr @dev_attr_engine1_load, ptr @dev_attr_engine2_load, ptr @dev_attr_engine3_load, ptr @dev_attr_selftest, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_engine1_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine1_mode, ptr @store_engine1_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine2_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine2_mode, ptr @store_engine2_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine3_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_engine3_mode, ptr @store_engine3_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine1_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine1_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine2_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine2_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine3_load = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @store_engine3_load }, [36 x i8] zeroinitializer }, align 32
@dev_attr_selftest = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp5521_selftest, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine1_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"run\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"load\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"load\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine2_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine3_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine1_load\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine2_load\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"engine3_load\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAIL\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"lp5521_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 608, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 610, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"of_lp5521_leds_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 601, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"lp5521_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 594, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"lp5521_cfg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 500, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 541, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 554, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 562, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 570, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"lp5521_group\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 495, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 293, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 297, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 265, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 124, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 130, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 216, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 230, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 234, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 256, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 150, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"lp5521_attributes\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 484, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"dev_attr_engine1_mode\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"dev_attr_engine2_mode\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"dev_attr_engine3_mode\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"dev_attr_engine1_load\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"dev_attr_engine2_load\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"dev_attr_engine3_load\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"dev_attr_selftest\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 476, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 394, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 396, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 399, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 418, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 421, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 425, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 477, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 478, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 479, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 480, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 481, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 482, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 472, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 472, i32 49 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [30 x i8] c"../drivers/leds/leds-lp5521.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 472, i32 58 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lp5521_driver_exit, ptr @__initcall__kmod_leds_lp5521__288_618_lp5521_driver_init6, ptr @lp5521_driver_exit, ptr @lp5521_firmware_loaded._entry, ptr @lp5521_firmware_loaded._entry_ptr, ptr @lp5521_post_init_device._entry, ptr @lp5521_post_init_device._entry.16, ptr @lp5521_post_init_device._entry_ptr, ptr @lp5521_post_init_device._entry_ptr.18, ptr @lp5521_probe._entry, ptr @lp5521_probe._entry.11, ptr @lp5521_probe._entry.7, ptr @lp5521_probe._entry_ptr, ptr @lp5521_probe._entry_ptr.10, ptr @lp5521_probe._entry_ptr.13, ptr @lp5521_update_program_memory._entry, ptr @lp5521_update_program_memory._entry_ptr, ptr @lp5521_driver, ptr @.str, ptr @of_lp5521_leds_match, ptr @lp5521_id, ptr @lp5521_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp5521_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @lp5521_group, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @lp5521_load_engine.mask, ptr @lp5521_load_engine.val, ptr @lp5521_update_program_memory.addr, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @lp5521_stop_engine.mask, ptr @lp5521_attributes, ptr @dev_attr_engine1_mode, ptr @dev_attr_engine2_mode, ptr @dev_attr_engine3_mode, ptr @dev_attr_engine1_load, ptr @dev_attr_engine2_load, ptr @dev_attr_engine3_load, ptr @dev_attr_selftest, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp5521_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_post_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_post_init_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_firmware_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_load_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_load_engine.val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_update_program_memory.addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_update_program_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_stop_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5521_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine1_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine2_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine3_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine1_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine2_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine3_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_selftest to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp5521_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp5521_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lp5521_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %cfg = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lp5521_cfg, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end.devm_kcalloc.exit_crit_edge

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call10 = tail call ptr @lp55xx_of_populate_pdata(ptr noundef %dev, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %call.i) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.then8.devm_kcalloc.exit_crit_edge

if.then8.devm_kcalloc.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then8.devm_kcalloc.exit_crit_edge, %if.end.devm_kcalloc.exit_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.devm_kcalloc.exit_crit_edge ], [ %call10, %if.then8.devm_kcalloc.exit_crit_edge ]
  %num_channels = getelementptr inbounds %struct.lp55xx_platform_data, ptr %pdata.0, i32 0, i32 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv, 820
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #8
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %pdata23 = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdata.0, ptr %pdata23, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lp5521_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @lp55xx_init_device(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %if.end22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %id) #11
  %call35 = tail call i32 @lp55xx_register_leds(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end33.err_out_crit_edge

do.end33.err_out_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end38:                                         ; preds = %do.end33
  %call39 = tail call i32 @lp55xx_register_sysfs(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %do.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %err_out

err_out:                                          ; preds = %do.end44, %do.end33.err_out_crit_edge
  %ret.0 = phi i32 [ %call35, %do.end33.err_out_crit_edge ], [ %call39, %do.end44 ]
  tail call void @lp55xx_deinit_device(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end38.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.end, %if.then12, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then12 ], [ -22, %do.end ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call27, %if.end22.cleanup_crit_edge ], [ %ret.0, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  tail call void @lp55xx_unregister_sysfs(ptr noundef %3) #8
  tail call void @lp55xx_deinit_device(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lp55xx_of_populate_pdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_register_leds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_register_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_deinit_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_post_init_device(ptr noundef %chip) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !125
  %call = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 5, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %4)
  %cmp.not = icmp eq i8 %4, -81
  br i1 %cmp.not, label %if.end9, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.17, i32 noundef 175, i32 noundef %conv) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  %call10 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 63) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 120, ptr %val, align 1
  %call11 = call zeroext i1 @lp55xx_is_extclk_used(ptr noundef %chip) #8
  br i1 %call11, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %val, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %call16 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %call21 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %call22 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 0) #8
  %call23 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext -22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end5 ], [ 0, %if.end26 ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call23, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_led_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 2
  %brightness = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 5
  %5 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %brightness, align 2
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %6) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_multicolor_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %subled_info = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 2, i32 2
  %num_colors = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_colors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %4 = ptrtoint ptr %num_colors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_colors, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subled_info, align 4
  %channel = getelementptr %struct.mc_subled, ptr %7, i32 %i.018, i32 3
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = trunc i32 %9 to i8
  %conv = add i8 %10, 2
  %brightness = getelementptr %struct.mc_subled, ptr %7, i32 %i.018, i32 1
  %11 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brightness, align 4
  %conv6 = trunc i32 %12 to i8
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5521_set_led_current(ptr nocapture noundef %led, i8 noundef zeroext %led_current) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %led_current1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 3
  %0 = ptrtoint ptr %led_current1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %led_current, ptr %led_current1, align 4
  %chip = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led, align 4
  %5 = trunc i32 %4 to i8
  %conv = add i8 %5, 5
  %call = tail call i32 @lp55xx_write(ptr noundef %2, i8 noundef zeroext %conv, i8 noundef zeroext %led_current) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5521_firmware_loaded(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5521_load_engine.mask, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp5521_load_engine.val, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %9, i8 noundef zeroext %11) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %call = tail call fastcc i32 @lp5521_update_program_memory(ptr noundef %chip, ptr noundef %13, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5521_run_engine(ptr noundef %chip, i1 noundef zeroext %start) #2 align 64 {
entry:
  %mode = alloca i8, align 1
  %exec = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exec) #8
  %1 = ptrtoint ptr %exec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %exec, align 1, !annotation !125
  br i1 %start, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5521_stop_engine.mask, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %5, i8 noundef zeroext 0) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 63) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %exec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 1
  %8 = and i8 %7, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp = icmp eq i8 %8, 16
  br i1 %cmp, label %if.then10, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %and12 = and i8 %7, -49
  %or = or i8 %and12, 32
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or, ptr %mode, align 1
  %10 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exec, align 1
  %12 = and i8 %11, -49
  %13 = or i8 %12, 32
  store i8 %13, ptr %exec, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.end8.if.end18_crit_edge
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode, align 1
  %16 = and i8 %15, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp21 = icmp eq i8 %16, 4
  br i1 %cmp21, label %if.then23, label %if.end18.if.end32_crit_edge

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %and25 = and i8 %15, -13
  %or26 = or i8 %and25, 8
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or26, ptr %mode, align 1
  %18 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %exec, align 1
  %20 = and i8 %19, -13
  %21 = or i8 %20, 8
  store i8 %21, ptr %exec, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end18.if.end32_crit_edge
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 1
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp35 = icmp eq i8 %24, 1
  br i1 %cmp35, label %if.then37, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %and39 = and i8 %23, -4
  %or40 = or i8 %and39, 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or40, ptr %mode, align 1
  %26 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %exec, align 1
  %28 = and i8 %27, -4
  %29 = or i8 %28, 2
  store i8 %29, ptr %exec, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.end32.if.end46_crit_edge
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 1
  %call47 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %31) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %32 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %exec, align 1
  %call48 = call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext %33) #8
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exec) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lp55xx_is_extclk_used(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp5521_update_program_memory(ptr noundef %chip, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %pattern = alloca [32 x i8], align 1
  %cmd = alloca i32, align 4
  %c = alloca [3 x i8], align 1
  %nrchars = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %engine_idx = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %engine_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %engine_idx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pattern) #8
  %2 = call ptr @memset(ptr %pattern, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cmd, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %c) #8
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %c, align 1, !annotation !125
  %5 = getelementptr inbounds [3 x i8], ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !125
  %7 = getelementptr inbounds [3 x i8], ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrchars) #8
  %9 = ptrtoint ptr %nrchars to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %nrchars, align 4, !annotation !125
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp44.not = icmp eq i32 %sub, 0
  br i1 %cmp44.not, label %entry.for.cond.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %i.046 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %offset.045 = phi i32 [ %add, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data, i32 %offset.045
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.21, ptr noundef nonnull %c, ptr noundef nonnull %nrchars)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %while.body
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %c, ptr noundef nonnull @.str.22, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end7, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx = getelementptr [32 x i8], ptr %pattern, i32 0, i32 %i.046
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %nrchars to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrchars, align 4
  %add = add i32 %14, %offset.045
  %inc = add nuw nsw i32 %i.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ult i32 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.046)
  %cmp1 = icmp ult i32 %i.046, 31
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end7.while.body_crit_edge, label %while.end

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end7
  %phi.bo = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %while.end.for.cond.preheader_crit_edge, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end.for.cond.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %arrayidx12 = getelementptr [4 x i8], ptr @lp5521_update_program_memory.addr, i32 0, i32 %1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc21 = add nuw nsw i32 %i.147, 1
  %exitcond.not = icmp eq i32 %inc21, 32
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.147 = phi i32 [ 0, %for.cond.preheader ], [ %inc21, %for.cond.for.body_crit_edge ]
  %17 = trunc i32 %i.147 to i8
  %conv15 = add i8 %16, %17
  %arrayidx16 = getelementptr [32 x i8], ptr %pattern, i32 0, i32 %i.147
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  %call17 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv15, i8 noundef zeroext %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end.do.end_crit_edge, %while.body.do.end_crit_edge
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %size, %for.cond.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrchars) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pattern) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine1_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine1_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 1)
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_engine_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i32 noundef returned %len, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %sub = add i32 %nr, -1
  %arrayidx = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 %sub
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %engine_idx = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr, ptr %engine_idx, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.29, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lp5521_run_engine(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end13.sink.split

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.30, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5521_stop_engine.mask, i32 0, i32 %nr
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %6, i8 noundef zeroext 0) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %7 = ptrtoint ptr %engine_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %engine_idx, align 4
  %arrayidx.i2 = getelementptr [4 x i8], ptr @lp5521_load_engine.mask, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i2, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp5521_load_engine.val, i32 0, i32 %8
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %call.i3 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %10, i8 noundef zeroext %12) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  br label %if.end13.sink.split

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.31, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else7.if.end13_crit_edge

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i5 = getelementptr [4 x i8], ptr @lp5521_stop_engine.mask, i32 0, i32 %nr
  %13 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i5, align 1
  %call.i6 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %14, i8 noundef zeroext 0) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then10, %if.then5, %if.then
  %.sink = phi i32 [ 1, %if.then5 ], [ 0, %if.then10 ], [ 2, %if.then ]
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %arrayidx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else7.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %len
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine2_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine2_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 2)
  ret i32 %len
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @show_engine3_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %arrayidx.i = getelementptr %struct.lp55xx_chip, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 5)
  br label %show_engine_mode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 6)
  br label %show_engine_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.28, i32 10)
  br label %show_engine_mode.exit

show_engine_mode.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 9, %sw.default.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine3_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @store_engine_mode(ptr noundef %dev, ptr noundef %buf, i32 noundef %len, i32 noundef 3)
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine1_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %engine_idx.i, align 4
  %call.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 48, i8 noundef zeroext 16) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call2.i = tail call fastcc i32 @lp5521_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine2_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %engine_idx.i, align 4
  %call.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 12, i8 noundef zeroext 4) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call2.i = tail call fastcc i32 @lp5521_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_engine3_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip1.i = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1.i, align 4
  %lock.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %engine_idx.i, align 4
  %call.i.i = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %call2.i = tail call fastcc i32 @lp5521_update_program_memory(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5521_selftest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %pdata1.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #8
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %status.i, align 1, !annotation !125
  %call.i = call i32 @lp55xx_read(ptr noundef %3, i8 noundef zeroext 12, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.lp5521_run_selftest.exit_crit_edge, label %if.end.i

entry.lp5521_run_selftest.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lp5521_run_selftest.exit

if.end.i:                                         ; preds = %entry
  %clock_mode.i = getelementptr inbounds %struct.lp55xx_platform_data, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %clock_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %clock_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp2.not.i = icmp eq i8 %8, 2
  br i1 %cmp2.not.i, label %if.end5.i, label %if.end.i._crit_edge

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status.i, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp7.i = icmp eq i8 %11, 0
  br i1 %cmp7.i, label %if.end5.i.lp5521_run_selftest.exit_crit_edge, label %if.end5.i._crit_edge

if.end5.i._crit_edge:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end5.i.lp5521_run_selftest.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lp5521_run_selftest.exit

lp5521_run_selftest.exit:                         ; preds = %if.end5.i.lp5521_run_selftest.exit_crit_edge, %entry.lp5521_run_selftest.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  br label %13

12:                                               ; preds = %if.end5.i._crit_edge, %if.end.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  br label %13

13:                                               ; preds = %12, %lp5521_run_selftest.exit
  %14 = phi ptr [ @.str.40, %12 ], [ @.str.39, %lp5521_run_selftest.exit ]
  call void @mutex_unlock(ptr noundef %lock) #8
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, ptr noundef nonnull %14) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_unregister_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_leds_lp5521__288_618_lp5521_driver_init6, !1, !"__initcall__kmod_leds_lp5521__288_618_lp5521_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp5521.c", i32 618, i32 1}
!2 = !{ptr @__exitcall_lp5521_driver_exit, !1, !"__exitcall_lp5521_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp5521.c", i32 620, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp5521.c", i32 621, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp5521.c", i32 622, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-lp5521.c", i32 623, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp5521.c", i32 610, i32 11}
!14 = !{ptr @lp5521_driver, !15, !"lp5521_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp5521.c", i32 608, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lp5521.c", i32 541, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp5521_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp5521_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lp5521_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-lp5521.c", i32 554, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-lp5521.c", i32 562, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lp5521_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @lp5521_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lp5521.c", i32 570, i32 3}
!34 = !{ptr @lp5521_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lp5521_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lp5521_cfg, !37, !"lp5521_cfg", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lp5521.c", i32 500, i32 36}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lp5521.c", i32 293, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @lp5521_post_init_device._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @lp5521_post_init_device._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-lp5521.c", i32 297, i32 3}
!45 = !{ptr @lp5521_post_init_device._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @lp5521_post_init_device._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/leds-lp5521.c", i32 265, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lp5521_firmware_loaded._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @lp5521_firmware_loaded._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @lp5521_load_engine.mask, !53, !"mask", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-lp5521.c", i32 124, i32 18}
!54 = !{ptr @lp5521_load_engine.val, !55, !"val", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lp5521.c", i32 130, i32 18}
!56 = !{ptr @lp5521_update_program_memory.addr, !57, !"addr", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-lp5521.c", i32 216, i32 18}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lp5521.c", i32 230, i32 31}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lp5521.c", i32 234, i32 19}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lp5521.c", i32 256, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @lp5521_update_program_memory._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @lp5521_update_program_memory._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @lp5521_stop_engine.mask, !68, !"mask", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-lp5521.c", i32 150, i32 18}
!69 = !{ptr @lp5521_group, !70, !"lp5521_group", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lp5521.c", i32 495, i32 37}
!71 = !{ptr @lp5521_attributes, !72, !"lp5521_attributes", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-lp5521.c", i32 484, i32 26}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-lp5521.c", i32 476, i32 8}
!75 = !{ptr @dev_attr_engine1_mode, !74, !"dev_attr_engine1_mode", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-lp5521.c", i32 394, i32 23}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lp5521.c", i32 396, i32 23}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-lp5521.c", i32 399, i32 23}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lp5521.c", i32 418, i32 20}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/leds-lp5521.c", i32 421, i32 27}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-lp5521.c", i32 425, i32 27}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/leds/leds-lp5521.c", i32 477, i32 8}
!90 = !{ptr @dev_attr_engine2_mode, !89, !"dev_attr_engine2_mode", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/leds-lp5521.c", i32 478, i32 8}
!93 = !{ptr @dev_attr_engine3_mode, !92, !"dev_attr_engine3_mode", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/leds/leds-lp5521.c", i32 479, i32 8}
!96 = !{ptr @dev_attr_engine1_load, !95, !"dev_attr_engine1_load", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-lp5521.c", i32 480, i32 8}
!99 = !{ptr @dev_attr_engine2_load, !98, !"dev_attr_engine2_load", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/leds/leds-lp5521.c", i32 481, i32 8}
!102 = !{ptr @dev_attr_engine3_load, !101, !"dev_attr_engine3_load", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/leds/leds-lp5521.c", i32 482, i32 8}
!105 = !{ptr @dev_attr_selftest, !104, !"dev_attr_selftest", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/leds/leds-lp5521.c", i32 472, i32 35}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/leds/leds-lp5521.c", i32 472, i32 49}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/leds/leds-lp5521.c", i32 472, i32 58}
!112 = !{ptr @of_lp5521_leds_match, !113, !"of_lp5521_leds_match", i1 false, i1 false}
!113 = !{!"../drivers/leds/leds-lp5521.c", i32 601, i32 34}
!114 = !{ptr @lp5521_id, !115, !"lp5521_id", i1 false, i1 false}
!115 = !{!"../drivers/leds/leds-lp5521.c", i32 594, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
