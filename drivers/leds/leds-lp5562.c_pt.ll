; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp5562.c_pt.bc'
source_filename = "../drivers/leds/leds-lp5562.c"
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
%struct.firmware = type { i32, ptr, ptr }
%struct.lp55xx_predef_pattern = type { ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_leds_lp5562__288_614_lp5562_driver_init6 = internal global ptr @lp5562_driver_init, section ".initcall6.init", align 4
@lp5562_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lp5562_probe, ptr @lp5562_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lp5562_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp5562_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp5562_driver_exit = internal global ptr @lp5562_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"leds_lp5562.description=Texas Instruments LP5562 LED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"leds_lp5562.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_lp5562.file=drivers/leds/leds-lp5562\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"leds_lp5562.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp5562\00", [25 x i8] zeroinitializer }, align 32
@of_lp5562_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp5562\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp5562_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp5562\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp5562_cfg = internal global { %struct.lp55xx_device_config, [60 x i8] } { %struct.lp55xx_device_config { %struct.lp55xx_reg { i8 13, i8 -1 }, %struct.lp55xx_reg { i8 0, i8 -64 }, i32 4, ptr @lp5562_post_init_device, ptr @lp5562_led_brightness, ptr null, ptr @lp5562_set_led_current, ptr @lp5562_firmware_loaded, ptr @lp5562_run_engine, ptr @lp5562_group }, [60 x i8] zeroinitializer }, align 32
@lp5562_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lp5562_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp5562.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp5562_probe._entry_ptr = internal global ptr @lp5562_probe._entry, section ".printk_index", align 4
@lp5562_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@lp5562_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering sysfs failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lp5562_probe._entry_ptr.9 = internal global ptr @lp5562_probe._entry.7, section ".printk_index", align 4
@lp5562_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp5562_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp5562_led_brightness.addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\04\03\02\0E", [28 x i8] zeroinitializer }, align 32
@lp5562_set_led_current.addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\07\06\05\0F", [28 x i8] zeroinitializer }, align 32
@lp5562_firmware_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware data size overflow: %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp5562_firmware_loaded\00", [41 x i8] zeroinitializer }, align 32
@lp5562_firmware_loaded._entry_ptr = internal global ptr @lp5562_firmware_loaded._entry, section ".printk_index", align 4
@lp5562_load_engine.mask = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000\0C\03", [28 x i8] zeroinitializer }, align 32
@lp5562_load_engine.val = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\04\01", [28 x i8] zeroinitializer }, align 32
@lp5562_update_firmware.addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\100P", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%2s%n \00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%2x\00", [28 x i8] zeroinitializer }, align 32
@lp5562_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong pattern format\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lp5562_update_firmware\00", [41 x i8] zeroinitializer }, align 32
@lp5562_update_firmware._entry_ptr = internal global ptr @lp5562_update_firmware._entry, section ".printk_index", align 4
@lp5562_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_led_pattern, ptr @dev_attr_engine_mux, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_led_pattern = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @lp5562_store_pattern }, [36 x i8] zeroinitializer }, align 32
@dev_attr_engine_mux = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @lp5562_store_engine_mux }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led_pattern\00", [20 x i8] zeroinitializer }, align 32
@lp5562_run_predef_led_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid pattern data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lp5562_run_predef_led_pattern\00", [34 x i8] zeroinitializer }, align 32
@lp5562_run_predef_led_pattern._entry_ptr = internal global ptr @lp5562_run_predef_led_pattern._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"engine_mux\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@lp5562_store_engine_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"choose RGB or W\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lp5562_store_engine_mux\00", [40 x i8] zeroinitializer }, align 32
@lp5562_store_engine_mux._entry_ptr = internal global ptr @lp5562_store_engine_mux._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"lp5562_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 604, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 606, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"of_lp5562_leds_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 596, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"lp5562_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 589, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"lp5562_cfg\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 496, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 536, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 550, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 564, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"lp5562_group\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 491, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 318, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 116, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 268, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 130, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 136, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 211, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 235, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 255, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"lp5562_attributes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 485, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"dev_attr_led_pattern\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"dev_attr_engine_mux\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 482, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 368, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 483, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 449, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 452, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [30 x i8] c"../drivers/leds/leds-lp5562.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 471, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp5562_driver_exit, ptr @__initcall__kmod_leds_lp5562__288_614_lp5562_driver_init6, ptr @lp5562_driver_exit, ptr @lp5562_firmware_loaded._entry, ptr @lp5562_firmware_loaded._entry_ptr, ptr @lp5562_probe._entry, ptr @lp5562_probe._entry.7, ptr @lp5562_probe._entry_ptr, ptr @lp5562_probe._entry_ptr.9, ptr @lp5562_run_predef_led_pattern._entry, ptr @lp5562_run_predef_led_pattern._entry_ptr, ptr @lp5562_store_engine_mux._entry, ptr @lp5562_store_engine_mux._entry_ptr, ptr @lp5562_update_firmware._entry, ptr @lp5562_update_firmware._entry_ptr, ptr @lp5562_driver, ptr @.str, ptr @of_lp5562_leds_match, ptr @lp5562_id, ptr @lp5562_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp5562_probe.__key, ptr @.str.6, ptr @.str.8, ptr @lp5562_group, ptr @lp5562_led_brightness.addr, ptr @lp5562_set_led_current.addr, ptr @.str.10, ptr @.str.11, ptr @lp5562_load_engine.mask, ptr @lp5562_load_engine.val, ptr @lp5562_update_firmware.addr, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @lp5562_attributes, ptr @dev_attr_led_pattern, ptr @dev_attr_engine_mux, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lp5562_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_led_brightness.addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_set_led_current.addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_firmware_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_load_engine.mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_load_engine.val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_update_firmware.addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_led_pattern to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_engine_mux to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_run_predef_led_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp5562_store_engine_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp5562_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp5562_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp5562_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %cfg = getelementptr inbounds %struct.lp55xx_chip, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lp5562_cfg, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.then6, label %if.end.devm_kcalloc.exit_crit_edge

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then6
  %call10 = tail call ptr @lp55xx_of_populate_pdata(ptr noundef %dev, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %call.i) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.then8.devm_kcalloc.exit_crit_edge

