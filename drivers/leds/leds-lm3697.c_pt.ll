; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm3697.c_pt.bc'
source_filename = "../drivers/leds/leds-lm3697.c"
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
%struct.lm3697 = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, [0 x %struct.lm3697_led] }
%struct.lm3697_led = type { [3 x i32], [64 x i8], %struct.led_classdev, ptr, %struct.ti_lmu_bank, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ti_lmu_bank = type { ptr, i32, i8, i8, i8, i32, i32 }

@__initcall__kmod_leds_lm3697__288_388_lm3697_driver_init6 = internal global ptr @lm3697_driver_init, section ".initcall6.init", align 4
@lm3697_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3697_probe, ptr @lm3697_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lm3697_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3697_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3697_driver_exit = internal global ptr @lm3697_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"leds_lm3697.description=Texas Instruments LM3697 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [47 x i8] c"leds_lm3697.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"leds_lm3697.file=drivers/leds/leds-lm3697\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"leds_lm3697.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm3697\00", [25 x i8] zeroinitializer }, align 32
@of_lm3697_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm3697\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lm3697_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3697\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3697_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Strange device tree!\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3697_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lm3697.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3697_probe._entry_ptr = internal global ptr @lm3697_probe._entry, section ".printk_index", align 4
@lm3697_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lm3697_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3697_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm3697_reg_defs, i32 14, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"leds_lm3697:326:(&lm3697_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@lm3697_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lm3697_probe._entry_ptr.10 = internal global ptr @lm3697_probe._entry.8, section ".printk_index", align 4
@lm3697_reg_defs = internal constant { [14 x %struct.reg_default], [48 x i8] } { [14 x %struct.reg_default] [%struct.reg_default { i32 16, i32 6 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 19 }, %struct.reg_default { i32 24, i32 19 }, %struct.reg_default { i32 28, i32 12 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get enable GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg property missing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lm3697_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr = internal global ptr @lm3697_probe_dt._entry, section ".printk_index", align 4
@lm3697_probe_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg property is invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.19 = internal global ptr @lm3697_probe_dt._entry.17, section ".printk_index", align 4
@lm3697_probe_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 243, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"brightness resolution property missing\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.23 = internal global ptr @lm3697_probe_dt._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many LED strings defined\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.27 = internal global ptr @lm3697_probe_dt._entry.25, section ".printk_index", align 4
@lm3697_probe_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"led-sources property missing\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.30 = internal global ptr @lm3697_probe_dt._entry.28, section ".printk_index", align 4
@lm3697_probe_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.3, i32 274, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"runtime-ramp properties missing\0A\00", [63 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.33 = internal global ptr @lm3697_probe_dt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3697_probe_dt._entry_ptr.37 = internal global ptr @lm3697_probe_dt._entry.35, section ".printk_index", align 4
@lm3697_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot write ctrl register\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3697_brightness_set\00", [42 x i8] zeroinitializer }, align 32
@lm3697_brightness_set._entry_ptr = internal global ptr @lm3697_brightness_set._entry, section ".printk_index", align 4
@lm3697_brightness_set._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot write brightness\0A\00", [39 x i8] zeroinitializer }, align 32
@lm3697_brightness_set._entry_ptr.42 = internal global ptr @lm3697_brightness_set._entry.40, section ".printk_index", align 4
@lm3697_brightness_set._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable the device\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3697_brightness_set._entry_ptr.45 = internal global ptr @lm3697_brightness_set._entry.43, section ".printk_index", align 4
@lm3697_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot reset the device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3697_init\00", [20 x i8] zeroinitializer }, align 32
@lm3697_init._entry_ptr = internal global ptr @lm3697_init._entry, section ".printk_index", align 4
@lm3697_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot write ctrl enable\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3697_init._entry_ptr.50 = internal global ptr @lm3697_init._entry.48, section ".printk_index", align 4
@lm3697_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot write OUTPUT config\0A\00", [36 x i8] zeroinitializer }, align 32
@lm3697_init._entry_ptr.53 = internal global ptr @lm3697_init._entry.51, section ".printk_index", align 4
@lm3697_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting the ramp rate failed\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3697_init._entry_ptr.56 = internal global ptr @lm3697_init._entry.54, section ".printk_index", align 4
@lm3697_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable the device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm3697_remove\00", [18 x i8] zeroinitializer }, align 32
@lm3697_remove._entry_ptr = internal global ptr @lm3697_remove._entry, section ".printk_index", align 4
@lm3697_remove._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@lm3697_remove._entry_ptr.61 = internal global ptr @lm3697_remove._entry.59, section ".printk_index", align 4
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"lm3697_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 379, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 381, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"of_lm3697_leds_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 373, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"lm3697_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 367, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 312, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 320, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"lm3697_regmap_config\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 112, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 326, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 329, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"lm3697_reg_defs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 95, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 213, i32 51 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 217, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 219, i32 44 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 226, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 228, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 233, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 242, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 254, i32 52 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 256, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 264, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 274, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 279, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 288, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 137, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 145, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 154, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 178, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 185, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 191, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 197, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 349, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [30 x i8] c"../drivers/leds/leds-lm3697.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 359, i32 4 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lm3697_driver_exit, ptr @__initcall__kmod_leds_lm3697__288_388_lm3697_driver_init6, ptr @lm3697_brightness_set._entry, ptr @lm3697_brightness_set._entry.40, ptr @lm3697_brightness_set._entry.43, ptr @lm3697_brightness_set._entry_ptr, ptr @lm3697_brightness_set._entry_ptr.42, ptr @lm3697_brightness_set._entry_ptr.45, ptr @lm3697_driver_exit, ptr @lm3697_init._entry, ptr @lm3697_init._entry.48, ptr @lm3697_init._entry.51, ptr @lm3697_init._entry.54, ptr @lm3697_init._entry_ptr, ptr @lm3697_init._entry_ptr.50, ptr @lm3697_init._entry_ptr.53, ptr @lm3697_init._entry_ptr.56, ptr @lm3697_probe._entry, ptr @lm3697_probe._entry.8, ptr @lm3697_probe._entry_ptr, ptr @lm3697_probe._entry_ptr.10, ptr @lm3697_probe_dt._entry, ptr @lm3697_probe_dt._entry.17, ptr @lm3697_probe_dt._entry.20, ptr @lm3697_probe_dt._entry.25, ptr @lm3697_probe_dt._entry.28, ptr @lm3697_probe_dt._entry.31, ptr @lm3697_probe_dt._entry.35, ptr @lm3697_probe_dt._entry_ptr, ptr @lm3697_probe_dt._entry_ptr.19, ptr @lm3697_probe_dt._entry_ptr.23, ptr @lm3697_probe_dt._entry_ptr.27, ptr @lm3697_probe_dt._entry_ptr.30, ptr @lm3697_probe_dt._entry_ptr.33, ptr @lm3697_probe_dt._entry_ptr.37, ptr @lm3697_remove._entry, ptr @lm3697_remove._entry.59, ptr @lm3697_remove._entry_ptr, ptr @lm3697_remove._entry_ptr.61, ptr @lm3697_driver, ptr @.str, ptr @of_lm3697_leds_match, ptr @lm3697_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lm3697_probe.__key, ptr @.str.6, ptr @lm3697_probe._key, ptr @lm3697_regmap_config, ptr @.str.7, ptr @.str.9, ptr @lm3697_reg_defs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lm3697_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_reg_defs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_probe_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_brightness_set._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_brightness_set._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3697_remove._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3697_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3697_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3697_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3697_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3697_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %control_bank.i = alloca i32, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp sgt i32 %call, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 512) #6
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = or i32 %2, 120
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lm3697_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client10 = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %client10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %client10, align 4
  %dev11 = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev11, align 4
  %num_banks = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %num_banks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %num_banks, align 4
  %call12 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3697_regmap_config, ptr noundef nonnull @lm3697_probe._key, ptr noundef nonnull @.str.7) #6
  %regmap = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end21

if.then15:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %9) #9
  br label %cleanup

if.end21:                                         ; preds = %do.body7
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_bank.i) #6
  %12 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %control_bank.i, align 4, !annotation !130
  %call.i53 = tail call ptr @devm_gpiod_get_optional(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef 3) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i53, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i53 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %11, i32 noundef %14, ptr noundef nonnull @.str.12) #6
  br label %lm3697_probe_dt.exit

