; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm3532.c_pt.bc'
source_filename = "../drivers/leds/leds-lm3532.c"
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
%struct.lm3532_data = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, [0 x %struct.lm3532_led] }
%struct.lm3532_led = type { %struct.led_classdev, ptr, i32, i32, i32, i32, i32, i8, [3 x i32] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lm3532_als_data = type { i8, i8, i8, i8, i8, i32, i32, [4 x i8], [4 x i8] }

@__initcall__kmod_leds_lm3532__290_740_lm3532_i2c_driver_init6 = internal global ptr @lm3532_i2c_driver_init, section ".initcall6.init", align 4
@lm3532_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3532_probe, ptr @lm3532_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lm3532_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3532_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3532_i2c_driver_exit = internal global ptr @lm3532_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"leds_lm3532.description=Back Light driver for LM3532\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [42 x i8] c"leds_lm3532.file=drivers/leds/leds-lm3532\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"leds_lm3532.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [47 x i8] c"leds_lm3532.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm3532-led\00", [21 x i8] zeroinitializer }, align 32
@of_lm3532_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm3532\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lm3532_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3532-led\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3532_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LEDs are not defined in device tree!\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3532_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lm3532.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3532_probe._entry_ptr = internal global ptr @lm3532_probe._entry, section ".printk_index", align 4
@lm3532_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3532_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 126, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm3532_reg_defs, i32 22, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"leds_lm3532:687:(&lm3532_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@lm3532_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lm3532_probe._entry_ptr.9 = internal global ptr @lm3532_probe._entry.7, section ".printk_index", align 4
@lm3532_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&drvdata->lock\00", [17 x i8] zeroinitializer }, align 32
@lm3532_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to parse node\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3532_probe._entry_ptr.13 = internal global ptr @lm3532_probe._entry.11, section ".printk_index", align 4
@lm3532_reg_defs = internal constant { [22 x %struct.reg_default], [48 x i8] } { [22 x %struct.reg_default] [%struct.reg_default { i32 16, i32 228 }, %struct.reg_default { i32 17, i32 192 }, %struct.reg_default { i32 18, i32 192 }, %struct.reg_default { i32 19, i32 130 }, %struct.reg_default { i32 20, i32 130 }, %struct.reg_default { i32 21, i32 130 }, %struct.reg_default { i32 22, i32 241 }, %struct.reg_default { i32 23, i32 243 }, %struct.reg_default { i32 24, i32 241 }, %struct.reg_default { i32 25, i32 243 }, %struct.reg_default { i32 26, i32 241 }, %struct.reg_default { i32 27, i32 243 }, %struct.reg_default { i32 29, i32 248 }, %struct.reg_default { i32 35, i32 68 }, %struct.reg_default { i32 96, i32 53 }, %struct.reg_default { i32 97, i32 51 }, %struct.reg_default { i32 98, i32 106 }, %struct.reg_default { i32 99, i32 102 }, %struct.reg_default { i32 100, i32 161 }, %struct.reg_default { i32 101, i32 153 }, %struct.reg_default { i32 102, i32 220 }, %struct.reg_default { i32 103, i32 204 }], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ramp-up-us\00", [21 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 566, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ramp-up-ms property missing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3532_parse_node\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr = internal global ptr @lm3532_parse_node._entry, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ramp-down-us\00", [19 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 573, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ramp-down-ms property missing\0A\00", [33 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.23 = internal global ptr @lm3532_parse_node._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg property missing\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.28 = internal global ptr @lm3532_parse_node._entry.26, section ".printk_index", align 4
@lm3532_parse_node._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Control bank invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.31 = internal global ptr @lm3532_parse_node._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,led-mode\00", [20 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.18, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,led-mode property missing\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.35 = internal global ptr @lm3532_parse_node._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed getting led-max-microamp\0A\00", [63 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.39 = internal global ptr @lm3532_parse_node._entry.37, section ".printk_index", align 4
@lm3532_parse_node._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to parse als\0A\00", [43 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.42 = internal global ptr @lm3532_parse_node._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Too many LED string defined\0A\00", [35 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.46 = internal global ptr @lm3532_parse_node._entry.44, section ".printk_index", align 4
@lm3532_parse_node._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"led-sources property missing\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.49 = internal global ptr @lm3532_parse_node._entry.47, section ".printk_index", align 4
@lm3532_parse_node._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.18, ptr @.str.3, i32 646, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.52 = internal global ptr @lm3532_parse_node._entry.50, section ".printk_index", align 4
@lm3532_parse_node._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.18, ptr @.str.3, i32 653, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"register init err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@lm3532_parse_node._entry_ptr.55 = internal global ptr @lm3532_parse_node._entry.53, section ".printk_index", align 4
@ramp_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,als-vmin\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,als-vmax\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,als1-imp-sel\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,als2-imp-sel\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,als-avrg-time-us\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,als-input-mode\00", [46 x i8] zeroinitializer }, align 32
@als_imp_table = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 37000, i32 18500, i32 12330, i32 92500, i32 7400, i32 6170, i32 5290, i32 4630, i32 4110, i32 3700, i32 3360, i32 3080, i32 2850, i32 2640, i32 2440, i32 2310, i32 2180, i32 2060, i32 1950, i32 1850, i32 1760, i32 1680, i32 1610, i32 1540, i32 1480, i32 1420, i32 1370, i32 1320, i32 1280, i32 1230, i32 1190, i32 0], [32 x i8] zeroinitializer }, align 32
@als_avrg_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 17920, i32 35840, i32 71680, i32 1433360, i32 286720, i32 573440, i32 1146880, i32 2293760], [32 x i8] zeroinitializer }, align 32
@lm3532_led_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set ctrl:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3532_led_enable\00", [46 x i8] zeroinitializer }, align 32
@lm3532_led_enable._entry_ptr = internal global ptr @lm3532_led_enable._entry, section ".printk_index", align 4
@lm3532_led_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3532_led_disable\00", [45 x i8] zeroinitializer }, align 32
@lm3532_led_disable._entry_ptr = internal global ptr @lm3532_led_disable._entry, section ".printk_index", align 4
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"lm3532_i2c_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 731, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 736, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"of_lm3532_leds_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 719, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"lm3532_id\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 725, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 675, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"lm3532_regmap_config\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 200, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 687, i32 20 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 690, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 695, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 700, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"lm3532_reg_defs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 175, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 555, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 559, i32 59 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 563, i32 53 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 566, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 570, i32 53 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 573, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 580, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 586, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 588, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 593, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 599, i32 41 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 602, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 606, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 609, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 619, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 626, i32 52 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 628, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 636, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 645, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 652, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [11 x i8] c"ramp_table\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 282, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 494, i32 53 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 499, i32 53 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 509, i32 53 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 516, i32 53 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 523, i32 53 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 530, i32 52 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"als_imp_table\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 210, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"als_avrg_table\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 267, i32 18 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 308, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [30 x i8] c"../drivers/leds/leds-lm3532.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 333, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lm3532_i2c_driver_exit, ptr @__initcall__kmod_leds_lm3532__290_740_lm3532_i2c_driver_init6, ptr @lm3532_i2c_driver_exit, ptr @lm3532_led_disable._entry, ptr @lm3532_led_disable._entry_ptr, ptr @lm3532_led_enable._entry, ptr @lm3532_led_enable._entry_ptr, ptr @lm3532_parse_node._entry, ptr @lm3532_parse_node._entry.21, ptr @lm3532_parse_node._entry.26, ptr @lm3532_parse_node._entry.29, ptr @lm3532_parse_node._entry.33, ptr @lm3532_parse_node._entry.37, ptr @lm3532_parse_node._entry.40, ptr @lm3532_parse_node._entry.44, ptr @lm3532_parse_node._entry.47, ptr @lm3532_parse_node._entry.50, ptr @lm3532_parse_node._entry.53, ptr @lm3532_parse_node._entry_ptr, ptr @lm3532_parse_node._entry_ptr.23, ptr @lm3532_parse_node._entry_ptr.28, ptr @lm3532_parse_node._entry_ptr.31, ptr @lm3532_parse_node._entry_ptr.35, ptr @lm3532_parse_node._entry_ptr.39, ptr @lm3532_parse_node._entry_ptr.42, ptr @lm3532_parse_node._entry_ptr.46, ptr @lm3532_parse_node._entry_ptr.49, ptr @lm3532_parse_node._entry_ptr.52, ptr @lm3532_parse_node._entry_ptr.55, ptr @lm3532_probe._entry, ptr @lm3532_probe._entry.11, ptr @lm3532_probe._entry.7, ptr @lm3532_probe._entry_ptr, ptr @lm3532_probe._entry_ptr.13, ptr @lm3532_probe._entry_ptr.9, ptr @lm3532_i2c_driver, ptr @.str, ptr @of_lm3532_leds_match, ptr @lm3532_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lm3532_probe._key, ptr @lm3532_regmap_config, ptr @.str.6, ptr @.str.8, ptr @lm3532_probe.__key, ptr @.str.10, ptr @.str.12, ptr @lm3532_reg_defs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @ramp_table, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @als_imp_table, ptr @als_avrg_table, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lm3532_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_reg_defs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_parse_node._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramp_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @als_imp_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @als_avrg_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_led_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3532_led_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3532_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3532_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3532_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3532_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3532_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %als_avg_time.i.i = alloca i32, align 4
  %als_impedance.i.i = alloca i32, align 4
  %control_bank.i = alloca i32, align 4
  %ramp_time.i = alloca i32, align 4
  %idata.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 440) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 124
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %client7 = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client7, align 4
  %dev9 = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev9, align 4
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3532_regmap_config, ptr noundef nonnull @lm3532_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body21

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %7) #10
  br label %cleanup