if.then8.devm_kcalloc.exit_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_kcalloc.exit

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then8.devm_kcalloc.exit_crit_edge, %if.end.devm_kcalloc.exit_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.devm_kcalloc.exit_crit_edge ], [ %call10, %if.then8.devm_kcalloc.exit_crit_edge ]
  %num_channels = getelementptr inbounds %struct.lp55xx_platform_data, ptr %pdata.0, i32 0, i32 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_channels, align 4
  %conv = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv, 820
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lp5562_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @lp55xx_init_device(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %call31 = tail call i32 @lp55xx_register_leds(ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_out_crit_edge

if.end30.err_out_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end34:                                         ; preds = %if.end30
  %call35 = tail call i32 @lp55xx_register_sysfs(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %do.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %err_out

err_out:                                          ; preds = %do.end40, %if.end30.err_out_crit_edge
  %ret.0 = phi i32 [ %call31, %if.end30.err_out_crit_edge ], [ %call35, %do.end40 ]
  tail call void @lp55xx_deinit_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end34.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.end, %if.then12, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then12 ], [ -22, %do.end ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ %call27, %if.end22.cleanup_crit_edge ], [ %ret.0, %err_out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call.i = tail call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  tail call void @lp55xx_unregister_sysfs(ptr noundef %3) #6
  tail call void @lp55xx_deinit_device(ptr noundef %3) #6
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
define internal i32 @lp5562_post_init_device(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %call1 = tail call zeroext i1 @lp55xx_is_extclk_used(ptr noundef %chip) #6
  %spec.select = select i1 %call1, i8 96, i8 97
  %call5 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 8, i8 noundef zeroext %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 4, i8 noundef zeroext 0) #6
  %call10 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  %call11 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %call12 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 14, i8 noundef zeroext 0) #6
  %call13 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 112, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_led_brightness(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %led, align 4
  %arrayidx = getelementptr [4 x i8], ptr @lp5562_led_brightness.addr, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %brightness = getelementptr inbounds %struct.lp55xx_led, ptr %led, i32 0, i32 5
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %brightness, align 2
  %call = tail call i32 @lp55xx_write(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5562_set_led_current(ptr nocapture noundef %led, i8 noundef zeroext %led_current) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %arrayidx = getelementptr [4 x i8], ptr @lp5562_set_led_current.addr, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @lp55xx_write(ptr noundef %2, i8 noundef zeroext %6, i8 noundef zeroext %led_current) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5562_firmware_loaded(ptr noundef %chip) #2 align 64 {
entry:
  %pattern.i = alloca [32 x i8], align 1
  %cmd.i = alloca i32, align 4
  %c.i = alloca [3 x i8], align 1
  %nrchars.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp ugt i32 %3, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %engine_idx.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @lp5562_load_engine.mask, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr [4 x i8], ptr @lp5562_load_engine.val, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %call.i = tail call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %9, i8 noundef zeroext %11) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %engine_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pattern.i) #6
  %18 = call ptr @memset(ptr %pattern.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #6
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %cmd.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %c.i) #6
  %20 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %c.i, align 1, !annotation !92
  %21 = getelementptr inbounds [3 x i8], ptr %c.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %21, align 1, !annotation !92
  %23 = getelementptr inbounds [3 x i8], ptr %c.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nrchars.i) #6
  %25 = ptrtoint ptr %nrchars.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %nrchars.i, align 4, !annotation !92
  %arrayidx.i11 = getelementptr [4 x i8], ptr @lp5562_update_firmware.addr, i32 0, i32 %17
  %26 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i11, align 1
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %sub.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp23.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp23.not.i, label %while.cond.preheader.i.lp5562_update_firmware.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.lp5562_update_firmware.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_update_firmware.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %28 = trunc i32 %i.02.i to i8
  %conv1.i = add i8 %27, %28
  %call.i12 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv1.i, i8 noundef zeroext 0) #6
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %while.cond.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.15.i = phi i32 [ %inc18.i, %if.end14.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %offset.04.i = phi i32 [ %add17.i, %if.end14.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %13, i32 %offset.04.i
  %call6.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %c.i, ptr noundef nonnull %nrchars.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 1
  br i1 %cmp7.not.i, label %if.end.i, label %while.body.i.do.end.i_crit_edge

while.body.i.do.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i:                                         ; preds = %while.body.i
  %call10.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %c.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end14.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd.i, align 4
  %conv15.i = trunc i32 %30 to i8
  %arrayidx16.i = getelementptr [32 x i8], ptr %pattern.i, i32 0, i32 %i.15.i
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %32 = ptrtoint ptr %nrchars.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nrchars.i, align 4
  %add17.i = add i32 %33, %offset.04.i
  %inc18.i = add nuw nsw i32 %i.15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %sub.i)
  %cmp2.i = icmp ult i32 %add17.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.15.i)
  %cmp4.i = icmp ult i32 %i.15.i, 31
  %or.cond.i = select i1 %cmp2.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.end14.i.while.body.i_crit_edge, label %while.end.i

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end14.i
  %34 = and i32 %inc18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %while.end.i.for.body24.i_crit_edge, label %while.end.i.do.end.i_crit_edge

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