if.end.i:                                         ; preds = %if.end21
  %call7.i = tail call ptr @devm_regulator_get(ptr noundef %11, ptr noundef nonnull @.str.13) #6
  %regulator.i = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 1
  %cmp.i164.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i164.i, ptr null, ptr %call7.i
  %15 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.store.select.i, ptr %regulator.i, align 4
  %call13.i = tail call ptr @device_get_next_child_node(ptr noundef %11, ptr noundef null) #6
  %tobool.not185.i = icmp eq ptr %call13.i, null
  br i1 %tobool.not185.i, label %if.end.i.lm3697_probe_dt.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.lm3697_probe_dt.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3697_probe_dt.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %bank_cfg.i = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 6
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc90.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0188.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc90.i.for.body.i_crit_edge ]
  %child.0186.i = phi ptr [ %call13.i, %for.body.lr.ph.i ], [ %call91.i, %for.inc90.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %16 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0186.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %control_bank.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15) #9
  br label %child_out.i

if.end17.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i54 = icmp sgt i32 %18, 1
  br i1 %cmp.i54, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18) #9
  br label %child_out.i

if.end22.i:                                       ; preds = %if.end17.i
  %arrayidx.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i
  %lmu_data.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 4
  %call23.i = call i32 @ti_lmu_common_get_brt_res(ptr noundef %11, ptr noundef nonnull %child.0186.i, ptr noundef %lmu_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end29.i_crit_edge, label %do.end28.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.21) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end28.i, %if.end22.i.if.end29.i_crit_edge
  %19 = ptrtoint ptr %control_bank.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %control_bank.i, align 4
  %control_bank30.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 5
  %21 = ptrtoint ptr %control_bank30.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %control_bank30.i, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %24 = ptrtoint ptr %lmu_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %lmu_data.i, align 4
  %25 = trunc i32 %20 to i8
  %conv.i = add i8 %25, 17
  %runtime_ramp_reg.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 4, i32 4
  %26 = ptrtoint ptr %runtime_ramp_reg.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %runtime_ramp_reg.i, align 2
  %27 = shl i8 %25, 1
  %conv36.i = add i8 %27, 33
  %msb_brightness_reg.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 4, i32 3
  %28 = ptrtoint ptr %msb_brightness_reg.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv36.i, ptr %msb_brightness_reg.i, align 1
  %conv41.i = add i8 %27, 32
  %lsb_brightness_reg.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 4, i32 2
  %29 = ptrtoint ptr %lsb_brightness_reg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41.i, ptr %lsb_brightness_reg.i, align 4
  %call.i165.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0186.i, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0) #6
  %num_leds.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 7
  %30 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i165.i, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i165.i)
  %cmp45.i = icmp sgt i32 %call.i165.i, 3
  br i1 %cmp45.i, label %do.end50.i, label %if.end51.i

