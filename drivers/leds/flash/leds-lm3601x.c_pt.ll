; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-lm3601x.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-lm3601x.c"
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
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lm3601x_led = type { %struct.led_classdev_flash, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }

@__initcall__kmod_leds_lm3601x__288_477_lm3601x_i2c_driver_init6 = internal global ptr @lm3601x_i2c_driver_init, section ".initcall6.init", align 4
@lm3601x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @lm3601x_remove, ptr @lm3601x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lm3601x_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3601x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3601x_i2c_driver_exit = internal global ptr @lm3601x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [77 x i8] c"leds_lm3601x.description=Texas Instruments Flash Lighting driver for LM3601X\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [48 x i8] c"leds_lm3601x.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [50 x i8] c"leds_lm3601x.file=drivers/leds/flash/leds-lm3601x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"leds_lm3601x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm3601x\00", [24 x i8] zeroinitializer }, align 32
@of_lm3601x_leds_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm36010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm36011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lm3601x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"LM36010\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"LM36011\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lm3601x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3601x_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @lm3601x_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm3601x_regmap_defs, i32 4, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"leds_lm3601x:430:(&lm3601x_regmap)->lock\00", [55 x i8] zeroinitializer }, align 32
@lm3601x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm3601x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/flash/leds-lm3601x.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3601x_probe._entry_ptr = internal global ptr @lm3601x_probe._entry, section ".printk_index", align 4
@lm3601x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No LED Child node\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3601x_parse_node\00", [45 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr = internal global ptr @lm3601x_parse_node._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg DT property missing\0A\00", [39 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr.13 = internal global ptr @lm3601x_parse_node._entry.11, section ".printk_index", align 4
@lm3601x_parse_node._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.4, i32 377, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid led mode requested\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr.17 = internal global ptr @lm3601x_parse_node._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.4, i32 386, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"led-max-microamp DT property missing\0A\00", [58 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr.21 = internal global ptr @lm3601x_parse_node._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.4, i32 394, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flash-max-microamp DT property missing\0A\00", [56 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr.25 = internal global ptr @lm3601x_parse_node._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.4, i32 402, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", [54 x i8] zeroinitializer }, align 32
@lm3601x_parse_node._entry_ptr.29 = internal global ptr @lm3601x_parse_node._entry.27, section ".printk_index", align 4
@lm3601x_regmap_defs = internal constant { [4 x %struct.reg_default], [32 x i8] } { [4 x %struct.reg_default] [%struct.reg_default { i32 1, i32 32 }, %struct.reg_default { i32 2, i32 21 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }], [32 x i8] zeroinitializer }, align 32
@flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @lm3601x_flash_brightness_set, ptr null, ptr @lm3601x_strobe_set, ptr @lm3601x_strobe_get, ptr @lm3601x_flash_timeout_set, ptr @lm3601x_flash_fault_get }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"torch\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infrared\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"lm3601x_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 468, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 470, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"of_lm3601x_leds_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 461, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"lm3601x_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 454, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"lm3601x_regmap\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 119, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 430, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 433, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 438, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 365, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 369, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 371, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 377, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 382, i32 40 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 385, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 390, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 393, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 398, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 401, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"lm3601x_regmap_defs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 102, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant [10 x i8] c"flash_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 314, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 352, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [37 x i8] c"../drivers/leds/flash/leds-lm3601x.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 352, i32 16 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lm3601x_i2c_driver_exit, ptr @__initcall__kmod_leds_lm3601x__288_477_lm3601x_i2c_driver_init6, ptr @lm3601x_i2c_driver_exit, ptr @lm3601x_parse_node._entry, ptr @lm3601x_parse_node._entry.11, ptr @lm3601x_parse_node._entry.14, ptr @lm3601x_parse_node._entry.19, ptr @lm3601x_parse_node._entry.23, ptr @lm3601x_parse_node._entry.27, ptr @lm3601x_parse_node._entry_ptr, ptr @lm3601x_parse_node._entry_ptr.13, ptr @lm3601x_parse_node._entry_ptr.17, ptr @lm3601x_parse_node._entry_ptr.21, ptr @lm3601x_parse_node._entry_ptr.25, ptr @lm3601x_parse_node._entry_ptr.29, ptr @lm3601x_probe._entry, ptr @lm3601x_probe._entry_ptr, ptr @lm3601x_i2c_driver, ptr @.str, ptr @of_lm3601x_leds_match, ptr @lm3601x_id, ptr @lm3601x_probe._key, ptr @lm3601x_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lm3601x_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @lm3601x_regmap_defs, ptr @flash_ops, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lm3601x_leds_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_parse_node._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3601x_regmap_defs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3601x_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3601x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3601x_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #6
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_probe(ptr noundef %client) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 580, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i34 = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i, label %lm3601x_parse_node.exit.thread, label %if.end.i