while.end.i.for.body24.i_crit_edge:               ; preds = %while.end.i
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %while.end.i.for.body24.i_crit_edge
  %i.27.i = phi i32 [ %inc32.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %while.end.i.for.body24.i_crit_edge ]
  %35 = trunc i32 %i.27.i to i8
  %conv28.i = add i8 %27, %35
  %arrayidx29.i = getelementptr [32 x i8], ptr %pattern.i, i32 0, i32 %i.27.i
  %36 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29.i, align 1
  %call30.i = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext %conv28.i, i8 noundef zeroext %37) #6
  %inc32.i = add nuw nsw i32 %i.27.i, 1
  %exitcond8.not.i = icmp eq i32 %i.27.i, %i.15.i
  br i1 %exitcond8.not.i, label %for.body24.i.lp5562_update_firmware.exit_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24.i

for.body24.i.lp5562_update_firmware.exit_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_update_firmware.exit

do.end.i:                                         ; preds = %while.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %while.body.i.do.end.i_crit_edge
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #9
  br label %lp5562_update_firmware.exit

lp5562_update_firmware.exit:                      ; preds = %do.end.i, %for.body24.i.lp5562_update_firmware.exit_crit_edge, %while.cond.preheader.i.lp5562_update_firmware.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nrchars.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %c.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pattern.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lp5562_update_firmware.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp5562_run_engine(ptr noundef %chip, i1 noundef zeroext %start) #2 align 64 {
entry:
  %mode = alloca i8, align 1
  %exec = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !92
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exec) #6
  %1 = ptrtoint ptr %exec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %exec, align 1, !annotation !92
  br i1 %start, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext -64) #6
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #6
  %call.i = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %call1 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 112, i8 noundef zeroext 0) #6
  %call2 = tail call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext 63) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @lp55xx_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %exec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = and i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp eq i8 %4, 16
  br i1 %cmp, label %if.then12, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %and14 = and i8 %3, -49
  %or = or i8 %and14, 32
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %mode, align 1
  %6 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exec, align 1
  %8 = and i8 %7, -49
  %9 = or i8 %8, 32
  store i8 %9, ptr %exec, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end10.if.end20_crit_edge
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  %12 = and i8 %11, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp23 = icmp eq i8 %12, 4
  br i1 %cmp23, label %if.then25, label %if.end20.if.end34_crit_edge

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %and27 = and i8 %11, -13
  %or28 = or i8 %and27, 8
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or28, ptr %mode, align 1
  %14 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %exec, align 1
  %16 = and i8 %15, -13
  %17 = or i8 %16, 8
  store i8 %17, ptr %exec, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.end20.if.end34_crit_edge
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp37 = icmp eq i8 %20, 1
  br i1 %cmp37, label %if.then39, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i8 %19, -4
  %or42 = or i8 %and41, 2
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or42, ptr %mode, align 1
  %22 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %exec, align 1
  %24 = and i8 %23, -4
  %25 = or i8 %24, 2
  store i8 %25, ptr %exec, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.end34.if.end48_crit_edge
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode, align 1
  %call49 = call i32 @lp55xx_write(ptr noundef %chip, i8 noundef zeroext 1, i8 noundef zeroext %27) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %28 = ptrtoint ptr %exec to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %exec, align 1
  %call50 = call i32 @lp55xx_update_bits(ptr noundef %chip, i8 noundef zeroext 0, i8 noundef zeroext 63, i8 noundef zeroext %29) #6
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exec) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #6
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp55xx_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_store_pattern(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %pdata = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %patterns = getelementptr inbounds %struct.lp55xx_platform_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %patterns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %patterns, align 4
  %num_patterns3 = getelementptr inbounds %struct.lp55xx_platform_data, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %num_patterns3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_patterns3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %mode, align 4, !annotation !92
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp = icmp ugt i32 %12, %9
  %tobool5.not = icmp eq ptr %7, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -64) #6
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #6
  %call.i.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %call1.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 112, i8 noundef zeroext 0) #6
  %call2.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 63) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata, align 4
  %patterns.i = getelementptr inbounds %struct.lp55xx_platform_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %patterns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %patterns.i, align 4
  %sub.i = add i32 %14, -1
  %add.ptr.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %if.end.i.lp5562_run_predef_led_pattern.exit_crit_edge, label %lor.lhs.false.i