do.end50.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.26) #9
  br label %for.inc90.i

if.end51.i:                                       ; preds = %if.end29.i
  %call53.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0186.i, ptr noundef nonnull @.str.24, ptr noundef %arrayidx.i, i32 noundef %call.i165.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %for.cond60.preheader.i, label %do.end58.i

for.cond60.preheader.i:                           ; preds = %if.end51.i
  %31 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp62183.i = icmp sgt i32 %32, 0
  br i1 %cmp62183.i, label %for.cond60.preheader.i.for.body64.i_crit_edge, label %for.cond60.preheader.i.for.end.i_crit_edge

for.cond60.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond60.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond60.preheader.i.for.body64.i_crit_edge:    ; preds = %for.cond60.preheader.i
  br label %for.body64.i

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29) #9
  br label %child_out.i

for.body64.i:                                     ; preds = %for.body64.i.for.body64.i_crit_edge, %for.cond60.preheader.i.for.body64.i_crit_edge
  %j.0184.i = phi i32 [ %inc.i, %for.body64.i.for.body64.i_crit_edge ], [ 0, %for.cond60.preheader.i.for.body64.i_crit_edge ]
  %33 = ptrtoint ptr %control_bank30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %control_bank30.i, align 4
  %arrayidx67.i = getelementptr [3 x i32], ptr %arrayidx.i, i32 0, i32 %j.0184.i
  %35 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx67.i, align 4
  %shl.i = shl i32 %34, %36
  %37 = ptrtoint ptr %bank_cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_cfg.i, align 4
  %or.i = or i32 %38, %shl.i
  store i32 %or.i, ptr %bank_cfg.i, align 4
  %inc.i = add nuw nsw i32 %j.0184.i, 1
  %39 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_leds.i, align 4
  %cmp62.i = icmp slt i32 %inc.i, %40
  br i1 %cmp62.i, label %for.body64.i.for.body64.i_crit_edge, label %for.body64.i.for.end.i_crit_edge

for.body64.i.for.end.i_crit_edge:                 ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body64.i.for.body64.i_crit_edge:              ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64.i

