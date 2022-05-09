; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm3692x.c_pt.bc'
source_filename = "../drivers/leds/leds-lm3692x.c"
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
%struct.lm3692x_led = type { %struct.mutex, ptr, %struct.led_classdev, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_lm3692x__288_530_lm3692x_driver_init6 = internal global ptr @lm3692x_driver_init, section ".initcall6.init", align 4
@lm3692x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3692x_probe, ptr @lm3692x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_lm3692x_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3692x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3692x_driver_exit = internal global ptr @lm3692x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [62 x i8] c"leds_lm3692x.description=Texas Instruments LM3692X LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [48 x i8] c"leds_lm3692x.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"leds_lm3692x.file=drivers/leds/leds-lm3692x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"leds_lm3692x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm3692x\00", [24 x i8] zeroinitializer }, align 32
@of_lm3692x_leds_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm36922\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm36923\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lm3692x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm36922\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm36923\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lm3692x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lm3692x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3692x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm3692x_reg_defs, i32 10, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"leds_lm3692x:475:(&lm3692x_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@lm3692x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 479, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm3692x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-lm3692x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3692x_probe._entry_ptr = internal global ptr @lm3692x_probe._entry, section ".printk_index", align 4
@lm3692x_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot read/clear faults: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lm3692x_brightness_set\00", [41 x i8] zeroinitializer }, align 32
@lm3692x_brightness_set._entry_ptr = internal global ptr @lm3692x_brightness_set._entry, section ".printk_index", align 4
@lm3692x_brightness_set._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 350, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot write MSB: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3692x_brightness_set._entry_ptr.12 = internal global ptr @lm3692x_brightness_set._entry.10, section ".printk_index", align 4
@lm3692x_brightness_set._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.5, i32 356, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot write LSB: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3692x_brightness_set._entry_ptr.15 = internal global ptr @lm3692x_brightness_set._entry.13, section ".printk_index", align 4
@lm3692x_leds_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 306, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3692x_leds_disable\00", [43 x i8] zeroinitializer }, align 32
@lm3692x_leds_disable._entry_ptr = internal global ptr @lm3692x_leds_disable._entry, section ".printk_index", align 4
@lm3692x_leds_disable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 317, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lm3692x_leds_disable._entry_ptr.19 = internal global ptr @lm3692x_leds_disable._entry.18, section ".printk_index", align 4
@lm3692x_fault_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detected a fault 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm3692x_fault_check\00", [44 x i8] zeroinitializer }, align 32
@lm3692x_fault_check._entry_ptr = internal global ptr @lm3692x_fault_check._entry, section ".printk_index", align 4
@lm3692x_fault_check._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 163, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Second read of fault flags 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@lm3692x_fault_check._entry_ptr.24 = internal global ptr @lm3692x_fault_check._entry.22, section ".printk_index", align 4
@lm3692x_reg_defs = internal constant { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default { i32 16, i32 15 }, %struct.reg_default { i32 17, i32 97 }, %struct.reg_default { i32 18, i32 115 }, %struct.reg_default { i32 19, i32 111 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 7 }, %struct.reg_default { i32 25, i32 255 }, %struct.reg_default { i32 30, i32 7 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get enable gpio: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3692x_probe_dt\00", [47 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry_ptr = internal global ptr @lm3692x_probe_dt._entry, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get vled regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,ovp-microvolt\00", [47 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 424, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid OVP %d\0A\00", [16 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry_ptr.33 = internal global ptr @lm3692x_probe_dt._entry.31, section ".printk_index", align 4
@lm3692x_probe_dt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.5, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No LED Child node\0A\00", [45 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry_ptr.36 = internal global ptr @lm3692x_probe_dt._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.5, i32 438, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg DT property missing\0A\00", [39 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry_ptr.40 = internal global ptr @lm3692x_probe_dt._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.5, i32 453, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3692x_probe_dt._entry_ptr.45 = internal global ptr @lm3692x_probe_dt._entry.43, section ".printk_index", align 4
@lm3692x_leds_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 180, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm3692x_leds_enable\00", [44 x i8] zeroinitializer }, align 32
@lm3692x_leds_enable._entry_ptr = internal global ptr @lm3692x_leds_enable._entry, section ".printk_index", align 4
@lm3692x_leds_enable._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.47, ptr @.str.5, i32 191, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lm3692x_leds_enable._entry_ptr.49 = internal global ptr @lm3692x_leds_enable._entry.48, section ".printk_index", align 4
@lm3692x_leds_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.5, i32 271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LED3 sync not available on this device\0A\00", [56 x i8] zeroinitializer }, align 32
@lm3692x_leds_enable._entry_ptr.52 = internal global ptr @lm3692x_leds_enable._entry.50, section ".printk_index", align 4
@lm3692x_leds_enable._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.5, i32 281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail writing initialization values\0A\00", [60 x i8] zeroinitializer }, align 32
@lm3692x_leds_enable._entry_ptr.55 = internal global ptr @lm3692x_leds_enable._entry.53, section ".printk_index", align 4
@lm3692x_leds_enable._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.47, ptr @.str.5, i32 290, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@lm3692x_leds_enable._entry_ptr.57 = internal global ptr @lm3692x_leds_enable._entry.56, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 17000000, i64 21000000, i64 25000000, i64 29000000]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"lm3692x_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 521, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 523, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"of_lm3692x_leds_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 514, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"lm3692x_id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 507, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 469, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"lm3692x_regmap_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 135, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 475, i32 16 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 478, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 343, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 350, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 356, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 305, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 316, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 155, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 162, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"lm3692x_reg_defs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 122, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 385, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 388, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 393, i32 66 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 398, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 407, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 424, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 431, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 435, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 438, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 442, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 448, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 453, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 179, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 190, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 270, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 281, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private constant [31 x i8] c"../drivers/leds/leds-lm3692x.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 289, i32 4 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lm3692x_driver_exit, ptr @__initcall__kmod_leds_lm3692x__288_530_lm3692x_driver_init6, ptr @lm3692x_brightness_set._entry, ptr @lm3692x_brightness_set._entry.10, ptr @lm3692x_brightness_set._entry.13, ptr @lm3692x_brightness_set._entry_ptr, ptr @lm3692x_brightness_set._entry_ptr.12, ptr @lm3692x_brightness_set._entry_ptr.15, ptr @lm3692x_driver_exit, ptr @lm3692x_fault_check._entry, ptr @lm3692x_fault_check._entry.22, ptr @lm3692x_fault_check._entry_ptr, ptr @lm3692x_fault_check._entry_ptr.24, ptr @lm3692x_leds_disable._entry, ptr @lm3692x_leds_disable._entry.18, ptr @lm3692x_leds_disable._entry_ptr, ptr @lm3692x_leds_disable._entry_ptr.19, ptr @lm3692x_leds_enable._entry, ptr @lm3692x_leds_enable._entry.48, ptr @lm3692x_leds_enable._entry.50, ptr @lm3692x_leds_enable._entry.53, ptr @lm3692x_leds_enable._entry.56, ptr @lm3692x_leds_enable._entry_ptr, ptr @lm3692x_leds_enable._entry_ptr.49, ptr @lm3692x_leds_enable._entry_ptr.52, ptr @lm3692x_leds_enable._entry_ptr.55, ptr @lm3692x_leds_enable._entry_ptr.57, ptr @lm3692x_probe._entry, ptr @lm3692x_probe._entry_ptr, ptr @lm3692x_probe_dt._entry, ptr @lm3692x_probe_dt._entry.31, ptr @lm3692x_probe_dt._entry.34, ptr @lm3692x_probe_dt._entry.38, ptr @lm3692x_probe_dt._entry.43, ptr @lm3692x_probe_dt._entry_ptr, ptr @lm3692x_probe_dt._entry_ptr.33, ptr @lm3692x_probe_dt._entry_ptr.36, ptr @lm3692x_probe_dt._entry_ptr.40, ptr @lm3692x_probe_dt._entry_ptr.45, ptr @lm3692x_driver, ptr @.str, ptr @of_lm3692x_leds_match, ptr @lm3692x_id, ptr @lm3692x_probe.__key, ptr @.str.1, ptr @lm3692x_probe._key, ptr @lm3692x_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @lm3692x_reg_defs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @.str.54], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_lm3692x_leds_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_brightness_set._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_brightness_set._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_disable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_fault_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_fault_check._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_reg_defs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe_dt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe_dt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_probe_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_enable._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_enable._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3692x_leds_enable._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3692x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3692x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3692x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3692x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3692x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  %ovp.i = alloca i32, align 4
  %max_cur.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 520, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm3692x_probe.__key) #6
  %client1 = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 2, i32 6
  %1 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @lm3692x_brightness_set, ptr %brightness_set_blocking, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %model_id = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %model_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %model_id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3692x_regmap_config, ptr noundef nonnull @lm3692x_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end12

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %7) #9
  br label %cleanup

if.end12:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %8 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ovp.i) #6
  %9 = ptrtoint ptr %ovp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ovp.i, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_cur.i) #6
  %10 = ptrtoint ptr %max_cur.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %max_cur.i, align 4, !annotation !129
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i41 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 3) #6
  %enable_gpio.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i41, ptr %enable_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i41 to i32
  %15 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client1, align 4
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.26, i32 noundef %14) #9
  br label %lm3692x_probe_dt.exit