if.end.i.lp5562_run_predef_led_pattern.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_run_predef_led_pattern.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %size_r.i.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i, i32 3
  %19 = ptrtoint ptr %size_r.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %size_r.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %20)
  %cmp.i.i = icmp ugt i8 %20, 31
  br i1 %cmp.i.i, label %lor.lhs.false.i.lp5562_run_predef_led_pattern.exit_crit_edge, label %lor.lhs.false.i.i

lor.lhs.false.i.lp5562_run_predef_led_pattern.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_run_predef_led_pattern.exit

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i
  %size_g.i.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i, i32 4
  %21 = ptrtoint ptr %size_g.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %size_g.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %22)
  %cmp3.i.i = icmp ugt i8 %22, 31
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.lp5562_run_predef_led_pattern.exit_crit_edge, label %_is_pc_overflow.exit.i

lor.lhs.false.i.i.lp5562_run_predef_led_pattern.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_run_predef_led_pattern.exit

_is_pc_overflow.exit.i:                           ; preds = %lor.lhs.false.i.i
  %size_b.i.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i, i32 5
  %23 = ptrtoint ptr %size_b.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %size_b.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %24)
  %cmp6.i.i = icmp ugt i8 %24, 31
  br i1 %cmp6.i.i, label %_is_pc_overflow.exit.i.lp5562_run_predef_led_pattern.exit_crit_edge, label %if.end2.i

_is_pc_overflow.exit.i.lp5562_run_predef_led_pattern.exit_crit_edge: ; preds = %_is_pc_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_run_predef_led_pattern.exit