for.end.i:                                        ; preds = %for.body64.i.for.end.i_crit_edge, %for.cond60.preheader.i.for.end.i_crit_edge
  %call69.i = call i32 @ti_lmu_common_get_ramp_params(ptr noundef %11, ptr noundef nonnull %child.0186.i, ptr noundef %lmu_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %for.end.i.if.end75.i_crit_edge, label %do.end74.i

for.end.i.if.end75.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i

do.end74.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.32) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end74.i, %for.end.i.if.end75.i_crit_edge
  %41 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %child.0186.i, ptr %init_data.i, align 4
  %42 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client10, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %name.i, ptr %devicename.i, align 4
  %45 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.34, ptr %default_label.i, align 4
  %priv77.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 3
  %46 = ptrtoint ptr %priv77.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %priv77.i, align 4
  %max_brightness.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 4, i32 1
  %47 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_brightness.i, align 4
  %led_dev.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 2
  %max_brightness79.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 2, i32 2
  %49 = ptrtoint ptr %max_brightness79.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_brightness79.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.0188.i, i32 2, i32 6
  %50 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @lm3697_brightness_set, ptr %brightness_set_blocking.i, align 4
  %call82.i = call i32 @devm_led_classdev_register_ext(ptr noundef %11, ptr noundef %led_dev.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end88.i, label %do.end87.i

do.end87.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef %call82.i) #9
  br label %child_out.i

if.end88.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc89.i = add i32 %i.0188.i, 1
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %if.end88.i, %do.end50.i
  %ret.1.i = phi i32 [ %call23.i, %do.end50.i ], [ 0, %if.end88.i ]
  %i.1.i = phi i32 [ %i.0188.i, %do.end50.i ], [ %inc89.i, %if.end88.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  %call91.i = call ptr @device_get_next_child_node(ptr noundef %11, ptr noundef nonnull %child.0186.i) #6
  %tobool.not.i = icmp eq ptr %call91.i, null
  br i1 %tobool.not.i, label %for.inc90.i.lm3697_probe_dt.exit_crit_edge, label %for.inc90.i.for.body.i_crit_edge

for.inc90.i.for.body.i_crit_edge:                 ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc90.i.lm3697_probe_dt.exit_crit_edge:       ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3697_probe_dt.exit

child_out.i:                                      ; preds = %do.end87.i, %do.end58.i, %do.end21.i, %do.end.i
  %ret.1.ph.i = phi i32 [ %call82.i, %do.end87.i ], [ %call53.i, %do.end58.i ], [ -22, %do.end21.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @fwnode_handle_put(ptr noundef nonnull %child.0186.i) #6
  br label %lm3697_probe_dt.exit.thread

lm3697_probe_dt.exit.thread:                      ; preds = %child_out.i, %if.end.i.lm3697_probe_dt.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ -22, %if.end.i.lm3697_probe_dt.exit.thread_crit_edge ], [ %ret.1.ph.i, %child_out.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_bank.i) #6
  br label %cleanup

lm3697_probe_dt.exit:                             ; preds = %for.inc90.i.lm3697_probe_dt.exit_crit_edge, %if.then.i
  %retval.0.i55 = phi i32 [ %call6.i, %if.then.i ], [ %ret.1.i, %for.inc90.i.lm3697_probe_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_bank.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55)
  %tobool23.not = icmp eq i32 %retval.0.i55, 0
  br i1 %tobool23.not, label %if.end25, label %lm3697_probe_dt.exit.cleanup_crit_edge

lm3697_probe_dt.exit.cleanup_crit_edge:           ; preds = %lm3697_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %lm3697_probe_dt.exit
  %51 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev11, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %tobool.not.i57 = icmp eq ptr %54, null
  br i1 %tobool.not.i57, label %if.else.i, label %if.then.i59

if.then.i59:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i58 = call i32 @gpiod_direction_output(ptr noundef nonnull %54, i32 noundef 1) #6
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end25
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.out.sink.split.i_crit_edge

if.else.i.out.sink.split.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.then.i59
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 36, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %if.end6.i.out.sink.split.i_crit_edge

if.end6.i.out.sink.split.i_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end14.i:                                       ; preds = %if.end6.i
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %bank_cfg.i61 = getelementptr inbounds %struct.lm3697, ptr %call.i, i32 0, i32 6
  %61 = ptrtoint ptr %bank_cfg.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bank_cfg.i61, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 16, i32 noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end22.i63_crit_edge, label %do.end21.i62

if.end14.i.if.end22.i63_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i63

do.end21.i62:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.52) #9
  br label %if.end22.i63