if.end.i:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client1, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call9.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev8.i, ptr noundef nonnull @.str.28) #6
  %regulator.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %regulator.i, align 4
  %cmp.i131.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131.i, label %if.then12.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %call9.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %if.end19.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call9.i to i32
  %21 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client1, align 4
  %dev17.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev17.i, i32 noundef %20, ptr noundef nonnull @.str.29) #6
  br label %lm3692x_probe_dt.exit

if.end19.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %regulator.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end19.i, %if.end.i.if.end21.i_crit_edge
  %boost_ctrl.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %boost_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 99, ptr %boost_ctrl.i, align 4
  %25 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client1, align 4
  %dev23.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev23.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %ovp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end21.i.if.end47.sink.split.i_crit_edge

if.end21.i.if.end47.sink.split.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split.i

if.else.i:                                        ; preds = %if.end21.i
  %27 = ptrtoint ptr %ovp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ovp.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %do.end44.i [
    i32 17000000, label %if.else.i.if.end47.i_crit_edge
    i32 21000000, label %if.else.i.if.end47.sink.split.i_crit_edge
    i32 25000000, label %sw.bb32.i
    i32 29000000, label %sw.bb37.i
  ]

if.else.i.if.end47.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split.i

sw.bb37.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client1, align 4
  %dev46.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.32, i32 noundef %28) #9
  br label %lm3692x_probe_dt.exit.thread