lm3601x_parse_node.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %led_mode.i = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i34, ptr noundef nonnull @.str.10, ptr noundef %led_mode.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.12) #9
  br label %lm3601x_parse_node.exit.thread47

if.end11.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %led_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  br i1 %cmp.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1, align 4
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20.i, ptr noundef nonnull @.str.15) #9
  br label %lm3601x_parse_node.exit.thread47

if.end21.i:                                       ; preds = %if.end11.i
  %torch_current_max.i = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 6
  %call.i74.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i34, ptr noundef nonnull @.str.18, ptr noundef %torch_current_max.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool23.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool23.not.i, label %if.end30.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %dev29.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.20) #9
  br label %lm3601x_parse_node.exit.thread47

if.end30.i:                                       ; preds = %if.end21.i
  %flash_current_max.i = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 7
  %call.i75.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i34, ptr noundef nonnull @.str.22, ptr noundef %flash_current_max.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool32.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool32.not.i, label %if.end39.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client1, align 4
  %dev38.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38.i, ptr noundef nonnull @.str.24) #9
  br label %lm3601x_parse_node.exit.thread47

if.end39.i:                                       ; preds = %if.end30.i
  %max_flash_timeout.i = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 8
  %call.i76.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i34, ptr noundef nonnull @.str.26, ptr noundef %max_flash_timeout.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool41.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool41.not.i, label %if.end5, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client1, align 4
  %dev47.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev47.i, ptr noundef nonnull @.str.28) #9
  br label %lm3601x_parse_node.exit.thread47

lm3601x_parse_node.exit.thread47:                 ; preds = %do.end45.i, %do.end36.i, %do.end27.i, %do.end18.i, %do.end8.i
  tail call void @fwnode_handle_put(ptr noundef nonnull %call.i34) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end39.i
  tail call void @fwnode_handle_put(ptr noundef nonnull %call.i34) #6
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3601x_regmap, ptr noundef nonnull @lm3601x_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i35 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.then9, label %do.body14

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %17) #9
  br label %cleanup