if.end2.i:                                        ; preds = %_is_pc_overflow.exit.i
  %call.i40.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %call3.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 112, i8 noundef zeroext 27) #6
  %engine_idx.i = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %engine_idx.i, align 4
  %call.i41.i = call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 48, i8 noundef zeroext 16) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %26 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %engine_idx.i, align 4
  %call.i41.1.i = call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 12, i8 noundef zeroext 4) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %27 = ptrtoint ptr %engine_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %engine_idx.i, align 4
  %call.i41.2.i = call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext 1) #6
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  %call5.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  %call6.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 0) #6
  %call7.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 48, i8 noundef zeroext 0) #6
  %call8.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 49, i8 noundef zeroext 0) #6
  %call9.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 80, i8 noundef zeroext 0) #6
  %call10.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext 81, i8 noundef zeroext 0) #6
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %size_r.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %size_r.i.i, align 4
  %conv.i = zext i8 %31 to i32
  %tobool.not.i.i = icmp eq ptr %29, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i42.i = icmp eq i8 %31, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i42.i
  br i1 %or.cond.i.i, label %if.end2.i.lp5562_write_program_memory.exit.i_crit_edge, label %if.end2.i.for.body.i.i_crit_edge

if.end2.i.for.body.i.i_crit_edge:                 ; preds = %if.end2.i
  br label %for.body.i.i

if.end2.i.lp5562_write_program_memory.exit.i_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_write_program_memory.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end2.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end2.i.for.body.i.i_crit_edge ]
  %32 = trunc i32 %i.024.i.i to i8
  %conv2.i.i = add i8 %32, 16
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %i.024.i.i
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i, align 1
  %call.i43.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv2.i.i, i8 noundef zeroext %34) #6
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i = add i8 %31, 16
  %call6.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv5.i.i, i8 noundef zeroext 0) #6
  %conv10.i.i = add i8 %31, 17
  %call11.i.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv10.i.i, i8 noundef zeroext 0) #6
  br label %lp5562_write_program_memory.exit.i

lp5562_write_program_memory.exit.i:               ; preds = %for.end.i.i, %if.end2.i.lp5562_write_program_memory.exit.i_crit_edge
  %g.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i, i32 1
  %35 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %g.i, align 4
  %37 = ptrtoint ptr %size_g.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %size_g.i.i, align 1
  %conv11.i = zext i8 %38 to i32
  %tobool.not.i44.i = icmp eq ptr %36, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.i45.i = icmp eq i8 %38, 0
  %or.cond.i46.i = or i1 %tobool.not.i44.i, %cmp.i45.i
  br i1 %or.cond.i46.i, label %lp5562_write_program_memory.exit.i.lp5562_write_program_memory.exit59.i_crit_edge, label %lp5562_write_program_memory.exit.i.for.body.i53.i_crit_edge

lp5562_write_program_memory.exit.i.for.body.i53.i_crit_edge: ; preds = %lp5562_write_program_memory.exit.i
  br label %for.body.i53.i

lp5562_write_program_memory.exit.i.lp5562_write_program_memory.exit59.i_crit_edge: ; preds = %lp5562_write_program_memory.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_write_program_memory.exit59.i

for.body.i53.i:                                   ; preds = %for.body.i53.i.for.body.i53.i_crit_edge, %lp5562_write_program_memory.exit.i.for.body.i53.i_crit_edge
  %i.024.i47.i = phi i32 [ %inc.i51.i, %for.body.i53.i.for.body.i53.i_crit_edge ], [ 0, %lp5562_write_program_memory.exit.i.for.body.i53.i_crit_edge ]
  %39 = trunc i32 %i.024.i47.i to i8
  %conv2.i48.i = add i8 %39, 48
  %add.ptr.i49.i = getelementptr i8, ptr %36, i32 %i.024.i47.i
  %40 = ptrtoint ptr %add.ptr.i49.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i49.i, align 1
  %call.i50.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv2.i48.i, i8 noundef zeroext %41) #6
  %inc.i51.i = add nuw nsw i32 %i.024.i47.i, 1
  %exitcond.not.i52.i = icmp eq i32 %inc.i51.i, %conv11.i
  br i1 %exitcond.not.i52.i, label %for.end.i58.i, label %for.body.i53.i.for.body.i53.i_crit_edge

for.body.i53.i.for.body.i53.i_crit_edge:          ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53.i