if.end47.sink.split.i:                            ; preds = %sw.bb37.i, %sw.bb32.i, %if.else.i.if.end47.sink.split.i_crit_edge, %if.end21.i.if.end47.sink.split.i_crit_edge
  %.sink135.i = phi i8 [ 8, %sw.bb32.i ], [ 12, %sw.bb37.i ], [ 12, %if.end21.i.if.end47.sink.split.i_crit_edge ], [ 4, %if.else.i.if.end47.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %boost_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %boost_ctrl.i, align 4
  %34 = or i8 %33, %.sink135.i
  store i8 %34, ptr %boost_ctrl.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.sink.split.i, %if.else.i.if.end47.i_crit_edge
  %35 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client1, align 4
  %dev49.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %call50.i = call ptr @device_get_next_child_node(ptr noundef %dev49.i, ptr noundef null) #6
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %do.end55.i, label %if.end58.i

do.end55.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client1, align 4
  %dev57.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57.i, ptr noundef nonnull @.str.35) #9
  br label %lm3692x_probe_dt.exit.thread

if.end58.i:                                       ; preds = %if.end47.i
  %led_enable.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 6
  %call.i132.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call50.i, ptr noundef nonnull @.str.37, ptr noundef %led_enable.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool60.not.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool60.not.i, label %if.end67.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fwnode_handle_put(ptr noundef nonnull %call50.i) #6
  %39 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client1, align 4
  %dev66.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66.i, ptr noundef nonnull @.str.39) #9
  br label %lm3692x_probe_dt.exit.thread