do.body21:                                        ; preds = %if.end6
  %lock = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @lm3532_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_bank.i) #7
  %9 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %control_bank.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramp_time.i) #7
  %10 = ptrtoint ptr %ramp_time.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ramp_time.i, align 4, !annotation !144
  %11 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client7, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i55 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 3) #7
  %cmp.i.i = icmp ugt ptr %call.i55, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i55
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.store.select.i, ptr %call.i, align 4
  %14 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client7, align 4
  %dev5.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %call6.i = tail call ptr @devm_regulator_get(ptr noundef %dev5.i, ptr noundef nonnull @.str.15) #7
  %regulator.i = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 1
  %cmp.i214.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select266.i = select i1 %cmp.i214.i, ptr null, ptr %call6.i
  %16 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.store.select266.i, ptr %regulator.i, align 4
  %17 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client7, align 4
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev13.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %ramp_time.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client7, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17.i, ptr noundef nonnull @.str.17) #10
  br label %if.end19.i

if.else.i:                                        ; preds = %do.body21
  %21 = ptrtoint ptr %ramp_time.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ramp_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp.i215.i = icmp slt i32 %22, 9
  br i1 %cmp.i215.i, label %if.else.i.lm3532_get_ramp_index.exit.i_crit_edge, label %if.end.i.i

if.else.i.lm3532_get_ramp_index.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_ramp_index.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %22)
  %cmp1.i.i = icmp ugt i32 %22, 65536
  br i1 %cmp1.i.i, label %if.end.i.i.lm3532_get_ramp_index.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.lm3532_get_ramp_index.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_ramp_index.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i216.i = call fastcc i32 @lm3532_get_index(ptr noundef nonnull @ramp_table, i32 noundef %22) #7
  br label %lm3532_get_ramp_index.exit.i

lm3532_get_ramp_index.exit.i:                     ; preds = %if.end3.i.i, %if.end.i.i.lm3532_get_ramp_index.exit.i_crit_edge, %if.else.i.lm3532_get_ramp_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i216.i, %if.end3.i.i ], [ 0, %if.else.i.lm3532_get_ramp_index.exit.i_crit_edge ], [ 7, %if.end.i.i.lm3532_get_ramp_index.exit.i_crit_edge ]
  %runtime_ramp_up.i = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %runtime_ramp_up.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %runtime_ramp_up.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %lm3532_get_ramp_index.exit.i, %do.end.i
  %24 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client7, align 4
  %dev21.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call.i217.i = call i32 @device_property_read_u32_array(ptr noundef %dev21.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %ramp_time.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i)
  %tobool23.not.i = icmp eq i32 %call.i217.i, 0
  br i1 %tobool23.not.i, label %if.else30.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client7, align 4
  %dev29.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29.i, ptr noundef nonnull @.str.22) #10
  br label %if.end32.i

if.else30.i:                                      ; preds = %if.end19.i
  %28 = ptrtoint ptr %ramp_time.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ramp_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp.i218.i = icmp slt i32 %29, 9
  br i1 %cmp.i218.i, label %if.else30.i.lm3532_get_ramp_index.exit224.i_crit_edge, label %if.end.i220.i

if.else30.i.lm3532_get_ramp_index.exit224.i_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_ramp_index.exit224.i

if.end.i220.i:                                    ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %29)
  %cmp1.i219.i = icmp ugt i32 %29, 65536
  br i1 %cmp1.i219.i, label %if.end.i220.i.lm3532_get_ramp_index.exit224.i_crit_edge, label %if.end3.i222.i

if.end.i220.i.lm3532_get_ramp_index.exit224.i_crit_edge: ; preds = %if.end.i220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_ramp_index.exit224.i

if.end3.i222.i:                                   ; preds = %if.end.i220.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i221.i = call fastcc i32 @lm3532_get_index(ptr noundef nonnull @ramp_table, i32 noundef %29) #7
  br label %lm3532_get_ramp_index.exit224.i

lm3532_get_ramp_index.exit224.i:                  ; preds = %if.end3.i222.i, %if.end.i220.i.lm3532_get_ramp_index.exit224.i_crit_edge, %if.else30.i.lm3532_get_ramp_index.exit224.i_crit_edge
  %retval.0.i223.i = phi i32 [ %call.i221.i, %if.end3.i222.i ], [ 0, %if.else30.i.lm3532_get_ramp_index.exit224.i_crit_edge ], [ 7, %if.end.i220.i.lm3532_get_ramp_index.exit224.i_crit_edge ]
  %runtime_ramp_down.i = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %runtime_ramp_down.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i223.i, ptr %runtime_ramp_down.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %lm3532_get_ramp_index.exit224.i, %do.end27.i
  %31 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev9, align 4
  %call34.i = call ptr @device_get_next_child_node(ptr noundef %32, ptr noundef null) #7
  %tobool35.not290.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not290.i, label %if.end32.i.lm3532_parse_node.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end32.i.lm3532_parse_node.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_parse_node.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end32.i
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %idata.i, i32 0, i32 1
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %idata.i, i32 0, i32 2
  %devname_mandatory.i = getelementptr inbounds %struct.led_init_data, ptr %idata.i, i32 0, i32 3
  %als_data.i.i = getelementptr inbounds %struct.lm3532_data, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0293.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %child.0291.i = phi ptr [ %call34.i, %for.body.lr.ph.i ], [ %call138.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idata.i) #7
  %33 = ptrtoint ptr %devname_mandatory.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777215, ptr %devname_mandatory.i, align 4
  %34 = ptrtoint ptr %idata.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %child.0291.i, ptr %idata.i, align 4
  %35 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.24, ptr %default_label.i, align 4
  %36 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client7, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %name.i, ptr %devicename.i, align 4
  %arrayidx.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i
  %call.i225.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %control_bank.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i)
  %tobool38.not.i = icmp eq i32 %call.i225.i, 0
  br i1 %tobool38.not.i, label %if.end45.i, label %do.end42.i

do.end42.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client7, align 4
  %dev44.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.27) #10
  br label %do.end29

if.end45.i:                                       ; preds = %for.body.i
  %41 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %control_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i56 = icmp sgt i32 %42, 2
  br i1 %cmp.i56, label %do.end49.i, label %if.end52.i

do.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client7, align 4
  %dev51.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.30) #10
  br label %for.inc.i

if.end52.i:                                       ; preds = %if.end45.i
  %control_bank53.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 2
  %45 = ptrtoint ptr %control_bank53.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %control_bank53.i, align 4
  %mode.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 3
  %call.i226.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.32, ptr noundef %mode.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226.i)
  %tobool55.not.i = icmp eq i32 %call.i226.i, 0
  br i1 %tobool55.not.i, label %if.end62.i, label %do.end59.i

do.end59.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client7, align 4
  %dev61.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61.i, ptr noundef nonnull @.str.34) #10
  br label %do.end29

if.end62.i:                                       ; preds = %if.end52.i
  %call63.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.36) #7
  br i1 %call63.i, label %land.lhs.true.i, label %if.end62.i.if.else72.i_crit_edge

if.end62.i.if.else72.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72.i

land.lhs.true.i:                                  ; preds = %if.end62.i
  %full_scale_current.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 6
  %call.i227.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.36, ptr noundef %full_scale_current.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool65.not.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i.if.else72.i_crit_edge, label %do.end69.i

land.lhs.true.i.if.else72.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72.i

do.end69.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client7, align 4
  %dev71.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.38) #10
  br label %if.end76.i

if.else72.i:                                      ; preds = %land.lhs.true.i.if.else72.i_crit_edge, %if.end62.i.if.else72.i_crit_edge
  %full_scale_current73.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 6
  %50 = ptrtoint ptr %full_scale_current73.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %full_scale_current73.i, align 4
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 29800) #7
  %53 = ptrtoint ptr %full_scale_current73.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %full_scale_current73.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else72.i, %do.end69.i
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp78.i = icmp eq i32 %55, 1
  br i1 %cmp78.i, label %if.then79.i, label %if.else92.i