if.end22.i63:                                     ; preds = %do.end21.i62, %if.end14.i.if.end22.i63_crit_edge
  %63 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp47.i = icmp sgt i32 %64, 0
  br i1 %cmp47.i, label %if.end22.i63.for.body.i67_crit_edge, label %if.end22.i63.cleanup_crit_edge

if.end22.i63.cleanup_crit_edge:                   ; preds = %if.end22.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.i63.for.body.i67_crit_edge:              ; preds = %if.end22.i63
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i.for.body.i67_crit_edge, %if.end22.i63.for.body.i67_crit_edge
  %i.048.i = phi i32 [ %inc.i69, %for.inc.i.for.body.i67_crit_edge ], [ 0, %if.end22.i63.for.body.i67_crit_edge ]
  %lmu_data.i64 = getelementptr %struct.lm3697, ptr %call.i, i32 0, i32 8, i32 %i.048.i, i32 4
  %call23.i65 = call i32 @ti_lmu_common_set_ramp(ptr noundef %lmu_data.i64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i65)
  %tobool24.not.i66 = icmp eq i32 %call23.i65, 0
  br i1 %tobool24.not.i66, label %for.body.i67.for.inc.i_crit_edge, label %do.end28.i68

for.body.i67.for.inc.i_crit_edge:                 ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end28.i68:                                     ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.55) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end28.i68, %for.body.i67.for.inc.i_crit_edge
  %inc.i69 = add nuw nsw i32 %i.048.i, 1
  %65 = ptrtoint ptr %num_banks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_banks, align 4
  %cmp.i70 = icmp slt i32 %inc.i69, %66
  br i1 %cmp.i70, label %for.inc.i.for.body.i67_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i67_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i67

out.sink.split.i:                                 ; preds = %if.end6.i.out.sink.split.i_crit_edge, %if.else.i.out.sink.split.i_crit_edge
  %.str.49.sink.i = phi ptr [ @.str.46, %if.else.i.out.sink.split.i_crit_edge ], [ @.str.49, %if.end6.i.out.sink.split.i_crit_edge ]
  %ret.1.ph.i71 = phi i32 [ %call3.i, %if.else.i.out.sink.split.i_crit_edge ], [ %call8.i, %if.end6.i.out.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.49.sink.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out.sink.split.i, %for.inc.i.cleanup_crit_edge, %if.end22.i63.cleanup_crit_edge, %lm3697_probe_dt.exit.cleanup_crit_edge, %lm3697_probe_dt.exit.thread, %if.then15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %9, %if.then15 ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i55, %lm3697_probe_dt.exit.cleanup_crit_edge ], [ %retval.0.i55.ph, %lm3697_probe_dt.exit.thread ], [ %call16.i, %if.end22.i63.cleanup_crit_edge ], [ %ret.1.ph.i71, %out.sink.split.i ], [ %call23.i65, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3697_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.lm3697, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.lm3697, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.57) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %regulator = getelementptr inbounds %struct.lm3697, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end19_crit_edge, label %if.then10

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then10:                                        ; preds = %if.end8
  %call12 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.end19_crit_edge, label %do.end17

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.60) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.then10.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %lock = getelementptr inbounds %struct.lm3697, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_lmu_common_get_brt_res(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_lmu_common_get_ramp_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3697_brightness_set(ptr noundef %led_cdev, i32 noundef %brt_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %control_bank = getelementptr i8, ptr %led_cdev, i32 424
  %0 = ptrtoint ptr %control_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_bank, align 4
  %shl = shl nuw i32 1, %1
  %priv = getelementptr i8, ptr %led_cdev, i32 400
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.lm3697, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.lm3697, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brt_val)
  %cmp = icmp eq i32 %brt_val, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.lm3697, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %neg = xor i32 %shl, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 36, i32 noundef %shl, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38) #9
  br label %brightness_out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr i8, ptr %led_cdev, i32 428
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %enabled, align 4
  br label %brightness_out

if.else:                                          ; preds = %entry
  %lmu_data = getelementptr i8, ptr %led_cdev, i32 404
  %call5 = tail call i32 @ti_lmu_common_set_brightness(ptr noundef %lmu_data, i32 noundef %brt_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41) #9
  br label %brightness_out

if.end11:                                         ; preds = %if.else
  %enabled12 = getelementptr i8, ptr %led_cdev, i32 428
  %11 = ptrtoint ptr %enabled12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enabled12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.brightness_out_crit_edge

if.end11.brightness_out_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %brightness_out