if.end67.i:                                       ; preds = %if.end58.i
  %call.i133.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call50.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %max_cur.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool69.not.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool69.not.i, label %cond.false.i, label %if.end67.i.cond.end.i_crit_edge

if.end67.i.cond.end.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %max_cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_cur.i, align 4
  %mul.i.i = mul i32 %42, 1000
  %sub.i.i = add i32 %mul.i.i, -37806
  %div.i.i = udiv i32 %sub.i.i, 12195
  %43 = call i32 @llvm.umin.i32(i32 %div.i.i, i32 2047) #6
  %shr.i.i = lshr i32 %43, 3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end67.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %shr.i.i, %cond.false.i ], [ 255, %if.end67.i.cond.end.i_crit_edge ]
  %led_dev.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 2
  %max_brightness.i = getelementptr inbounds %struct.lm3692x_led, ptr %call.i, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.i, ptr %max_brightness.i, align 4
  %45 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call50.i, ptr %init_data.i, align 4
  %46 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client1, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 2
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %48 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name.i, ptr %devicename.i, align 4
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  %49 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.42, ptr %default_label.i, align 4
  %dev73.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %call75.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev73.i, ptr noundef %led_dev.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %cond.end.i.if.end83.i_crit_edge, label %do.end80.i

cond.end.i.if.end83.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

do.end80.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client1, align 4
  %dev82.i = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82.i, ptr noundef nonnull @.str.44, i32 noundef %call75.i) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end80.i, %cond.end.i.if.end83.i_crit_edge
  %52 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_data.i, align 4
  call void @fwnode_handle_put(ptr noundef %53) #6
  br label %lm3692x_probe_dt.exit

lm3692x_probe_dt.exit.thread:                     ; preds = %if.then61.i, %do.end55.i, %do.end44.i
  %retval.0.i.ph = phi i32 [ -22, %do.end44.i ], [ -19, %do.end55.i ], [ %call.i132.i, %if.then61.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_cur.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ovp.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %cleanup

lm3692x_probe_dt.exit:                            ; preds = %if.end83.i, %if.then15.i, %if.then.i
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ %call18.i, %if.then15.i ], [ %call75.i, %if.end83.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_cur.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ovp.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %lm3692x_probe_dt.exit.cleanup_crit_edge

lm3692x_probe_dt.exit.cleanup_crit_edge:          ; preds = %lm3692x_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %lm3692x_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call fastcc i32 @lm3692x_leds_enable(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lm3692x_probe_dt.exit.cleanup_crit_edge, %lm3692x_probe_dt.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %lm3692x_probe_dt.exit.cleanup_crit_edge ], [ %call17, %if.end16 ], [ %retval.0.i.ph, %lm3692x_probe_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3692x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @lm3692x_leds_disable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_destroy(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3692x_brightness_set(ptr noundef %led_cdev, i32 noundef %brt_val) #2 align 64 {
entry:
  %read_buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -96
  %shr = lshr i32 %brt_val, 5
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brt_val)
  %cmp = icmp eq i32 %brt_val, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @lm3692x_leds_disable(ptr noundef %add.ptr)
  br label %out

if.else:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @lm3692x_leds_enable(ptr noundef %add.ptr)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i) #6
  %0 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read_buf.i, align 4, !annotation !129
  %regmap.i = getelementptr i8, ptr %led_cdev, i32 400
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 31, ptr noundef nonnull %read_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lm3692x_fault_check.exit.thread

lm3692x_fault_check.exit.thread:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  br label %do.end

if.end.i:                                         ; preds = %if.else
  %3 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr i8, ptr %led_cdev, i32 -4
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %4) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 31, ptr noundef nonnull %read_buf.i) #6
  %9 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %read_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %lm3692x_fault_check.exit.thread45, label %lm3692x_fault_check.exit