if.then79.i:                                      ; preds = %if.end76.i
  %56 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mode.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %als_avg_time.i.i) #7
  %57 = ptrtoint ptr %als_avg_time.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %als_avg_time.i.i, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %als_impedance.i.i) #7
  %58 = ptrtoint ptr %als_impedance.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %als_impedance.i.i, align 4, !annotation !144
  %59 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev9, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef 24, i32 noundef 3520) #7
  %cmp.i228.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i228.i, label %if.then79.i.lm3532_parse_als.exit.thread.i_crit_edge, label %if.end.i229.i

if.then79.i.lm3532_parse_als.exit.thread.i_crit_edge: ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_parse_als.exit.thread.i

if.end.i229.i:                                    ; preds = %if.then79.i
  %61 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client7, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  %als_vmin.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 5
  %call.i91.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.56, ptr noundef %als_vmin.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i91.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i229.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i229.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %als_vmin.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %als_vmin.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i229.i.if.end5.i.i_crit_edge
  %64 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client7, align 4
  %dev7.i.i = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  %als_vmax.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 6
  %call.i92.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.57, ptr noundef %als_vmax.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i.i)
  %tobool9.not.i.i = icmp eq i32 %call.i92.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end12.i.i, label %if.end12.thread.i.i

if.end12.thread.i.i:                              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %als_vmax.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2000, ptr %als_vmax.i.i, align 4
  br label %if.end16.i.i

if.end12.i.i:                                     ; preds = %if.end5.i.i
  %67 = ptrtoint ptr %als_vmax.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr.i.i = load i32, ptr %als_vmax.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %.pr.i.i)
  %cmp14.i.i = icmp ugt i32 %.pr.i.i, 2000
  br i1 %cmp14.i.i, label %if.end12.i.i.lm3532_parse_als.exit.thread.i_crit_edge, label %if.end12.i.i.if.end16.i.i_crit_edge

if.end12.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end12.i.i.lm3532_parse_als.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_parse_als.exit.thread.i

if.end16.i.i:                                     ; preds = %if.end12.i.i.if.end16.i.i_crit_edge, %if.end12.thread.i.i
  %68 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client7, align 4
  %dev18.i.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  %call.i93.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev18.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull %als_impedance.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.end16.i.i.if.end24.i.i_crit_edge

if.end16.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.end16.i.i
  %70 = ptrtoint ptr %als_impedance.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %als_impedance.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18500, i32 %71)
  %cmp.i.i.i = icmp sgt i32 %71, 18500
  br i1 %cmp.i.i.i, label %if.else.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, label %if.end.i.i.i

if.else.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1.i.i.i = icmp slt i32 %71, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %i.039.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [32 x i32], ptr @als_imp_table, i32 0, i32 %i.039.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp5.i.i.i = icmp eq i32 %73, %71
  br i1 %cmp5.i.i.i, label %for.body.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, label %if.end7.i.i.i

for.body.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit.i.i

if.end7.i.i.i:                                    ; preds = %for.body.i.i.i
  %sub.i.i.i = add nsw i32 %i.039.i.i.i, -1
  %arrayidx8.i.i.i = getelementptr [32 x i32], ptr @als_imp_table, i32 0, i32 %sub.i.i.i
  %74 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx8.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %75)
  %cmp9.i.i.i = icmp slt i32 %71, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp11.i.i.i = icmp slt i32 %73, %71
  %or.cond.i.i.i = select i1 %cmp9.i.i.i, i1 %cmp11.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then12.i.i.i, label %for.inc.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i.i.i = sub i32 %71, %75
  %sub17.i.i.i = sub i32 %73, %71
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i.i, i32 %sub17.i.i.i)
  %cmp18.i.i.i = icmp slt i32 %sub15.i.i.i, %sub17.i.i.i
  %add.i.i.i = zext i1 %cmp18.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.039.i.i.i, %add.i.i.i
  br label %lm3532_get_als_imp_index.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end7.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.039.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit.i.i

lm3532_get_als_imp_index.exit.i.i:                ; preds = %for.inc.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, %if.then12.i.i.i, %for.body.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, %if.end.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge, %if.else.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.else.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge ], [ 31, %if.end.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then12.i.i.i ], [ %i.039.i.i.i, %for.body.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge ], [ -22, %for.inc.i.i.i.lm3532_get_als_imp_index.exit.i.i_crit_edge ]
  %conv.i.i = trunc i32 %retval.0.i.i.i to i8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %lm3532_get_als_imp_index.exit.i.i, %if.end16.i.i.if.end24.i.i_crit_edge
  %conv.sink.i.i = phi i8 [ %conv.i.i, %lm3532_get_als_imp_index.exit.i.i ], [ 0, %if.end16.i.i.if.end24.i.i_crit_edge ]
  %als1_imp_sel23.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %als1_imp_sel23.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.sink.i.i, ptr %als1_imp_sel23.i.i, align 1
  %77 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client7, align 4
  %dev26.i.i = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4
  %call.i94.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.59, ptr noundef nonnull %als_impedance.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i94.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else30.i.i, label %if.end24.i.i.if.end34.i.i_crit_edge

if.end24.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.else30.i.i:                                    ; preds = %if.end24.i.i
  %79 = ptrtoint ptr %als_impedance.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %als_impedance.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18500, i32 %80)
  %cmp.i95.i.i = icmp sgt i32 %80, 18500
  br i1 %cmp.i95.i.i, label %if.else30.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, label %if.end.i97.i.i

if.else30.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge: ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit118.i.i

if.end.i97.i.i:                                   ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp1.i96.i.i = icmp slt i32 %80, 0
  br i1 %cmp1.i96.i.i, label %if.end.i97.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, label %if.end.i97.i.i.for.body.i101.i.i_crit_edge

if.end.i97.i.i.for.body.i101.i.i_crit_edge:       ; preds = %if.end.i97.i.i
  br label %for.body.i101.i.i

if.end.i97.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge: ; preds = %if.end.i97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit118.i.i

for.body.i101.i.i:                                ; preds = %for.inc.i116.i.i.for.body.i101.i.i_crit_edge, %if.end.i97.i.i.for.body.i101.i.i_crit_edge
  %i.039.i98.i.i = phi i32 [ %inc.i114.i.i, %for.inc.i116.i.i.for.body.i101.i.i_crit_edge ], [ 1, %if.end.i97.i.i.for.body.i101.i.i_crit_edge ]
  %arrayidx.i99.i.i = getelementptr [32 x i32], ptr @als_imp_table, i32 0, i32 %i.039.i98.i.i
  %81 = ptrtoint ptr %arrayidx.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i99.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp5.i100.i.i = icmp eq i32 %82, %80
  br i1 %cmp5.i100.i.i, label %for.body.i101.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, label %if.end7.i107.i.i

for.body.i101.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge: ; preds = %for.body.i101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit118.i.i

if.end7.i107.i.i:                                 ; preds = %for.body.i101.i.i
  %sub.i102.i.i = add nsw i32 %i.039.i98.i.i, -1
  %arrayidx8.i103.i.i = getelementptr [32 x i32], ptr @als_imp_table, i32 0, i32 %sub.i102.i.i
  %83 = ptrtoint ptr %arrayidx8.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx8.i103.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %84)
  %cmp9.i104.i.i = icmp slt i32 %80, %84
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp11.i105.i.i = icmp slt i32 %82, %80
  %or.cond.i106.i.i = select i1 %cmp9.i104.i.i, i1 %cmp11.i105.i.i, i1 false
  br i1 %or.cond.i106.i.i, label %if.then12.i113.i.i, label %for.inc.i116.i.i

if.then12.i113.i.i:                               ; preds = %if.end7.i107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i108.i.i = sub i32 %80, %84
  %sub17.i109.i.i = sub i32 %82, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i108.i.i, i32 %sub17.i109.i.i)
  %cmp18.i110.i.i = icmp slt i32 %sub15.i108.i.i, %sub17.i109.i.i
  %add.i111.i.i = zext i1 %cmp18.i110.i.i to i32
  %spec.select.i112.i.i = add nuw nsw i32 %i.039.i98.i.i, %add.i111.i.i
  br label %lm3532_get_als_imp_index.exit118.i.i

for.inc.i116.i.i:                                 ; preds = %if.end7.i107.i.i
  %inc.i114.i.i = add nuw nsw i32 %i.039.i98.i.i, 1
  %exitcond.not.i115.i.i = icmp eq i32 %inc.i114.i.i, 32
  br i1 %exitcond.not.i115.i.i, label %for.inc.i116.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, label %for.inc.i116.i.i.for.body.i101.i.i_crit_edge

for.inc.i116.i.i.for.body.i101.i.i_crit_edge:     ; preds = %for.inc.i116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i101.i.i

for.inc.i116.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge: ; preds = %for.inc.i116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_get_als_imp_index.exit118.i.i

