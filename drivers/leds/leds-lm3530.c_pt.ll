; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm3530.c_pt.bc'
source_filename = "../drivers/leds/leds-lm3530.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lm3530_data = type { %struct.led_classdev, ptr, ptr, i32, ptr, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lm3530_platform_data = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, %struct.lm3530_pwm_data }
%struct.lm3530_pwm_data = type { ptr, ptr }

@__initcall__kmod_leds_lm3530__288_497_lm3530_i2c_driver_init6 = internal global ptr @lm3530_i2c_driver_init, section ".initcall6.init", align 4
@lm3530_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3530_probe, ptr @lm3530_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3530_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3530_i2c_driver_exit = internal global ptr @lm3530_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [53 x i8] c"leds_lm3530.description=Back Light driver for LM3530\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [42 x i8] c"leds_lm3530.file=drivers/leds/leds-lm3530\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [27 x i8] c"leds_lm3530.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [77 x i8] c"leds_lm3530.author=Shreshtha Kumar SAHU <shreshthakumar.sahu@stericsson.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm3530-led\00", [21 x i8] zeroinitializer }, align 32
@lm3530_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3530-led\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3530_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"platform data required\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3530_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lm3530.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr = internal global ptr @lm3530_probe._entry, section ".printk_index", align 4
@lm3530_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Illegal Mode request\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr.8 = internal global ptr @lm3530_probe._entry.6, section ".printk_index", align 4
@lm3530_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C_FUNC_I2C not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr.11 = internal global ptr @lm3530_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd-backlight\00", [18 x i8] zeroinitializer }, align 32
@lm3530_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm3530_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@lm3530_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regulator get failed\0A\00", [42 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr.16 = internal global ptr @lm3530_probe._entry.14, section ".printk_index", align 4
@lm3530_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Register Init failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr.19 = internal global ptr @lm3530_probe._entry.17, section ".printk_index", align 4
@lm3530_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Register led class failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lm3530_probe._entry_ptr.22 = internal global ptr @lm3530_probe._entry.20, section ".printk_index", align 4
@lm3530_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3530_brightness_set\00", [42 x i8] zeroinitializer }, align 32
@lm3530_brightness_set._entry_ptr = internal global ptr @lm3530_brightness_set._entry, section ".printk_index", align 4
@lm3530_brightness_set._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to set brightness: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3530_brightness_set._entry_ptr.26 = internal global ptr @lm3530_brightness_set._entry.24, section ".printk_index", align 4
@lm3530_led_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to disable vin:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3530_led_disable\00", [45 x i8] zeroinitializer }, align 32
@lm3530_led_disable._entry_ptr = internal global ptr @lm3530_led_disable._entry, section ".printk_index", align 4
@lm3530_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm3530_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm3530_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"man\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"als\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@mode_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid mode\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode_store\00", [21 x i8] zeroinitializer }, align 32
@mode_store._entry_ptr = internal global ptr @mode_store._entry, section ".printk_index", align 4
@mode_store._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting %s Mode failed :%d\0A\00", [36 x i8] zeroinitializer }, align 32
@mode_store._entry_ptr.40 = internal global ptr @mode_store._entry.38, section ".printk_index", align 4
@lm3530_reg = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\10 0A\A0`abcpqrst", [18 x i8] zeroinitializer }, align 32
@lm3530_led_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable vin:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3530_led_enable\00", [46 x i8] zeroinitializer }, align 32
@lm3530_led_enable._entry_ptr = internal global ptr @lm3530_led_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"lm3530_i2c_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 488, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 493, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"lm3530_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 482, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 416, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 422, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 427, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 441, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"lm3530_groups\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 448, i32 56 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 450, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 459, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 466, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 320, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 330, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"lm3530_group\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 406, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"lm3530_attrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 402, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 400, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 359, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 361, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 90, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 91, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 92, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 382, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 394, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [11 x i8] c"lm3530_reg\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 127, i32 17 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [30 x i8] c"../drivers/leds/leds-lm3530.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 198, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_lm3530_i2c_driver_exit, ptr @__initcall__kmod_leds_lm3530__288_497_lm3530_i2c_driver_init6, ptr @lm3530_brightness_set._entry, ptr @lm3530_brightness_set._entry.24, ptr @lm3530_brightness_set._entry_ptr, ptr @lm3530_brightness_set._entry_ptr.26, ptr @lm3530_i2c_driver_exit, ptr @lm3530_led_disable._entry, ptr @lm3530_led_disable._entry_ptr, ptr @lm3530_led_enable._entry, ptr @lm3530_led_enable._entry_ptr, ptr @lm3530_probe._entry, ptr @lm3530_probe._entry.14, ptr @lm3530_probe._entry.17, ptr @lm3530_probe._entry.20, ptr @lm3530_probe._entry.6, ptr @lm3530_probe._entry.9, ptr @lm3530_probe._entry_ptr, ptr @lm3530_probe._entry_ptr.11, ptr @lm3530_probe._entry_ptr.16, ptr @lm3530_probe._entry_ptr.19, ptr @lm3530_probe._entry_ptr.22, ptr @lm3530_probe._entry_ptr.8, ptr @mode_store._entry, ptr @mode_store._entry.38, ptr @mode_store._entry_ptr, ptr @mode_store._entry_ptr.40, ptr @lm3530_i2c_driver, ptr @.str, ptr @lm3530_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @lm3530_groups, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @lm3530_group, ptr @lm3530_attrs, ptr @dev_attr_mode, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @lm3530_reg, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_brightness_set._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_led_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_store._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_reg to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3530_led_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3530_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3530_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3530_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3530_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3530_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2 = icmp ugt i32 %3, 2
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
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
  %call.i.i = tail call i32 %9(ptr noundef %5) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 424, i32 noundef 3520) #7
  %cmp18 = icmp eq ptr %call.i, null
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %mode22 = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %mode22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mode22, align 4
  %client23 = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %client23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %client23, align 4
  %pdata24 = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %pdata24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %pdata24, align 4
  %brightness = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %brightness, align 4
  %enable = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enable, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.12, ptr %call.i, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lm3530_brightness_set, ptr %brightness_set, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 127, ptr %max_brightness, align 4
  %groups = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 12
  %20 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lm3530_groups, ptr %groups, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call29 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  %regulator = getelementptr inbounds %struct.lm3530_data, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end40

do.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %23 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regulator, align 4
  %25 = ptrtoint ptr %24 to i32
  store ptr null, ptr %regulator, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %pdata24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata24, align 4
  %brt_val = getelementptr inbounds %struct.lm3530_platform_data, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %brt_val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %brt_val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool42.not = icmp eq i8 %29, 0
  br i1 %tobool42.not, label %if.end40.if.end52_crit_edge, label %if.then43

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then43:                                        ; preds = %if.end40
  %call44 = tail call fastcc i32 @lm3530_init_registers(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call44) #10
  br label %cleanup

if.end52:                                         ; preds = %if.then43.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %call.i103 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp56 = icmp slt i32 %call.i103, 0
  br i1 %cmp56, label %do.end60, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i103) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end52.cleanup_crit_edge, %do.end49, %do.end35, %if.end15.cleanup_crit_edge, %do.end13, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end6 ], [ %25, %do.end35 ], [ %call44, %do.end49 ], [ %call.i103, %do.end60 ], [ -5, %do.end13 ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3530_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enable.i = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable.i, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.lm3530_led_disable.exit_crit_edge, label %if.end.i

entry.lm3530_led_disable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3530_led_disable.exit

if.end.i:                                         ; preds = %entry
  %regulator.i = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %call.i) #10
  br label %lm3530_led_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enable.i, align 4
  br label %lm3530_led_disable.exit

lm3530_led_disable.exit:                          ; preds = %if.end3.i, %do.end.i, %entry.lm3530_led_disable.exit_crit_edge
  tail call void @led_classdev_unregister(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm3530_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brt_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness2 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %max_brightness2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness2, align 4
  %mode = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %enable = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 6
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %sw.bb
  %call = tail call fastcc i32 @lm3530_init_registers(ptr noundef %led_cdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 1
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call) #10
  br label %sw.epilog

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %sw.bb.if.end5_crit_edge
  %client6 = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 1
  %9 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client6, align 4
  %conv7 = trunc i32 %brt_val to i8
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -96, i8 noundef zeroext %conv7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %do.end13

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client6, align 4
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.25, i32 noundef %call8) #10
  br label %if.end16

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %brightness = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 5
  %13 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %brt_val, ptr %brightness, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brt_val)
  %cmp = icmp eq i32 %brt_val, 0
  br i1 %cmp, label %if.then18, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then18:                                        ; preds = %if.end16
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then18.sw.epilog_crit_edge, label %if.end.i

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then18
  %regulator.i = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 4
  %16 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regulator.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef %call.i) #10
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enable, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.lm3530_data, ptr %led_cdev, i32 0, i32 2
  %21 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata1, align 4
  %pwm_data = getelementptr inbounds %struct.lm3530_platform_data, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %pwm_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwm_data, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %sw.bb20.sw.epilog_crit_edge, label %if.then22

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %conv24 = and i32 %1, 255
  tail call void %24(i32 noundef %brt_val, i32 noundef %conv24) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %sw.bb20.sw.epilog_crit_edge, %if.end3.i, %do.end.i, %if.then18.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge, %do.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3530_init_registers(ptr nocapture noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %reg_val) #7
  %0 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 1
  %1 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 2
  %2 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 3
  %3 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 4
  %4 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 5
  %5 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 6
  %6 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 7
  %7 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 8
  %8 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 9
  %9 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 10
  %10 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 11
  %11 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 12
  %12 = getelementptr inbounds [14 x i8], ptr %reg_val, i32 0, i32 13
  %pdata1 = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 2
  %13 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata1, align 4
  %client2 = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 1
  %15 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client2, align 4
  %pwm_data = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 13
  %brt_ramp_law = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 5
  %17 = ptrtoint ptr %brt_ramp_law to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %brt_ramp_law, align 1, !range !108
  %19 = shl nuw nsw i8 %18, 1
  %max_current = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %max_current to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_current, align 4
  %22 = shl i8 %21, 2
  %23 = and i8 %22, 28
  %or130 = or i8 %23, %19
  %mode = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 3
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %25, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = or i8 %or130, 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %28 = or i8 %or130, 1
  %als_vmax1.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 11
  %29 = ptrtoint ptr %als_vmax1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %als_vmax1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb9.if.end.i_crit_edge

sw.bb9.if.end.i_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %als_vmin2.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 10
  %31 = ptrtoint ptr %als_vmin2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %als_vmin2.i, align 4
  %32 = ptrtoint ptr %als_vmax1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1000, ptr %als_vmax1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb9.if.end.i_crit_edge
  %als_vmin4.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 10
  %33 = ptrtoint ptr %als_vmin4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %als_vmin4.i, align 4
  %35 = ptrtoint ptr %als_vmax1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %als_vmax1.i, align 4
  %sub.i = sub i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %sub.i, 1000
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.lm3530_als_configure.exit_crit_edge

if.end.i.lm3530_als_configure.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm3530_als_configure.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %34, 1000
  %37 = ptrtoint ptr %als_vmax1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %als_vmax1.i, align 4
  br label %lm3530_als_configure.exit

lm3530_als_configure.exit:                        ; preds = %if.then7.i, %if.end.i.lm3530_als_configure.exit_crit_edge
  %sub10.pre-phi.i = phi i32 [ 1000, %if.then7.i ], [ %sub.i, %if.end.i.lm3530_als_configure.exit_crit_edge ]
  %div.lhs.trunc.i = trunc i32 %sub10.pre-phi.i to i16
  %div47.i = udiv i16 %div.lhs.trunc.i, 5
  %div.zext.i = zext i16 %div47.i to i32
  %add12.i = add i32 %34, 4
  %add13.i = add i32 %add12.i, %div.zext.i
  %mul15.i = mul i32 %add13.i, 255
  %div16.i = udiv i32 %mul15.i, 1000
  %conv.i = trunc i32 %div16.i to i8
  %add14.1.i = add i32 %add13.i, %div.zext.i
  %mul15.1.i = mul i32 %add14.1.i, 255
  %div16.1.i = udiv i32 %mul15.1.i, 1000
  %conv.1.i = trunc i32 %div16.1.i to i8
  %mul.2.i = shl nuw nsw i32 %div.zext.i, 1
  %add14.2.i = add i32 %add13.i, %mul.2.i
  %mul15.2.i = mul i32 %add14.2.i, 255
  %div16.2.i = udiv i32 %mul15.2.i, 1000
  %conv.2.i = trunc i32 %div16.2.i to i8
  %mul.3.i = mul nuw nsw i32 %div.zext.i, 3
  %add14.3.i = add i32 %add13.i, %mul.3.i
  %mul15.3.i = mul i32 %add14.3.i, 255
  %div16.3.i = udiv i32 %mul15.3.i, 1000
  %conv.3.i = trunc i32 %div16.3.i to i8
  %als_avrg_time.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 4
  %38 = ptrtoint ptr %als_avrg_time.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %als_avrg_time.i, align 2
  %als_input_mode.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 1
  %40 = ptrtoint ptr %als_input_mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %als_input_mode.i, align 4
  %.tr.i = trunc i32 %41 to i8
  %42 = shl i8 %.tr.i, 5
  %43 = or i8 %39, %42
  %conv20.i = or i8 %43, 24
  %als1_resistor_sel.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 8
  %44 = ptrtoint ptr %als1_resistor_sel.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %als1_resistor_sel.i, align 2
  %als2_resistor_sel.i = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 9
  %46 = ptrtoint ptr %als2_resistor_sel.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %als2_resistor_sel.i, align 1
  %shl24.i = shl i8 %47, 4
  %or25.i = or i8 %shl24.i, %45
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pwm_pol_hi = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 3
  %48 = ptrtoint ptr %pwm_pol_hi to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pwm_pol_hi, align 1, !range !108
  %50 = shl nuw nsw i8 %49, 6
  %51 = or i8 %50, %or130
  %or19131 = or i8 %51, -96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %lm3530_als_configure.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %als.sroa.0.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %conv20.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %als.sroa.6.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %or25.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %als.sroa.9.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %conv.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %als.sroa.12.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %conv.1.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %als.sroa.15.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %conv.2.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %als.sroa.18.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb13 ], [ %conv.3.i, %lm3530_als_configure.exit ], [ 0, %sw.bb ]
  %gen_config.0 = phi i8 [ %or130, %entry.sw.epilog_crit_edge ], [ %or19131, %sw.bb13 ], [ %28, %lm3530_als_configure.exit ], [ %27, %sw.bb ]
  %brt_ramp_fall = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 6
  %52 = ptrtoint ptr %brt_ramp_fall to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %brt_ramp_fall, align 4
  %brt_ramp_rise = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 7
  %54 = ptrtoint ptr %brt_ramp_rise to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %brt_ramp_rise, align 1
  %shl24 = shl i8 %55, 3
  %or25 = or i8 %shl24, %53
  %brightness27 = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 5
  %56 = ptrtoint ptr %brightness27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %brightness27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool28.not = icmp eq i32 %57, 0
  br i1 %tobool28.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv30 = trunc i32 %57 to i8
  %.pre = and i32 %57, 255
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %brt_val = getelementptr inbounds %struct.lm3530_platform_data, ptr %14, i32 0, i32 12
  %58 = ptrtoint ptr %brt_val to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %brt_val, align 4
  %conv31 = zext i8 %59 to i32
  %60 = ptrtoint ptr %brightness27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv31, ptr %brightness27, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv34.pre-phi = phi i32 [ %conv31, %if.else ], [ %.pre, %if.then ]
  %brightness.0 = phi i8 [ %59, %if.else ], [ %conv30, %if.then ]
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %drvdata, i32 0, i32 2
  %61 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %conv34.pre-phi)
  %cmp = icmp ult i32 %62, %conv34.pre-phi
  %conv39 = trunc i32 %62 to i8
  %spec.select = select i1 %cmp, i8 %conv39, i8 %brightness.0
  %63 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %gen_config.0, ptr %reg_val, align 1
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %als.sroa.0.0, ptr %0, align 1
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %or25, ptr %1, align 1
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %als.sroa.6.0, ptr %2, align 1
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %spec.select, ptr %3, align 1
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %als.sroa.9.0, ptr %4, align 1
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %als.sroa.12.0, ptr %5, align 1
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %als.sroa.15.0, ptr %6, align 1
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %als.sroa.18.0, ptr %7, align 1
  %72 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 127, ptr %8, align 1
  %73 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 102, ptr %9, align 1
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 76, ptr %10, align 1
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 51, ptr %11, align 1
  %76 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 25, ptr %12, align 1
  %enable.i = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 6
  %77 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enable.i, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i, label %if.end.i132, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.end.i132:                                      ; preds = %if.end
  %regulator.i = getelementptr inbounds %struct.lm3530_data, ptr %drvdata, i32 0, i32 4
  %79 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regulator.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %lm3530_led_enable.exit.thread

lm3530_led_enable.exit.thread:                    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.led_classdev, ptr %drvdata, i32 0, i32 11
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.41, i32 noundef %call.i) #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %enable.i, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end3.i, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0135 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx66 = getelementptr [14 x i8], ptr @lm3530_reg, i32 0, i32 %i.0135
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0135)
  %cmp68 = icmp eq i32 %i.0135, 4
  br i1 %cmp68, label %land.lhs.true, label %for.body.if.end82_crit_edge

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true:                                    ; preds = %for.body
  %84 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp71 = icmp eq i32 %85, 2
  br i1 %cmp71, label %if.then73, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then73:                                        ; preds = %land.lhs.true
  %86 = ptrtoint ptr %pwm_data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pwm_data, align 4
  %tobool74.not = icmp eq ptr %87, null
  br i1 %tobool74.not, label %if.then73.for.inc_crit_edge, label %if.then75

if.then73.for.inc_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %3, align 1
  %conv78 = zext i8 %89 to i32
  %90 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_brightness, align 4
  tail call void %87(i32 noundef %conv78, i32 noundef %91) #7
  br label %for.inc

if.end82:                                         ; preds = %land.lhs.true.if.end82_crit_edge, %for.body.if.end82_crit_edge
  %92 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx66, align 1
  %arrayidx84 = getelementptr [14 x i8], ptr %reg_val, i32 0, i32 %i.0135
  %94 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx84, align 1
  %call85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext %93, i8 noundef zeroext %95) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end82.for.inc_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end82.for.inc_crit_edge, %if.then75, %if.then73.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %lm3530_led_enable.exit.thread
  %retval.0 = phi i32 [ %call.i, %lm3530_led_enable.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ], [ %call85, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %reg_val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  %.str.30..str.31 = select i1 %cmp1, ptr @.str.30, ptr @.str.31
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.30..str.31, ptr noundef nonnull @.str.33)
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 1
  %.str.30.sink28 = select i1 %cmp1.1, ptr @.str.30, ptr @.str.31
  %add.ptr2.1 = getelementptr i8, ptr %buf, i32 %call5
  %call5.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2.1, ptr noundef nonnull %.str.30.sink28, ptr noundef nonnull @.str.34)
  %len.1.1 = add i32 %call5.1, %call5
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.2 = icmp eq i32 %7, 2
  %.str.30.sink29 = select i1 %cmp1.2, ptr @.str.30, ptr @.str.31
  %add.ptr2.2 = getelementptr i8, ptr %buf, i32 %len.1.1
  %call5.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2.2, ptr noundef nonnull %.str.30.sink29, ptr noundef nonnull @.str.35)
  %len.1.2 = add i32 %call5.2, %len.1.1
  %add.ptr11 = getelementptr i8, ptr %buf, i32 %len.1.2
  %8 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr11, align 1
  %add13 = add i32 %len.1.2, 1
  ret i32 %add13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %pwm_data = getelementptr inbounds %struct.lm3530_platform_data, ptr %3, i32 0, i32 13
  %max_brightness1 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_brightness1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_brightness1, align 4
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.33) #7
  br i1 %call.i, label %entry.land.lhs.true_crit_edge, label %for.inc.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.34) #7
  br i1 %call.1.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.1.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.35) #7
  br i1 %call.2.i, label %lm3530_get_mode_from_str.exit, label %do.end

lm3530_get_mode_from_str.exit:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode4 = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode4, align 4
  br label %if.end10

do.end:                                           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %cleanup

land.lhs.true:                                    ; preds = %for.inc.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %.sink = phi i32 [ 0, %entry.land.lhs.true_crit_edge ], [ 1, %for.inc.i.land.lhs.true_crit_edge ]
  %mode4.c39 = getelementptr inbounds %struct.lm3530_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mode4.c39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %mode4.c39, align 4
  %8 = ptrtoint ptr %pwm_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm_data, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = and i32 %5, 255
  tail call void %9(i32 noundef 0, i32 noundef %conv9) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %lm3530_get_mode_from_str.exit
  %call11 = tail call fastcc i32 @lm3530_init_registers(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %buf, i32 noundef %call11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call11, %do.end16 ], [ 4, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_leds_lm3530__288_497_lm3530_i2c_driver_init6, !1, !"__initcall__kmod_leds_lm3530__288_497_lm3530_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm3530.c", i32 497, i32 1}
!2 = !{ptr @__exitcall_lm3530_i2c_driver_exit, !1, !"__exitcall_lm3530_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm3530.c", i32 499, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm3530.c", i32 500, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/leds/leds-lm3530.c", i32 501, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lm3530.c", i32 493, i32 11}
!12 = !{ptr @lm3530_i2c_driver, !13, !"lm3530_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm3530.c", i32 488, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm3530.c", i32 416, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lm3530_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lm3530_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-lm3530.c", i32 422, i32 3}
!24 = !{ptr @lm3530_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lm3530_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-lm3530.c", i32 427, i32 3}
!28 = !{ptr @lm3530_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lm3530_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-lm3530.c", i32 441, i32 26}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-lm3530.c", i32 448, i32 56}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-lm3530.c", i32 450, i32 3}
!36 = !{ptr @lm3530_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lm3530_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lm3530.c", i32 459, i32 4}
!40 = !{ptr @lm3530_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lm3530_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lm3530.c", i32 466, i32 3}
!44 = !{ptr @lm3530_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lm3530_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-lm3530.c", i32 320, i32 5}
!48 = !{ptr @lm3530_brightness_set._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lm3530_brightness_set._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-lm3530.c", i32 330, i32 4}
!52 = !{ptr @lm3530_brightness_set._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @lm3530_brightness_set._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-lm3530.c", i32 215, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lm3530_led_disable._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @lm3530_led_disable._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @lm3530_groups, !60, !"lm3530_groups", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-lm3530.c", i32 406, i32 1}
!61 = !{ptr @lm3530_group, !60, !"lm3530_group", i1 false, i1 false}
!62 = !{ptr @lm3530_attrs, !63, !"lm3530_attrs", i1 false, i1 false}
!63 = !{!"../drivers/leds/leds-lm3530.c", i32 402, i32 26}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-lm3530.c", i32 400, i32 8}
!66 = !{ptr @dev_attr_mode, !65, !"dev_attr_mode", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-lm3530.c", i32 359, i32 30}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lm3530.c", i32 361, i32 30}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-lm3530.c", i32 363, i32 28}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-lm3530.c", i32 90, i32 4}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/leds/leds-lm3530.c", i32 91, i32 4}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/leds/leds-lm3530.c", i32 92, i32 4}
!79 = distinct !{null, !80, !"mode_map", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-lm3530.c", i32 89, i32 31}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/leds/leds-lm3530.c", i32 382, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mode_store._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mode_store._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-lm3530.c", i32 394, i32 3}
!88 = !{ptr @mode_store._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mode_store._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-lm3530.c", i32 198, i32 3}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @lm3530_led_enable._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @lm3530_led_enable._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @lm3530_reg, !96, !"lm3530_reg", i1 false, i1 false}
!96 = !{!"../drivers/leds/leds-lm3530.c", i32 127, i32 17}
!97 = !{ptr @lm3530_id, !98, !"lm3530_id", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-lm3530.c", i32 482, i32 35}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