for.end.i58.i:                                    ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i54.i = add i8 %38, 48
  %call6.i55.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv5.i54.i, i8 noundef zeroext 0) #6
  %conv10.i56.i = add i8 %38, 49
  %call11.i57.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv10.i56.i, i8 noundef zeroext 0) #6
  br label %lp5562_write_program_memory.exit59.i

lp5562_write_program_memory.exit59.i:             ; preds = %for.end.i58.i, %lp5562_write_program_memory.exit.i.lp5562_write_program_memory.exit59.i_crit_edge
  %b.i = getelementptr %struct.lp55xx_predef_pattern, ptr %18, i32 %sub.i, i32 2
  %42 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b.i, align 4
  %44 = ptrtoint ptr %size_b.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %size_b.i.i, align 2
  %conv12.i = zext i8 %45 to i32
  %tobool.not.i60.i = icmp eq ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i61.i = icmp eq i8 %45, 0
  %or.cond.i62.i = or i1 %tobool.not.i60.i, %cmp.i61.i
  br i1 %or.cond.i62.i, label %lp5562_write_program_memory.exit59.i.lp5562_write_program_memory.exit75.i_crit_edge, label %lp5562_write_program_memory.exit59.i.for.body.i69.i_crit_edge

lp5562_write_program_memory.exit59.i.for.body.i69.i_crit_edge: ; preds = %lp5562_write_program_memory.exit59.i
  br label %for.body.i69.i

lp5562_write_program_memory.exit59.i.lp5562_write_program_memory.exit75.i_crit_edge: ; preds = %lp5562_write_program_memory.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp5562_write_program_memory.exit75.i

for.body.i69.i:                                   ; preds = %for.body.i69.i.for.body.i69.i_crit_edge, %lp5562_write_program_memory.exit59.i.for.body.i69.i_crit_edge
  %i.024.i63.i = phi i32 [ %inc.i67.i, %for.body.i69.i.for.body.i69.i_crit_edge ], [ 0, %lp5562_write_program_memory.exit59.i.for.body.i69.i_crit_edge ]
  %46 = trunc i32 %i.024.i63.i to i8
  %conv2.i64.i = add i8 %46, 80
  %add.ptr.i65.i = getelementptr i8, ptr %43, i32 %i.024.i63.i
  %47 = ptrtoint ptr %add.ptr.i65.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i65.i, align 1
  %call.i66.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv2.i64.i, i8 noundef zeroext %48) #6
  %inc.i67.i = add nuw nsw i32 %i.024.i63.i, 1
  %exitcond.not.i68.i = icmp eq i32 %inc.i67.i, %conv12.i
  br i1 %exitcond.not.i68.i, label %for.end.i74.i, label %for.body.i69.i.for.body.i69.i_crit_edge

for.body.i69.i.for.body.i69.i_crit_edge:          ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i69.i

for.end.i74.i:                                    ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i70.i = add i8 %45, 80
  %call6.i71.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv5.i70.i, i8 noundef zeroext 0) #6
  %conv10.i72.i = add i8 %45, 81
  %call11.i73.i = call i32 @lp55xx_write(ptr noundef %3, i8 noundef zeroext %conv10.i72.i, i8 noundef zeroext 0) #6
  br label %lp5562_write_program_memory.exit75.i

lp5562_write_program_memory.exit75.i:             ; preds = %for.end.i74.i, %lp5562_write_program_memory.exit59.i.lp5562_write_program_memory.exit75.i_crit_edge
  call void @lp5562_run_engine(ptr noundef %3, i1 noundef zeroext true) #6
  br label %cleanup.sink.split

lp5562_run_predef_led_pattern.exit:               ; preds = %_is_pc_overflow.exit.i.lp5562_run_predef_led_pattern.exit_crit_edge, %lor.lhs.false.i.i.lp5562_run_predef_led_pattern.exit_crit_edge, %lor.lhs.false.i.lp5562_run_predef_led_pattern.exit_crit_edge, %if.end.i.lp5562_run_predef_led_pattern.exit_crit_edge
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lp5562_run_predef_led_pattern.exit, %lp5562_write_program_memory.exit75.i, %if.then.i
  %retval.0.ph = phi i32 [ -22, %lp5562_run_predef_led_pattern.exit ], [ %len, %if.then.i ], [ %len, %lp5562_write_program_memory.exit75.i ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp5562_store_engine_mux(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.lp55xx_led, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.20) #6
  br i1 %call2, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.21) #6
  br i1 %call3, label %if.then4, label %do.end