lm3532_get_als_imp_index.exit118.i.i:             ; preds = %for.inc.i116.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, %if.then12.i113.i.i, %for.body.i101.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, %if.end.i97.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge, %if.else30.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge
  %retval.0.i117.i.i = phi i32 [ 0, %if.else30.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge ], [ 31, %if.end.i97.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge ], [ %spec.select.i112.i.i, %if.then12.i113.i.i ], [ %i.039.i98.i.i, %for.body.i101.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge ], [ -22, %for.inc.i116.i.i.lm3532_get_als_imp_index.exit118.i.i_crit_edge ]
  %conv32.i.i = trunc i32 %retval.0.i117.i.i to i8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %lm3532_get_als_imp_index.exit118.i.i, %if.end24.i.i.if.end34.i.i_crit_edge
  %conv32.sink.i.i = phi i8 [ %conv32.i.i, %lm3532_get_als_imp_index.exit118.i.i ], [ 0, %if.end24.i.i.if.end34.i.i_crit_edge ]
  %als2_imp_sel33.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %als2_imp_sel33.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv32.sink.i.i, ptr %als2_imp_sel33.i.i, align 2
  %86 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client7, align 4
  %dev36.i.i = getelementptr inbounds %struct.i2c_client, ptr %87, i32 0, i32 4
  %call.i119.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev36.i.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %als_avg_time.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i.i)
  %tobool38.not.i.i = icmp eq i32 %call.i119.i.i, 0
  br i1 %tobool38.not.i.i, label %if.else40.i.i, label %if.end34.i.i.if.end44.i.i_crit_edge

if.end34.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

if.else40.i.i:                                    ; preds = %if.end34.i.i
  %88 = ptrtoint ptr %als_avg_time.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %als_avg_time.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17921, i32 %89)
  %cmp.i120.i.i = icmp slt i32 %89, 17921
  br i1 %cmp.i120.i.i, label %if.else40.i.i.if.end44.i.i_crit_edge, label %if.end.i122.i.i

if.else40.i.i.if.end44.i.i_crit_edge:             ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

if.end.i122.i.i:                                  ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2293760, i32 %89)
  %cmp1.i121.i.i = icmp ugt i32 %89, 2293760
  br i1 %cmp1.i121.i.i, label %if.end.i122.i.i.if.end44.i.i_crit_edge, label %if.end3.i.i.i

if.end.i122.i.i.if.end44.i.i_crit_edge:           ; preds = %if.end.i122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i123.i.i = call fastcc i32 @lm3532_get_index(ptr noundef nonnull @als_avrg_table, i32 noundef %89) #7
  %phi.cast.i.i = trunc i32 %call.i123.i.i to i8
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.end3.i.i.i, %if.end.i122.i.i.if.end44.i.i_crit_edge, %if.else40.i.i.if.end44.i.i_crit_edge, %if.end34.i.i.if.end44.i.i_crit_edge
  %retval.0.i124.sink.i.i = phi i8 [ 0, %if.end34.i.i.if.end44.i.i_crit_edge ], [ %phi.cast.i.i, %if.end3.i.i.i ], [ 0, %if.else40.i.i.if.end44.i.i_crit_edge ], [ 7, %if.end.i122.i.i.if.end44.i.i_crit_edge ]
  %als_avrg_time43.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %als_avrg_time43.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %retval.0.i124.sink.i.i, ptr %als_avrg_time43.i.i, align 1
  %91 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client7, align 4
  %dev46.i.i = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 4
  %als_input_mode.i.i = getelementptr inbounds %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 4
  %call.i125.i.i = call i32 @device_property_read_u8_array(ptr noundef %dev46.i.i, ptr noundef nonnull @.str.61, ptr noundef %als_input_mode.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i.i)
  %tobool48.not.i.i = icmp eq i32 %call.i125.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end51.i.i, label %lm3532_parse_als.exit.i

if.end51.i.i:                                     ; preds = %if.end44.i.i
  %93 = ptrtoint ptr %als_input_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %.pr127.i.i = load i8, ptr %als_input_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr127.i.i)
  %cmp54.i.i = icmp ugt i8 %.pr127.i.i, 1
  br i1 %cmp54.i.i, label %if.end51.i.i.lm3532_parse_als.exit.thread.i_crit_edge, label %if.else89.i

if.end51.i.i.lm3532_parse_als.exit.thread.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_parse_als.exit.thread.i

lm3532_parse_als.exit.thread.i:                   ; preds = %if.end51.i.i.lm3532_parse_als.exit.thread.i_crit_edge, %if.end12.i.i.lm3532_parse_als.exit.thread.i_crit_edge, %if.then79.i.lm3532_parse_als.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_impedance.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_avg_time.i.i) #7
  br label %do.end86.i

lm3532_parse_als.exit.i:                          ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %als_input_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %als_input_mode.i.i, align 4
  %95 = ptrtoint ptr %als_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i.i.i, ptr %als_data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_impedance.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_avg_time.i.i) #7
  br label %do.end86.i

do.end86.i:                                       ; preds = %lm3532_parse_als.exit.i, %lm3532_parse_als.exit.thread.i
  %96 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %client7, align 4
  %dev88.i = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88.i, ptr noundef nonnull @.str.41) #10
  br label %if.end94.i

if.else89.i:                                      ; preds = %if.end51.i.i
  %98 = ptrtoint ptr %als_data.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i.i.i, ptr %als_data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_impedance.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_avg_time.i.i) #7
  %99 = ptrtoint ptr %als_vmin.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %als_vmin.i.i, align 4
  %101 = ptrtoint ptr %als_vmax.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %als_vmax.i.i, align 4
  %sub.i.i = sub i32 %102, %100
  %div.i.i = udiv i32 %sub.i.i, 10
  %add.i.i = add i32 %div.i.i, %100
  %add7.i.i = add i32 %add.i.i, 2
  %mul4.i.i = mul i32 %add.i.i, 255
  %div5.i.i = udiv i32 %mul4.i.i, 1000
  %conv.i232.i = trunc i32 %div5.i.i to i8
  %arrayidx.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 7, i32 0
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.i232.i, ptr %arrayidx.i.i, align 1
  %mul10.i.i = mul i32 %add7.i.i, 255
  %div11.i.i = udiv i32 %mul10.i.i, 1000
  %conv12.i.i = trunc i32 %div11.i.i to i8
  %arrayidx13.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 8, i32 0
  %104 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv12.i.i, ptr %arrayidx13.i.i, align 1
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %conv18.i.i = and i32 %div5.i.i, 255
  %call.i233.i = call i32 @regmap_write(ptr noundef %106, i32 noundef 96, i32 noundef %conv18.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233.i)
  %tobool.not.i234.i = icmp eq i32 %call.i233.i, 0
  br i1 %tobool.not.i234.i, label %if.end.i236.i, label %if.else89.i.if.end94.i_crit_edge

if.else89.i.if.end94.i_crit_edge:                 ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