lm3692x_fault_check.exit.thread45:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  br label %if.end4

lm3692x_fault_check.exit:                         ; preds = %if.end3.i
  %client11.i = getelementptr i8, ptr %led_cdev, i32 -4
  %11 = ptrtoint ptr %client11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client11.i, align 4
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.23, i32 noundef %10) #9
  %13 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %read_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %lm3692x_fault_check.exit.if.end4_crit_edge, label %lm3692x_fault_check.exit.do.end_crit_edge

lm3692x_fault_check.exit.do.end_crit_edge:        ; preds = %lm3692x_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lm3692x_fault_check.exit.if.end4_crit_edge:       ; preds = %lm3692x_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %lm3692x_fault_check.exit.do.end_crit_edge, %lm3692x_fault_check.exit.thread
  %retval.0.i44 = phi i32 [ %call.i, %lm3692x_fault_check.exit.thread ], [ %.pr, %lm3692x_fault_check.exit.do.end_crit_edge ]
  %client = getelementptr i8, ptr %led_cdev, i32 -4
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i44) #9
  br label %out

if.end4:                                          ; preds = %lm3692x_fault_check.exit.if.end4_crit_edge, %lm3692x_fault_check.exit.thread45
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call5 = call i32 @regmap_write(ptr noundef %17, i32 noundef 25, i32 noundef %brt_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %client11 = getelementptr i8, ptr %led_cdev, i32 -4
  %18 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client11, align 4
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.11, i32 noundef %call5) #9
  br label %out

if.end13:                                         ; preds = %if.end4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call15 = call i32 @regmap_write(ptr noundef %21, i32 noundef 24, i32 noundef %shr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.out_crit_edge, label %do.end20

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %client21 = getelementptr i8, ptr %led_cdev, i32 -4
  %22 = ptrtoint ptr %client21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client21, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.14, i32 noundef %call15) #9
  br label %out

out:                                              ; preds = %do.end20, %if.end13.out_crit_edge, %do.end10, %do.end, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %retval.0.i44, %do.end ], [ %call5, %do.end10 ], [ %call15, %do.end20 ], [ 0, %if.end13.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %add.ptr) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3692x_leds_enable(ptr nocapture noundef %led) unnamed_addr #2 align 64 {
entry:
  %read_buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 10
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 5
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %do.end

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %enable_gpio = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_buf.i) #6
  %8 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %read_buf.i, align 4, !annotation !129
  %regmap.i = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 31, ptr noundef nonnull %read_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lm3692x_fault_check.exit.thread

lm3692x_fault_check.exit.thread:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  br label %do.end18

if.end.i:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %12) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 31, ptr noundef nonnull %read_buf.i) #6
  %17 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not.i = icmp eq i32 %18, 0
  br i1 %tobool6.not.i, label %lm3692x_fault_check.exit.thread171, label %lm3692x_fault_check.exit

lm3692x_fault_check.exit.thread171:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  br label %if.end21

lm3692x_fault_check.exit:                         ; preds = %if.end3.i
  %client11.i = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %19 = ptrtoint ptr %client11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client11.i, align 4
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.23, i32 noundef %18) #9
  %21 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %read_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool14.not = icmp eq i32 %.pr, 0
  br i1 %tobool14.not, label %lm3692x_fault_check.exit.if.end21_crit_edge, label %lm3692x_fault_check.exit.do.end18_crit_edge