do.body14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @lm3601x_probe.__key) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %18 = getelementptr inbounds i8, ptr %init_data.i, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %ops.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @flash_ops, ptr %ops.i, align 4
  %timeout.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 40000, ptr %timeout.i, align 4
  %22 = ptrtoint ptr %max_flash_timeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_flash_timeout.i, align 4
  %max.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max.i, align 4
  %step.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %step.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 40000, ptr %step.i, align 4
  %val.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %val.i, align 4
  %brightness.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11000, ptr %brightness.i, align 4
  %28 = ptrtoint ptr %flash_current_max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flash_current_max.i, align 4
  %max5.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %max5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max5.i, align 4
  %step6.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %step6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2965, ptr %step6.i, align 4
  %val8.i = getelementptr inbounds %struct.led_classdev_flash, ptr %call.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %val8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %val8.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @lm3601x_brightness_set, ptr %brightness_set_blocking.i, align 4
  %34 = ptrtoint ptr %torch_current_max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %torch_current_max.i, align 4
  %sub.i = add i32 %35, 2964
  %div.i = udiv i32 %sub.i, 2965
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %max_brightness.i, align 4
  %flags.i = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %38, 262144
  store i32 %or.i, ptr %flags.i, align 4
  %39 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i34, ptr %init_data.i, align 4
  %40 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client1, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 2
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %42 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %name.i, ptr %devicename.i, align 4
  %43 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %led_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i41 = icmp eq i32 %44, 1
  %cond.i = select i1 %cmp.i41, ptr @.str.30, ptr @.str.31
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  %45 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cond.i, ptr %default_label.i, align 4
  %dev.i42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %call.i43 = call i32 @devm_led_classdev_flash_register_ext(ptr noundef %dev.i42, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.then9, %lm3601x_parse_node.exit.thread47, %lm3601x_parse_node.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then9 ], [ %call.i43, %do.body14 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %lm3601x_parse_node.exit.thread ], [ -19, %lm3601x_parse_node.exit.thread47 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm3601x_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reg)
  %cond = icmp eq i32 %reg, 5
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call2 = tail call fastcc i32 @lm3601x_read_faults(ptr noundef %cdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %led_mode = getelementptr inbounds %struct.lm3601x_led, ptr %cdev, i32 0, i32 9
  %0 = ptrtoint ptr %led_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %led_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  %. = select i1 %cmp3, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp6 = icmp eq i32 %brightness, 0
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %cdev, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 4, i32 noundef %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.out_crit_edge, label %if.end14

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 3, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end9.out_crit_edge, %if.then7, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call.i, %if.then7 ], [ %call11, %if.end9.out_crit_edge ], [ %call.i28, %if.end14 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_flash_brightness_set(ptr noundef %fled_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call1 = tail call fastcc i32 @lm3601x_read_faults(ptr noundef %fled_cdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp2 = icmp eq i32 %brightness, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %brightness, 11800
  %regmap6 = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 2
  %2 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap6, align 4
  %conv7 = and i32 %div, 255
  %call8 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 3, i32 noundef %conv7) #6
  br label %out

out:                                              ; preds = %if.end5, %if.then3, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call.i, %if.then3 ], [ %call8, %if.end5 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  %current_timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_timeout) #6
  %0 = ptrtoint ptr %current_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %current_timeout, align 4, !annotation !85
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %current_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %flash_timeout = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 4
  %3 = ptrtoint ptr %flash_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flash_timeout, align 4
  %5 = ptrtoint ptr %current_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp9.not = icmp eq i32 %4, %6
  br i1 %cmp9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %4)
  %cmp2 = icmp ugt i32 %4, 399999
  %div = udiv i32 %4, 200000
  %add = add nuw nsw i32 %div, 7
  %div6 = udiv i32 %4, 40000
  %sub = add nsw i32 %div6, -1
  %timeout_reg_val.0 = select i1 %cmp2, i32 %add, i32 %sub
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2, i32 noundef 30, i32 noundef %timeout_reg_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %. = select i1 %state, i32 3, i32 0
  %call.i35 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1, i32 noundef 3, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call21 = call fastcc i32 @lm3601x_read_faults(ptr noundef %fled_cdev)
  br label %out