for.cond.i.i:                                     ; preds = %if.end.i236.i
  %add3.1.i.i = add i32 %add.i.i, %div.i.i
  %mul4.1.i.i = mul i32 %add3.1.i.i, 255
  %div5.1.i.i = udiv i32 %mul4.1.i.i, 1000
  %conv.1.i.i = trunc i32 %div5.1.i.i to i8
  %arrayidx.1.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 7, i32 1
  %107 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv.1.i.i, ptr %arrayidx.1.i.i, align 1
  %add9.1.i.i = add i32 %add7.i.i, %div.i.i
  %mul10.1.i.i = mul i32 %add9.1.i.i, 255
  %div11.1.i.i = udiv i32 %mul10.1.i.i, 1000
  %conv12.1.i.i = trunc i32 %div11.1.i.i to i8
  %arrayidx13.1.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 8, i32 1
  %108 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv12.1.i.i, ptr %arrayidx13.1.i.i, align 1
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %conv18.1.i.i = and i32 %div5.1.i.i, 255
  %call.1.i.i = call i32 @regmap_write(ptr noundef %110, i32 noundef 98, i32 noundef %conv18.1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %for.cond.i.i.if.end94.i_crit_edge

for.cond.i.i.if.end94.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.end.1.i.i:                                     ; preds = %for.cond.i.i
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %113 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx13.1.i.i, align 1
  %conv23.1.i.i = zext i8 %114 to i32
  %call24.1.i.i = call i32 @regmap_write(ptr noundef %112, i32 noundef 99, i32 noundef %conv23.1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1.i.i)
  %tobool25.not.1.i.i = icmp eq i32 %call24.1.i.i, 0
  br i1 %tobool25.not.1.i.i, label %for.cond.1.i.i, label %if.end.1.i.i.if.end94.i_crit_edge

if.end.1.i.i.if.end94.i_crit_edge:                ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

for.cond.1.i.i:                                   ; preds = %if.end.1.i.i
  %mul.2.i.i = shl nuw nsw i32 %div.i.i, 1
  %add3.2.i.i = add i32 %add.i.i, %mul.2.i.i
  %mul4.2.i.i = mul i32 %add3.2.i.i, 255
  %div5.2.i.i = udiv i32 %mul4.2.i.i, 1000
  %conv.2.i.i = trunc i32 %div5.2.i.i to i8
  %arrayidx.2.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 7, i32 2
  %115 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.2.i.i, ptr %arrayidx.2.i.i, align 1
  %add9.2.i.i = add i32 %add7.i.i, %mul.2.i.i
  %mul10.2.i.i = mul i32 %add9.2.i.i, 255
  %div11.2.i.i = udiv i32 %mul10.2.i.i, 1000
  %conv12.2.i.i = trunc i32 %div11.2.i.i to i8
  %arrayidx13.2.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 8, i32 2
  %116 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv12.2.i.i, ptr %arrayidx13.2.i.i, align 1
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %conv18.2.i.i = and i32 %div5.2.i.i, 255
  %call.2.i.i = call i32 @regmap_write(ptr noundef %118, i32 noundef 100, i32 noundef %conv18.2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %for.cond.1.i.i.if.end94.i_crit_edge

for.cond.1.i.i.if.end94.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.end.2.i.i:                                     ; preds = %for.cond.1.i.i
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %121 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx13.2.i.i, align 1
  %conv23.2.i.i = zext i8 %122 to i32
  %call24.2.i.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 101, i32 noundef %conv23.2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2.i.i)
  %tobool25.not.2.i.i = icmp eq i32 %call24.2.i.i, 0
  br i1 %tobool25.not.2.i.i, label %for.cond.2.i.i, label %if.end.2.i.i.if.end94.i_crit_edge

if.end.2.i.i.if.end94.i_crit_edge:                ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

for.cond.2.i.i:                                   ; preds = %if.end.2.i.i
  %mul.3.i.i = mul nuw nsw i32 %div.i.i, 3
  %add3.3.i.i = add i32 %add.i.i, %mul.3.i.i
  %mul4.3.i.i = mul i32 %add3.3.i.i, 255
  %div5.3.i.i = udiv i32 %mul4.3.i.i, 1000
  %conv.3.i.i = trunc i32 %div5.3.i.i to i8
  %arrayidx.3.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 7, i32 3
  %123 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.3.i.i, ptr %arrayidx.3.i.i, align 1
  %add9.3.i.i = add i32 %add7.i.i, %mul.3.i.i
  %mul10.3.i.i = mul i32 %add9.3.i.i, 255
  %div11.3.i.i = udiv i32 %mul10.3.i.i, 1000
  %conv12.3.i.i = trunc i32 %div11.3.i.i to i8
  %arrayidx13.3.i.i = getelementptr %struct.lm3532_als_data, ptr %call.i.i.i, i32 0, i32 8, i32 3
  %124 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv12.3.i.i, ptr %arrayidx13.3.i.i, align 1
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  %conv18.3.i.i = and i32 %div5.3.i.i, 255
  %call.3.i.i = call i32 @regmap_write(ptr noundef %126, i32 noundef 102, i32 noundef %conv18.3.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %for.cond.2.i.i.if.end94.i_crit_edge

for.cond.2.i.i.if.end94.i_crit_edge:              ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.end.3.i.i:                                     ; preds = %for.cond.2.i.i
  %127 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap, align 4
  %129 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx13.3.i.i, align 1
  %conv23.3.i.i = zext i8 %130 to i32
  %call24.3.i.i = call i32 @regmap_write(ptr noundef %128, i32 noundef 103, i32 noundef %conv23.3.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3.i.i)
  %tobool25.not.3.i.i = icmp eq i32 %call24.3.i.i, 0
  br i1 %tobool25.not.3.i.i, label %for.cond.3.i.i, label %if.end.3.i.i.if.end94.i_crit_edge

if.end.3.i.i.if.end94.i_crit_edge:                ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

for.cond.3.i.i:                                   ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %als_avrg_time43.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %als_avrg_time43.i.i, align 1
  %133 = ptrtoint ptr %als_input_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %als_input_mode.i.i, align 4
  %shl.i.i = shl i8 %134, 6
  %135 = or i8 %132, %shl.i.i
  %or30.i.i = or i8 %135, 8
  %136 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %or30.i.i, ptr %call.i.i.i, align 4
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 4
  %conv34.i.i = zext i8 %or30.i.i to i32
  %call35.i.i = call i32 @regmap_write(ptr noundef %138, i32 noundef 35, i32 noundef %conv34.i.i) #7
  br label %if.end94.i

if.end.i236.i:                                    ; preds = %if.else89.i
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 4
  %141 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx13.i.i, align 1
  %conv23.i.i = zext i8 %142 to i32
  %call24.i.i = call i32 @regmap_write(ptr noundef %140, i32 noundef 97, i32 noundef %conv23.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %for.cond.i.i, label %if.end.i236.i.if.end94.i_crit_edge

if.end.i236.i.if.end94.i_crit_edge:               ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.else92.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %mode.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else92.i, %if.end.i236.i.if.end94.i_crit_edge, %for.cond.3.i.i, %if.end.3.i.i.if.end94.i_crit_edge, %for.cond.2.i.i.if.end94.i_crit_edge, %if.end.2.i.i.if.end94.i_crit_edge, %for.cond.1.i.i.if.end94.i_crit_edge, %if.end.1.i.i.if.end94.i_crit_edge, %for.cond.i.i.if.end94.i_crit_edge, %if.else89.i.if.end94.i_crit_edge, %do.end86.i
  %call.i237.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0) #7
  %num_leds.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 5
  %144 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call.i237.i, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i237.i)
  %cmp97.i = icmp sgt i32 %call.i237.i, 3
  br i1 %cmp97.i, label %do.end101.i, label %if.end104.i

do.end101.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %client7, align 4
  %dev103.i = getelementptr inbounds %struct.i2c_client, ptr %146, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103.i, ptr noundef nonnull @.str.45) #10
  br label %for.inc.i

if.end104.i:                                      ; preds = %if.end94.i
  %led_strings.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 8
  %call107.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0291.i, ptr noundef nonnull @.str.43, ptr noundef %led_strings.i, i32 noundef %call.i237.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end115.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %client7, align 4
  %dev114.i = getelementptr inbounds %struct.i2c_client, ptr %148, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114.i, ptr noundef nonnull @.str.48) #10
  br label %do.end29

if.end115.i:                                      ; preds = %if.end104.i
  %priv116.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 1
  %149 = ptrtoint ptr %priv116.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i, ptr %priv116.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i, i32 0, i32 6
  %150 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @lm3532_brightness_set, ptr %brightness_set_blocking.i, align 4
  %151 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev9, align 4
  %call119.i = call i32 @devm_led_classdev_register_ext(ptr noundef %152, ptr noundef %arrayidx.i, ptr noundef nonnull %idata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end127.i, label %do.end124.i

do.end124.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %client7, align 4
  %dev126.i = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126.i, ptr noundef nonnull @.str.51, i32 noundef %call119.i) #10
  br label %do.end29

if.end127.i:                                      ; preds = %if.end115.i
  %155 = ptrtoint ptr %priv116.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv116.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %tobool.not.i238.i = icmp eq ptr %158, null
  br i1 %tobool.not.i238.i, label %if.end127.i.if.end.i242.i_crit_edge, label %if.then.i.i

if.end127.i.if.end.i242.i_crit_edge:              ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i242.i

if.then.i.i:                                      ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i239.i = call i32 @gpiod_direction_output(ptr noundef nonnull %158, i32 noundef 1) #7
  br label %if.end.i242.i

if.end.i242.i:                                    ; preds = %if.then.i.i, %if.end127.i.if.end.i242.i_crit_edge
  %159 = ptrtoint ptr %control_bank53.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %control_bank53.i, align 4
  %mul.i.i = shl i32 %160, 1
  %add.i240.i = add i32 %mul.i.i, 22
  %regmap.i241.i = getelementptr inbounds %struct.lm3532_data, ptr %156, i32 0, i32 3
  %161 = ptrtoint ptr %regmap.i241.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap.i241.i, align 4
  %ctrl_brt_pointer.i.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %162, i32 noundef %add.i240.i, ptr noundef %ctrl_brt_pointer.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i243.i, label %if.end.i242.i.do.end133.i_crit_edge

if.end.i242.i.do.end133.i_crit_edge:              ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