lm3692x_fault_check.exit.do.end18_crit_edge:      ; preds = %lm3692x_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lm3692x_fault_check.exit.if.end21_crit_edge:      ; preds = %lm3692x_fault_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end18:                                         ; preds = %lm3692x_fault_check.exit.do.end18_crit_edge, %lm3692x_fault_check.exit.thread
  %retval.0.i170 = phi i32 [ %call.i, %lm3692x_fault_check.exit.thread ], [ %.pr, %lm3692x_fault_check.exit.do.end18_crit_edge ]
  %client19 = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %22 = ptrtoint ptr %client19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client19, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i170) #9
  br label %do.end92

if.end21:                                         ; preds = %lm3692x_fault_check.exit.if.end21_crit_edge, %lm3692x_fault_check.exit.thread171
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call22 = call i32 @regmap_write(ptr noundef %25, i32 noundef 17, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.do.end92_crit_edge

if.end21.do.end92_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end25:                                         ; preds = %if.end21
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call27 = call i32 @regmap_write(ptr noundef %27, i32 noundef 16, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.do.end92_crit_edge

if.end25.do.end92_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end30:                                         ; preds = %if.end25
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call32 = call i32 @regmap_write(ptr noundef %29, i32 noundef 25, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.do.end92_crit_edge

if.end30.do.end92_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end35:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call37 = call i32 @regmap_write(ptr noundef %31, i32 noundef 24, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.do.end92_crit_edge

if.end35.do.end92_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end40:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call42 = call i32 @regmap_write(ptr noundef %33, i32 noundef 18, i32 noundef 129) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.do.end92_crit_edge

if.end40.do.end92_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end45:                                         ; preds = %if.end40
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %boost_ctrl = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 8
  %36 = ptrtoint ptr %boost_ctrl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %boost_ctrl, align 4
  %conv = zext i8 %37 to i32
  %call47 = call i32 @regmap_write(ptr noundef %35, i32 noundef 19, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.do.end92_crit_edge

if.end45.do.end92_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end50:                                         ; preds = %if.end45
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call52 = call i32 @regmap_write(ptr noundef %39, i32 noundef 21, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.do.end92_crit_edge

if.end50.do.end92_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end55:                                         ; preds = %if.end50
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call57 = call i32 @regmap_write(ptr noundef %41, i32 noundef 22, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.do.end92_crit_edge

if.end55.do.end92_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end60:                                         ; preds = %if.end55
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call62 = call i32 @regmap_write(ptr noundef %43, i32 noundef 23, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.do.end92_crit_edge

if.end60.do.end92_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end65:                                         ; preds = %if.end60
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call67 = call i32 @regmap_write(ptr noundef %45, i32 noundef 17, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.do.end92_crit_edge

if.end65.do.end92_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end70:                                         ; preds = %if.end65
  %led_enable = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 6
  %46 = ptrtoint ptr %led_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %led_enable, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %47, label %sw.default [
    i32 3, label %sw.bb76
    i32 1, label %if.end70.sw.epilog_crit_edge
    i32 2, label %sw.bb75
  ]

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %model_id = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 7
  %49 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp = icmp eq i32 %50, 1
  %. = select i1 %cmp, i32 15, i32 7
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end70
  %model_id77 = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 7
  %51 = ptrtoint ptr %model_id77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %model_id77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp78 = icmp eq i32 %52, 1
  br i1 %cmp78, label %sw.bb76.sw.epilog_crit_edge, label %if.end81

sw.bb76.sw.epilog_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end81:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #8
  %client85 = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %53 = ptrtoint ptr %client85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client85, align 4
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.51) #9
  br label %do.end92

sw.epilog:                                        ; preds = %sw.bb76.sw.epilog_crit_edge, %sw.bb75, %sw.default, %if.end70.sw.epilog_crit_edge
  %enable_state.0 = phi i32 [ 5, %sw.bb75 ], [ %., %sw.default ], [ 3, %if.end70.sw.epilog_crit_edge ], [ 9, %sw.bb76.sw.epilog_crit_edge ]
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %call.i167 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 16, i32 noundef 15, i32 noundef %enable_state.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %enabled, align 2
  br label %cleanup

do.end92:                                         ; preds = %if.end81, %if.end65.do.end92_crit_edge, %if.end60.do.end92_crit_edge, %if.end55.do.end92_crit_edge, %if.end50.do.end92_crit_edge, %if.end45.do.end92_crit_edge, %if.end40.do.end92_crit_edge, %if.end35.do.end92_crit_edge, %if.end30.do.end92_crit_edge, %if.end25.do.end92_crit_edge, %if.end21.do.end92_crit_edge, %do.end18
  %ret.0 = phi i32 [ %retval.0.i170, %do.end18 ], [ %call22, %if.end21.do.end92_crit_edge ], [ %call27, %if.end25.do.end92_crit_edge ], [ %call32, %if.end30.do.end92_crit_edge ], [ %call37, %if.end35.do.end92_crit_edge ], [ %call42, %if.end40.do.end92_crit_edge ], [ %call47, %if.end45.do.end92_crit_edge ], [ %call52, %if.end50.do.end92_crit_edge ], [ %call57, %if.end55.do.end92_crit_edge ], [ %call62, %if.end60.do.end92_crit_edge ], [ %call67, %if.end65.do.end92_crit_edge ], [ -22, %if.end81 ]
  %client93 = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %58 = ptrtoint ptr %client93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client93, align 4
  %dev94 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.54) #9
  %60 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %enable_gpio, align 4
  %tobool96.not = icmp eq ptr %61, null
  br i1 %tobool96.not, label %do.end92.if.end100_crit_edge, label %if.then97

do.end92.if.end100_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then97:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  %call99 = call i32 @gpiod_direction_output(ptr noundef nonnull %61, i32 noundef 0) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %do.end92.if.end100_crit_edge
  %62 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regulator, align 4
  %tobool102.not = icmp eq ptr %63, null
  br i1 %tobool102.not, label %if.end100.cleanup_crit_edge, label %if.then103

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %if.end100
  %call105 = call i32 @regulator_disable(ptr noundef nonnull %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then103.cleanup_crit_edge, label %do.end110

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end110:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %client93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client93, align 4
  %dev112 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.16, i32 noundef %call105) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.then103.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i167, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then103.cleanup_crit_edge ], [ %ret.0, %do.end110 ], [ %ret.0, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3692x_leds_disable(ptr nocapture noundef %led) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 10
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %enable_gpio = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %regulator = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 5
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end21_crit_edge, label %if.then10

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then10:                                        ; preds = %if.end8
  %call12 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.end21_crit_edge, label %do.end17

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %client18 = getelementptr inbounds %struct.lm3692x_led, ptr %led, i32 0, i32 1
  %10 = ptrtoint ptr %client18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client18, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.16, i32 noundef %call12) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %if.then10.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %ret.0 = phi i32 [ %call12, %do.end17 ], [ 0, %if.then10.if.end21_crit_edge ], [ 0, %if.end8.if.end21_crit_edge ]
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_leds_lm3692x__288_530_lm3692x_driver_init6, !1, !"__initcall__kmod_leds_lm3692x__288_530_lm3692x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm3692x.c", i32 530, i32 1}
!2 = !{ptr @__exitcall_lm3692x_driver_exit, !1, !"__exitcall_lm3692x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm3692x.c", i32 532, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm3692x.c", i32 533, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lm3692x.c", i32 534, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lm3692x.c", i32 523, i32 11}
!12 = !{ptr @lm3692x_driver, !13, !"lm3692x_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm3692x.c", i32 521, i32 26}
!14 = !{ptr @lm3692x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm3692x.c", i32 469, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm3692x_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/leds/leds-lm3692x.c", i32 475, i32 16}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-lm3692x.c", i32 478, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lm3692x_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @lm3692x_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-lm3692x.c", i32 343, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lm3692x_brightness_set._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @lm3692x_brightness_set._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-lm3692x.c", i32 350, i32 3}
!35 = !{ptr @lm3692x_brightness_set._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lm3692x_brightness_set._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-lm3692x.c", i32 356, i32 3}
!39 = !{ptr @lm3692x_brightness_set._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lm3692x_brightness_set._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-lm3692x.c", i32 305, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lm3692x_leds_disable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @lm3692x_leds_disable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @lm3692x_leds_disable._entry.18, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lm3692x.c", i32 316, i32 4}
!48 = !{ptr @lm3692x_leds_disable._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lm3692x.c", i32 155, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lm3692x_fault_check._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lm3692x_fault_check._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lm3692x.c", i32 162, i32 3}
!56 = !{ptr @lm3692x_fault_check._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @lm3692x_fault_check._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @lm3692x_regmap_config, !59, !"lm3692x_regmap_config", i1 false, i1 false}
!59 = !{!"../drivers/leds/leds-lm3692x.c", i32 135, i32 35}
!60 = !{ptr @lm3692x_reg_defs, !61, !"lm3692x_reg_defs", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lm3692x.c", i32 122, i32 33}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lm3692x.c", i32 385, i32 10}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-lm3692x.c", i32 388, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @lm3692x_probe_dt._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @lm3692x_probe_dt._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lm3692x.c", i32 393, i32 66}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-lm3692x.c", i32 398, i32 11}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-lm3692x.c", i32 407, i32 12}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/leds/leds-lm3692x.c", i32 424, i32 4}
!77 = !{ptr @lm3692x_probe_dt._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @lm3692x_probe_dt._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-lm3692x.c", i32 431, i32 3}
!81 = !{ptr @lm3692x_probe_dt._entry.34, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @lm3692x_probe_dt._entry_ptr.36, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/leds-lm3692x.c", i32 435, i32 40}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/leds-lm3692x.c", i32 438, i32 3}
!87 = !{ptr @lm3692x_probe_dt._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lm3692x_probe_dt._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/leds/leds-lm3692x.c", i32 442, i32 40}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/leds/leds-lm3692x.c", i32 448, i32 28}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/leds/leds-lm3692x.c", i32 453, i32 3}
!95 = !{ptr @lm3692x_probe_dt._entry.43, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @lm3692x_probe_dt._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-lm3692x.c", i32 179, i32 4}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @lm3692x_leds_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @lm3692x_leds_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @lm3692x_leds_enable._entry.48, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/leds/leds-lm3692x.c", i32 190, i32 3}
!104 = !{ptr @lm3692x_leds_enable._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/leds/leds-lm3692x.c", i32 270, i32 3}
!107 = !{ptr @lm3692x_leds_enable._entry.50, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @lm3692x_leds_enable._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/leds/leds-lm3692x.c", i32 281, i32 2}
!111 = !{ptr @lm3692x_leds_enable._entry.53, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @lm3692x_leds_enable._entry_ptr.55, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @lm3692x_leds_enable._entry.56, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/leds/leds-lm3692x.c", i32 289, i32 4}
!115 = !{ptr @lm3692x_leds_enable._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @of_lm3692x_leds_match, !117, !"of_lm3692x_leds_match", i1 false, i1 false}
!117 = !{!"../drivers/leds/leds-lm3692x.c", i32 514, i32 34}
!118 = !{ptr @lm3692x_id, !119, !"lm3692x_id", i1 false, i1 false}
!119 = !{!"../drivers/leds/leds-lm3692x.c", i32 507, i32 35}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