if.then4:                                         ; preds = %if.else
  %engine_idx = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %engine_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %engine_idx, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.then4.cleanup11_crit_edge

if.then4.cleanup11_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup11

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 6
  %switch.offset = add i8 %switch.idx.mult, 64
  br label %if.end8

if.end8:                                          ; preds = %switch.lookup, %entry.if.end8_crit_edge
  %mask.0 = phi i8 [ 63, %entry.if.end8_crit_edge ], [ -64, %switch.lookup ]
  %val.2 = phi i8 [ 27, %entry.if.end8_crit_edge ], [ %switch.offset, %switch.lookup ]
  %lock = getelementptr inbounds %struct.lp55xx_chip, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call9 = tail call i32 @lp55xx_update_bits(ptr noundef %3, i8 noundef zeroext 112, i8 noundef zeroext %mask.0, i8 noundef zeroext %val.2) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup11

cleanup11:                                        ; preds = %if.end8, %do.end, %if.then4.cleanup11_crit_edge
  %retval.1 = phi i32 [ %len, %if.end8 ], [ -22, %do.end ], [ -22, %if.then4.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lp55xx_unregister_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_leds_lp5562__288_614_lp5562_driver_init6, !1, !"__initcall__kmod_leds_lp5562__288_614_lp5562_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp5562.c", i32 614, i32 1}
!2 = !{ptr @__exitcall_lp5562_driver_exit, !1, !"__exitcall_lp5562_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp5562.c", i32 616, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp5562.c", i32 617, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp5562.c", i32 618, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp5562.c", i32 606, i32 11}
!12 = !{ptr @lp5562_driver, !13, !"lp5562_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp5562.c", i32 604, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp5562.c", i32 536, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lp5562_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lp5562_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @lp5562_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lp5562.c", i32 550, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-lp5562.c", i32 564, i32 3}
!27 = !{ptr @lp5562_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp5562_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @lp5562_cfg, !30, !"lp5562_cfg", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-lp5562.c", i32 496, i32 36}
!31 = !{ptr @lp5562_led_brightness.addr, !32, !"addr", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-lp5562.c", i32 318, i32 18}
!33 = !{ptr @lp5562_set_led_current.addr, !34, !"addr", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-lp5562.c", i32 116, i32 18}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-lp5562.c", i32 268, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lp5562_firmware_loaded._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @lp5562_firmware_loaded._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @lp5562_load_engine.mask, !41, !"mask", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-lp5562.c", i32 130, i32 18}
!42 = !{ptr @lp5562_load_engine.val, !43, !"val", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lp5562.c", i32 136, i32 18}
!44 = !{ptr @lp5562_update_firmware.addr, !45, !"addr", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-lp5562.c", i32 211, i32 18}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lp5562.c", i32 231, i32 31}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-lp5562.c", i32 235, i32 19}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-lp5562.c", i32 255, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lp5562_update_firmware._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lp5562_update_firmware._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @lp5562_group, !56, !"lp5562_group", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-lp5562.c", i32 491, i32 37}
!57 = !{ptr @lp5562_attributes, !58, !"lp5562_attributes", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-lp5562.c", i32 485, i32 26}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-lp5562.c", i32 482, i32 8}
!61 = !{ptr @dev_attr_led_pattern, !60, !"dev_attr_led_pattern", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lp5562.c", i32 368, i32 3}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @lp5562_run_predef_led_pattern._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @lp5562_run_predef_led_pattern._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-lp5562.c", i32 483, i32 8}
!69 = !{ptr @dev_attr_engine_mux, !68, !"dev_attr_engine_mux", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-lp5562.c", i32 449, i32 23}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/leds-lp5562.c", i32 452, i32 30}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-lp5562.c", i32 471, i32 3}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lp5562_store_engine_mux._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lp5562_store_engine_mux._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @of_lp5562_leds_match, !80, !"of_lp5562_leds_match", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-lp5562.c", i32 596, i32 34}
!81 = !{ptr @lp5562_id, !82, !"lp5562_id", i1 false, i1 false}
!82 = !{!"../drivers/leds/leds-lp5562.c", i32 589, i32 35}
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