if.end5.i243.i:                                   ; preds = %if.end.i242.i
  %163 = ptrtoint ptr %ctrl_brt_pointer.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ctrl_brt_pointer.i.i, align 4
  %and.i.i = and i32 %164, 28
  store i32 %and.i.i, ptr %ctrl_brt_pointer.i.i, align 4
  %165 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mode.i, align 4
  %or.i.i = or i32 %166, %and.i.i
  %167 = ptrtoint ptr %regmap.i241.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap.i241.i, align 4
  %call9.i.i = call i32 @regmap_write(ptr noundef %168, i32 noundef %add.i240.i, i32 noundef %or.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i244.i, label %if.end5.i243.i.do.end133.i_crit_edge

if.end5.i243.i.do.end133.i_crit_edge:             ; preds = %if.end5.i243.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

if.end12.i244.i:                                  ; preds = %if.end5.i243.i
  %full_scale_current.i.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 6
  %169 = ptrtoint ptr %full_scale_current.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %full_scale_current.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool13.not.i.i = icmp eq i32 %170, 0
  br i1 %tobool13.not.i.i, label %if.end12.i244.i.if.end24.i247.i_crit_edge, label %if.then14.i.i

if.end12.i244.i.if.end24.i247.i_crit_edge:        ; preds = %if.end12.i244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i247.i

if.then14.i.i:                                    ; preds = %if.end12.i244.i
  %171 = ptrtoint ptr %control_bank53.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %control_bank53.i, align 4
  %mul16.i.i = shl i32 %172, 1
  %add17.i.i = add i32 %mul16.i.i, 23
  %sub.i245.i = add i32 %170, -5000
  %div.i246.i = sdiv i32 %sub.i245.i, 800
  %173 = ptrtoint ptr %regmap.i241.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap.i241.i, align 4
  %call20.i.i = call i32 @regmap_write(ptr noundef %174, i32 noundef %add17.i.i, i32 noundef %div.i246.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then14.i.i.if.end24.i247.i_crit_edge, label %if.then14.i.i.do.end133.i_crit_edge

if.then14.i.i.do.end133.i_crit_edge:              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

if.then14.i.i.if.end24.i247.i_crit_edge:          ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i247.i

if.end24.i247.i:                                  ; preds = %if.then14.i.i.if.end24.i247.i_crit_edge, %if.end12.i244.i.if.end24.i247.i_crit_edge
  %175 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp82.i.i = icmp sgt i32 %176, 0
  br i1 %cmp82.i.i, label %for.body.lr.ph.i.i, label %if.end24.i247.i.for.end.i.i_crit_edge

if.end24.i247.i.for.end.i.i_crit_edge:            ; preds = %if.end24.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end24.i247.i
  %177 = ptrtoint ptr %control_bank53.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %control_bank53.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.085.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %output_cfg_mask.084.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or29.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %output_cfg_val.083.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %or27.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i248.i = getelementptr %struct.lm3532_data, ptr %call.i, i32 0, i32 9, i32 %i.0293.i, i32 8, i32 %i.085.i.i
  %179 = ptrtoint ptr %arrayidx.i248.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i248.i, align 4
  %mul25.i.i = shl i32 %180, 1
  %shl.i249.i = shl i32 %178, %mul25.i.i
  %or27.i.i = or i32 %shl.i249.i, %output_cfg_val.083.i.i
  %shl28.i.i = shl i32 3, %mul25.i.i
  %or29.i.i = or i32 %shl28.i.i, %output_cfg_mask.084.i.i
  %inc.i.i = add nuw nsw i32 %i.085.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %176
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end24.i247.i.for.end.i.i_crit_edge
  %output_cfg_val.0.lcssa.i.i = phi i32 [ 0, %if.end24.i247.i.for.end.i.i_crit_edge ], [ %or27.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %output_cfg_mask.0.lcssa.i.i = phi i32 [ 0, %if.end24.i247.i.for.end.i.i_crit_edge ], [ %or29.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %181 = ptrtoint ptr %regmap.i241.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap.i241.i, align 4
  %call.i.i250.i = call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef 16, i32 noundef %output_cfg_mask.0.lcssa.i.i, i32 noundef %output_cfg_val.0.lcssa.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250.i)
  %tobool32.not.i.i = icmp eq i32 %call.i.i250.i, 0
  br i1 %tobool32.not.i.i, label %lm3532_init_registers.exit.i, label %for.end.i.i.do.end133.i_crit_edge

for.end.i.i.do.end133.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

lm3532_init_registers.exit.i:                     ; preds = %for.end.i.i
  %runtime_ramp_up.i.i = getelementptr inbounds %struct.lm3532_data, ptr %156, i32 0, i32 7
  %183 = ptrtoint ptr %runtime_ramp_up.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %runtime_ramp_up.i.i, align 4
  %runtime_ramp_down.i.i = getelementptr inbounds %struct.lm3532_data, ptr %156, i32 0, i32 8
  %185 = ptrtoint ptr %runtime_ramp_down.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %runtime_ramp_down.i.i, align 4
  %shl35.i.i = shl i32 %186, 3
  %or36.i.i = or i32 %shl35.i.i, %184
  %187 = ptrtoint ptr %regmap.i241.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap.i241.i, align 4
  %call38.i.i = call i32 @regmap_write(ptr noundef %188, i32 noundef 18, i32 noundef %or36.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool129.not.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool129.not.i, label %if.end136.i, label %lm3532_init_registers.exit.i.do.end133.i_crit_edge

lm3532_init_registers.exit.i.do.end133.i_crit_edge: ; preds = %lm3532_init_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133.i

do.end133.i:                                      ; preds = %lm3532_init_registers.exit.i.do.end133.i_crit_edge, %for.end.i.i.do.end133.i_crit_edge, %if.then14.i.i.do.end133.i_crit_edge, %if.end5.i243.i.do.end133.i_crit_edge, %if.end.i242.i.do.end133.i_crit_edge
  %retval.0.i252261.i = phi i32 [ %call38.i.i, %lm3532_init_registers.exit.i.do.end133.i_crit_edge ], [ %call.i.i250.i, %for.end.i.i.do.end133.i_crit_edge ], [ %call20.i.i, %if.then14.i.i.do.end133.i_crit_edge ], [ %call9.i.i, %if.end5.i243.i.do.end133.i_crit_edge ], [ %call2.i.i, %if.end.i242.i.do.end133.i_crit_edge ]
  %189 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %client7, align 4
  %dev135.i = getelementptr inbounds %struct.i2c_client, ptr %190, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135.i, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i252261.i) #10
  br label %do.end29

if.end136.i:                                      ; preds = %lm3532_init_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %i.0293.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end136.i, %do.end101.i, %do.end49.i
  %i.1.i = phi i32 [ %i.0293.i, %do.end49.i ], [ %i.0293.i, %do.end101.i ], [ %inc.i, %if.end136.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idata.i) #7
  %191 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev9, align 4
  %call138.i = call ptr @device_get_next_child_node(ptr noundef %192, ptr noundef nonnull %child.0291.i) #7
  %tobool35.not.i = icmp eq ptr %call138.i, null
  br i1 %tobool35.not.i, label %for.inc.i.lm3532_parse_node.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.lm3532_parse_node.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3532_parse_node.exit.thread

lm3532_parse_node.exit.thread:                    ; preds = %for.inc.i.lm3532_parse_node.exit.thread_crit_edge, %if.end32.i.lm3532_parse_node.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramp_time.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_bank.i) #7
  br label %cleanup

do.end29:                                         ; preds = %do.end133.i, %do.end124.i, %do.end112.i, %do.end59.i, %do.end42.i
  %ret.1.ph.i = phi i32 [ %retval.0.i252261.i, %do.end133.i ], [ %call119.i, %do.end124.i ], [ %call107.i, %do.end112.i ], [ %call.i226.i, %do.end59.i ], [ %call.i225.i, %do.end42.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idata.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %child.0291.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramp_time.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_bank.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %lm3532_parse_node.exit.thread, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then13 ], [ %ret.1.ph.i, %do.end29 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %lm3532_parse_node.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3532_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.lm3532_data, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %3, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3532_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brt_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.lm3532_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brt_val)
  %cmp1.not = icmp eq i32 %brt_val, 0
  %enabled.i30 = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 7
  %4 = ptrtoint ptr %enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i31 = load i8, ptr %enabled.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i31)
  %tobool.not.i32 = icmp sgt i8 %bf.load.i31, -1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  br i1 %tobool.not.i32, label %if.end.i, label %if.then2.unlock_crit_edge

if.then2.unlock_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i:                                         ; preds = %if.then2
  %control_bank.i = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 2
  %5 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control_bank.i, align 4
  %shl.i = shl nuw i32 1, %6
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %regmap.i = getelementptr inbounds %struct.lm3532_data, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 29, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  br i1 %tobool1.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.lm3532_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef %call.i.i) #10
  br label %unlock

if.end4.i:                                        ; preds = %if.end.i
  %regulator.i = getelementptr inbounds %struct.lm3532_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regulator.i, align 4
  %call6.i = tail call i32 @regulator_enable(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end4.i.unlock_crit_edge, label %if.end8.i

if.end4.i.unlock_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load10.i = load i8, ptr %enabled.i30, align 4
  %bf.set.i = or i8 %bf.load10.i, -128
  store i8 %bf.set.i, ptr %enabled.i30, align 4
  br label %unlock

if.else:                                          ; preds = %if.then
  br i1 %tobool.not.i32, label %if.else.unlock_crit_edge, label %if.end.i39

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i39:                                       ; preds = %if.else
  %control_bank.i33 = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 2
  %18 = ptrtoint ptr %control_bank.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %control_bank.i33, align 4
  %shl.i34 = shl nuw i32 1, %19
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %regmap.i36 = getelementptr inbounds %struct.lm3532_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i36, align 4
  %call.i.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 29, i32 noundef %shl.i34, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool1.not.i38 = icmp eq i32 %call.i.i37, 0
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  br i1 %tobool1.not.i38, label %if.end4.i45, label %do.end.i41

do.end.i41:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i40 = getelementptr inbounds %struct.lm3532_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.62, i32 noundef %call.i.i37) #10
  br label %unlock