out:                                              ; preds = %if.end13, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call21, %if.end13 ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_timeout) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_strobe_get(ptr noundef %fled_cdev, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %strobe_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strobe_state) #6
  %0 = ptrtoint ptr %strobe_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %strobe_state, align 4, !annotation !85
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %strobe_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %strobe_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strobe_state, align 4
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %state, align 1
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strobe_state) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_flash_timeout_set(ptr noundef %fled_cdev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %flash_timeout = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 4
  %0 = ptrtoint ptr %flash_timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %flash_timeout, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3601x_flash_fault_get(ptr nocapture noundef %fled_cdev, ptr nocapture noundef writeonly %fault) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @lm3601x_read_faults(ptr noundef %fled_cdev)
  %last_flag = getelementptr inbounds %struct.lm3601x_led, ptr %fled_cdev, i32 0, i32 5
  %0 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_flag, align 4
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fault, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3601x_read_faults(ptr nocapture noundef %led) unnamed_addr #2 align 64 {
entry:
  %flags_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags_val) #6
  %0 = ptrtoint ptr %flags_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags_val, align 4, !annotation !85
  %regmap = getelementptr inbounds %struct.lm3601x_led, ptr %led, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %flags_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_flag = getelementptr inbounds %struct.lm3601x_led, ptr %led, i32 0, i32 5
  %3 = ptrtoint ptr %flags_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags_val, align 4
  %and = lshr i32 %4, 7
  %and.lobit = and i32 %and, 1
  %and4 = and i32 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or8 = or i32 %and.lobit, 4
  %spec.select = select i1 %tobool5.not, i32 %and.lobit, i32 %or8
  %5 = ptrtoint ptr %last_flag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %last_flag, align 4
  %and10 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_flag, align 4
  %or14 = or i32 %7, 8
  store i32 %or14, ptr %last_flag, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %and16 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_flag, align 4
  %or20 = or i32 %9, 16
  store i32 %or20, ptr %last_flag, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and22 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_flag, align 4
  %or26 = or i32 %11, 64
  store i32 %or26, ptr %last_flag, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %and28 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.then30

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_flag, align 4
  %or32 = or i32 %13, 128
  store i32 %or32, ptr %last_flag, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27.if.end33_crit_edge
  %and34 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_flag, align 4
  %or38 = or i32 %15, 256
  store i32 %or38, ptr %last_flag, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %16 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end39 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags_val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_leds_lm3601x__288_477_lm3601x_i2c_driver_init6, !1, !"__initcall__kmod_leds_lm3601x__288_477_lm3601x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 477, i32 1}
!2 = !{ptr @__exitcall_lm3601x_i2c_driver_exit, !1, !"__exitcall_lm3601x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 470, i32 11}
!12 = !{ptr @lm3601x_i2c_driver, !13, !"lm3601x_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 468, i32 26}
!14 = !{ptr @lm3601x_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 430, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 433, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lm3601x_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lm3601x_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @lm3601x_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 438, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 365, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lm3601x_parse_node._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @lm3601x_parse_node._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 369, i32 40}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 371, i32 3}
!37 = !{ptr @lm3601x_parse_node._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lm3601x_parse_node._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 377, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lm3601x_parse_node._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @lm3601x_parse_node._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 382, i32 40}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 385, i32 3}
!48 = !{ptr @lm3601x_parse_node._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lm3601x_parse_node._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 390, i32 40}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 393, i32 3}
!54 = !{ptr @lm3601x_parse_node._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lm3601x_parse_node._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 398, i32 40}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 401, i32 3}
!60 = !{ptr @lm3601x_parse_node._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @lm3601x_parse_node._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @lm3601x_regmap, !63, !"lm3601x_regmap", i1 false, i1 false}
!63 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 119, i32 35}
!64 = !{ptr @lm3601x_regmap_defs, !65, !"lm3601x_regmap_defs", i1 false, i1 false}
!65 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 102, i32 33}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 352, i32 6}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 352, i32 16}
!70 = !{ptr @flash_ops, !71, !"flash_ops", i1 false, i1 false}
!71 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 314, i32 35}
!72 = !{ptr @of_lm3601x_leds_match, !73, !"of_lm3601x_leds_match", i1 false, i1 false}
!73 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 461, i32 34}
!74 = !{ptr @lm3601x_id, !75, !"lm3601x_id", i1 false, i1 false}
!75 = !{!"../drivers/leds/flash/leds-lm3601x.c", i32 454, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