if.then14:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %regmap16 = getelementptr inbounds %struct.lm3697, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap16, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 36, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool18.not = icmp eq i32 %call.i48, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44) #9
  br label %brightness_out

if.end23:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %enabled12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %brt_val, ptr %enabled12, align 4
  br label %brightness_out

brightness_out:                                   ; preds = %if.end23, %do.end22, %if.end11.brightness_out_crit_edge, %do.end10, %if.end, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ], [ %call5, %do.end10 ], [ 0, %if.end11.brightness_out_crit_edge ], [ %call.i48, %do.end22 ], [ 0, %if.end23 ]
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %lock28 = getelementptr inbounds %struct.lm3697, ptr %19, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %lock28) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_lmu_common_set_brightness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_lmu_common_set_ramp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_leds_lm3697__288_388_lm3697_driver_init6, !1, !"__initcall__kmod_leds_lm3697__288_388_lm3697_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm3697.c", i32 388, i32 1}
!2 = !{ptr @__exitcall_lm3697_driver_exit, !1, !"__exitcall_lm3697_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm3697.c", i32 390, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm3697.c", i32 391, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lm3697.c", i32 392, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lm3697.c", i32 381, i32 11}
!12 = !{ptr @lm3697_driver, !13, !"lm3697_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm3697.c", i32 379, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm3697.c", i32 312, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lm3697_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lm3697_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @lm3697_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lm3697.c", i32 320, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lm3697_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-lm3697.c", i32 326, i32 16}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-lm3697.c", i32 329, i32 3}
!30 = !{ptr @lm3697_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lm3697_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lm3697_regmap_config, !33, !"lm3697_regmap_config", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lm3697.c", i32 112, i32 35}
!34 = !{ptr @lm3697_reg_defs, !35, !"lm3697_reg_defs", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-lm3697.c", i32 95, i32 33}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-lm3697.c", i32 213, i32 51}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lm3697.c", i32 217, i32 8}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-lm3697.c", i32 219, i32 44}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lm3697.c", i32 226, i32 41}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-lm3697.c", i32 228, i32 4}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lm3697_probe_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lm3697_probe_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lm3697.c", i32 233, i32 4}
!51 = !{ptr @lm3697_probe_dt._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lm3697_probe_dt._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-lm3697.c", i32 242, i32 4}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lm3697_probe_dt._entry.20, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @lm3697_probe_dt._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lm3697.c", i32 254, i32 52}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lm3697.c", i32 256, i32 4}
!62 = !{ptr @lm3697_probe_dt._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lm3697_probe_dt._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-lm3697.c", i32 264, i32 4}
!66 = !{ptr @lm3697_probe_dt._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lm3697_probe_dt._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/leds-lm3697.c", i32 274, i32 4}
!70 = !{ptr @lm3697_probe_dt._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lm3697_probe_dt._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/leds-lm3697.c", i32 279, i32 29}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-lm3697.c", i32 288, i32 4}
!76 = !{ptr @lm3697_probe_dt._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lm3697_probe_dt._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/leds-lm3697.c", i32 137, i32 4}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lm3697_brightness_set._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @lm3697_brightness_set._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/leds-lm3697.c", i32 145, i32 4}
!85 = !{ptr @lm3697_brightness_set._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @lm3697_brightness_set._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/leds-lm3697.c", i32 154, i32 5}
!89 = !{ptr @lm3697_brightness_set._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lm3697_brightness_set._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/leds-lm3697.c", i32 178, i32 4}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @lm3697_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @lm3697_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/leds/leds-lm3697.c", i32 185, i32 3}
!98 = !{ptr @lm3697_init._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lm3697_init._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/leds/leds-lm3697.c", i32 191, i32 3}
!102 = !{ptr @lm3697_init._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @lm3697_init._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/leds/leds-lm3697.c", i32 197, i32 4}
!106 = !{ptr @lm3697_init._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @lm3697_init._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/leds/leds-lm3697.c", i32 349, i32 3}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @lm3697_remove._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @lm3697_remove._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/leds/leds-lm3697.c", i32 359, i32 4}
!115 = !{ptr @lm3697_remove._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @lm3697_remove._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @of_lm3697_leds_match, !118, !"of_lm3697_leds_match", i1 false, i1 false}
!118 = !{!"../drivers/leds/leds-lm3697.c", i32 373, i32 34}
!119 = !{ptr @lm3697_id, !120, !"lm3697_id", i1 false, i1 false}
!120 = !{!"../drivers/leds/leds-lm3697.c", i32 367, i32 35}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