if.end4.i45:                                      ; preds = %if.end.i39
  %regulator.i42 = getelementptr inbounds %struct.lm3532_data, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %regulator.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regulator.i42, align 4
  %call6.i43 = tail call i32 @regulator_disable(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i43)
  %cmp.i44 = icmp slt i32 %call6.i43, 0
  br i1 %cmp.i44, label %if.end4.i45.unlock_crit_edge, label %if.end8.i47

if.end4.i45.unlock_crit_edge:                     ; preds = %if.end4.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8.i47:                                      ; preds = %if.end4.i45
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load10.i46 = load i8, ptr %enabled.i30, align 4
  %bf.clear.i = and i8 %bf.load10.i46, 127
  store i8 %bf.clear.i, ptr %enabled.i30, align 4
  br label %unlock

if.end4:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  br i1 %tobool.not.i32, label %if.then6.unlock_crit_edge, label %if.end.i58

if.then6.unlock_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i58:                                       ; preds = %if.then6
  %control_bank.i52 = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 2
  %31 = ptrtoint ptr %control_bank.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %control_bank.i52, align 4
  %shl.i53 = shl nuw i32 1, %32
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %regmap.i55 = getelementptr inbounds %struct.lm3532_data, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i55, align 4
  %call.i.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 29, i32 noundef %shl.i53, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool1.not.i57 = icmp eq i32 %call.i.i56, 0
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  br i1 %tobool1.not.i57, label %if.end4.i64, label %do.end.i60

do.end.i60:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i59 = getelementptr inbounds %struct.lm3532_data, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.62, i32 noundef %call.i.i56) #10
  br label %unlock

if.end4.i64:                                      ; preds = %if.end.i58
  %regulator.i61 = getelementptr inbounds %struct.lm3532_data, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %regulator.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regulator.i61, align 4
  %call6.i62 = tail call i32 @regulator_disable(ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i62)
  %cmp.i63 = icmp slt i32 %call6.i62, 0
  br i1 %cmp.i63, label %if.end4.i64.unlock_crit_edge, label %if.end8.i67

if.end4.i64.unlock_crit_edge:                     ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8.i67:                                      ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load10.i65 = load i8, ptr %enabled.i30, align 4
  %bf.clear.i66 = and i8 %bf.load10.i65, 127
  store i8 %bf.clear.i66, ptr %enabled.i30, align 4
  br label %unlock

if.end8:                                          ; preds = %if.end4
  br i1 %tobool.not.i32, label %if.end.i79, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i79:                                       ; preds = %if.end8
  %control_bank.i73 = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 2
  %44 = ptrtoint ptr %control_bank.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %control_bank.i73, align 4
  %shl.i74 = shl nuw i32 1, %45
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  %regmap.i76 = getelementptr inbounds %struct.lm3532_data, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i76, align 4
  %call.i.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 29, i32 noundef %shl.i74, i32 noundef %shl.i74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool1.not.i78 = icmp eq i32 %call.i.i77, 0
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 4
  br i1 %tobool1.not.i78, label %if.end4.i85, label %do.end.i81

do.end.i81:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i80 = getelementptr inbounds %struct.lm3532_data, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.62, i32 noundef %call.i.i77) #10
  br label %unlock

if.end4.i85:                                      ; preds = %if.end.i79
  %regulator.i82 = getelementptr inbounds %struct.lm3532_data, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %regulator.i82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regulator.i82, align 4
  %call6.i83 = tail call i32 @regulator_enable(ptr noundef %55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i83)
  %cmp.i84 = icmp slt i32 %call6.i83, 0
  br i1 %cmp.i84, label %if.end4.i85.unlock_crit_edge, label %if.end8.i88

if.end4.i85.unlock_crit_edge:                     ; preds = %if.end4.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8.i88:                                      ; preds = %if.end4.i85
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load10.i86 = load i8, ptr %enabled.i30, align 4
  %bf.set.i87 = or i8 %bf.load10.i86, -128
  store i8 %bf.set.i87, ptr %enabled.i30, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end8.i88, %if.end8.if.end11_crit_edge
  %control_bank = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 2
  %57 = ptrtoint ptr %control_bank to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %control_bank, align 4
  %mul = mul i32 %58, 5
  %add = add i32 %mul, 112
  %ctrl_brt_pointer = getelementptr inbounds %struct.lm3532_led, ptr %led_cdev, i32 0, i32 4
  %59 = ptrtoint ptr %ctrl_brt_pointer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctrl_brt_pointer, align 4
  %61 = lshr i32 %60, 2
  %add12 = add i32 %add, %61
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.lm3532_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %conv14 = and i32 %add12, 255
  %call15 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %conv14, i32 noundef %brt_val) #7
  br label %unlock

unlock:                                           ; preds = %if.end11, %if.end4.i85.unlock_crit_edge, %do.end.i81, %if.end8.i67, %if.end4.i64.unlock_crit_edge, %do.end.i60, %if.then6.unlock_crit_edge, %if.end8.i47, %if.end4.i45.unlock_crit_edge, %do.end.i41, %if.else.unlock_crit_edge, %if.end8.i, %if.end4.i.unlock_crit_edge, %do.end.i, %if.then2.unlock_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end11 ], [ %call.i.i, %do.end.i ], [ 0, %if.end8.i ], [ 0, %if.then2.unlock_crit_edge ], [ %call6.i, %if.end4.i.unlock_crit_edge ], [ %call.i.i37, %do.end.i41 ], [ 0, %if.end8.i47 ], [ 0, %if.else.unlock_crit_edge ], [ %call6.i43, %if.end4.i45.unlock_crit_edge ], [ %call.i.i56, %do.end.i60 ], [ 0, %if.end8.i67 ], [ 0, %if.then6.unlock_crit_edge ], [ %call6.i62, %if.end4.i64.unlock_crit_edge ], [ %call.i.i77, %do.end.i81 ], [ %call6.i83, %if.end4.i85.unlock_crit_edge ]
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 4
  %lock17 = getelementptr inbounds %struct.lm3532_data, ptr %67, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %lock17) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3532_get_index(ptr nocapture noundef readonly %table, i32 noundef %value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %table, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %value)
  %cmp1 = icmp eq i32 %1, %value
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %value)
  %cmp3 = icmp slt i32 %3, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %value)
  %cmp5 = icmp sgt i32 %1, %value
  %or.cond = select i1 %cmp3, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.if.then6_crit_edge, label %for.inc

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %if.end.6.if.then6_crit_edge, %if.end.5.if.then6_crit_edge, %if.end.4.if.then6_crit_edge, %if.end.3.if.then6_crit_edge, %if.end.2.if.then6_crit_edge, %if.end.1.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %i.03.lcssa6 = phi i32 [ 1, %if.end.if.then6_crit_edge ], [ 2, %if.end.1.if.then6_crit_edge ], [ 3, %if.end.2.if.then6_crit_edge ], [ 4, %if.end.3.if.then6_crit_edge ], [ 5, %if.end.4.if.then6_crit_edge ], [ 6, %if.end.5.if.then6_crit_edge ], [ 7, %if.end.6.if.then6_crit_edge ]
  %.lcssa5 = phi i32 [ %1, %if.end.if.then6_crit_edge ], [ %5, %if.end.1.if.then6_crit_edge ], [ %9, %if.end.2.if.then6_crit_edge ], [ %13, %if.end.3.if.then6_crit_edge ], [ %17, %if.end.4.if.then6_crit_edge ], [ %21, %if.end.5.if.then6_crit_edge ], [ %25, %if.end.6.if.then6_crit_edge ]
  %sub.lcssa = phi i32 [ 0, %if.end.if.then6_crit_edge ], [ 1, %if.end.1.if.then6_crit_edge ], [ 2, %if.end.2.if.then6_crit_edge ], [ 3, %if.end.3.if.then6_crit_edge ], [ 4, %if.end.4.if.then6_crit_edge ], [ 5, %if.end.5.if.then6_crit_edge ], [ 6, %if.end.6.if.then6_crit_edge ]
  %.lcssa = phi i32 [ %3, %if.end.if.then6_crit_edge ], [ %7, %if.end.1.if.then6_crit_edge ], [ %11, %if.end.2.if.then6_crit_edge ], [ %15, %if.end.3.if.then6_crit_edge ], [ %19, %if.end.4.if.then6_crit_edge ], [ %23, %if.end.5.if.then6_crit_edge ], [ %27, %if.end.6.if.then6_crit_edge ]
  %sub9 = sub i32 %value, %.lcssa
  %sub11 = sub i32 %.lcssa5, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %sub11)
  %cmp12 = icmp slt i32 %sub9, %sub11
  %sub.i.0 = select i1 %cmp12, i32 %sub.lcssa, i32 %i.03.lcssa6
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %arrayidx.1 = getelementptr i32, ptr %table, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %value)
  %cmp1.1 = icmp eq i32 %5, %value
  br i1 %cmp1.1, label %for.inc.cleanup_crit_edge, label %if.end.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %for.inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %value)
  %cmp3.1 = icmp slt i32 %7, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %value)
  %cmp5.1 = icmp sgt i32 %5, %value
  %or.cond.1 = select i1 %cmp3.1, i1 %cmp5.1, i1 false
  br i1 %or.cond.1, label %if.end.1.if.then6_crit_edge, label %for.inc.1

if.end.1.if.then6_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.1:                                        ; preds = %if.end.1
  %arrayidx.2 = getelementptr i32, ptr %table, i32 3
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %value)
  %cmp1.2 = icmp eq i32 %9, %value
  br i1 %cmp1.2, label %for.inc.1.cleanup_crit_edge, label %if.end.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %for.inc.1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %value)
  %cmp3.2 = icmp slt i32 %11, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %value)
  %cmp5.2 = icmp sgt i32 %9, %value
  %or.cond.2 = select i1 %cmp3.2, i1 %cmp5.2, i1 false
  br i1 %or.cond.2, label %if.end.2.if.then6_crit_edge, label %for.inc.2

if.end.2.if.then6_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.2:                                        ; preds = %if.end.2
  %arrayidx.3 = getelementptr i32, ptr %table, i32 4
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %value)
  %cmp1.3 = icmp eq i32 %13, %value
  br i1 %cmp1.3, label %for.inc.2.cleanup_crit_edge, label %if.end.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %for.inc.2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %value)
  %cmp3.3 = icmp slt i32 %15, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %value)
  %cmp5.3 = icmp sgt i32 %13, %value
  %or.cond.3 = select i1 %cmp3.3, i1 %cmp5.3, i1 false
  br i1 %or.cond.3, label %if.end.3.if.then6_crit_edge, label %for.inc.3

if.end.3.if.then6_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.3:                                        ; preds = %if.end.3
  %arrayidx.4 = getelementptr i32, ptr %table, i32 5
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %value)
  %cmp1.4 = icmp eq i32 %17, %value
  br i1 %cmp1.4, label %for.inc.3.cleanup_crit_edge, label %if.end.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %for.inc.3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %value)
  %cmp3.4 = icmp slt i32 %19, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %value)
  %cmp5.4 = icmp sgt i32 %17, %value
  %or.cond.4 = select i1 %cmp3.4, i1 %cmp5.4, i1 false
  br i1 %or.cond.4, label %if.end.4.if.then6_crit_edge, label %for.inc.4

if.end.4.if.then6_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.4:                                        ; preds = %if.end.4
  %arrayidx.5 = getelementptr i32, ptr %table, i32 6
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %value)
  %cmp1.5 = icmp eq i32 %21, %value
  br i1 %cmp1.5, label %for.inc.4.cleanup_crit_edge, label %if.end.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %for.inc.4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %value)
  %cmp3.5 = icmp slt i32 %23, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %value)
  %cmp5.5 = icmp sgt i32 %21, %value
  %or.cond.5 = select i1 %cmp3.5, i1 %cmp5.5, i1 false
  br i1 %or.cond.5, label %if.end.5.if.then6_crit_edge, label %for.inc.5

if.end.5.if.then6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

for.inc.5:                                        ; preds = %if.end.5
  %arrayidx.6 = getelementptr i32, ptr %table, i32 7
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %value)
  %cmp1.6 = icmp eq i32 %25, %value
  br i1 %cmp1.6, label %for.inc.5.cleanup_crit_edge, label %if.end.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %for.inc.5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %value)
  %cmp3.6 = icmp slt i32 %27, %value
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %value)
  %cmp5.6 = icmp sgt i32 %25, %value
  %or.cond.6 = select i1 %cmp3.6, i1 %cmp5.6, i1 false
  br i1 %or.cond.6, label %if.end.6.if.then6_crit_edge, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6.if.then6_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

cleanup:                                          ; preds = %if.end.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.i.0, %if.then6 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %for.inc.cleanup_crit_edge ], [ 3, %for.inc.1.cleanup_crit_edge ], [ 4, %for.inc.2.cleanup_crit_edge ], [ 5, %for.inc.3.cleanup_crit_edge ], [ 6, %for.inc.4.cleanup_crit_edge ], [ 7, %for.inc.5.cleanup_crit_edge ], [ -22, %if.end.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_leds_lm3532__290_740_lm3532_i2c_driver_init6, !1, !"__initcall__kmod_leds_lm3532__290_740_lm3532_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm3532.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_lm3532_i2c_driver_exit, !1, !"__exitcall_lm3532_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm3532.c", i32 742, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm3532.c", i32 743, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author294, !9, !"__UNIQUE_ID_author294", i1 false, i1 false}
!9 = !{!"../drivers/leds/leds-lm3532.c", i32 744, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lm3532.c", i32 736, i32 11}
!12 = !{ptr @lm3532_i2c_driver, !13, !"lm3532_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm3532.c", i32 731, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm3532.c", i32 675, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lm3532_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lm3532_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @lm3532_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lm3532.c", i32 687, i32 20}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-lm3532.c", i32 690, i32 3}
!27 = !{ptr @lm3532_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lm3532_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @lm3532_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-lm3532.c", i32 695, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lm3532.c", i32 700, i32 3}
!34 = !{ptr @lm3532_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lm3532_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lm3532_regmap_config, !37, !"lm3532_regmap_config", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lm3532.c", i32 200, i32 35}
!38 = !{ptr @lm3532_reg_defs, !39, !"lm3532_reg_defs", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lm3532.c", i32 175, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-lm3532.c", i32 555, i32 10}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lm3532.c", i32 559, i32 59}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-lm3532.c", i32 563, i32 53}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lm3532.c", i32 566, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lm3532_parse_node._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @lm3532_parse_node._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-lm3532.c", i32 570, i32 53}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lm3532.c", i32 573, i32 3}
!56 = !{ptr @lm3532_parse_node._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lm3532_parse_node._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lm3532.c", i32 580, i32 21}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lm3532.c", i32 586, i32 41}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lm3532.c", i32 588, i32 4}
!64 = !{ptr @lm3532_parse_node._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @lm3532_parse_node._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/leds-lm3532.c", i32 593, i32 4}
!68 = !{ptr @lm3532_parse_node._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @lm3532_parse_node._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-lm3532.c", i32 599, i32 41}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/leds-lm3532.c", i32 602, i32 4}
!74 = !{ptr @lm3532_parse_node._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lm3532_parse_node._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-lm3532.c", i32 606, i32 38}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lm3532.c", i32 609, i32 4}
!80 = !{ptr @lm3532_parse_node._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lm3532_parse_node._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-lm3532.c", i32 619, i32 5}
!84 = !{ptr @lm3532_parse_node._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lm3532_parse_node._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-lm3532.c", i32 626, i32 52}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/leds/leds-lm3532.c", i32 628, i32 4}
!90 = !{ptr @lm3532_parse_node._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lm3532_parse_node._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/leds/leds-lm3532.c", i32 636, i32 4}
!94 = !{ptr @lm3532_parse_node._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @lm3532_parse_node._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/leds-lm3532.c", i32 645, i32 4}
!98 = !{ptr @lm3532_parse_node._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lm3532_parse_node._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/leds/leds-lm3532.c", i32 652, i32 4}
!102 = !{ptr @lm3532_parse_node._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @lm3532_parse_node._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @ramp_table, !105, !"ramp_table", i1 false, i1 false}
!105 = !{!"../drivers/leds/leds-lm3532.c", i32 282, i32 18}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/leds/leds-lm3532.c", i32 494, i32 53}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/leds/leds-lm3532.c", i32 499, i32 53}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/leds/leds-lm3532.c", i32 509, i32 53}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/leds/leds-lm3532.c", i32 516, i32 53}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/leds/leds-lm3532.c", i32 523, i32 53}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/leds/leds-lm3532.c", i32 530, i32 52}
!118 = !{ptr @als_imp_table, !119, !"als_imp_table", i1 false, i1 false}
!119 = !{!"../drivers/leds/leds-lm3532.c", i32 210, i32 18}
!120 = !{ptr @als_avrg_table, !121, !"als_avrg_table", i1 false, i1 false}
!121 = !{!"../drivers/leds/leds-lm3532.c", i32 267, i32 18}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/leds/leds-lm3532.c", i32 308, i32 3}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @lm3532_led_enable._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @lm3532_led_enable._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/leds/leds-lm3532.c", i32 333, i32 3}
!129 = !{ptr @lm3532_led_disable._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @lm3532_led_disable._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @of_lm3532_leds_match, !132, !"of_lm3532_leds_match", i1 false, i1 false}
!132 = !{!"../drivers/leds/leds-lm3532.c", i32 719, i32 34}
!133 = !{ptr @lm3532_id, !134, !"lm3532_id", i1 false, i1 false}
!134 = !{!"../drivers/leds/leds-lm3532.c", i32 725, i32 35}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
